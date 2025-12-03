@interface SnapshotService
- (BOOL)hasEnoughPixelsForRequest:(int64_t)request;
- (SnapshotService)init;
- (id)_nextSnapshotRequest;
- (int64_t)pixelsForRequest:(id)request;
- (void)_cleanupForRequest:(id)request;
- (void)_startNextSnapshotterIfPossible:(id)possible;
- (void)cancelSnapshotForConnection:(id)connection;
- (void)requestIconWithStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler;
- (void)requestSnapshotWithOptions:(id)options completionHandler:(id)handler;
@end

@implementation SnapshotService

- (void)requestIconWithStyleAttributes:(id)attributes size:(unint64_t)size scale:(double)scale completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v11 = objc_alloc_init(VKIconManager);
    v13 = v11;
    if (size > 5)
    {
      v14 = 5;
    }

    else
    {
      v14 = qword_1000040E8[size];
    }

    *&v12 = scale;
    v15 = [v11 imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:v14 sizeGroup:0 modifiers:v12];
    v16 = v15;
    if (v15)
    {
      v17 = CGImageRetain([v15 image]);
      if (v17)
      {
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v18 = qword_10000CAE0;
        v27 = qword_10000CAE0;
        if (!qword_10000CAE0)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_10000150C;
          v23[3] = &unk_100008370;
          v23[4] = &v24;
          sub_10000150C(v23);
          v18 = v25[3];
        }

        v19 = v18;
        _Block_object_dispose(&v24, 8);
        v20 = [v18 alloc];
        [v16 contentScale];
        v22 = [v20 initWithCGImage:v17 scale:0 orientation:v21];
      }

      else
      {
        v22 = 0;
      }

      CGImageRelease(v17);
      handlerCopy[2](handlerCopy, v22);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)requestSnapshotWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = sub_100000E38();
  signpostId = [optionsCopy signpostId];
  if ((signpostId - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpostId;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RequestSnapshotWithOptions", &unk_1000050CB, buf, 2u);
    }
  }

  v11 = +[NSXPCConnection currentConnection];
  homeQueue = self->_homeQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100001834;
  v16[3] = &unk_100008410;
  v16[4] = self;
  v17 = v11;
  v18 = optionsCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = optionsCopy;
  v15 = v11;
  dispatch_async(homeQueue, v16);
}

- (void)_startNextSnapshotterIfPossible:(id)possible
{
  possibleCopy = possible;
  [(NSLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_pendingSnapshotRequests count])
  {
    while (1)
    {
      v4 = [(NSMutableDictionary *)self->_requestIdToSnapshotter count];
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v5 = qword_10000CAC8;
      v57 = qword_10000CAC8;
      if (!qword_10000CAC8)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100002514;
        *&buf[24] = &unk_100008370;
        v59 = &v54;
        v6 = sub_100002564();
        v7 = dlsym(v6, "MapKitConfig_SnapshotServiceQueueWidth");
        *(*(v59 + 1) + 24) = v7;
        qword_10000CAC8 = *(*(v59 + 1) + 24);
        v5 = v55[3];
      }

      _Block_object_dispose(&v54, 8);
      if (!v5)
      {
        dlerror();
        abort_report_np();
        __break(1u);
      }

      v8 = *v5;
      v9 = v5[1];
      if (v4 >= GEOConfigGetUInteger())
      {
        goto LABEL_41;
      }

      _nextSnapshotRequest = [(SnapshotService *)self _nextSnapshotRequest];
      if (!_nextSnapshotRequest)
      {
        v45 = sub_100000E38();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "All pending snapshots are waiting on other snapshots to complete trying again as soon as the current snapshot(s) are finished.", buf, 2u);
        }

        _nextSnapshotRequest = 0;
        goto LABEL_40;
      }

      v11 = [(SnapshotService *)self pixelsForRequest:_nextSnapshotRequest];
      if ([(NSMutableDictionary *)self->_requestIdToSnapshotter count]&& ![(SnapshotService *)self hasEnoughPixelsForRequest:v11])
      {
        v45 = sub_100000E38();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          requestId = [_nextSnapshotRequest requestId];
          *buf = 134349056;
          *&buf[4] = requestId;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Not enough memory to take snapshot for request %{public}llu. Trying again as soon as the current snapshot(s) are finished.", buf, 0xCu);
        }

LABEL_40:

        goto LABEL_41;
      }

      v12 = sub_100000E38();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        requestId2 = [_nextSnapshotRequest requestId];
        processIdentifier = [_nextSnapshotRequest processIdentifier];
        *buf = 134349312;
        *&buf[4] = requestId2;
        *&buf[12] = 1024;
        *&buf[14] = processIdentifier;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Starting snapshot request %{public}llu for process %d", buf, 0x12u);
      }

      [(NSMutableArray *)self->_pendingSnapshotRequests removeObject:_nextSnapshotRequest];
      self->_lastRequestPID = [_nextSnapshotRequest processIdentifier];
      self->_usedPixels += v11;
      proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
      v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_nextSnapshotRequest requestId]);
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [_nextSnapshotRequest processIdentifier]);
      [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot setObject:v16 forKey:v17];

      completionHandler = [_nextSnapshotRequest completionHandler];
      connection = [_nextSnapshotRequest connection];
      options = [_nextSnapshotRequest options];
      _auditToken = [options _auditToken];

      if (!_auditToken)
      {
        goto LABEL_17;
      }

      v22 = [connection valueForEntitlement:@"com.apple.private.network.socket-delegate"];
      v23 = v22;
      if (!v22 || ([v22 BOOLValue] & 1) == 0)
      {
        break;
      }

      options2 = [_nextSnapshotRequest options];
      _auditToken2 = [options2 _auditToken];

      if (!_auditToken2)
      {
        goto LABEL_17;
      }

LABEL_20:
      v27 = [VKMapSnapshotCreator alloc];
      options3 = [_nextSnapshotRequest options];
      v29 = [v27 initWithSnapshotOptions:options3 homeQueue:self->_homeQueue auditToken:_auditToken2];

      if (v29)
      {
        options4 = [_nextSnapshotRequest options];
        _customFeatureAnnotations = [options4 _customFeatureAnnotations];
        v32 = [_customFeatureAnnotations count] == 0;

        if (!v32)
        {
          v33 = objc_alloc_init(NSClassFromString(@"_MKCustomFeatureStore"));
          options5 = [_nextSnapshotRequest options];
          _customFeatureAnnotations2 = [options5 _customFeatureAnnotations];
          [v33 addAnnotations:_customFeatureAnnotations2];

          [v29 addCustomFeatureDataSource:v33];
        }

        v36 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [_nextSnapshotRequest requestId]);
        [(NSMutableDictionary *)self->_requestIdToSnapshotter setObject:v29 forKey:v36];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = sub_100002230;
        v59 = sub_100002240;
        v60 = v29;
        [v60 setClearFontCache:1];
        v37 = *(*&buf[8] + 40);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_100002248;
        v48[3] = &unk_1000083E8;
        v48[4] = self;
        v49 = connection;
        v38 = v36;
        v50 = v38;
        v51 = _nextSnapshotRequest;
        v53 = buf;
        v52 = completionHandler;
        [v37 renderSnapshot:v48];

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v39 = sub_100000E38();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_FAULT, "Invalid MKMapSnapshotOptions", buf, 2u);
        }

        if (completionHandler)
        {
          options6 = [_nextSnapshotRequest options];
          v41 = [NSString stringWithFormat:@"Invalid MKMapSnapshotOptions: %@.", options6];

          v42 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v41;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          v61 = NSLocalizedFailureReasonErrorKey;
          v62 = v41;
          v43 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v44 = [NSError errorWithDomain:@"MKErrorDomain" code:1 userInfo:v43];
          (completionHandler)[2](completionHandler, 0, v44);
          if (connection)
          {
            [(NSMapTable *)self->_connectionToSnapshotRequest removeObjectForKey:connection];
          }
        }

        [(SnapshotService *)self _cleanupForRequest:_nextSnapshotRequest];
      }

      if (![(NSMutableArray *)self->_pendingSnapshotRequests count])
      {
        goto LABEL_41;
      }
    }

LABEL_17:
    memset(buf, 0, sizeof(buf));
    if (connection)
    {
      [connection auditToken];
    }

    v26 = [NSData dataWithBytes:buf length:32];
    _auditToken2 = [[GEOApplicationAuditToken alloc] initWithAuditTokenData:v26];

    goto LABEL_20;
  }

LABEL_41:
  [(NSLock *)self->_lock unlock];
}

- (void)_cleanupForRequest:(id)request
{
  requestCopy = request;
  self->_usedPixels -= [(SnapshotService *)self pixelsForRequest:requestCopy];
  proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
  processIdentifier = [requestCopy processIdentifier];

  v7 = [NSNumber numberWithInt:processIdentifier];
  [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot removeObjectForKey:v7];
}

- (id)_nextSnapshotRequest
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v3 = qword_10000CAD0;
  v29 = qword_10000CAD0;
  if (!qword_10000CAD0)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002B18;
    v31 = &unk_100008370;
    v32 = &v26;
    v4 = sub_100002564();
    v5 = dlsym(v4, "MapKitConfig_SnapshotServicePerProcessSerializationEnabled");
    *(v32[1] + 24) = v5;
    qword_10000CAD0 = *(v32[1] + 24);
    v3 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v3)
  {
    dlerror();
    abort_report_np();
  }

  v6 = *v3;
  v7 = v3[1];
  BOOL = GEOConfigGetBOOL();
  pendingSnapshotRequests = self->_pendingSnapshotRequests;
  if (BOOL)
  {
    if ([(NSMutableArray *)pendingSnapshotRequests count])
    {
      v10 = 0;
      while (1)
      {
        v11 = [(NSMutableArray *)self->_pendingSnapshotRequests objectAtIndex:v10];
        options = [v11 options];
        _snapshotServiceSerialPerProcess = [options _snapshotServiceSerialPerProcess];

        if (!_snapshotServiceSerialPerProcess)
        {
          break;
        }

        proccessIdToPendingSerialSnapshot = self->_proccessIdToPendingSerialSnapshot;
        v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 processIdentifier]);
        v16 = [(NSMutableDictionary *)proccessIdToPendingSerialSnapshot objectForKey:v15];
        LOBYTE(proccessIdToPendingSerialSnapshot) = v16 == 0;

        if (proccessIdToPendingSerialSnapshot)
        {
          break;
        }

        v17 = self->_proccessIdToPendingSerialSnapshot;
        v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 processIdentifier]);
        v19 = [(NSMutableDictionary *)v17 objectForKey:v18];
        unsignedIntegerValue = [v19 unsignedIntegerValue];

        v21 = sub_100000E38();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          requestId = [v11 requestId];
          processIdentifier = [v11 processIdentifier];
          *buf = 134218496;
          *&buf[4] = requestId;
          *&buf[12] = 2048;
          *&buf[14] = processIdentifier;
          *&buf[22] = 2048;
          v31 = unsignedIntegerValue;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Skipping request %llu from process %llu due to per process serialization waiting on request %llu.", buf, 0x20u);
        }

        if (++v10 >= [(NSMutableArray *)self->_pendingSnapshotRequests count])
        {
          goto LABEL_12;
        }
      }

      firstObject = v11;
    }

    else
    {
LABEL_12:
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [(NSMutableArray *)pendingSnapshotRequests firstObject];
  }

  return firstObject;
}

- (void)cancelSnapshotForConnection:(id)connection
{
  connectionCopy = connection;
  homeQueue = self->_homeQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002C00;
  v7[3] = &unk_1000083C0;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(homeQueue, v7);
}

- (BOOL)hasEnoughPixelsForRequest:(int64_t)request
{
  usedPixels = self->_usedPixels;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = qword_10000CAD8;
  v14 = qword_10000CAD8;
  if (!qword_10000CAD8)
  {
    v6 = sub_100002564();
    v12[3] = dlsym(v6, "MapKitConfig_SnapshotServiceMaxPixels");
    qword_10000CAD8 = v12[3];
    v5 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v5)
  {
    dlerror();
    v10 = abort_report_np();
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v7 = *v5;
  v8 = v5[1];
  return usedPixels + request <= GEOConfigGetInteger();
}

- (int64_t)pixelsForRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  [options scale];
  v6 = v5;
  options2 = [requestCopy options];
  [options2 size];
  v9 = v6 * v8;
  options3 = [requestCopy options];

  [options3 size];
  v12 = llround(v9 * v11);

  return v12;
}

- (SnapshotService)init
{
  v19.receiver = self;
  v19.super_class = SnapshotService;
  v2 = [(SnapshotService *)&v19 init];
  if (v2)
  {
    sub_100002564();
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:5];
    connectionToSnapshotRequest = v2->_connectionToSnapshotRequest;
    v2->_connectionToSnapshotRequest = v5;

    v7 = objc_alloc_init(NSMutableArray);
    pendingSnapshotRequests = v2->_pendingSnapshotRequests;
    v2->_pendingSnapshotRequests = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    requestIdToSnapshotter = v2->_requestIdToSnapshotter;
    v2->_requestIdToSnapshotter = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    proccessIdToPendingSerialSnapshot = v2->_proccessIdToPendingSerialSnapshot;
    v2->_proccessIdToPendingSerialSnapshot = v11;

    v2->_requestCounter = 0;
    v2->_lastRequestPID = 0;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v15 = dispatch_queue_create("com.apple.MapKit.SnapshotService.homeQueue", v14);
    homeQueue = v2->_homeQueue;
    v2->_homeQueue = v15;

    [GEOMapService setShouldResolveAttribution:0];
    v17 = v2;
  }

  return v2;
}

@end
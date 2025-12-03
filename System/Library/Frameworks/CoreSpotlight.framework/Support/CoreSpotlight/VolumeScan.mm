@interface VolumeScan
+ (id)volumeNames;
- (BOOL)buildCheckOIDs:(unint64_t *)ds oidCount:(unint64_t)count accessDenied:(char *)denied canceled:(BOOL *)canceled;
- (VolumeScan)initWithVolumeUUID:(id)d rootPath:(id)path;
- (char)pathFromOID:(unint64_t)d pathBuffer:(char *)buffer pathBufferSize:(unint64_t)size fullPath:(BOOL)path error:(int *)error;
- (id)bulkResolveOIDData:(id)data error:(int *)error;
- (id)bulkResolveOIDs:(unint64_t *)ds oidCount:(unint64_t)count error:(int *)error;
- (id)identifierForItem:(unint64_t)item name:(id)name parentID:(unint64_t)d;
- (id)processQueryScopes:(id)scopes usePersistentFileIDs:(BOOL)ds;
- (id)resolveLiveFSHandleForPathFromMountPoint:(const char *)point;
- (id)scanAtLiveFSHandle:(id)handle pathFromMountPoint:(id)point date:(id)date itemHandler:(id)handler completionHandler:(id)completionHandler;
- (id)scanAtLiveFSHandle:(id)handle pathFromMountPoint:(id)point withCriteria:(id)criteria itemHandler:(id)handler completionHandler:(id)completionHandler;
- (unint64_t)parentFromOID:(unint64_t)d error:(int *)error;
- (void)cancelWithToken:(id)token;
- (void)dealloc;
@end

@implementation VolumeScan

+ (id)volumeNames
{
  v2 = +[VolumeScan mountServiceClient];
  v3 = [v2 volumes:0];
  allKeys = [v3 allKeys];

  return allKeys;
}

- (void)dealloc
{
  free(self->_rootPathUTF8String);
  v3.receiver = self;
  v3.super_class = VolumeScan;
  [(VolumeScan *)&v3 dealloc];
}

- (VolumeScan)initWithVolumeUUID:(id)d rootPath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v75.receiver = self;
  v75.super_class = VolumeScan;
  v9 = [(VolumeScan *)&v75 init];
  v10 = v9;
  if (!v9)
  {
    v20 = 0;
    goto LABEL_29;
  }

  if (dCopy)
  {
    objc_storeStrong(&v9->_volumeUUID, d);
    v11 = +[VolumeScan mountServiceClient];
    if (!v11)
    {
      goto LABEL_25;
    }

    v12 = objc_opt_new();
    serviceClient = v10->_serviceClient;
    v10->_serviceClient = v12;

    if (!v10->_serviceClient)
    {
      goto LABEL_25;
    }

    v15 = 0;
    *&v14 = 67109890;
    v44 = v14;
    while (1)
    {
      v74 = 0;
      v16 = [(VolumeScan *)v11 listenerForVolume:dCopy error:&v74, v44];
      v17 = v74;
      volumeListenerEndpoint = v10->_volumeListenerEndpoint;
      v10->_volumeListenerEndpoint = v16;

      if (v10->_volumeListenerEndpoint)
      {
        break;
      }

      v19 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = v44;
        *&buf[4] = v15;
        *&buf[8] = 2112;
        *&buf[10] = dCopy;
        *&buf[18] = 2112;
        *&buf[20] = v17;
        *&buf[28] = 2112;
        *&buf[30] = v11;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "listenerForVolume(%d) %@ error %@ from %@", buf, 0x26u);
      }

      if ([v17 code] != 35)
      {
        break;
      }

      sleep(1u);

      if (++v15 == 10)
      {
        goto LABEL_15;
      }
    }

LABEL_15:
    if (v10->_volumeListenerEndpoint)
    {
      v21 = [[NSXPCConnection alloc] initWithListenerEndpoint:v10->_volumeListenerEndpoint];
      volumeAsyncConnection = v10->_volumeAsyncConnection;
      v10->_volumeAsyncConnection = v21;

      v20 = v10->_volumeAsyncConnection;
      if (v20)
      {
        v23 = +[LiveFSClient interfaceForListeners];
        [(VolumeScan *)v20 setRemoteObjectInterface:v23];

        v24 = v10->_volumeAsyncConnection;
        v25 = +[LiveFSVolumeClient exportedClientInterface];
        [(NSXPCConnection *)v24 setExportedInterface:v25];

        [(NSXPCConnection *)v10->_volumeAsyncConnection setExportedObject:v10->_serviceClient];
        [(NSXPCConnection *)v10->_volumeAsyncConnection resume];
        v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_UNSPECIFIED, 0);
        v28 = dispatch_queue_create("com.apple.spotlight.liveitem.queue", v27);
        liveItemQueue = v10->_liveItemQueue;
        v10->_liveItemQueue = v28;

        v20 = [(NSXPCConnection *)v10->_volumeAsyncConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_100035AA0];
        if (v20)
        {
          objc_storeStrong(&v10->_volumeSyncConnection, v20);
          if (pathCopy)
          {
            objc_storeStrong(&v10->_rootPath, path);
            v30 = pathCopy;
            v31 = strdup([pathCopy UTF8String]);
            v10->_rootPathUTF8String = v31;
            v10->_rootPathUTF8StringLength = strlen(v31);
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          *&buf[24] = sub_10001D1AC;
          *&buf[32] = sub_10001D1BC;
          v77 = 0;
          v32 = v10->_liveItemQueue;
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10001D37C;
          v71[3] = &unk_100035AF0;
          v33 = v20;
          v72 = v33;
          v73 = buf;
          sub_10001D1C4("rootHandle", v32, v71);
          objc_storeStrong(&v10->_rootFileHandle, *(*&buf[8] + 40));
          v65 = 0;
          v66 = &v65;
          v67 = 0x3032000000;
          v68 = sub_10001D1AC;
          v69 = sub_10001D1BC;
          v70 = 0;
          v34 = v10->_liveItemQueue;
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_10001D4A8;
          v61[3] = &unk_100035B40;
          v35 = v33;
          v62 = v35;
          v63 = buf;
          v64 = &v65;
          sub_10001D1C4("uuid", v34, v61);
          objc_storeStrong(&v10->_uuidString, v66[5]);
          v57 = 0;
          v58 = &v57;
          v59 = 0x2020000000;
          v60 = 0;
          v36 = v10->_liveItemQueue;
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_10001D660;
          v53[3] = &unk_100035B40;
          v37 = v35;
          v54 = v37;
          v55 = buf;
          v56 = &v57;
          sub_10001D1C4("mount time", v36, v53);
          v38 = v58[3];
          if (v38)
          {
            v10->_mountTime = [NSDate dateWithTimeIntervalSince1970:v38];
          }

          v49 = 0;
          v50 = &v49;
          v51 = 0x2020000000;
          v52 = 0;
          v39 = v10->_liveItemQueue;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_10001D7E0;
          v45[3] = &unk_100035B40;
          v40 = v37;
          v46 = v40;
          v47 = buf;
          v48 = &v49;
          sub_10001D1C4("last mount time", v39, v45);
          v41 = v50[3];
          if (v41)
          {
            v10->_lastMTime = [NSDate dateWithTimeIntervalSince1970:v41];
          }

          _Block_object_dispose(&v49, 8);
          _Block_object_dispose(&v57, 8);

          _Block_object_dispose(&v65, 8);
          _Block_object_dispose(buf, 8);

          v20 = v10;
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_25:
      v20 = 0;
    }

    v40 = v11;
    v11 = v10;
LABEL_27:

    v10 = v11;
    goto LABEL_28;
  }

  v20 = 0;
LABEL_28:

LABEL_29:
  v42 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "VolumeScan %@", buf, 0xCu);
  }

  return v20;
}

- (id)resolveLiveFSHandleForPathFromMountPoint:(const char *)point
{
  rootFileHandle = self->_rootFileHandle;
  if (!rootFileHandle)
  {
    goto LABEL_5;
  }

  if (point && (v6 = strlen(point)) != 0)
  {
    v7 = v6;
    if (v6 > 0x3FF)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_20;
    }

    v9 = self->_volumeSyncConnection;
    v28[1] = v28;
    v10 = v28 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v10, v7 + 1);
    memcpy(v10, point, v7 + 1);
    v11 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100025174(v28 - ((v7 + 16) & 0xFFFFFFFFFFFFFFF0), v11, v12, v13, v14, v15, v16, v17);
    }

    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10001D1AC;
    v38 = sub_10001D1BC;
    v18 = 0;
    v39 = self->_rootFileHandle;
    while (1)
    {
      v19 = strchr(v10, 47);
      v20 = v19;
      if (v19)
      {
        *v19 = 0;
        v20 = v19 + 1;
      }

      v21 = [NSString stringWithUTF8String:v10];
      liveItemQueue = self->_liveItemQueue;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10001DC24;
      v29[3] = &unk_100035B90;
      v23 = v9;
      v30 = v23;
      v32 = &v34;
      v24 = v21;
      v31 = v24;
      v33 = &v40;
      sub_10001D1C4("lookup", liveItemQueue, v29);
      if (!v20)
      {
        v25 = v35[5];

        v18 = v25;
      }

      if (*(v41 + 6))
      {
        break;
      }

      if (v20)
      {
        v10 = v20;
        if (v35[5])
        {
          continue;
        }
      }

      v26 = v18;
      goto LABEL_19;
    }

    v26 = 0;
LABEL_19:
    v8 = v26;
    _Block_object_dispose(&v34, 8);

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v8 = rootFileHandle;
  }

LABEL_20:

  return v8;
}

- (id)scanAtLiveFSHandle:(id)handle pathFromMountPoint:(id)point withCriteria:(id)criteria itemHandler:(id)handler completionHandler:(id)completionHandler
{
  handleCopy = handle;
  pointCopy = point;
  criteriaCopy = criteria;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  if (handleCopy)
  {
    goto LABEL_4;
  }

  handleCopy = self->_rootFileHandle;

  if (handleCopy)
  {
    pointCopy = 0;
LABEL_4:
    rootPath = [(VolumeScan *)self rootPath];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10001E164;
    v42[3] = &unk_100035BB8;
    v17 = pointCopy;
    v43 = v17;
    v18 = rootPath;
    v44 = v18;
    v32 = handlerCopy;
    v45 = handlerCopy;
    v19 = objc_retainBlock(v42);
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10001E458;
    v40[3] = &unk_100035668;
    v41 = completionHandlerCopy;
    v20 = objc_retainBlock(v40);
    add = atomic_fetch_add(&dword_10003CAE8, 1u);
    v22 = getpid();
    v23 = [@"scan" stringByAppendingFormat:@"%d-%d-%u", v22, add, CFAbsoluteTimeGetCurrent()];
    [(LiveFSVolumeClient *)self->_serviceClient LISCAddSearchHandlers:v23 resultHandler:v19 completionHandler:v20];
    v24 = self->_volumeSyncConnection;
    liveItemQueue = self->_liveItemQueue;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10001E520;
    v34[3] = &unk_100035C08;
    v26 = v24;
    v35 = v26;
    v27 = handleCopy;
    v36 = v27;
    v28 = v23;
    v37 = v28;
    v38 = criteriaCopy;
    selfCopy = self;
    sub_10001D1C4("search", liveItemQueue, v34);
    v29 = logForCSLogCategoryDefault();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "LISearch starting: %@", buf, 0xCu);
    }

    v30 = v28;
    handlerCopy = v32;
    goto LABEL_7;
  }

  if (completionHandlerCopy)
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 2);
  }

  v27 = 0;
  v30 = 0;
LABEL_7:

  return v30;
}

- (id)scanAtLiveFSHandle:(id)handle pathFromMountPoint:(id)point date:(id)date itemHandler:(id)handler completionHandler:(id)completionHandler
{
  handleCopy = handle;
  pointCopy = point;
  dateCopy = date;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v29[0] = LISearchObjTypeReturnAll;
  v24[0] = &__kCFBooleanTrue;
  v29[1] = LISearchObjXattrsToReturn;
  v23[0] = off_10003CB08;
  v23[1] = off_10003CAF8;
  v17 = 2;
  v24[1] = [NSArray arrayWithObjects:v23 count:2];
  if (dateCopy)
  {
    *&v30 = LISearchObjModifiedAfter;
    *&v25 = dateCopy;
    v17 = 3;
  }

  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v29 count:v17];
  v19 = [(VolumeScan *)self scanAtLiveFSHandle:handleCopy pathFromMountPoint:pointCopy withCriteria:v18 itemHandler:handlerCopy completionHandler:completionHandlerCopy];

  for (i = 9; i != -1; --i)
  {
  }

  for (j = 9; j != -1; --j)
  {
  }

  return v19;
}

- (void)cancelWithToken:(id)token
{
  tokenCopy = token;
  v5 = logForCSLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "start cancelWithToken: %@", buf, 0xCu);
  }

  liveItemQueue = self->_liveItemQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001E9F8;
  v8[3] = &unk_1000356E0;
  v8[4] = self;
  v9 = tokenCopy;
  v7 = tokenCopy;
  dispatch_async(liveItemQueue, v8);
}

- (id)bulkResolveOIDData:(id)data error:(int *)error
{
  dataCopy = data;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10001D1AC;
  v26 = sub_10001D1BC;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = self->_volumeSyncConnection;
  liveItemQueue = self->_liveItemQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001ED08;
  v13[3] = &unk_100035C80;
  v9 = v7;
  v14 = v9;
  v10 = dataCopy;
  v15 = v10;
  v16 = &v18;
  v17 = &v22;
  sub_10001D1C4("resolve", liveItemQueue, v13);
  if (error)
  {
    *error = *(v19 + 6);
  }

  v11 = v23[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

- (id)bulkResolveOIDs:(unint64_t *)ds oidCount:(unint64_t)count error:(int *)error
{
  v7 = [NSData dataWithBytes:ds length:8 * count];
  v8 = [(VolumeScan *)self bulkResolveOIDData:v7 error:error];

  return v8;
}

- (BOOL)buildCheckOIDs:(unint64_t *)ds oidCount:(unint64_t)count accessDenied:(char *)denied canceled:(BOOL *)canceled
{
  countCopy = count;
  dsCopy = ds;
  v18 = 0;
  v11 = [NSData dataWithBytes:ds length:8 * count];
  v12 = [(VolumeScan *)self bulkResolveOIDData:v11 error:&v18];
  v13 = 0;
  if (!v18)
  {
    if (canceled && *canceled)
    {
      memset(denied, 1, countCopy);
      v13 = 0;
    }

    else
    {
      for (; countCopy; --countCopy)
      {
        bzero(v19, 0x400uLL);
        v14 = *dsCopy++;
        v15 = sub_1000218D0(v12, v14, v19, 0, 0);
        if (sub_100020E18(v15))
        {
          v16 = 0;
        }

        else
        {
          v16 = 2;
        }

        *denied++ = v16;
      }

      v13 = 1;
    }
  }

  return v13;
}

- (unint64_t)parentFromOID:(unint64_t)d error:(int *)error
{
  dCopy = d;
  v12 = 0;
  v5 = [(VolumeScan *)self bulkResolveOIDs:&dCopy oidCount:1 error:&v12];
  if (v12)
  {
    v6 = 0;
    if (error)
    {
LABEL_3:
      *error = v12;
    }
  }

  else
  {
    v8 = [NSNumber numberWithUnsignedLongLong:dCopy];
    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      v12 = 22;
      v10 = [v9 objectForKeyedSubscript:@"attributes"];
      if ([v10 length] && (v11 = objc_msgSend(v10, "bytes")) != 0 && (~*(v11 + 2) & 0x300) == 0 && v11[8] == dCopy)
      {
        v6 = v11[9];
        v12 = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v12 = 2;
    }

    if (error)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

- (char)pathFromOID:(unint64_t)d pathBuffer:(char *)buffer pathBufferSize:(unint64_t)size fullPath:(BOOL)path error:(int *)error
{
  dCopy = d;
  v18 = 0;
  if (buffer && size > 0x3FF)
  {
    pathCopy = path;
    v11 = [(VolumeScan *)self bulkResolveOIDs:&dCopy oidCount:1 error:&v18];
    v12 = v11;
    if (v18)
    {
      v13 = 0;
    }

    else
    {
      if (pathCopy)
      {
        rootPathUTF8String = self->_rootPathUTF8String;
        rootPathUTF8StringLength = self->_rootPathUTF8StringLength;
        bufferCopy2 = buffer;
      }

      else
      {
        bufferCopy2 = buffer;
        rootPathUTF8String = 0;
        rootPathUTF8StringLength = 0;
      }

      v13 = sub_1000218D0(v11, dCopy, bufferCopy2, rootPathUTF8String, rootPathUTF8StringLength);
      if (!v13)
      {
        v18 = 2;
      }
    }

    if (error)
    {
      *error = v18;
    }
  }

  else
  {
    v13 = 0;
    if (error)
    {
      *error = 22;
    }
  }

  return v13;
}

- (id)identifierForItem:(unint64_t)item name:(id)name parentID:(unint64_t)d
{
  nameCopy = name;
  if (item != 2 && !d)
  {
    v12 = 0;
    v9 = [(VolumeScan *)self parentFromOID:item error:&v12];
    if (v12)
    {
      v10 = 0;
      goto LABEL_7;
    }

    d = v9;
  }

  v10 = [LiveFSIDHelper identifierForItem:item name:nameCopy parentID:d];
LABEL_7:

  return v10;
}

- (id)processQueryScopes:(id)scopes usePersistentFileIDs:(BOOL)ds
{
  dsCopy = ds;
  scopesCopy = scopes;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [scopesCopy countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (!v6)
  {
    v8 = 0;
    v39 = 0;
    goto LABEL_53;
  }

  v7 = v6;
  v8 = 0;
  v39 = 0;
  v9 = *v42;
  v40 = scopesCopy;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v42 != v9)
      {
        objc_enumerationMutation(scopesCopy);
      }

      v11 = *(*(&v41 + 1) + 8 * i);
      v12 = [v11 length];
      if (v12)
      {
        v13 = v12;
        if ([v11 characterAtIndex:0] == 47)
        {
          if (v13 > [(NSString *)self->_rootPath length])
          {
            if ([v11 hasPrefix:self->_rootPath])
            {
              v14 = v11;
              if (v14)
              {
LABEL_11:
                selfCopy = self;
                v16 = v8;
                uTF8String = [v14 UTF8String];
                memset(&v47, 0, sizeof(v47));
                v18 = stat(uTF8String, &v47);
                v19 = logForCSLogCategoryDefault();
                v20 = v19;
                if (v18)
                {
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    v32 = *__error();
                    *buf = 67109634;
                    *v46 = v32;
                    *&v46[4] = 2080;
                    *&v46[6] = uTF8String;
                    *&v46[14] = 2112;
                    *&v46[16] = v11;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "error %d resolving query scope %s from %@", buf, 0x1Cu);
                  }

                  v8 = v16;
                }

                else
                {
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *v46 = uTF8String;
                    *&v46[8] = 2112;
                    *&v46[10] = v11;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding Query Path: %s from: %@", buf, 0x16u);
                  }

                  v8 = v16;
                  if (v39)
                  {
                    [v39 addObject:v14];
                  }

                  else
                  {
                    v39 = [NSMutableSet setWithObject:v14];
                  }
                }

                self = selfCopy;
                scopesCopy = v40;
LABEL_48:

                continue;
              }
            }
          }

LABEL_46:
          v14 = logForCSLogCategoryDefault();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v47.st_dev = 138412290;
            *&v47.st_mode = v11;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not resolve query scope %@", &v47, 0xCu);
          }

          goto LABEL_48;
        }

        if (![v11 hasPrefix:@"com.apple.filesystems.UserFS.FileProvider:"])
        {
          goto LABEL_46;
        }

        v21 = [v11 rangeOfString:@":"];
        if (v21 == 0x7FFFFFFFFFFFFFFFLL || v21 + v22 >= v13)
        {
          goto LABEL_46;
        }

        v14 = [v11 substringFromIndex:?];
        if ([v14 hasPrefix:@"__fp"])
        {
          if (!v8)
          {
            v24 = [(NSString *)self->_volumeUUID dataUsingEncoding:4];
            v25 = [v24 base64EncodedStringWithOptions:0];
            v8 = [@"__fp" stringByAppendingPathComponent:v25];
          }

          v26 = [v14 length];
          if (v26 < [v8 length] + 1 || !-[NSObject hasPrefix:](v14, "hasPrefix:", v8))
          {
            goto LABEL_48;
          }

          v27 = -[NSObject substringFromIndex:](v14, "substringFromIndex:", [v8 length] + 1);

          v14 = v27;
        }

        if (dsCopy)
        {
          if ([v14 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
          {
            v28 = self->_rootPath;
            if (!v28)
            {
              goto LABEL_44;
            }

LABEL_45:

            v14 = v28;
            if (v28)
            {
              goto LABEL_11;
            }

            goto LABEL_46;
          }

          if ([v14 length]>= 0xD)
          {
            v37 = [v14 substringToIndex:12];
            v29 = [[NSData alloc] initWithBase64EncodedString:v37 options:0];
            v30 = v29;
            if (v29)
            {
              v28 = *[v29 bytes];
              if (v28)
              {
                bzero(&v47, 0x400uLL);
                *buf = 0;
                v31 = [(VolumeScan *)self pathFromOID:v28 pathBuffer:&v47 pathBufferSize:1024 fullPath:1 error:buf];
                v28 = 0;
                if (!*buf)
                {
                  if (v31)
                  {
                    v36 = [NSString stringWithUTF8String:v31];
                    v35 = [v14 substringFromIndex:12];
                    v28 = [v36 stringByAppendingPathComponent:v35];
                  }
                }
              }
            }

            else
            {
              v28 = 0;
            }

            if (v28)
            {
              goto LABEL_45;
            }
          }
        }

LABEL_44:
        v28 = [(NSString *)self->_rootPath stringByAppendingFormat:@"/%@", v14];
        goto LABEL_45;
      }
    }

    v7 = [scopesCopy countByEnumeratingWithState:&v41 objects:v48 count:16];
  }

  while (v7);
LABEL_53:
  allObjects = [v39 allObjects];

  return allObjects;
}

@end
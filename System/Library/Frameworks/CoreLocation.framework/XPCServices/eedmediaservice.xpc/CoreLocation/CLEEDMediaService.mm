@interface CLEEDMediaService
+ (void)deleteFileAtPath:(id)path;
- (BOOL)abortRequested;
- (BOOL)checkIfUploadQuotaReached:(id)reached;
- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement;
- (BOOL)delayRequired;
- (BOOL)isExecutableAllowed:(id)allowed;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CLEEDMediaService)init;
- (CLEEDMediaService)initWithCoder:(id)coder;
- (double)getAvgSizeInRequest:(id)request withType:(int64_t)type;
- (double)getMaxSizeInRequest:(id)request withType:(int64_t)type;
- (double)getMinSizeInRequest:(id)request withType:(int64_t)type;
- (double)getTotalSizeOfFailedUploadsInRequest:(id)request;
- (double)getTotalSizeOfSuccessfulUploadsInRequest:(id)request;
- (double)getUploadDataRateForMediaItem:(id)item;
- (id)executablePathOfConnection:(id)connection;
- (id)getLocalizedStringByMediaTypeWithCount:(unint64_t)count forTitle:(BOOL)title;
- (id)getMediaServiceRequestWithID:(id)d;
- (id)loadFromCache;
- (unint64_t)countOfCompletedItemsInState:(int64_t)state;
- (unint64_t)countOfDelayedItemsInRequest:(id)request;
- (unint64_t)countOfItemsInRequest:(id)request withState:(int64_t)state;
- (void)abortMediaUpload;
- (void)cancelBGTaskStartGuardTimer;
- (void)cancelDebounceTimerForReleasingOSTransaction;
- (void)checkAndScheduleProcessing;
- (void)checkAndStartBGTaskStartGuardTimer;
- (void)cleanup;
- (void)cleanupOnInvalidation;
- (void)clearCache;
- (void)clearStagingArea;
- (void)connectToMediaService:(id)service uploadConfig:(id)config;
- (void)copyAndCreateServiceItemsForRequest:(id)request;
- (void)copyMediaItemToStaging:(id)staging;
- (void)dealloc;
- (void)delayMediaUpload;
- (void)encodeWithCoder:(id)coder;
- (void)handleAbortForMediaServiceItem:(id)item;
- (void)handleDelayForMediaServiceItem:(id)item;
- (void)handleEncryptionCompletionForServiceItem:(id)item encryptedFileURL:(id)l authTag:(id)tag;
- (void)handleRemoteProxyError:(id)error forProcessIdentifier:(int)identifier;
- (void)insertMediaServiceItemInUploadList:(id)list;
- (void)notifyProgressUITaskCompletion;
- (void)prepareForServiceTeardown;
- (void)processCompletedQueueForCachedRequest:(id)request;
- (void)processDelayQueueForCachedRequest:(id)request;
- (void)processMediaServicesEndOfExtendedSessionNotification;
- (void)processMediaServicesForRequestID:(id)d callUUID:(id)iD uploadURL:(id)l sharedInfoPrefix:(id)prefix combinedSecret:(id)secret token:(id)token mediaList:(id)list mitigation:(id)self0 completion:(id)self1;
- (void)processMediaServicesFromCache;
- (void)processMediaServicesMitigations:(id)mitigations;
- (void)processNextInFlightServiceItem;
- (void)processPendingQueueForCachedRequest:(id)request;
- (void)releaseOSTransaction;
- (void)removeCompletedRequestsOtherThan:(id)than;
- (void)restoreDelayedMediaServiceItems;
- (void)scheduleContinuousProcessingTask;
- (void)sendCompletionIndication;
- (void)setDebounceTimerForReleasingOSTransaction;
- (void)setProgressUITaskCompletion;
- (void)startContinuousProcessingTask:(id)task;
- (void)storeDataToCache;
- (void)submitCAMetricForRequest:(id)request;
- (void)submitCAMetricForUploadItem:(id)item;
- (void)takeOSTransaction;
- (void)transcodeMediaItem:(id)item;
- (void)triggerAllProcessing;
- (void)triggerUploadForServiceItem:(id)item;
- (void)updateCallRecordForMediaServiceItem:(id)item;
- (void)updateProgress;
@end

@implementation CLEEDMediaService

- (CLEEDMediaService)init
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v65 = "[CLEEDMediaService init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
  }

  v63.receiver = self;
  v63.super_class = CLEEDMediaService;
  v4 = [(CLEEDMediaService *)&v63 init];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = objc_alloc_init(NSMutableArray);
  mediaServiceRequestList = v4->_mediaServiceRequestList;
  v4->_mediaServiceRequestList = v5;

  v4->_extendedSessionEnded = 0;
  v4->_totalBytesUploadedDuringCall = 0;
  v7 = [NSString stringWithFormat:@"_CLEEDMediaService, %p", v4];
  uTF8String = [v7 UTF8String];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(uTF8String, v9);
  fQueue = v4->fQueue;
  v4->fQueue = v10;

  v12 = [NSString stringWithFormat:@"_CLEEDMediaServiceEncryption, %p", v4];
  uTF8String2 = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create(uTF8String2, v14);
  fEncryptionQueue = v4->fEncryptionQueue;
  v4->fEncryptionQueue = v15;

  v17 = [NSString stringWithFormat:@"_CLEEDMediaServiceSandboxCopy, %p", v4];
  uTF8String3 = [v17 UTF8String];
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create(uTF8String3, v19);
  fCopyQueue = v4->fCopyQueue;
  v4->fCopyQueue = v20;

  fDebounceTimer = v4->fDebounceTimer;
  v4->fDebounceTimer = 0;

  fOSTransaction = v4->fOSTransaction;
  v4->fOSTransaction = 0;

  fConnection = v4->fConnection;
  v4->fConnection = 0;

  fProgress = v4->fProgress;
  v4->fProgress = 0;

  *&v4->fBGTaskSetupFailure = 0;
  fUploadServiceConfig = v4->fUploadServiceConfig;
  v4->fUploadServiceConfig = 0;

  fInFlightServiceItemsList = v4->fInFlightServiceItemsList;
  v4->fInFlightServiceItemsList = 0;

  v28 = objc_alloc_init(NSMutableArray);
  fFilteredMediaServiceItemList = v4->fFilteredMediaServiceItemList;
  v4->fFilteredMediaServiceItemList = v28;

  v30 = objc_alloc_init(NSMutableArray);
  fPendingServiceItemsForEncryptionList = v4->fPendingServiceItemsForEncryptionList;
  v4->fPendingServiceItemsForEncryptionList = v30;

  v32 = objc_alloc_init(NSMutableArray);
  fPendingServiceItemsForUploadList = v4->fPendingServiceItemsForUploadList;
  v4->fPendingServiceItemsForUploadList = v32;

  v34 = objc_alloc_init(NSMutableArray);
  fCompletedServiceItemsList = v4->fCompletedServiceItemsList;
  v4->fCompletedServiceItemsList = v34;

  v36 = objc_alloc_init(NSMutableArray);
  fDelayedServiceItemsList = v4->fDelayedServiceItemsList;
  v4->fDelayedServiceItemsList = v36;

  fCurrentMitigation = v4->fCurrentMitigation;
  v4->fCurrentMitigation = 0;

  *&v4->fLatestMitigationWasNil = 1;
  v39 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v39 setAllowsCellularAccess:1];
  v40 = [NSURLSession sessionWithConfiguration:v39];
  fURLSession = v4->fURLSession;
  v4->fURLSession = v40;

  if (v4->fURLSession)
  {
    *&v4->fFinalProgressUITitleUpdated = 0;
    v4->fProgressUICompletionStatus = 0;
    fBGTaskStartGuardTimer = v4->fBGTaskStartGuardTimer;
    v4->fBGTaskStartGuardTimer = 0;

    fProgressUITask = v4->fProgressUITask;
    v4->fProgressUITask = 0;

    v4->fBGTaskSubmitted = 0;
    v45 = sub_100016568(v44);
    sharedScheduler = [*(v46 + 824) sharedScheduler];
    v48 = v4->fQueue;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100006104;
    v61[3] = &unk_100024538;
    v49 = v4;
    v62 = v49;
    LOBYTE(v48) = [sharedScheduler registerForTaskWithIdentifier:@"com.corelocation.eedmediaservice.progress" usingQueue:v48 launchHandler:v61];

    if ((v48 & 1) == 0)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100014320();
      }

      v4->fBGTaskSetupFailure = 1;
    }

    v51 = sub_1000165D4(v50);
    sharedInstance = [*(v52 + 840) sharedInstance];
    fCallCenter = v49->fCallCenter;
    v49->fCallCenter = sharedInstance;

    sub_1000165B0(v55);
    v57 = objc_alloc_init(*(v56 + 864));
    fCallHistoryManager = v49->fCallHistoryManager;
    v49->fCallHistoryManager = v57;

LABEL_14:
    v59 = v4;
    goto LABEL_20;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_1000143A0();
  }

  v59 = 0;
LABEL_20:

  return v59;
}

- (void)dealloc
{
  [(CLEEDMediaService *)self releaseOSTransaction];
  v3.receiver = self;
  v3.super_class = CLEEDMediaService;
  [(CLEEDMediaService *)&v3 dealloc];
}

- (id)getMediaServiceRequestWithID:(id)d
{
  dCopy = d;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    sub_100014420();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v6 = [mediaServiceRequestList countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v18;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(mediaServiceRequestList);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      requestID = [v11 requestID];
      if ([requestID isEqual:dCopy])
      {
        requestTimestamp = [v11 requestTimestamp];
        [requestTimestamp timeIntervalSinceNow];
        v15 = fabs(v14);

        if (v15 > 14400.0)
        {
          continue;
        }

        requestID = v8;
        v8 = v11;
      }
    }

    v7 = [mediaServiceRequestList countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);
LABEL_18:

  return v8;
}

- (void)removeCompletedRequestsOtherThan:(id)than
{
  thanCopy = than;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v4 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    requestID = [thanCopy requestID];
    uUIDString = [requestID UUIDString];
    *buf = 136446466;
    v33 = "[CLEEDMediaService removeCompletedRequestsOtherThan:]";
    v34 = 2082;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, activeRequest:%{public}s", buf, 0x16u);
  }

  v8 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v10 = [mediaServiceRequestList countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v28;
    *&v11 = 136446466;
    v25 = v11;
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        requestID2 = [v15 requestID];
        requestID3 = [thanCopy requestID];
        v18 = [requestID2 isEqual:requestID3];

        if ((v18 & 1) == 0 && ([v15 anyItemsToProcess] & 1) == 0)
        {
          if (([v15 metricProcessed] & 1) == 0)
          {
            [(CLEEDMediaService *)self submitCAMetricForRequest:v15];
          }

          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          v19 = qword_100029E68;
          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v19;
            requestID4 = [v15 requestID];
            uUIDString2 = [requestID4 UUIDString];
            uTF8String2 = [uUIDString2 UTF8String];
            *buf = v25;
            v33 = "[CLEEDMediaService removeCompletedRequestsOtherThan:]";
            v34 = 2082;
            uTF8String = uTF8String2;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, removingRequest:%{public}s", buf, 0x16u);
          }

          [v8 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [mediaServiceRequestList countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  mediaServiceRequestList2 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [mediaServiceRequestList2 removeObjectsInArray:v8];
}

- (BOOL)clientConnection:(id)connection hasEntitlement:(id)entitlement
{
  connectionCopy = connection;
  entitlementCopy = entitlement;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_INFO))
  {
    v11 = 136446723;
    v12 = "[CLEEDMediaService clientConnection:hasEntitlement:]";
    v13 = 2114;
    v14 = connectionCopy;
    v15 = 2113;
    v16 = entitlementCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s[connection:%{public}@, entitlementString:%{private}@]", &v11, 0x20u);
  }

  v8 = [connectionCopy valueForEntitlement:entitlementCopy];
  v9 = 0;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
    {
      v9 = 1;
    }
  }

  return v9;
}

- (id)executablePathOfConnection:(id)connection
{
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([connection processIdentifier], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buffer];
  }

  lastPathComponent = [v4 lastPathComponent];

  return lastPathComponent;
}

- (BOOL)isExecutableAllowed:(id)allowed
{
  allowedCopy = allowed;
  v5 = [NSSet setWithObjects:@"locationd", 0];
  v6 = [(CLEEDMediaService *)self executablePathOfConnection:allowedCopy];
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_INFO))
  {
    *buf = 136446979;
    v11 = "[CLEEDMediaService isExecutableAllowed:]";
    v12 = 2114;
    v13 = allowedCopy;
    v14 = 2113;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s, [connection:%{public}@, allowedExecutables:%{private}@, executable:%{public}@]", buf, 0x2Au);
  }

  v8 = [v5 containsObject:v6];

  return v8;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v8 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fConnection = self->fConnection;
    *buf = 136446722;
    v23 = "[CLEEDMediaService listener:shouldAcceptNewConnection:]";
    v24 = 2114;
    v25 = connectionCopy;
    v26 = 2114;
    v27 = fConnection;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, newConnection:%{public}@, currentConnection:%{public}@", buf, 0x20u);
  }

  if (qword_100029E60 != -1)
  {
    sub_1000144A0();
  }

  if (![(CLEEDMediaService *)self clientConnection:connectionCopy hasEntitlement:@"com.apple.private.corelocation.eedmediaservice"])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v13 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000144C8(v13, connectionCopy);
    }

    goto LABEL_25;
  }

  if (![(CLEEDMediaService *)self isExecutableAllowed:connectionCopy])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v14 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014568(v14, self, connectionCopy);
    }

LABEL_25:
    [connectionCopy invalidate];
    v12 = 0;
    goto LABEL_26;
  }

  [connectionCopy setRemoteObjectInterface:qword_100029E58];
  [connectionCopy setExportedInterface:qword_100029E50];
  [connectionCopy setExportedObject:self];
  [connectionCopy _setQueue:self->fQueue];
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100006E60;
  v19 = &unk_1000245A0;
  objc_copyWeak(&v20, &location);
  [connectionCopy setInvalidationHandler:&v16];
  [connectionCopy setInterruptionHandler:{&stru_1000245C0, v16, v17, v18, v19}];
  v10 = self->fConnection;
  if (v10)
  {
    [(NSXPCConnection *)v10 invalidate];
  }

  objc_storeStrong(&self->fConnection, connection);
  self->fSessionInvalidated = 0;
  [(NSXPCConnection *)self->fConnection activate];
  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v11 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v23 = "[CLEEDMediaService listener:shouldAcceptNewConnection:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Finished setting-up connection parameters to locationd", buf, 0xCu);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
  v12 = 1;
LABEL_26:

  return v12;
}

- (void)handleRemoteProxyError:(id)error forProcessIdentifier:(int)identifier
{
  errorCopy = error;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_1000146A4(v7, errorCopy, identifier);
  }

  fConnection = self->fConnection;
  if (fConnection)
  {
    [(NSXPCConnection *)fConnection invalidate];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    sub_100014794(self, v5);
  }

  [coderCopy encodeObject:self->_mediaServiceRequestList forKey:@"mediaServiceRequestList"];
  [coderCopy encodeBool:self->_extendedSessionEnded forKey:@"extendedSessionEnded"];
  [coderCopy encodeInteger:self->_totalBytesUploadedDuringCall forKey:@"totalBytesUploadedDuringCall"];
}

- (CLEEDMediaService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"mediaServiceRequestList"];
  mediaServiceRequestList = self->_mediaServiceRequestList;
  self->_mediaServiceRequestList = v7;

  self->_extendedSessionEnded = [coderCopy decodeBoolForKey:@"extendedSessionEnded"];
  v9 = [coderCopy decodeIntegerForKey:@"totalBytesUploadedDuringCall"];

  self->_totalBytesUploadedDuringCall = v9;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v10 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    v12 = self->_mediaServiceRequestList;
    v13 = v10;
    v14 = [(NSMutableArray *)v12 count];
    v15 = "NO";
    v16 = !self->_extendedSessionEnded;
    totalBytesUploadedDuringCall = self->_totalBytesUploadedDuringCall;
    v19 = "[CLEEDMediaService initWithCoder:]";
    *buf = 136446978;
    if (!v16)
    {
      v15 = "YES";
    }

    v20 = 2050;
    v21 = v14;
    v22 = 2082;
    v23 = v15;
    v24 = 2050;
    v25 = totalBytesUploadedDuringCall;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s[numRequests:%{public}lu, extendedSessionEnded:%{public}s, totalBytesUploadedInCall:%{public}ld]", buf, 0x2Au);
  }

  return self;
}

- (void)takeOSTransaction
{
  [(CLEEDMediaService *)self cancelDebounceTimerForReleasingOSTransaction];
  if (!self->fOSTransaction)
  {
    v3 = os_transaction_create();
    fOSTransaction = self->fOSTransaction;
    self->fOSTransaction = v3;

    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v5 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v6 = self->fOSTransaction;
      v7 = 136446466;
      v8 = "[CLEEDMediaService takeOSTransaction]";
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Created OS transaction:%{public}@", &v7, 0x16u);
    }
  }
}

- (void)prepareForServiceTeardown
{
  fPendingServiceItemsForUploadList = self->fPendingServiceItemsForUploadList;
  if (fPendingServiceItemsForUploadList && [(NSMutableArray *)fPendingServiceItemsForUploadList count]|| (fPendingServiceItemsForEncryptionList = self->fPendingServiceItemsForEncryptionList) != 0 && [(NSMutableArray *)fPendingServiceItemsForEncryptionList count]|| (fInFlightServiceItemsList = self->fInFlightServiceItemsList) != 0 && [(NSMutableArray *)fInFlightServiceItemsList count]|| (fDelayedServiceItemsList = self->fDelayedServiceItemsList) != 0 && [(NSMutableArray *)fDelayedServiceItemsList count])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v7 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->fPendingServiceItemsForUploadList;
      v9 = v7;
      v10 = [(NSMutableArray *)v8 count];
      v11 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
      v12 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
      v13 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
      v14 = 136447234;
      v15 = "[CLEEDMediaService prepareForServiceTeardown]";
      v16 = 2050;
      v17 = v10;
      v18 = 2050;
      v19 = v11;
      v20 = 2050;
      v21 = v12;
      v22 = 2050;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Tasks ongoing, pendingUpload:%{public}lu, pendingEncryption:%{public}lu, inFlight:%{public}lu, delayed:%{public}lu", &v14, 0x34u);
    }
  }

  else
  {
    [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
    [(NSMutableArray *)self->fCompletedServiceItemsList removeAllObjects];
    self->fAbortRequestedByUser = 0;
    [(CLEEDMediaService *)self cancelBGTaskStartGuardTimer];

    [(CLEEDMediaService *)self setDebounceTimerForReleasingOSTransaction];
  }
}

- (void)setDebounceTimerForReleasingOSTransaction
{
  [(CLEEDMediaService *)self cancelDebounceTimerForReleasingOSTransaction];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->fQueue);
  fDebounceTimer = self->fDebounceTimer;
  self->fDebounceTimer = v3;

  if (self->fDebounceTimer)
  {
    v5 = dispatch_time(0, 20000000000);
    dispatch_source_set_timer(self->fDebounceTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(&location, self);
    v6 = self->fDebounceTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000077B8;
    handler[3] = &unk_1000245E8;
    objc_copyWeak(&v10, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->fDebounceTimer);
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v7 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->fDebounceTimer;
      *buf = 136446466;
      v13 = "[CLEEDMediaService setDebounceTimerForReleasingOSTransaction]";
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Timer[%{public}@] activated", buf, 0x16u);
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014884();
    }

    [(CLEEDMediaService *)self clearCache];
    [(CLEEDMediaService *)self sendCompletionIndication];
    [(CLEEDMediaService *)self releaseOSTransaction];
  }
}

- (void)cancelDebounceTimerForReleasingOSTransaction
{
  p_fDebounceTimer = &self->fDebounceTimer;
  if (self->fDebounceTimer)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      sub_100014988(p_fDebounceTimer);
    }

    dispatch_source_cancel(*p_fDebounceTimer);
    v3 = *p_fDebounceTimer;
    *p_fDebounceTimer = 0;
  }
}

- (void)releaseOSTransaction
{
  if (self->fOSTransaction)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      fOSTransaction = self->fOSTransaction;
      v6 = 136446466;
      v7 = "[CLEEDMediaService releaseOSTransaction]";
      v8 = 2114;
      v9 = fOSTransaction;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Releasing OS transaction:%{public}@", &v6, 0x16u);
    }

    v5 = self->fOSTransaction;
    self->fOSTransaction = 0;
  }
}

- (void)sendCompletionIndication
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [mediaServiceRequestList countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 metricProcessed] & 1) == 0)
        {
          [(CLEEDMediaService *)self submitCAMetricForRequest:v8];
        }
      }

      v5 = [mediaServiceRequestList countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  [(CLEEDMediaService *)self clearStagingArea];
  [(CLEEDMediaService *)self cleanup];
  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v9 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v18 = "[CLEEDMediaService sendCompletionIndication]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
  }

  fConnection = self->fConnection;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007C4C;
  v12[3] = &unk_100024610;
  v12[4] = self;
  v11 = [(NSXPCConnection *)fConnection remoteObjectProxyWithErrorHandler:v12];
  [v11 notifyProcessingCompletion];
}

- (void)connectToMediaService:(id)service uploadConfig:(id)config
{
  serviceCopy = service;
  configCopy = config;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v8 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v32 = "[CLEEDMediaService connectToMediaService:uploadConfig:]";
    v33 = 2114;
    v34 = serviceCopy;
    v35 = 2114;
    v36 = configCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Connection to EEDMediaService(EMS) successful, mitigation:%{public}@, uploadConfig:%{public}@", buf, 0x20u);
  }

  v9 = +[NSFileManager defaultManager];
  v30 = 0;
  v10 = [v9 createDirectoryAtPath:@"/private/var/mobile/Library/CLEEDMediaService/" withIntermediateDirectories:1 attributes:0 error:&v30];
  v11 = v30;
  v12 = v11;
  if (v10)
  {
    v29 = v11;
    v13 = [v9 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/CLEEDMediaService/" error:&v29];
    v14 = v29;

    if (v13)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
      {
        sub_100014AB0();
      }
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v16 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        uTF8String = [@"/private/var/mobile/Library/CLEEDMediaService/" UTF8String];
        *buf = 136446723;
        v32 = "[CLEEDMediaService connectToMediaService:uploadConfig:]";
        v33 = 2081;
        v34 = uTF8String;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, error retrieving contents of directory:%{private}s, Error:%{public}@", buf, 0x20u);
      }
    }

    if (serviceCopy)
    {
      v19 = serviceCopy;
      v20 = 0;
      fCurrentMitigation = self->fCurrentMitigation;
      self->fCurrentMitigation = v19;
    }

    else
    {
      v22 = objc_alloc_init(CLEEDMitigation);
      fCurrentMitigation = self->fCurrentMitigation;
      self->fCurrentMitigation = v22;
      v20 = 1;
    }

    self->fLatestMitigationWasNil = v20;
    if (configCopy)
    {
      v23 = configCopy;
    }

    else
    {
      v23 = [[CLEEDUploadServiceConfig alloc] initWithNumInflightUploads:2 maxUploadFileSizeMB:100 maxUploadQuotaMB:100];
    }

    fUploadServiceConfig = self->fUploadServiceConfig;
    self->fUploadServiceConfig = v23;

    v25 = [[NSMutableArray alloc] initWithCapacity:{-[CLEEDUploadServiceConfig numInFlightUploads](self->fUploadServiceConfig, "numInFlightUploads")}];
    fInFlightServiceItemsList = self->fInFlightServiceItemsList;
    self->fInFlightServiceItemsList = v25;

    v27 = +[NSFileManager defaultManager];
    v28 = [v27 fileExistsAtPath:@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache"];

    if (v28)
    {
      [(CLEEDMediaService *)self takeOSTransaction];
      [(CLEEDMediaService *)self processMediaServicesFromCache];
    }

    else
    {
      [(CLEEDMediaService *)self prepareForServiceTeardown];
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v15 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014A08(v15);
    }

    v14 = v12;
  }
}

- (void)processMediaServicesForRequestID:(id)d callUUID:(id)iD uploadURL:(id)l sharedInfoPrefix:(id)prefix combinedSecret:(id)secret token:(id)token mediaList:(id)list mitigation:(id)self0 completion:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  prefixCopy = prefix;
  secretCopy = secret;
  tokenCopy = token;
  listCopy = list;
  mitigationCopy = mitigation;
  completionCopy = completion;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v22 = qword_100029E68;
  v23 = listCopy;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v22;
    v25 = [prefixCopy base64EncodedStringWithOptions:0];
    uTF8String = [v25 UTF8String];
    [secretCopy base64EncodedStringWithOptions:0];
    v56 = completionCopy;
    v28 = v27 = prefixCopy;
    *buf = 136448259;
    v71 = "[CLEEDMediaService processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:]";
    v72 = 2114;
    v73 = dCopy;
    v74 = 2114;
    v75 = iDCopy;
    v76 = 2114;
    v77 = lCopy;
    v78 = 2081;
    v79 = uTF8String;
    v80 = 2081;
    uTF8String2 = [v28 UTF8String];
    v82 = 2113;
    v83 = tokenCopy;
    v84 = 2114;
    v85 = mitigationCopy;
    v86 = 2114;
    v87 = listCopy;
    v23 = listCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, requestID:%{public}@, callUUID:%{public}@, uploadURL:%{public}@, sharedInfoPrefix:%{private}s, combinedSecret:%{private}s, token:%{private}@, mitigation:%{public}@, mediaList:%{public}@", buf, 0x5Cu);

    prefixCopy = v27;
    completionCopy = v56;
  }

  [(CLEEDMediaService *)self takeOSTransaction];
  if (mitigationCopy)
  {
    v29 = mitigationCopy;
    v30 = 0;
    fCurrentMitigation = self->fCurrentMitigation;
    self->fCurrentMitigation = v29;
  }

  else
  {
    v32 = objc_alloc_init(CLEEDMitigation);
    fCurrentMitigation = self->fCurrentMitigation;
    self->fCurrentMitigation = v32;
    v30 = 1;
  }

  self->fLatestMitigationWasNil = v30;
  if (![v23 count])
  {
    v47 = [NSError alloc];
    v68 = NSLocalizedDescriptionKey;
    v69 = @"MediaList is empty, count 0";
    v48 = [NSDictionary dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v49 = v47;
    v50 = 1001;
    goto LABEL_25;
  }

  if (!prefixCopy || !secretCopy)
  {
    v51 = [NSError alloc];
    v66 = NSLocalizedDescriptionKey;
    v67 = @"missing sharedInfoPrefix/combinedSecret";
    v48 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v49 = v51;
    v50 = 1003;
    goto LABEL_25;
  }

  v33 = [(CLEEDMediaService *)self getMediaServiceRequestWithID:dCopy];
  v34 = v33;
  if (!v33)
  {
    v35 = [[CLEEDMediaServiceRequest alloc] initWithRequestID:dCopy callUUID:iDCopy uploadURL:lCopy sharedInfoPrefix:prefixCopy combinedSecret:secretCopy token:tokenCopy];
    if (v35)
    {
      v34 = v35;
      mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
      [mediaServiceRequestList addObject:v34];

      goto LABEL_14;
    }

    v55 = [NSError alloc];
    v64 = NSLocalizedDescriptionKey;
    v65 = @"media request object creation failure";
    v48 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v49 = v55;
    v50 = 1006;
LABEL_25:
    v46 = [v49 initWithDomain:@"com.apple.locationd.CLEEDMediaService" code:v50 userInfo:v48];

    completionCopy[2](completionCopy, v46);
    [(CLEEDMediaService *)self prepareForServiceTeardown];
    goto LABEL_32;
  }

LABEL_14:
  v57 = mitigationCopy;
  v37 = secretCopy;
  v38 = prefixCopy;
  [(CLEEDMediaService *)self removeCompletedRequestsOtherThan:v34];
  v39 = [v34 filterAndAddMediaList:v23];
  if (v39)
  {
    if (v33)
    {
      [v34 setNumAdditionalMediaItemsSelected:{&v39[objc_msgSend(v34, "numAdditionalMediaItemsSelected")]}];
      if ([v34 metricProcessed])
      {
        [v34 setMetricProcessed:0];
        v40 = +[NSDate date];
        [v34 setRequestTimestamp:v40];
      }
    }

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v41 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v23 count];
      filteredQueue = [v34 filteredQueue];
      v45 = [filteredQueue count];
      *buf = 136446722;
      v71 = "[CLEEDMediaService processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:]";
      v72 = 2050;
      v73 = v43;
      v74 = 2050;
      v75 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaListCount:%{public}lu, filteredListCount:%{public}lu", buf, 0x20u);

      prefixCopy = v38;
    }

    [(CLEEDMediaService *)self storeDataToCache];
    completionCopy[2](completionCopy, 0);
    [(CLEEDMediaService *)self checkAndScheduleProcessing];

    v46 = 0;
  }

  else
  {
    v52 = [NSError alloc];
    v62 = NSLocalizedDescriptionKey;
    v63 = @"All duplicates in MediaItemList";
    v53 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v46 = [v52 initWithDomain:@"com.apple.locationd.CLEEDMediaService" code:1010 userInfo:v53];

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v54 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v71 = "[CLEEDMediaService processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:]";
      v72 = 2114;
      v73 = v23;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, All duplicates in mediaList:%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v46);
    [(CLEEDMediaService *)self prepareForServiceTeardown];

    prefixCopy = v38;
  }

  secretCopy = v37;
  mitigationCopy = v57;
LABEL_32:
}

- (void)processMediaServicesMitigations:(id)mitigations
{
  mitigationsCopy = mitigations;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[CLEEDMediaService processMediaServicesMitigations:]";
    v13 = 2114;
    v14 = mitigationsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mitigation:%{public}@", &v11, 0x16u);
  }

  v6 = self->fCurrentMitigation;
  if (mitigationsCopy)
  {
    v7 = mitigationsCopy;
    v8 = 0;
  }

  else
  {
    v7 = objc_alloc_init(CLEEDMitigation);
    v8 = 1;
  }

  fCurrentMitigation = self->fCurrentMitigation;
  self->fCurrentMitigation = v7;

  self->fLatestMitigationWasNil = v8;
  uploadMigitation = [(CLEEDMitigation *)self->fCurrentMitigation uploadMigitation];
  if (uploadMigitation)
  {
    if (uploadMigitation == 1)
    {
      if (!v6 || ![(CLEEDMitigation *)v6 uploadMigitation])
      {
        [(CLEEDMediaService *)self delayMediaUpload];
      }
    }

    else if (uploadMigitation == 2 && (!v6 || [(CLEEDMitigation *)v6 uploadMigitation]!= 2))
    {
      [(CLEEDMediaService *)self abortMediaUpload];
    }
  }

  else if (v6 && [(CLEEDMitigation *)v6 uploadMigitation]== 1)
  {
    [(CLEEDMediaService *)self restoreDelayedMediaServiceItems];
    [(CLEEDMediaService *)self checkAndScheduleProcessing];
  }
}

- (void)processMediaServicesEndOfExtendedSessionNotification
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[CLEEDMediaService processMediaServicesEndOfExtendedSessionNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", &v5, 0xCu);
  }

  fCurrentMitigation = self->fCurrentMitigation;
  self->fCurrentMitigation = 0;

  self->fLatestMitigationWasNil = 1;
  [(CLEEDMediaService *)self setTotalBytesUploadedDuringCall:0];
  [(CLEEDMediaService *)self restoreDelayedMediaServiceItems];
  [(CLEEDMediaService *)self checkAndScheduleProcessing];
}

- (void)updateCallRecordForMediaServiceItem:(id)item
{
  itemCopy = item;
  mediaItem = [itemCopy mediaItem];
  uploadStatus = [mediaItem uploadStatus];

  if (uploadStatus == 5)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008A84;
    block[3] = &unk_1000245E8;
    objc_copyWeak(&v10, &location);
    v9 = itemCopy;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v7 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014B2C(v7, itemCopy);
    }
  }
}

- (void)checkAndScheduleProcessing
{
  if (self->fCleanupProgressUITask)
  {
    [(CLEEDMediaService *)self setProgressUITaskCompletion];
  }

  if (self->fBGTaskSetupFailure)
  {
    goto LABEL_6;
  }

  if (self->fBGTaskSubmitted)
  {
    if (self->fProgressUITask)
    {
LABEL_6:

      [(CLEEDMediaService *)self triggerAllProcessing];
      return;
    }

    [(CLEEDMediaService *)self checkAndStartBGTaskStartGuardTimer];
  }

  else
  {

    [(CLEEDMediaService *)self scheduleContinuousProcessingTask];
  }
}

- (void)triggerAllProcessing
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
    *buf = 136446466;
    v39 = "[CLEEDMediaService triggerAllProcessing]";
    v40 = 2050;
    v41 = [mediaServiceRequestList count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, numRequests:%{public}lu", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  mediaServiceRequestList2 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v7 = [mediaServiceRequestList2 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(mediaServiceRequestList2);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        filteredQueue = [v11 filteredQueue];
        v13 = [filteredQueue count];

        if (v13)
        {
          [(CLEEDMediaService *)self copyAndCreateServiceItemsForRequest:v11];
          [(CLEEDMediaService *)self storeDataToCache];
        }
      }

      v8 = [mediaServiceRequestList2 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v8);
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v14 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fFilteredMediaServiceItemList = self->fFilteredMediaServiceItemList;
    v16 = v14;
    v17 = [(NSMutableArray *)fFilteredMediaServiceItemList count];
    *buf = 136446466;
    v39 = "[CLEEDMediaService triggerAllProcessing]";
    v40 = 2050;
    v41 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, numMediaServiceItems:%{public}lu", buf, 0x16u);
  }

  if ([(NSMutableArray *)self->fFilteredMediaServiceItemList count])
  {
    [(NSMutableArray *)self->fFilteredMediaServiceItemList sortUsingSelector:"compareMediaSize:"];
    [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList addObjectsFromArray:self->fFilteredMediaServiceItemList];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->fFilteredMediaServiceItemList;
    v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v28 + 1) + 8 * j);
          v23 = +[NSDate date];
          [v22 setTimestampEncryptionStart:v23];

          objc_initWeak(buf, self);
          fEncryptionQueue = self->fEncryptionQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000092DC;
          block[3] = &unk_1000245E8;
          objc_copyWeak(&v27, buf);
          block[4] = v22;
          dispatch_async(fEncryptionQueue, block);
          objc_destroyWeak(&v27);
          objc_destroyWeak(buf);
        }

        v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v19);
    }

    [(NSMutableArray *)self->fFilteredMediaServiceItemList removeAllObjects];
  }

  [(CLEEDMediaService *)self processNextInFlightServiceItem];
}

- (void)copyAndCreateServiceItemsForRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (!requestCopy)
  {
    goto LABEL_42;
  }

  filteredQueue = [requestCopy filteredQueue];
  if (!filteredQueue)
  {
    goto LABEL_42;
  }

  v7 = filteredQueue;
  filteredQueue2 = [v5 filteredQueue];
  v9 = [filteredQueue2 count];

  if (v9)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v10 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      filteredQueue3 = [v5 filteredQueue];
      v13 = [filteredQueue3 count];
      filteredQueue4 = [v5 filteredQueue];
      *buf = 136446979;
      v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
      v61 = 2050;
      v62 = v13;
      v63 = 2113;
      v64 = filteredQueue4;
      v65 = 2113;
      v66 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaListCount:%{public}lu, mediaList:%{private}@, mediaRequest:%{private}@", buf, 0x2Au);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [NSArray alloc];
    filteredQueue5 = [v5 filteredQueue];
    allObjects = [filteredQueue5 allObjects];
    v19 = [v16 initWithArray:allObjects];

    v20 = [v19 count];
    fCopyQueue = self->fCopyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009AA4;
    block[3] = &unk_100024638;
    v56 = v19;
    selfCopy = self;
    v22 = v19;
    dispatch_apply(v20, fCopyQueue, block);

    objc_autoreleasePoolPop(v15);
    v50 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    filteredQueue6 = [v5 filteredQueue];
    v24 = [filteredQueue6 countByEnumeratingWithState:&v51 objects:v58 count:16];
    v26 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
    if (v24)
    {
      v27 = v24;
      v28 = *v52;
      *&v25 = 136446467;
      v47 = v25;
      do
      {
        v29 = 0;
        do
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(filteredQueue6);
          }

          v30 = *(*(&v51 + 1) + 8 * v29);
          if ([v30 uploadStatus] == 1)
          {
            [(CLEEDMediaService *)self transcodeMediaItem:v30];
          }

          v31 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v30 mediaRequest:v5 mediaService:self];
          if (!v31)
          {
            if (qword_100029E70 != -1)
            {
              sub_100013358();
            }

            v33 = v26[461];
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v36 = v33;
              v48 = [v30 URL];
              path = [v48 path];
              *buf = v47;
              v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
              v61 = 2113;
              v62 = path;
              _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, mediaServiceItem creation failed for file:%{private}@", buf, 0x16u);

              v26 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
            }

            [v30 setUploadStatus:8];
            goto LABEL_30;
          }

          if ([v30 uploadStatus] != 1)
          {
            if (qword_100029E70 != -1)
            {
              sub_100013358();
            }

            v34 = v26[461];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v38 = v34;
              v49 = [v30 URL];
              path2 = [v49 path];
              *buf = v47;
              v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
              v61 = 2113;
              v62 = path2;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not copy file to staging area:%{private}@", buf, 0x16u);

              v26 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
            }

            [(NSMutableArray *)self->fCompletedServiceItemsList addObject:v31];
LABEL_30:
            [(CLEEDMediaService *)self submitCAMetricForUploadItem:v30];
            completedQueue = [v5 completedQueue];
            goto LABEL_31;
          }

          if ([(CLEEDMediaService *)self delayRequired])
          {
            [(NSMutableArray *)self->fDelayedServiceItemsList addObject:v31];
            [v5 delayQueue];
          }

          else
          {
            [v50 addObject:v31];
            [v5 pendingQueue];
          }
          completedQueue = ;
LABEL_31:
          v35 = completedQueue;
          [completedQueue addObject:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v40 = [filteredQueue6 countByEnumeratingWithState:&v51 objects:v58 count:16];
        v27 = v40;
      }

      while (v40);
    }

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v41 = v26[461];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
      v43 = [v50 count];
      filteredQueue7 = [v5 filteredQueue];
      v45 = [filteredQueue7 count];
      *buf = 136446722;
      v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
      v61 = 2050;
      v62 = v43;
      v63 = 2050;
      v64 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, FilteredServiceItemsCount:%{public}lu, mediaListCount:%{public}lu", buf, 0x20u);
    }

    filteredQueue8 = [v5 filteredQueue];
    [filteredQueue8 removeAllObjects];

    if ([v50 count])
    {
      [(NSMutableArray *)self->fFilteredMediaServiceItemList addObjectsFromArray:v50];
    }
  }

  else
  {
LABEL_42:
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014C1C();
    }
  }
}

- (void)copyMediaItemToStaging:(id)staging
{
  stagingCopy = staging;
  v5 = stagingCopy;
  if (stagingCopy)
  {
    v6 = [stagingCopy URL];

    if (v6)
    {
      if ([(CLEEDMediaService *)self abortRequested])
      {
        if (qword_100029E70 != -1)
        {
          sub_100013344();
        }

        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          sub_100014DA0();
        }

        [v5 setUploadStatus:7];
        goto LABEL_39;
      }

      sandboxExtension = [v5 sandboxExtension];
      [sandboxExtension UTF8String];
      v8 = sandbox_extension_consume();

      if ((v8 & 0x8000000000000000) == 0)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v32 = 0;
        objc_initWeak(&location, self);
        v9 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
        v10 = [v5 URL];
        v27 = 0;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10000A144;
        v22[3] = &unk_100024660;
        objc_copyWeak(v26, &location);
        v11 = v5;
        v23 = v11;
        selfCopy = self;
        v25 = &v29;
        v26[1] = v8;
        [v9 coordinateReadingItemAtURL:v10 options:1 error:&v27 byAccessor:v22];
        v12 = v27;

        if (v12 || (v30[3] & 1) == 0)
        {
          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          v13 = qword_100029E68;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v21 = [v11 URL];
            path = [v21 path];
            v19 = path;
            uTF8String = [path UTF8String];
            *buf = 136446723;
            v34 = "[CLEEDMediaService copyMediaItemToStaging:]";
            v35 = 2114;
            v36 = v12;
            v37 = 2081;
            v38 = uTF8String;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, coordinateReadingItemAtURL failed with error:%{public}@, url:%{private}s", buf, 0x20u);
          }

          if ([v11 uploadStatus] != 7)
          {
            [v11 setUploadStatus:2];
          }

          if (sandbox_extension_release())
          {
            if (qword_100029E70 != -1)
            {
              sub_100013358();
            }

            v14 = qword_100029E68;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v15 = __error();
              v16 = strerror(*v15);
              sub_100014C9C(v16, buf, v14);
            }
          }
        }

        objc_destroyWeak(v26);
        objc_destroyWeak(&location);
        _Block_object_dispose(&v29, 8);

        goto LABEL_39;
      }

      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v17 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100014CF8(v17);
      }
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100014E1C();
      }
    }

    [v5 setUploadStatus:2];
    goto LABEL_39;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_100014E98();
  }

LABEL_39:
}

- (void)transcodeMediaItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] != 2)
  {
    v73 = objc_autoreleasePoolPush();
    v72 = +[NSDate date];
    stagingURL = [itemCopy stagingURL];
    path = [stagingURL path];
    v6 = [NSURL fileURLWithPath:path];

    uRLByDeletingPathExtension = [v6 URLByDeletingPathExtension];
    path2 = [uRLByDeletingPathExtension path];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.jpeg", [path2 UTF8String]);
    v74 = [NSURL fileURLWithPath:v9];

    v11 = sub_1000164E4(v6, 0, v10);
    v13 = sub_10001661C(v12);
    v16 = [*(v14 + 896) typeWithIdentifier:{sub_10001653C(v15, v13)}];
    v18 = sub_100016510(v11, v17);
    v20 = sub_1000164B8(v11, v18, 0, v19);
    v22 = sub_1000166D0(v21);
    v25 = [v24 objectForKeyedSubscript:{**(v23 + 888), v22}];
    integerValue = [v25 integerValue];

    v28 = sub_1000166AC(v27);
    v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:**(v29 + 880), v28];
    integerValue2 = [v30 integerValue];

    v32 = integerValue2 * integerValue;
    v34 = sub_100016664(v33);
    v36 = **(v35 + 904);
    v71 = v16;
    if ([v16 conformsToType:{v36, v34}] && v32 <= 8294400)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v38 = v73;
      v37 = v74;
      v39 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
        stagingURL2 = [itemCopy stagingURL];
        lastPathComponent = [stagingURL2 lastPathComponent];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        uTF8String = [lastPathComponent UTF8String];
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Jpeg image within threshold, skipping transcoding for %{private}s", buf, 0x16u);

        v37 = v74;
      }

      v43 = v72;
      if (v11)
      {
        CFRelease(v11);
      }

LABEL_36:

      objc_autoreleasePoolPop(v38);
      goto LABEL_37;
    }

    if (v32 > 8294400)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v45 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = v6;
        v46 = v45;
        stagingURL3 = [itemCopy stagingURL];
        lastPathComponent2 = [stagingURL3 lastPathComponent];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        uTF8String = [lastPathComponent2 UTF8String];
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Resizing %{private}s", buf, 0x16u);

        v6 = v69;
      }

      v48 = 2880.0 / sqrt(v32);
      if (integerValue <= integerValue2)
      {
        v49 = integerValue2;
      }

      else
      {
        v49 = integerValue;
      }

      v50 = sub_100016688(v48 * v49);
      v75 = **(v51 + 872);
      v52 = [NSNumber numberWithInteger:v50];
      v76 = v52;
      v44 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    }

    else
    {
      v44 = 0;
    }

    v37 = v74;
    identifier = [v36 identifier];
    v55 = sub_100016460(v74, identifier, 1uLL, 0, v54);

    sub_100016434(v55, v11, v18, v44, v56);
    v38 = v73;
    if (sub_10001648C(v55, v57))
    {
      path3 = [v6 path];
      path4 = [(__CFURL *)v74 path];
      v60 = [path3 isEqualToString:path4];

      if ((v60 & 1) == 0)
      {
        [itemCopy setStagingURL:v74];
        path5 = [v6 path];
        [CLEEDMediaService deleteFileAtPath:path5];
      }

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v37 = v74;
      v62 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v63 = v62;
        stagingURL4 = [itemCopy stagingURL];
        lastPathComponent3 = [stagingURL4 lastPathComponent];
        uTF8String2 = [lastPathComponent3 UTF8String];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        uTF8String = uTF8String2;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Transcoding successful for %{private}s", buf, 0x16u);

        v37 = v74;
        if (!v11)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v67 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100015338(v67);
        if (!v11)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    if (!v11)
    {
LABEL_33:
      if (v55)
      {
        CFRelease(v55);
      }

      v43 = v72;
      [v72 timeIntervalSinceNow];
      [itemCopy setDurationTranscodeMs:(fabs(v68) * 1000.0)];

      goto LABEL_36;
    }

LABEL_32:
    CFRelease(v11);
    goto LABEL_33;
  }

LABEL_37:
}

- (void)insertMediaServiceItemInUploadList:(id)list
{
  listCopy = list;
  v5 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList indexOfObject:listCopy inSortedRange:0 options:[(NSMutableArray *)self->fPendingServiceItemsForUploadList count] usingComparator:1024, &stru_1000246A0];
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v6 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    mediaItem = [listCopy mediaItem];
    mediaItemID = [mediaItem mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    uTF8String = [uUIDString UTF8String];
    mediaItem2 = [listCopy mediaItem];
    mediaItemSizeBytes = [mediaItem2 mediaItemSizeBytes];
    v14 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
    v15 = 136447235;
    v16 = "[CLEEDMediaService insertMediaServiceItemInUploadList:]";
    v17 = 2081;
    v18 = uTF8String;
    v19 = 2050;
    v20 = mediaItemSizeBytes;
    v21 = 2050;
    v22 = v5;
    v23 = 2050;
    v24 = v14;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, mediaID:%{private}s, size:%{public}lu, indexToInsert:%{public}lu, count:%{public}lu", &v15, 0x34u);
  }

  [(NSMutableArray *)self->fPendingServiceItemsForUploadList insertObject:listCopy atIndex:v5];
}

- (void)handleEncryptionCompletionForServiceItem:(id)item encryptedFileURL:(id)l authTag:(id)tag
{
  itemCopy = item;
  lCopy = l;
  tagCopy = tag;
  objc_initWeak(&location, self);
  fQueue = self->fQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B0E8;
  v15[3] = &unk_1000244C0;
  objc_copyWeak(&v20, &location);
  v16 = itemCopy;
  v17 = lCopy;
  v18 = tagCopy;
  selfCopy = self;
  v12 = tagCopy;
  v13 = lCopy;
  v14 = itemCopy;
  dispatch_async(fQueue, v15);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)processNextInFlightServiceItem
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    if ([(CLEEDMediaService *)self abortRequested])
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
    v7 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
    v8 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
    v9 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
    v10 = [(NSMutableArray *)self->fCompletedServiceItemsList count];
    *buf = 136448002;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    v39 = 2082;
    v40 = v5;
    v41 = 2050;
    v42 = v6;
    v43 = 2050;
    v44 = v7;
    v45 = 2050;
    v46 = v8;
    v47 = 2050;
    v48 = v9;
    v49 = 2050;
    v50 = v10;
    v51 = 2050;
    v52 = vcvtd_n_f64_s64([(CLEEDMediaService *)self totalBytesUploadedDuringCall], 0x14uLL);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Abort?:%{public}s, numInFlight:%{public}lu, numPendingUpload:%{public}lu, numPendingEncrypt:%{public}lu, numDelayed:%{public}lu, numCompleted:%{public}lu, totalBytesUploadedInCall:%{public}.2lf MB", buf, 0x52u);
  }

  if (self->fAbortRequestedByUser)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v11 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Abort Requested by user, returning", buf, 0xCu);
    }

    return;
  }

  fCurrentMitigation = self->fCurrentMitigation;
  if (fCurrentMitigation && [(CLEEDMitigation *)fCurrentMitigation uploadMigitation]== 2)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v13 = qword_100029E68;
    if (!os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v14 = self->fCurrentMitigation;
    *buf = 136446466;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    v39 = 2114;
    v40 = v14;
    v15 = "#EED2EMS,%{public}s, Abort due to upload Mitigations:%{public}@, returning";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
LABEL_25:
    [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
    return;
  }

  if ([(CLEEDMediaService *)self delayRequired])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v13 = qword_100029E68;
    if (!os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v16 = self->fCurrentMitigation;
    *buf = 136446466;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    v39 = 2114;
    v40 = v16;
    v15 = "#EED2EMS,%{public}s, Delay due to upload Mitigations:%{public}@, returning";
    goto LABEL_24;
  }

  v17 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
  if (v17 >= [(CLEEDUploadServiceConfig *)self->fUploadServiceConfig numInFlightUploads])
  {
    return;
  }

  if ([(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count]|| [(NSMutableArray *)self->fPendingServiceItemsForUploadList count])
  {
    firstObject = [(NSMutableArray *)self->fPendingServiceItemsForUploadList firstObject];
    if (firstObject)
    {
      if ([(CLEEDMediaService *)self checkIfUploadQuotaReached:firstObject])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = self->fPendingServiceItemsForUploadList;
        v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v33;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v33 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [(CLEEDMediaService *)self handleDelayForMediaServiceItem:*(*(&v32 + 1) + 8 * i)];
            }

            v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v21);
        }

        [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeAllObjects];
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        v24 = qword_100029E68;
        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, uploadQuotaExceeded, All Uploads delayed", buf, 0xCu);
        }

        fQueue = self->fQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000BB7C;
        block[3] = &unk_1000246C8;
        block[4] = self;
        dispatch_async(fQueue, block);
      }

      else
      {
        [(NSMutableArray *)self->fInFlightServiceItemsList addObject:firstObject];
        [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeObject:firstObject];
        [(CLEEDMediaService *)self triggerUploadForServiceItem:firstObject];
      }

      goto LABEL_52;
    }

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v26 = qword_100029E68;
    if (!os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_52;
    }

    *buf = 136446210;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    v27 = "#EED2EMS,%{public}s, waiting for items to complete encryption.";
    v28 = v26;
    goto LABEL_51;
  }

  v29 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
  firstObject = sub_1000012D8();
  v30 = os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (!v30)
    {
LABEL_52:

      return;
    }

    *buf = 136446210;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    v27 = "#EED2EMS,%{public}s, waiting for in-flight items to complete upload.";
    v28 = firstObject;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    goto LABEL_52;
  }

  if (v30)
  {
    *buf = 136446210;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Input list is empty, preparing for service teardown.", buf, 0xCu);
  }

  [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
  [(CLEEDMediaService *)self prepareForServiceTeardown];
}

- (BOOL)checkIfUploadQuotaReached:(id)reached
{
  reachedCopy = reached;
  if (!reachedCopy)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v5 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136446210;
      v22 = "[CLEEDMediaService checkIfUploadQuotaReached:]";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaServiceItem is nil", &v21, 0xCu);
    }

    goto LABEL_21;
  }

  if (self->fLatestMitigationWasNil)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      sub_1000154C8();
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  totalBytesUploadedDuringCall = [(CLEEDMediaService *)self totalBytesUploadedDuringCall];
  mediaItem = [reachedCopy mediaItem];
  v8 = ([mediaItem mediaItemSizeBytes] + totalBytesUploadedDuringCall);
  v9 = [(CLEEDUploadServiceConfig *)self->fUploadServiceConfig maxUploadQuotaMB]* 1048576.0;

  if (v9 >= v8)
  {
    mediaItem2 = [reachedCopy mediaItem];
    -[CLEEDMediaService setTotalBytesUploadedDuringCall:](self, "setTotalBytesUploadedDuringCall:", [mediaItem2 mediaItemSizeBytes] + -[CLEEDMediaService totalBytesUploadedDuringCall](self, "totalBytesUploadedDuringCall"));

    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v16 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = vcvtd_n_f64_s64([(CLEEDMediaService *)self totalBytesUploadedDuringCall], 0x14uLL);
      mediaItem3 = [reachedCopy mediaItem];
      v21 = 136446722;
      v22 = "[CLEEDMediaService checkIfUploadQuotaReached:]";
      v23 = 2050;
      v24 = v18;
      v25 = 2050;
      v26 = vcvtd_n_f64_u64([mediaItem3 mediaItemSizeBytes], 0x14uLL);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, totalBytesUploadedInCall:%{public}.2lf MB, mediaServiceItemSize:%{public}.2lf MB", &v21, 0x20u);
    }

    goto LABEL_21;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v10 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = vcvtd_n_f64_s64([(CLEEDMediaService *)self totalBytesUploadedDuringCall], 0x14uLL);
    mediaItem4 = [reachedCopy mediaItem];
    v21 = 136446722;
    v22 = "[CLEEDMediaService checkIfUploadQuotaReached:]";
    v23 = 2050;
    v24 = v12;
    v25 = 2050;
    v26 = vcvtd_n_f64_u64([mediaItem4 mediaItemSizeBytes], 0x14uLL);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, totalBytesUploadedInCall:%{public}.2lf MB, mediaServiceItemSize:%{public}.2lf MB", &v21, 0x20u);
  }

  v14 = 1;
LABEL_22:

  return v14;
}

- (void)triggerUploadForServiceItem:(id)item
{
  itemCopy = item;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    mediaItem = [itemCopy mediaItem];
    mediaItemID = [mediaItem mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    *buf = 136446467;
    v15 = "[CLEEDMediaService triggerUploadForServiceItem:]";
    v16 = 2081;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaID:%{private}s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, itemCopy);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C0A8;
  v10[3] = &unk_1000246F0;
  objc_copyWeak(&v11, buf);
  objc_copyWeak(&v12, &location);
  [itemCopy processMediaItemWithCompletion:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (unint64_t)countOfCompletedItemsInState:(int64_t)state
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->fCompletedServiceItemsList;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        mediaItem = [*(*(&v14 + 1) + 8 * i) mediaItem];
        uploadStatus = [mediaItem uploadStatus];

        if (uploadStatus == state)
        {
          ++v7;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v12 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v19 = "[CLEEDMediaService countOfCompletedItemsInState:]";
    v20 = 2050;
    stateCopy = state;
    v22 = 2050;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, state:%{public}ld, count:%{public}lu", buf, 0x20u);
  }

  return v7;
}

- (id)getLocalizedStringByMediaTypeWithCount:(unint64_t)count forTitle:(BOOL)title
{
  titleCopy = title;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v7 = [mediaServiceRequestList countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v9 |= [v13 hasPendingVideos];
        v10 |= [v13 hasPendingPhotos];
      }

      v8 = [mediaServiceRequestList countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    if (v10 & v9)
    {
      v14 = +[NSBundle mainBundle];
      if (titleCopy)
      {
        v15 = @"%lu Items";
      }

      else
      {
        v15 = @"%lu items";
      }

      goto LABEL_20;
    }

    if (v10)
    {
      v14 = +[NSBundle mainBundle];
      if (titleCopy)
      {
        v15 = @"%lu Photos";
      }

      else
      {
        v15 = @"%lu photos";
      }

      goto LABEL_20;
    }
  }

  else
  {
  }

  v14 = +[NSBundle mainBundle];
  if (titleCopy)
  {
    v15 = @"%lu Videos";
  }

  else
  {
    v15 = @"%lu videos";
  }

LABEL_20:
  v16 = [v14 localizedStringForKey:v15 value:&stru_100024E98 table:0];
  v17 = [NSString localizedStringWithFormat:v16, count];

  return v17;
}

- (void)updateProgress
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [mediaServiceRequestList countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v44;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        filteredQueue = [*(*(&v43 + 1) + 8 * i) filteredQueue];
        v6 += [filteredQueue count];
      }

      v5 = [mediaServiceRequestList countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = self->fInFlightServiceItemsList;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    v14 = 0.0;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v39 + 1) + 8 * j) uploadProgressFraction];
        v14 = v14 + v16;
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v39 objects:v57 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  v17 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
  v18 = [(NSMutableArray *)self->fCompletedServiceItemsList count];
  v19 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
  v20 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
  v21 = &v17[v6 + v18 + v19 + [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count]+ v20];
  v22 = v14 + [(CLEEDMediaService *)self countOfCompletedItemsInState:5];
  v23 = 100 * v21;
  fProgress = self->fProgress;
  if (fProgress)
  {
    [(NSProgress *)fProgress setTotalUnitCount:100 * v21];
  }

  else
  {
    v25 = [NSProgress progressWithTotalUnitCount:100 * v21];
    v26 = self->fProgress;
    self->fProgress = v25;
  }

  [(NSProgress *)self->fProgress setCompletedUnitCount:(v22 * 100.0)];
  v27 = [NSString stringWithFormat:@"%0.2lf of %lu Files", *&v22, v21, v39];
  [(NSProgress *)self->fProgress setLocalizedAdditionalDescription:v27];
  v28 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v21 forTitle:1];
  v29 = +[NSBundle mainBundle];
  v30 = [v29 localizedStringForKey:@"To Emergency Services." value:&stru_100024E98 table:0];
  v31 = [NSString localizedStringWithFormat:v30];

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v32 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v28;
    v34 = v32;
    uTF8String = [v28 UTF8String];
    uTF8String2 = [v31 UTF8String];
    v37 = self->fProgress;
    *buf = 136447234;
    v48 = "[CLEEDMediaService updateProgress]";
    v49 = 2082;
    v50 = uTF8String;
    v51 = 2082;
    v52 = uTF8String2;
    v53 = 2114;
    v54 = v27;
    v55 = 2114;
    v56 = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Title:%{public}s, Reason:%{public}s, Description:%{public}@, progress:%{public}@", buf, 0x34u);
  }

  fProgressUITask = self->fProgressUITask;
  if (fProgressUITask && !self->fAbortRequestedByUser && !self->fFinalProgressUITitleUpdated)
  {
    if (self->fProgress && v23 != (v22 * 100.0))
    {
      [(NSProgress *)self->fProgress setUserInfoObject:0 forKey:@"HideProgressCircleInUI"];
      [(_BGContinuedProcessingTask *)self->fProgressUITask updateProgress:self->fProgress];
      fProgressUITask = self->fProgressUITask;
    }

    [(_BGContinuedProcessingTask *)fProgressUITask updateTitle:v28 withReason:v31];
  }
}

- (void)scheduleContinuousProcessingTask
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [mediaServiceRequestList countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v37;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        filteredQueue = [*(*(&v36 + 1) + 8 * i) filteredQueue];
        v6 += [filteredQueue count];
      }

      v5 = [mediaServiceRequestList countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = [(NSMutableArray *)self->fFilteredMediaServiceItemList count]+ v6;
  v11 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
  v12 = &v10[[(NSMutableArray *)self->fPendingServiceItemsForUploadList count]+ v11];
  v13 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
  v14 = [(NSMutableArray *)self->fInFlightServiceItemsList count]+ v13;
  v15 = &v12[[(NSMutableArray *)self->fCompletedServiceItemsList count]+ v14];
  if (v15)
  {
    sub_100016640(v16);
    v18 = [objc_alloc(*(v17 + 832)) initWithIdentifier:@"com.corelocation.eedmediaservice.progress" iconBundleIdentifier:@"com.apple.graphic-icon.emergency-sos"];
    v19 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v15 forTitle:1];
    [v18 setTitle:v19];

    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Preparing to send..." value:&stru_100024E98 table:0];
    v22 = [NSString localizedStringWithFormat:v21];
    [v18 setReason:v22];

    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v23 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v23;
      title = [v18 title];
      reason = [v18 reason];
      *buf = 136446978;
      v41 = "[CLEEDMediaService scheduleContinuousProcessingTask]";
      v42 = 2114;
      v43 = v18;
      v44 = 2114;
      v45 = title;
      v46 = 2114;
      v47 = reason;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, ContinuedProcessingTaskRequest:%{public}@, Title:%{public}@, Reason:%{public}@", buf, 0x2Au);
    }

    v28 = sub_100016568(v24);
    sharedScheduler = [*(v29 + 824) sharedScheduler];
    v35 = 0;
    v31 = [sharedScheduler submitTaskRequest:v18 error:&v35];
    v32 = v35;

    if (v31)
    {
      self->fBGTaskSubmitted = 1;
      [(CLEEDMediaService *)self checkAndStartBGTaskStartGuardTimer];
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v34 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100015548(v34);
      }

      self->fBGTaskSetupFailure = 1;
      [(CLEEDMediaService *)self triggerAllProcessing];
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v33 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v41 = "[CLEEDMediaService scheduleContinuousProcessingTask]";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Total Count is 0. Nothing to process, early return.", buf, 0xCu);
    }

    [(CLEEDMediaService *)self triggerAllProcessing];
  }
}

- (void)startContinuousProcessingTask:(id)task
{
  taskCopy = task;
  if (self->fBGTaskSetupFailure)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000155EC();
    }

    [taskCopy setTaskCompletedWithSuccess:0];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v6 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = "[CLEEDMediaService startContinuousProcessingTask:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
    }

    [(CLEEDMediaService *)self cancelBGTaskStartGuardTimer];
    objc_initWeak(buf, taskCopy);
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D254;
    v7[3] = &unk_1000246F0;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, buf);
    [taskCopy setExpirationHandler:v7];
    objc_storeStrong(&self->fProgressUITask, task);
    [(CLEEDMediaService *)self triggerAllProcessing];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

- (void)checkAndStartBGTaskStartGuardTimer
{
  if (self->fBGTaskStartGuardTimer)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      fBGTaskStartGuardTimer = self->fBGTaskStartGuardTimer;
      *buf = 136446466;
      v15 = "[CLEEDMediaService checkAndStartBGTaskStartGuardTimer]";
      v16 = 2114;
      v17 = fBGTaskStartGuardTimer;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Timer[%{public}@] already active.", buf, 0x16u);
    }
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->fQueue);
    v6 = self->fBGTaskStartGuardTimer;
    self->fBGTaskStartGuardTimer = v5;

    if (self->fBGTaskStartGuardTimer)
    {
      v7 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(self->fBGTaskStartGuardTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(&location, self);
      v8 = self->fBGTaskStartGuardTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000D620;
      handler[3] = &unk_1000245E8;
      objc_copyWeak(&v12, &location);
      handler[4] = self;
      dispatch_source_set_event_handler(v8, handler);
      dispatch_resume(self->fBGTaskStartGuardTimer);
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v9 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v10 = self->fBGTaskStartGuardTimer;
        *buf = 136446466;
        v15 = "[CLEEDMediaService checkAndStartBGTaskStartGuardTimer]";
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Timer[%{public}@] activated", buf, 0x16u);
      }

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_10001566C();
      }
    }
  }
}

- (void)cancelBGTaskStartGuardTimer
{
  if (self->fBGTaskStartGuardTimer)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v3 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      fBGTaskStartGuardTimer = self->fBGTaskStartGuardTimer;
      v6 = 136446466;
      v7 = "[CLEEDMediaService cancelBGTaskStartGuardTimer]";
      v8 = 2114;
      v9 = fBGTaskStartGuardTimer;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, cancelling timer[%{public}@]", &v6, 0x16u);
    }

    dispatch_source_cancel(self->fBGTaskStartGuardTimer);
    v5 = self->fBGTaskStartGuardTimer;
    self->fBGTaskStartGuardTimer = 0;
  }
}

- (void)notifyProgressUITaskCompletion
{
  if (self->fProgressUITask && !self->fCleanupProgressUITask)
  {
    v3 = [(CLEEDMediaService *)self countOfCompletedItemsInState:5];
    v4 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
    v5 = [(NSMutableArray *)self->fCompletedServiceItemsList count]+ v4;
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v6 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "NO";
      fProgressUITask = self->fProgressUITask;
      fProgress = self->fProgress;
      if (self->fAbortRequestedByUser)
      {
        v7 = "YES";
      }

      *buf = 136447746;
      v45 = "[CLEEDMediaService notifyProgressUITaskCompletion]";
      v46 = 2050;
      v47 = v3;
      v48 = 2050;
      v49 = v4;
      v50 = 2050;
      v51 = v5;
      v52 = 2082;
      v53 = v7;
      v54 = 2114;
      v55 = fProgressUITask;
      v56 = 2114;
      v57 = fProgress;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, completedCount:%{public}ld, delayCount:%{public}ld, totalCount:%{public}ld, userAbort:%{public}s, ProgressUITask:%{public}@, Progress:%{public}@", buf, 0x48u);
    }

    if (self->fAbortRequestedByUser)
    {
      v10 = 0;
      v11 = 0;
LABEL_24:
      objc_initWeak(buf, self);
      v30 = dispatch_time(0, 3000000000);
      fQueue = self->fQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DF60;
      block[3] = &unk_1000245A0;
      objc_copyWeak(&v43, buf);
      dispatch_after(v30, fQueue, block);
      self->fCleanupProgressUITask = 1;
      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);

      return;
    }

    if (v4 < 1)
    {
      if (v5 < 1)
      {
        v10 = 0;
        v11 = 0;
        self->fProgressUICompletionStatus = 1;
        goto LABEL_24;
      }

      v24 = v5 - v3;
      if (v5 == v3)
      {
        v25 = +[NSBundle mainBundle];
        v26 = [v25 localizedStringForKey:@"%s Sent" value:&stru_100024E98 table:0];
        v27 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v3 forTitle:1];
        v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v26, [v27 UTF8String]);

        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"Upload Completed." value:&stru_100024E98 table:0];
        v11 = [NSString localizedStringWithFormat:v29];

        self->fProgressUICompletionStatus = 1;
      }

      else
      {
        v32 = +[NSBundle mainBundle];
        v33 = v32;
        if (v3)
        {
          v34 = [v32 localizedStringForKey:@"Only %s Sent" value:&stru_100024E98 table:0];
          v35 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v3 forTitle:1];
          v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v34, [v35 UTF8String]);

          v36 = +[NSBundle mainBundle];
          v37 = [v36 localizedStringForKey:@"Could not send %s." value:&stru_100024E98 table:0];
          v38 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v24 forTitle:0];
          v11 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v37, [v38 UTF8String]);
        }

        else
        {
          v39 = [v32 localizedStringForKey:@"No Items Sent" value:&stru_100024E98 table:0];
          v10 = [NSString localizedStringWithFormat:v39];

          v36 = +[NSBundle mainBundle];
          v40 = [v36 localizedStringForKey:@"Could not send %s." value:&stru_100024E98 table:0];
          v41 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v5 forTitle:0];
          v11 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v40, [v41 UTF8String]);
        }
      }
    }

    else
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"%s Paused" value:&stru_100024E98 table:0];
      v14 = [(CLEEDMediaService *)self getLocalizedStringByMediaTypeWithCount:v4 forTitle:1];
      v10 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v13, [v14 UTF8String]);

      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"iPhone will try to send after the call." value:&stru_100024E98 table:0];
      v11 = [NSString localizedStringWithFormat:v16];
    }

    if (v10 && v11)
    {
      self->fFinalProgressUITitleUpdated = 1;
      v17 = [[NSNumber alloc] initWithBool:1];
      [(NSProgress *)self->fProgress setUserInfoObject:v17 forKey:@"HideProgressCircleInUI"];
      [(_BGContinuedProcessingTask *)self->fProgressUITask updateProgress:self->fProgress];
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v18 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v10;
        v20 = v18;
        uTF8String = [v10 UTF8String];
        uTF8String2 = [v11 UTF8String];
        v23 = self->fProgress;
        *buf = 136446978;
        v45 = "[CLEEDMediaService notifyProgressUITaskCompletion]";
        v46 = 2082;
        v47 = uTF8String;
        v48 = 2082;
        v49 = uTF8String2;
        v50 = 2114;
        v51 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Title:%{public}s, Reason:%{public}s, Progress:%{public}@", buf, 0x2Au);
      }

      [(_BGContinuedProcessingTask *)self->fProgressUITask updateTitle:v10 withReason:v11];
    }

    goto LABEL_24;
  }
}

- (void)setProgressUITaskCompletion
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fProgressUITask = self->fProgressUITask;
    v5 = "NO";
    if (self->fProgressUICompletionStatus)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (self->fCleanupProgressUITask)
    {
      v5 = "YES";
    }

    v9 = 136446978;
    v10 = "[CLEEDMediaService setProgressUITaskCompletion]";
    v11 = 2114;
    v12 = fProgressUITask;
    v13 = 2082;
    v14 = v6;
    v15 = 2082;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Task:%{public}@, TaskStatus:%{public}s, CleanupProgressUITask:%{public}s", &v9, 0x2Au);
  }

  if (self->fCleanupProgressUITask)
  {
    [(_BGContinuedProcessingTask *)self->fProgressUITask setTaskCompletedWithSuccess:self->fProgressUICompletionStatus];
    v7 = self->fProgressUITask;
    self->fProgressUITask = 0;

    self->fBGTaskSubmitted = 0;
    fProgress = self->fProgress;
    self->fProgress = 0;

    *&self->fFinalProgressUITitleUpdated = 0;
    self->fProgressUICompletionStatus = 0;
  }
}

- (BOOL)abortRequested
{
  result = 1;
  if (!self->fAbortRequestedByUser)
  {
    fCurrentMitigation = self->fCurrentMitigation;
    if (!fCurrentMitigation || [(CLEEDMitigation *)fCurrentMitigation uploadMigitation]!= 2)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)delayRequired
{
  fCurrentMitigation = self->fCurrentMitigation;
  if (!fCurrentMitigation || (v3 = [(CLEEDMitigation *)fCurrentMitigation uploadMigitation], v3 != 1))
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)abortMediaUpload
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fPendingServiceItemsForUploadList = self->fPendingServiceItemsForUploadList;
    v5 = v3;
    v6 = [(NSMutableArray *)fPendingServiceItemsForUploadList count];
    v7 = &v6[[(NSMutableArray *)self->fFilteredMediaServiceItemList count]];
    v8 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
    v9 = &v7[[(NSMutableArray *)self->fInFlightServiceItemsList count]+ v8];
    v10 = [(NSMutableArray *)self->fDelayedServiceItemsList count];
    *buf = 136446466;
    v71 = "[CLEEDMediaService abortMediaUpload]";
    v72 = 2050;
    v73 = &v10[v9];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Aborting pending media uploads:%{public}lu", buf, 0x16u);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v11 = self->fInFlightServiceItemsList;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v62;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v61 + 1) + 8 * i);
        urlUploadTask = [v16 urlUploadTask];

        if (urlUploadTask)
        {
          urlUploadTask2 = [v16 urlUploadTask];
          [urlUploadTask2 cancel];
        }

        [v16 cancelDelayTimer];
        [(CLEEDMediaService *)self handleAbortForMediaServiceItem:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v13);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = self->fPendingServiceItemsForUploadList;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v58;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(CLEEDMediaService *)self handleAbortForMediaServiceItem:*(*(&v57 + 1) + 8 * j)];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v21);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = self->fPendingServiceItemsForEncryptionList;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    do
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(CLEEDMediaService *)self handleAbortForMediaServiceItem:*(*(&v53 + 1) + 8 * k)];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v26);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = self->fDelayedServiceItemsList;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v50;
    do
    {
      for (m = 0; m != v31; m = m + 1)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(CLEEDMediaService *)self handleAbortForMediaServiceItem:*(*(&v49 + 1) + 8 * m)];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v31);
  }

  [(NSMutableArray *)self->fInFlightServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList removeAllObjects];
  [(NSMutableArray *)self->fDelayedServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fFilteredMediaServiceItemList removeAllObjects];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v35 = [mediaServiceRequestList countByEnumeratingWithState:&v45 objects:v65 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v46;
    do
    {
      for (n = 0; n != v36; n = n + 1)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        v39 = *(*(&v45 + 1) + 8 * n);
        if (([v39 metricProcessed] & 1) == 0)
        {
          [(CLEEDMediaService *)self submitCAMetricForRequest:v39];
        }

        filteredQueue = [v39 filteredQueue];
        [filteredQueue removeAllObjects];

        pendingQueue = [v39 pendingQueue];
        [pendingQueue removeAllObjects];

        delayQueue = [v39 delayQueue];
        [delayQueue removeAllObjects];

        completedQueue = [v39 completedQueue];
        [completedQueue removeAllObjects];
      }

      v36 = [mediaServiceRequestList countByEnumeratingWithState:&v45 objects:v65 count:16];
    }

    while (v36);
  }

  mediaServiceRequestList2 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [mediaServiceRequestList2 removeAllObjects];

  [(CLEEDMediaService *)self clearCache];
  [(CLEEDMediaService *)self prepareForServiceTeardown];
}

- (void)delayMediaUpload
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fPendingServiceItemsForUploadList = self->fPendingServiceItemsForUploadList;
    v5 = v3;
    v6 = [(NSMutableArray *)fPendingServiceItemsForUploadList count];
    v7 = &v6[[(NSMutableArray *)self->fFilteredMediaServiceItemList count]];
    v8 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
    v9 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
    *buf = 136446466;
    v54 = "[CLEEDMediaService delayMediaUpload]";
    v55 = 2050;
    v56 = &v8[v9 + v7];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Delaying pending media uploads:%{public}lu", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v10 = self->fInFlightServiceItemsList;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        urlUploadTask = [v15 urlUploadTask];

        if (urlUploadTask)
        {
          urlUploadTask2 = [v15 urlUploadTask];
          [urlUploadTask2 cancel];
        }

        [v15 cancelDelayTimer];
        [(CLEEDMediaService *)self handleDelayForMediaServiceItem:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v12);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = self->fFilteredMediaServiceItemList;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(CLEEDMediaService *)self handleDelayForMediaServiceItem:*(*(&v41 + 1) + 8 * j)];
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v20);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = self->fPendingServiceItemsForUploadList;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(CLEEDMediaService *)self handleDelayForMediaServiceItem:*(*(&v37 + 1) + 8 * k)];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v25);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = self->fPendingServiceItemsForEncryptionList;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(CLEEDMediaService *)self handleDelayForMediaServiceItem:*(*(&v33 + 1) + 8 * m), v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v30);
  }

  [(CLEEDMediaService *)self storeDataToCache];
  [(NSMutableArray *)self->fInFlightServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fFilteredMediaServiceItemList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList removeAllObjects];
  [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
}

- (void)restoreDelayedMediaServiceItems
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = self->fDelayedServiceItemsList;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v29;
    *&v4 = 136446466;
    v26 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        mediaRequest = [v8 mediaRequest];
        delayQueue = [mediaRequest delayQueue];
        mediaItem = [v8 mediaItem];
        v12 = [delayQueue member:mediaItem];

        if (v12)
        {
          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          v13 = qword_100029E68;
          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            mediaItem2 = [v8 mediaItem];
            *buf = v26;
            v33 = "[CLEEDMediaService restoreDelayedMediaServiceItems]";
            v34 = 2114;
            v35 = mediaItem2;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, MediaServiceItem:%{public}@", buf, 0x16u);
          }

          mediaItem3 = [v8 mediaItem];
          uploadStatus = [mediaItem3 uploadStatus];

          if (uploadStatus == 1)
          {
            [(NSMutableArray *)self->fFilteredMediaServiceItemList addObject:v8];
          }

          else
          {
            if (uploadStatus != 3)
            {
              continue;
            }

            [(CLEEDMediaService *)self insertMediaServiceItemInUploadList:v8];
          }

          mediaRequest2 = [v8 mediaRequest];
          pendingQueue = [mediaRequest2 pendingQueue];
          mediaItem4 = [v8 mediaItem];
          [pendingQueue addObject:mediaItem4];

          mediaRequest3 = [v8 mediaRequest];
          delayQueue2 = [mediaRequest3 delayQueue];
          mediaItem5 = [v8 mediaItem];
          [delayQueue2 removeObject:mediaItem5];

          goto LABEL_20;
        }

        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        v18 = qword_100029E68;
        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          mediaRequest3 = v18;
          mediaItem6 = [v8 mediaItem];
          *buf = v26;
          v33 = "[CLEEDMediaService restoreDelayedMediaServiceItems]";
          v34 = 2114;
          v35 = mediaItem6;
          _os_log_error_impl(&_mh_execute_header, mediaRequest3, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, media item not part of delay queue:%{public}@", buf, 0x16u);

LABEL_20:
          continue;
        }
      }

      v5 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->fDelayedServiceItemsList removeAllObjects];
  [(CLEEDMediaService *)self storeDataToCache];
}

- (void)cleanupOnInvalidation
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->fInFlightServiceItemsList;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        urlUploadTask = [v8 urlUploadTask];

        if (urlUploadTask)
        {
          urlUploadTask2 = [v8 urlUploadTask];
          [urlUploadTask2 cancel];
        }

        [v8 cancelDelayTimer];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v5);
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v11 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    fInFlightServiceItemsList = self->fInFlightServiceItemsList;
    v13 = v11;
    if ([(NSMutableArray *)fInFlightServiceItemsList count])
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v15 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
    v16 = &v15[[(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count]];
    v17 = [(NSMutableArray *)self->fFilteredMediaServiceItemList count];
    v18 = [(NSMutableArray *)self->fInFlightServiceItemsList count];
    *buf = 136446722;
    v24 = "[CLEEDMediaService cleanupOnInvalidation]";
    v25 = 2082;
    v26 = v14;
    v27 = 2050;
    v28 = &v17[v18 + v16];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, AnyInFlightMediaServiceItem?:%{public}s, pendingCount(incl. in-flight item):%{public}lu", buf, 0x20u);
  }

  [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
  [(CLEEDMediaService *)self setProgressUITaskCompletion];
  [(CLEEDMediaService *)self cleanup];
  [(CLEEDMediaService *)self releaseOSTransaction];
}

- (void)handleAbortForMediaServiceItem:(id)item
{
  itemCopy = item;
  mediaItem = [itemCopy mediaItem];
  [mediaItem setUploadStatus:7];

  mediaRequest = [itemCopy mediaRequest];

  if (mediaRequest)
  {
    mediaRequest2 = [itemCopy mediaRequest];
    [mediaRequest2 setDidUserCancelUpload:1];
  }

  mediaItem2 = [itemCopy mediaItem];
  [(CLEEDMediaService *)self submitCAMetricForUploadItem:mediaItem2];

  mediaRequest3 = [itemCopy mediaRequest];
  pendingQueue = [mediaRequest3 pendingQueue];
  mediaItem3 = [itemCopy mediaItem];
  v12 = [pendingQueue member:mediaItem3];

  if (v12)
  {
    [(NSMutableArray *)self->fCompletedServiceItemsList addObject:itemCopy];
    mediaItem4 = [itemCopy mediaItem];
    stagingURL = [mediaItem4 stagingURL];
    path = [stagingURL path];
    [CLEEDMediaService deleteFileAtPath:path];

    mediaItem5 = [itemCopy mediaItem];
    encryptedFileURL = [mediaItem5 encryptedFileURL];
    path2 = [encryptedFileURL path];
    [CLEEDMediaService deleteFileAtPath:path2];
  }

  mediaRequest4 = [itemCopy mediaRequest];
  mediaItem6 = [itemCopy mediaItem];
  v21 = [mediaRequest4 updateQueueForProcessedMediaItem:mediaItem6];

  if (!v21)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v22 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      sub_100015770(v22);
    }
  }
}

- (void)handleDelayForMediaServiceItem:(id)item
{
  itemCopy = item;
  mediaRequest = [itemCopy mediaRequest];
  delayQueue = [mediaRequest delayQueue];
  mediaItem = [itemCopy mediaItem];
  v8 = [delayQueue member:mediaItem];

  if (!v8)
  {
    mediaRequest2 = [itemCopy mediaRequest];
    pendingQueue = [mediaRequest2 pendingQueue];
    mediaItem2 = [itemCopy mediaItem];
    v12 = [pendingQueue member:mediaItem2];

    if (v12)
    {
      [(NSMutableArray *)self->fDelayedServiceItemsList addObject:itemCopy];
      if ([(CLEEDMediaService *)self delayRequired])
      {
        mediaItem3 = [itemCopy mediaItem];
        [mediaItem3 setDidApplyDelayMitigation:1];
      }
    }

    mediaRequest3 = [itemCopy mediaRequest];
    mediaItem4 = [itemCopy mediaItem];
    v16 = [mediaRequest3 updateQueueForDelayedMediaItem:mediaItem4];

    if (!v16)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v17 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
      {
        sub_100015824(v17);
      }
    }
  }
}

- (void)clearStagingArea
{
  v2 = +[NSFileManager defaultManager];
  v19 = 0;
  v3 = [v2 contentsOfDirectoryAtPath:@"/private/var/mobile/Library/CLEEDMediaService/" error:&v19];
  v4 = v19;

  if (v4)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v5 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000158D8(v5);
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v6 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [v3 count];
      *buf = 136446466;
      v22 = "[CLEEDMediaService clearStagingArea]";
      v23 = 2050;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Num files in staging area:%{public}lu", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [@"/private/var/mobile/Library/CLEEDMediaService/" stringByAppendingString:{*(*(&v15 + 1) + 8 * v13), v15}];
          [CLEEDMediaService deleteFileAtPath:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }
}

- (void)cleanup
{
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v3 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[CLEEDMediaService cleanup]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
  }

  fCurrentMitigation = self->fCurrentMitigation;
  self->fCurrentMitigation = 0;

  self->fLatestMitigationWasNil = 1;
  [(CLEEDMediaService *)self setTotalBytesUploadedDuringCall:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mediaServiceRequestList = [(CLEEDMediaService *)self mediaServiceRequestList];
  v6 = [mediaServiceRequestList countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(mediaServiceRequestList);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        filteredQueue = [v10 filteredQueue];
        [filteredQueue removeAllObjects];

        delayQueue = [v10 delayQueue];
        [delayQueue removeAllObjects];

        pendingQueue = [v10 pendingQueue];
        [pendingQueue removeAllObjects];

        completedQueue = [v10 completedQueue];
        [completedQueue removeAllObjects];
      }

      v7 = [mediaServiceRequestList countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  mediaServiceRequestList2 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [mediaServiceRequestList2 removeAllObjects];

  [(NSMutableArray *)self->fDelayedServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fFilteredMediaServiceItemList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList removeAllObjects];
  [(NSMutableArray *)self->fCompletedServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fInFlightServiceItemsList removeAllObjects];
}

+ (void)deleteFileAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:pathCopy];

    if (v5)
    {
      v6 = +[NSFileManager defaultManager];
      v9 = 0;
      [v6 removeItemAtPath:pathCopy error:&v9];
      v7 = v9;

      if (v7)
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          sub_100015980();
        }
      }

      else
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
        {
          sub_100015A0C();
        }
      }
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v8 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100015A90(v8);
    }
  }
}

- (void)processMediaServicesFromCache
{
  v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v67 = "[CLEEDMediaService processMediaServicesFromCache]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
  }

  loadFromCache = [(CLEEDMediaService *)self loadFromCache];
  v7 = loadFromCache;
  if (!loadFromCache || ![loadFromCache count])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v50 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v67 = "[CLEEDMediaService processMediaServicesFromCache]";
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s,No data available to restore from cache", buf, 0xCu);
    }

    goto LABEL_65;
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v8 = v7;
  v61 = [v8 countByEnumeratingWithState:&v62 objects:v78 count:16];
  if (!v61)
  {

    goto LABEL_64;
  }

  v52 = v7;
  selfCopy = self;
  v53 = 0;
  v9 = *v63;
  v10 = v8;
  v60 = v8;
  do
  {
    v11 = 0;
    do
    {
      if (*v63 != v9)
      {
        objc_enumerationMutation(v10);
      }

      v12 = *(*(&v62 + 1) + 8 * v11);
      requestID = [v12 requestID];
      if (!requestID)
      {
        goto LABEL_36;
      }

      v14 = requestID;
      uploadURL = [v12 uploadURL];
      if (!uploadURL)
      {
        goto LABEL_35;
      }

      v16 = uploadURL;
      v17 = v9;
      sharedInfoPrefix = [v12 sharedInfoPrefix];
      if (!sharedInfoPrefix)
      {
        goto LABEL_34;
      }

      v19 = sharedInfoPrefix;
      combinedSecret = [v12 combinedSecret];
      if (!combinedSecret)
      {
        goto LABEL_33;
      }

      deviceKeyConfirmation = [v12 deviceKeyConfirmation];
      if (!deviceKeyConfirmation)
      {
        goto LABEL_32;
      }

      token = [v12 token];
      if (!token)
      {
        goto LABEL_31;
      }

      requestTimestamp = [v12 requestTimestamp];
      if (!requestTimestamp)
      {
        goto LABEL_30;
      }

      callUUID = [v12 callUUID];
      if (!callUUID)
      {

LABEL_30:
LABEL_31:

        v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
LABEL_32:

        v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
LABEL_33:

        v10 = v60;
LABEL_34:

        v9 = v17;
LABEL_35:

LABEL_36:
        if (v3[462] != -1)
        {
          sub_100013358();
        }

        v31 = v4[461];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446467;
          v67 = "[CLEEDMediaService processMediaServicesFromCache]";
          v68 = 2113;
          v69 = v12;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Invalid request data in request:%{private}@, skipping request.", buf, 0x16u);
        }

        goto LABEL_40;
      }

      v58 = callUUID;
      pendingQueue = [v12 pendingQueue];
      if (pendingQueue)
      {
        goto LABEL_23;
      }

      completedQueue = [v12 completedQueue];
      if (completedQueue)
      {

        pendingQueue = 0;
LABEL_23:

        v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v10 = v60;
        v9 = v17;
        goto LABEL_24;
      }

      filteredQueue = [v12 filteredQueue];

      v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
      v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
      v10 = v60;
      v9 = v17;
      if (!filteredQueue)
      {
        goto LABEL_36;
      }

LABEL_24:
      requestTimestamp2 = [v12 requestTimestamp];
      [requestTimestamp2 timeIntervalSinceNow];
      v29 = fabs(v28);

      if (v29 > 14400.0)
      {
        if (v3[462] != -1)
        {
          sub_100013358();
        }

        v30 = v4[461];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446723;
          v67 = "[CLEEDMediaService processMediaServicesFromCache]";
          v68 = 2113;
          v69 = v12;
          v70 = 2049;
          v71 = 14400;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Validity expired for request:%{private}@, allowedValiditySecs:%{private}lu, skipping request.", buf, 0x20u);
        }

        goto LABEL_40;
      }

      if ([v12 anyItemsToProcess])
      {
        delayQueue = [v12 delayQueue];
        if (![delayQueue count])
        {
          goto LABEL_46;
        }

        delayRequired = [(CLEEDMediaService *)selfCopy delayRequired];

        if ((delayRequired & 1) == 0)
        {
          pendingQueue2 = [v12 pendingQueue];
          delayQueue2 = [v12 delayQueue];
          [pendingQueue2 unionSet:delayQueue2];

          delayQueue = [v12 delayQueue];
          [delayQueue removeAllObjects];
LABEL_46:
        }

        [(CLEEDMediaService *)selfCopy processCompletedQueueForCachedRequest:v12];
        [(CLEEDMediaService *)selfCopy processPendingQueueForCachedRequest:v12];
        [(CLEEDMediaService *)selfCopy processDelayQueueForCachedRequest:v12];
        requestID2 = [v12 requestID];
        v37 = [(CLEEDMediaService *)selfCopy getMediaServiceRequestWithID:requestID2];

        if (!v37)
        {
          mediaServiceRequestList = [(CLEEDMediaService *)selfCopy mediaServiceRequestList];
          [mediaServiceRequestList addObject:v12];
        }

        v53 = 1;
        v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v10 = v60;
        goto LABEL_40;
      }

      if (v3[462] != -1)
      {
        sub_100013358();
      }

      v39 = v4[461];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v39;
        requestID3 = [v12 requestID];
        uUIDString = [requestID3 UUIDString];
        uTF8String = [uUIDString UTF8String];
        filteredQueue2 = [v12 filteredQueue];
        v42 = [filteredQueue2 count];
        pendingQueue3 = [v12 pendingQueue];
        v44 = [pendingQueue3 count];
        delayQueue3 = [v12 delayQueue];
        v46 = [delayQueue3 count];
        completedQueue2 = [v12 completedQueue];
        v48 = [completedQueue2 count];
        *buf = 136447491;
        v67 = "[CLEEDMediaService processMediaServicesFromCache]";
        v68 = 2081;
        v69 = uTF8String;
        v70 = 2050;
        v71 = v42;
        v72 = 2050;
        v73 = v44;
        v10 = v60;
        v74 = 2050;
        v75 = v46;
        v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v76 = 2050;
        v77 = v48;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Nothing to process for cachedRequestID:%{private}s, filteredCount:%{public}lu, pendingCount:%{public}lu, delayCount:%{public}lu, completedCount:%{public}lu", buf, 0x3Eu);

        v9 = v17;
        v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
      }

LABEL_40:
      v11 = v11 + 1;
    }

    while (v61 != v11);
    v49 = [v10 countByEnumeratingWithState:&v62 objects:v78 count:16];
    v61 = v49;
  }

  while (v49);

  self = selfCopy;
  v7 = v52;
  if ((v53 & 1) == 0)
  {
LABEL_64:
    fCurrentMitigation = self->fCurrentMitigation;
    self->fCurrentMitigation = 0;

    self->fLatestMitigationWasNil = 1;
LABEL_65:
    [(CLEEDMediaService *)self prepareForServiceTeardown];
    goto LABEL_66;
  }

  [(CLEEDMediaService *)selfCopy checkAndScheduleProcessing];
LABEL_66:
}

- (void)processCompletedQueueForCachedRequest:(id)request
{
  requestCopy = request;
  completedQueue = [requestCopy completedQueue];
  if (completedQueue)
  {
    v6 = completedQueue;
    completedQueue2 = [requestCopy completedQueue];
    v8 = [completedQueue2 count];

    if (v8)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v9 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        completedQueue3 = [requestCopy completedQueue];
        v12 = [completedQueue3 count];
        completedQueue4 = [requestCopy completedQueue];
        *buf = 136446723;
        v35 = "[CLEEDMediaService processCompletedQueueForCachedRequest:]";
        v36 = 2049;
        v37 = v12;
        v38 = 2113;
        v39 = completedQueue4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, completedQueueCount:%{private}lu, completedQueue:%{private}@", buf, 0x20u);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = [requestCopy completedQueue];
      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v28 = *v30;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v30 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v17 mediaRequest:requestCopy mediaService:self];
            if (v18)
            {
              [(NSMutableArray *)self->fCompletedServiceItemsList addObject:v18];
            }

            stagingURL = [v17 stagingURL];
            path = [stagingURL path];
            [CLEEDMediaService deleteFileAtPath:path];

            encryptedFileURL = [v17 encryptedFileURL];
            path2 = [encryptedFileURL path];
            [CLEEDMediaService deleteFileAtPath:path2];
          }

          v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v15);
      }

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v23 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        fCompletedServiceItemsList = self->fCompletedServiceItemsList;
        v25 = v23;
        v26 = [(NSMutableArray *)fCompletedServiceItemsList count];
        *buf = 136446467;
        v35 = "[CLEEDMediaService processCompletedQueueForCachedRequest:]";
        v36 = 2049;
        v37 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, CompletedMediaServiceItemsListCount:%{private}lu", buf, 0x16u);
      }
    }
  }
}

- (void)processDelayQueueForCachedRequest:(id)request
{
  requestCopy = request;
  delayQueue = [requestCopy delayQueue];
  if (delayQueue)
  {
    v6 = delayQueue;
    delayQueue2 = [requestCopy delayQueue];
    v8 = [delayQueue2 count];

    if (v8)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v9 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        delayQueue3 = [requestCopy delayQueue];
        *buf = 136446467;
        v44 = "[CLEEDMediaService processDelayQueueForCachedRequest:]";
        v45 = 2049;
        v46 = [delayQueue3 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, delayQueueCount:%{private}lu", buf, 0x16u);
      }

      v12 = objc_alloc_init(NSMutableSet);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      delayQueue4 = [requestCopy delayQueue];
      v14 = [delayQueue4 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = *v39;
        *&v15 = 136446467;
        v35 = v15;
        selfCopy = self;
        do
        {
          v18 = 0;
          do
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(delayQueue4);
            }

            v19 = *(*(&v38 + 1) + 8 * v18);
            completedQueue = [requestCopy completedQueue];
            v21 = [completedQueue member:v19];

            if (v21 || ([requestCopy pendingQueue], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "member:", v19), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
            {
              [v12 addObject:v19];
            }

            else
            {
              v24 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v19 mediaRequest:requestCopy mediaService:self];
              if (v24)
              {
                [(NSMutableArray *)self->fDelayedServiceItemsList addObject:v24];
              }

              else
              {
                [v19 setUploadStatus:8];
                if (qword_100029E70 != -1)
                {
                  sub_100013358();
                }

                v25 = qword_100029E68;
                if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
                {
                  v27 = v25;
                  encryptedFileURL = [v19 encryptedFileURL];
                  path = [encryptedFileURL path];
                  *buf = v35;
                  v44 = "[CLEEDMediaService processDelayQueueForCachedRequest:]";
                  v45 = 2113;
                  v46 = path;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not create mediaServiceItem, path:%{private}@", buf, 0x16u);
                }

                completedQueue2 = [requestCopy completedQueue];
                [completedQueue2 addObject:v19];

                [v12 addObject:v19];
                self = selfCopy;
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v29 = [delayQueue4 countByEnumeratingWithState:&v38 objects:v42 count:16];
          v16 = v29;
        }

        while (v29);
      }

      delayQueue5 = [requestCopy delayQueue];
      [delayQueue5 minusSet:v12];

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v31 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        fDelayedServiceItemsList = self->fDelayedServiceItemsList;
        v33 = v31;
        v34 = [(NSMutableArray *)fDelayedServiceItemsList count];
        *buf = 136446467;
        v44 = "[CLEEDMediaService processDelayQueueForCachedRequest:]";
        v45 = 2049;
        v46 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, DelayedMediaServiceItemsListCount:%{private}lu", buf, 0x16u);
      }
    }
  }
}

- (void)processPendingQueueForCachedRequest:(id)request
{
  requestCopy = request;
  pendingQueue = [requestCopy pendingQueue];
  if (pendingQueue)
  {
    v6 = pendingQueue;
    pendingQueue2 = [requestCopy pendingQueue];
    v8 = [pendingQueue2 count];

    if (v8)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v9 = qword_100029E68;
      selfCopy = self;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        filteredQueue = [requestCopy filteredQueue];
        v12 = [filteredQueue count];
        v13 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
        v14 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
        v15 = [(NSMutableArray *)selfCopy->fCompletedServiceItemsList count];
        *buf = 136447491;
        v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
        v103 = 2113;
        v104 = requestCopy;
        v105 = 2049;
        v106 = v12;
        v107 = 2049;
        v108 = v13;
        v109 = 2049;
        v110 = v14;
        self = selfCopy;
        v111 = 2049;
        v112 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Enter, cachedRequest:%{private}@, filteredQueue:%{private}lu, pendingEcryptionCount:%{private}lu, pendingUploadCount:%{private}lu, completedListCount:%{private}lu", buf, 0x3Eu);
      }

      v81 = objc_alloc_init(NSMutableSet);
      v90 = objc_alloc_init(NSMutableSet);
      v94 = objc_alloc_init(NSMutableSet);
      v16 = objc_alloc_init(NSMutableSet);
      v91 = objc_alloc_init(NSMutableSet);
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      obj = [requestCopy pendingQueue];
      v17 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
      v93 = v16;
      if (v17)
      {
        v18 = v17;
        v19 = *v97;
        do
        {
          v20 = 0;
          do
          {
            if (*v97 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v96 + 1) + 8 * v20);
            completedQueue = [requestCopy completedQueue];
            v23 = [completedQueue member:v21];

            if (v23)
            {
              [v16 addObject:v21];
              goto LABEL_26;
            }

            v24 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v21 mediaRequest:requestCopy mediaService:self];
            if (!v24)
            {
              [v21 setUploadStatus:8];
              if (qword_100029E70 != -1)
              {
                sub_100013358();
              }

              v27 = qword_100029E68;
              if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
              {
                v43 = v27;
                encryptedFileURL = [v21 encryptedFileURL];
                path = [encryptedFileURL path];
                *buf = 136446467;
                v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                v103 = 2113;
                v104 = path;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not create mediaServiceItem, path:%{private}@", buf, 0x16u);

                self = selfCopy;
              }

              completedQueue2 = [requestCopy completedQueue];
              [completedQueue2 addObject:v21];

              goto LABEL_23;
            }

            uploadStatus = [v21 uploadStatus];
            if (uploadStatus <= 2)
            {
              if (uploadStatus)
              {
                if (uploadStatus == 1)
                {
                  v38 = +[NSFileManager defaultManager];
                  stagingURL = [v21 stagingURL];
                  path2 = [stagingURL path];
                  v41 = [v38 fileExistsAtPath:path2];

                  if (v41)
                  {
                    [v90 addObject:v24];
                    self = selfCopy;
                    v16 = v93;
                    goto LABEL_25;
                  }

                  self = selfCopy;
                  if (qword_100029E70 != -1)
                  {
                    sub_100013358();
                  }

                  v42 = qword_100029E68;
                  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
                  {
                    v56 = v42;
                    stagingURL2 = [v21 stagingURL];
                    path3 = [stagingURL2 path];
                    uTF8String = [path3 UTF8String];
                    *buf = 136446467;
                    v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                    v103 = 2081;
                    v104 = uTF8String;
                    _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Staging file does not exist, path:%{private}s", buf, 0x16u);
                  }

                  [v21 setUploadStatus:8];
                }

                else if (uploadStatus != 2)
                {
                  goto LABEL_25;
                }

LABEL_17:
                [v94 addObject:v24];
                completedQueue3 = [requestCopy completedQueue];
                [completedQueue3 addObject:v21];

                v16 = v93;
LABEL_23:
                v29 = v16;
              }

              else
              {
                v29 = v91;
              }

              [v29 addObject:v21];
              goto LABEL_25;
            }

            if ((uploadStatus - 4) < 6)
            {
              goto LABEL_17;
            }

            if (uploadStatus == 3)
            {
              encryptedFileURL2 = [v21 encryptedFileURL];
              if (!encryptedFileURL2)
              {
                goto LABEL_48;
              }

              v31 = encryptedFileURL2;
              authTag = [v21 authTag];
              if (!authTag)
              {
                goto LABEL_47;
              }

              v33 = authTag;
              mediaItemID = [v21 mediaItemID];
              if (!mediaItemID)
              {

LABEL_47:
LABEL_48:
                if (qword_100029E70 != -1)
                {
                  sub_100013358();
                }

                v46 = qword_100029E68;
                if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
                {
                  v52 = v46;
                  encryptedFileURL3 = [v21 encryptedFileURL];
                  path4 = [encryptedFileURL3 path];
                  uTF8String2 = [path4 UTF8String];
                  mediaItemID2 = [v21 mediaItemID];
                  uUIDString = [mediaItemID2 UUIDString];
                  uTF8String3 = [uUIDString UTF8String];
                  authTag2 = [v21 authTag];
                  v54 = [authTag2 base64EncodedStringWithOptions:0];
                  uTF8String4 = [v54 UTF8String];
                  *buf = 136446979;
                  v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                  v103 = 2081;
                  v104 = uTF8String2;
                  v105 = 2081;
                  v106 = uTF8String3;
                  v107 = 2081;
                  v108 = uTF8String4;
                  _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Item missing encryption information, path:%{private}s, mediaID:%{private}s, authTag:%{private}s", buf, 0x2Au);
                }

                stagingURL3 = [v21 stagingURL];
                path5 = [stagingURL3 path];
                [CLEEDMediaService deleteFileAtPath:path5];

                encryptedFileURL4 = [v21 encryptedFileURL];
                path6 = [encryptedFileURL4 path];
                [CLEEDMediaService deleteFileAtPath:path6];

                [v21 setUploadStatus:8];
                [v94 addObject:v24];
                completedQueue4 = [requestCopy completedQueue];
                [completedQueue4 addObject:v21];

                [v16 addObject:v21];
                self = selfCopy;
                goto LABEL_25;
              }

              v86 = mediaItemID;
              v88 = +[NSFileManager defaultManager];
              encryptedFileURL5 = [v21 encryptedFileURL];
              path7 = [encryptedFileURL5 path];
              v84 = [v88 fileExistsAtPath:path7];

              self = selfCopy;
              if (!v84)
              {
                goto LABEL_48;
              }

              [v81 addObject:v24];
              stagingURL4 = [v21 stagingURL];
              path8 = [stagingURL4 path];
              [CLEEDMediaService deleteFileAtPath:path8];
            }

LABEL_25:

LABEL_26:
            v20 = v20 + 1;
          }

          while (v18 != v20);
          v60 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
          v18 = v60;
        }

        while (v60);
      }

      if ([v81 count] || objc_msgSend(v90, "count") || objc_msgSend(v91, "count"))
      {
        if ([v94 count])
        {
          fCompletedServiceItemsList = self->fCompletedServiceItemsList;
          allObjects = [v94 allObjects];
          [(NSMutableArray *)fCompletedServiceItemsList addObjectsFromArray:allObjects];
        }

        if ([v81 count])
        {
          fPendingServiceItemsForUploadList = self->fPendingServiceItemsForUploadList;
          allObjects2 = [v81 allObjects];
          [(NSMutableArray *)fPendingServiceItemsForUploadList addObjectsFromArray:allObjects2];

          [(NSMutableArray *)self->fPendingServiceItemsForUploadList sortUsingSelector:"compareMediaSize:"];
        }

        if ([v90 count])
        {
          fFilteredMediaServiceItemList = self->fFilteredMediaServiceItemList;
          allObjects3 = [v90 allObjects];
          [(NSMutableArray *)fFilteredMediaServiceItemList addObjectsFromArray:allObjects3];
        }

        if ([v91 count])
        {
          filteredQueue2 = [requestCopy filteredQueue];
          allObjects4 = [v91 allObjects];
          [filteredQueue2 addObjectsFromArray:allObjects4];
        }
      }

      pendingQueue3 = [requestCopy pendingQueue];
      [pendingQueue3 minusSet:v93];

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v70 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
        filteredQueue3 = [requestCopy filteredQueue];
        v73 = [filteredQueue3 count];
        v74 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
        v75 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
        selfCopy2 = self;
        v77 = v75;
        v78 = [(NSMutableArray *)selfCopy2->fCompletedServiceItemsList count];
        *buf = 136447491;
        v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
        v103 = 2113;
        v104 = requestCopy;
        v105 = 2049;
        v106 = v73;
        v107 = 2049;
        v108 = v74;
        v109 = 2049;
        v110 = v77;
        v111 = 2049;
        v112 = v78;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Exit, cachedRequest:%{private}@, filteredQueue:%{private}lu, pendingEcryption:%{private}lu, pendingUpload:%{private}lu, completed:%{private}lu", buf, 0x3Eu);
      }
    }
  }
}

- (void)storeDataToCache
{
  v12 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v12];
  v3 = v12;
  if (v3 || ![v2 length])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v4 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100015BA8(v3, v4, v2);
    }
  }

  else
  {
    v5 = +[NSFileManager defaultManager];
    v19 = NSFileProtectionKey;
    v20 = NSFileProtectionNone;
    v6 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v7 = [v5 createFileAtPath:@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" contents:v2 attributes:v6];

    if (v7)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v8 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        uTF8String = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
        v11 = [v2 length];
        *buf = 136446723;
        v14 = "[CLEEDMediaService storeDataToCache]";
        v15 = 2081;
        v16 = uTF8String;
        v17 = 2050;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Successfully written CLEEDMediaService to cache file:%{private}s, cacheSize:%{public}lu", buf, 0x20u);
      }
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100015B28();
      }
    }
  }
}

- (id)loadFromCache
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 contentsAtPath:@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache"];

  if (v4)
  {
    v15 = 0;
    v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v15];
    v6 = v15;
    if (v6 || !v5)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100015C70();
      }

      mediaServiceRequestList2 = 0;
    }

    else
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v7 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        uTF8String = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
        v10 = [v4 length];
        mediaServiceRequestList = [v5 mediaServiceRequestList];
        *buf = 136446979;
        v17 = "[CLEEDMediaService loadFromCache]";
        v18 = 2081;
        v19 = uTF8String;
        v20 = 2050;
        v21 = v10;
        v22 = 2114;
        v23 = mediaServiceRequestList;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Successfully read CLEEDMediaService data from cache file:%{private}s, cacheSize:%{public}lu, requests:%{public}@", buf, 0x2Au);
      }

      -[CLEEDMediaService setTotalBytesUploadedDuringCall:](self, "setTotalBytesUploadedDuringCall:", [v5 totalBytesUploadedDuringCall]);
      mediaServiceRequestList2 = [v5 mediaServiceRequestList];
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v13 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100015CEC(v13);
    }

    mediaServiceRequestList2 = 0;
  }

  return mediaServiceRequestList2;
}

- (void)clearCache
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache"];

  if (v3)
  {

    [CLEEDMediaService deleteFileAtPath:@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache"];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v4 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = 136446467;
      v7 = "[CLEEDMediaService clearCache]";
      v8 = 2081;
      uTF8String = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, CLEEDMediaService cache file:%{private}s does not exist", &v6, 0x16u);
    }
  }
}

- (double)getUploadDataRateForMediaItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  v5 = 0.0;
  if (itemCopy && [itemCopy uploadStatus] == 5 && objc_msgSend(v4, "mediaItemSizeBytes") && objc_msgSend(v4, "durationUploadMs") >= 1)
  {
    v6 = [v4 mediaItemSizeBytes] * 8.0;
    v5 = v6 / [v4 durationUploadMs];
  }

  return v5;
}

- (void)submitCAMetricForUploadItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    if ([itemCopy metricProcessed])
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v6 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446467;
        *&buf[4] = "[CLEEDMediaService submitCAMetricForUploadItem:]";
        *&buf[12] = 2113;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, CA Metric already processed for item:%{private}@", buf, 0x16u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = sub_100011FB0;
      v47 = sub_100011FC0;
      v48 = objc_alloc_init(NSMutableDictionary);
      v7 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getUploadDataRateForMediaItem:v5];
      v8 = [NSNumber numberWithDouble:?];
      [v7 setValue:v8 forKey:@"avgUploadRateKbps"];

      v9 = *(*&buf[8] + 40);
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 durationCopyMs]);
      [v9 setValue:v10 forKey:@"durationCopyMs"];

      v11 = *(*&buf[8] + 40);
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 durationEncryptionMs]);
      [v11 setValue:v12 forKey:@"durationEncryptionMs"];

      v13 = *(*&buf[8] + 40);
      v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 durationTranscodeMs]);
      [v13 setValue:v14 forKey:@"durationTranscodeMs"];

      v15 = *(*&buf[8] + 40);
      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 durationUploadMs]);
      [v15 setValue:v16 forKey:@"durationUploadMs"];

      v17 = *(*&buf[8] + 40);
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 uploadStatus]);
      [v17 setValue:v18 forKey:@"finalUploadStatus"];

      v19 = *(*&buf[8] + 40);
      v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 serverUploadStatus]);
      [v19 setValue:v20 forKey:@"lastServerStatus"];

      v21 = *(*&buf[8] + 40);
      v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 type]);
      [v21 setValue:v22 forKey:@"mediaItemCategory"];

      v23 = *(*&buf[8] + 40);
      mediaItemFormat = [v5 mediaItemFormat];
      v25 = mediaItemFormat;
      v26 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [mediaItemFormat UTF8String]);
      [v23 setValue:v26 forKey:@"mediaItemFormat"];

      v27 = *(*&buf[8] + 40);
      v28 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", vcvtd_n_f64_u64([v5 mediaItemSizeBytes], 0x14uLL));
      [v27 setValue:v28 forKey:@"mediaItemSizeMBytes"];

      v29 = *(*&buf[8] + 40);
      v30 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", vcvtd_n_f64_u64([v5 originalSizeBytes], 0x14uLL));
      [v29 setValue:v30 forKey:@"originalSizeMBytes"];

      v31 = *(*&buf[8] + 40);
      v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 uploadAttempts]);
      [v31 setValue:v32 forKey:@"numOfUploadAttempts"];

      v33 = *(*&buf[8] + 40);
      v34 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 didApplyDelayMitigation]);
      [v33 setValue:v34 forKey:@"didApplyDelayMitigation"];

      v35 = sub_100016408(COERCE_DOUBLE(3221225472));
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v36 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v37 = "NO";
        v38 = *(*&buf[8] + 40);
        if (v35)
        {
          v37 = "YES";
        }

        *v39 = 136446723;
        v40 = "[CLEEDMediaService submitCAMetricForUploadItem:]";
        v41 = 2082;
        v42 = v37;
        v43 = 2113;
        v44 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, eventSent:%{public}s, eventDict:%{private}@", v39, 0x20u);
      }

      [v5 setMetricProcessed:1];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100015D88();
    }
  }
}

- (unint64_t)countOfItemsInRequest:(id)request withState:(int64_t)state
{
  if (!request)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  completedQueue = [request completedQueue];
  v6 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(completedQueue);
        }

        if ([*(*(&v12 + 1) + 8 * i) uploadStatus] == state)
        {
          ++v8;
        }
      }

      v7 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)countOfDelayedItemsInRequest:(id)request
{
  if (!request)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  completedQueue = [request completedQueue];
  v4 = [completedQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(completedQueue);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) didApplyDelayMitigation];
      }

      v5 = [completedQueue countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)getMaxSizeInRequest:(id)request withType:(int64_t)type
{
  if (!request)
  {
    return 0.0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  completedQueue = [request completedQueue];
  v6 = [completedQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    mediaItemSizeBytes = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(completedQueue);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == type && mediaItemSizeBytes < objc_msgSend(v11, "mediaItemSizeBytes"))
        {
          mediaItemSizeBytes = [v11 mediaItemSizeBytes];
        }
      }

      v7 = [completedQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    v12 = mediaItemSizeBytes * 0.000000953674316;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)getAvgSizeInRequest:(id)request withType:(int64_t)type
{
  requestCopy = request;
  v6 = requestCopy;
  v7 = 0.0;
  if (requestCopy)
  {
    completedQueue = [requestCopy completedQueue];
    v9 = [completedQueue count];

    if (v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      completedQueue2 = [v6 completedQueue];
      v11 = [completedQueue2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = 0;
        v14 = *v19;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(completedQueue2);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if ([v16 type] == type)
            {
              v7 = v7 + [v16 mediaItemSizeBytes];
              ++v13;
            }
          }

          v12 = [completedQueue2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);

        if (v13)
        {
          v7 = v7 * 0.000000953674316 / v13;
        }

        else
        {
          v7 = 0.0;
        }
      }

      else
      {
      }
    }
  }

  return v7;
}

- (double)getMinSizeInRequest:(id)request withType:(int64_t)type
{
  if (!request)
  {
    return 0.0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  completedQueue = [request completedQueue];
  v6 = [completedQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    mediaItemSizeBytes = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(completedQueue);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == type && (mediaItemSizeBytes == 0.0 || mediaItemSizeBytes > objc_msgSend(v11, "mediaItemSizeBytes")))
        {
          mediaItemSizeBytes = [v11 mediaItemSizeBytes];
        }
      }

      v7 = [completedQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    v12 = mediaItemSizeBytes * 0.000000953674316;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)getTotalSizeOfSuccessfulUploadsInRequest:(id)request
{
  if (!request)
  {
    return 0.0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  completedQueue = [request completedQueue];
  v4 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(completedQueue);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 uploadStatus] == 5)
        {
          v7 = v7 + [v9 mediaItemSizeBytes];
        }
      }

      v5 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    v10 = v7 * 0.000000953674316;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)getTotalSizeOfFailedUploadsInRequest:(id)request
{
  if (!request)
  {
    return 0.0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  completedQueue = [request completedQueue];
  v4 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(completedQueue);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 uploadStatus] != 5)
        {
          v7 = v7 + [v9 mediaItemSizeBytes];
        }
      }

      v5 = [completedQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    v10 = v7 * 0.000000953674316;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (void)submitCAMetricForRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    if ([requestCopy metricProcessed])
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v6 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446467;
        *&buf[4] = "[CLEEDMediaService submitCAMetricForRequest:]";
        *&buf[12] = 2113;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, CA Metric already processed for Request:%{private}@", buf, 0x16u);
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v57 = sub_100011FB0;
      v58 = sub_100011FC0;
      v59 = objc_alloc_init(NSMutableDictionary);
      v7 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getAvgSizeInRequest:v5 withType:1];
      v8 = [NSNumber numberWithDouble:?];
      [v7 setValue:v8 forKey:@"averageImageSize"];

      v9 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getAvgSizeInRequest:v5 withType:2];
      v10 = [NSNumber numberWithDouble:?];
      [v9 setValue:v10 forKey:@"averageVideoSize"];

      v11 = *(*&buf[8] + 40);
      v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 didUserCancelUpload]);
      [v11 setValue:v12 forKey:@"didUserCancelUpload"];

      v13 = *(*&buf[8] + 40);
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 durationRequestHandlingMs]);
      [v13 setValue:v14 forKey:@"durationOfRequestHandlingMs"];

      v15 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getMaxSizeInRequest:v5 withType:1];
      v16 = [NSNumber numberWithDouble:?];
      [v15 setValue:v16 forKey:@"maxImageSize"];

      v17 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getMaxSizeInRequest:v5 withType:2];
      v18 = [NSNumber numberWithDouble:?];
      [v17 setValue:v18 forKey:@"maxVideoSize"];

      v19 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getMinSizeInRequest:v5 withType:1];
      v20 = [NSNumber numberWithDouble:?];
      [v19 setValue:v20 forKey:@"minImageSize"];

      v21 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getMinSizeInRequest:v5 withType:2];
      v22 = [NSNumber numberWithDouble:?];
      [v21 setValue:v22 forKey:@"minVideoSize"];

      v23 = *(*&buf[8] + 40);
      v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 numAdditionalMediaItemsSelected]);
      [v23 setValue:v24 forKey:@"numAdditionalMediaItemsSelected"];

      v25 = *(*&buf[8] + 40);
      v26 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:2]];
      [v25 setValue:v26 forKey:@"numCopyFailures"];

      v27 = *(*&buf[8] + 40);
      v28 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:4]];
      [v27 setValue:v28 forKey:@"numEncryptionFailures"];

      v29 = *(*&buf[8] + 40);
      v30 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:7]];
      [v29 setValue:v30 forKey:@"numItemsCancelled"];

      v31 = *(*&buf[8] + 40);
      v32 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:6]];
      [v31 setValue:v32 forKey:@"numUploadFailures"];

      v33 = *(*&buf[8] + 40);
      completedQueue = [v5 completedQueue];
      v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [completedQueue count]);
      [v33 setValue:v35 forKey:@"numUploadItems"];

      v36 = *(*&buf[8] + 40);
      v37 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:5]];
      [v36 setValue:v37 forKey:@"numUploadSuccess"];

      v38 = *(*&buf[8] + 40);
      v39 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfItemsInRequest:v5 withState:9]];
      [v38 setValue:v39 forKey:@"numFileSizeExceeded"];

      v40 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getTotalSizeOfFailedUploadsInRequest:v5];
      v41 = [NSNumber numberWithDouble:?];
      [v40 setValue:v41 forKey:@"totalSizeInMBytesFailedUpload"];

      v42 = *(*&buf[8] + 40);
      [(CLEEDMediaService *)self getTotalSizeOfSuccessfulUploadsInRequest:v5];
      v43 = [NSNumber numberWithDouble:?];
      [v42 setValue:v43 forKey:@"totalSizeInMBytesUploaded"];

      v44 = *(*&buf[8] + 40);
      v45 = [NSNumber numberWithUnsignedInteger:[(CLEEDMediaService *)self countOfDelayedItemsInRequest:v5]];
      [v44 setValue:v45 forKey:@"numDelayMitigatedItems"];

      v46 = sub_100016408(COERCE_DOUBLE(3221225472));
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v47 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v48 = "NO";
        v49 = *(*&buf[8] + 40);
        if (v46)
        {
          v48 = "YES";
        }

        *v50 = 136446723;
        v51 = "[CLEEDMediaService submitCAMetricForRequest:]";
        v52 = 2082;
        v53 = v48;
        v54 = 2113;
        v55 = v49;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, eventSent:%{public}s, eventDict:%{private}@", v50, 0x20u);
      }

      [v5 setMetricProcessed:1];
      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100015E08();
    }
  }
}

@end
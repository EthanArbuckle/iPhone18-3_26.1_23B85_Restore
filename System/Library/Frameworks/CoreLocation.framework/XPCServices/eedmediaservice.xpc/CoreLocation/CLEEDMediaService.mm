@interface CLEEDMediaService
+ (void)deleteFileAtPath:(id)a3;
- (BOOL)abortRequested;
- (BOOL)checkIfUploadQuotaReached:(id)a3;
- (BOOL)clientConnection:(id)a3 hasEntitlement:(id)a4;
- (BOOL)delayRequired;
- (BOOL)isExecutableAllowed:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CLEEDMediaService)init;
- (CLEEDMediaService)initWithCoder:(id)a3;
- (double)getAvgSizeInRequest:(id)a3 withType:(int64_t)a4;
- (double)getMaxSizeInRequest:(id)a3 withType:(int64_t)a4;
- (double)getMinSizeInRequest:(id)a3 withType:(int64_t)a4;
- (double)getTotalSizeOfFailedUploadsInRequest:(id)a3;
- (double)getTotalSizeOfSuccessfulUploadsInRequest:(id)a3;
- (double)getUploadDataRateForMediaItem:(id)a3;
- (id)executablePathOfConnection:(id)a3;
- (id)getLocalizedStringByMediaTypeWithCount:(unint64_t)a3 forTitle:(BOOL)a4;
- (id)getMediaServiceRequestWithID:(id)a3;
- (id)loadFromCache;
- (unint64_t)countOfCompletedItemsInState:(int64_t)a3;
- (unint64_t)countOfDelayedItemsInRequest:(id)a3;
- (unint64_t)countOfItemsInRequest:(id)a3 withState:(int64_t)a4;
- (void)abortMediaUpload;
- (void)cancelBGTaskStartGuardTimer;
- (void)cancelDebounceTimerForReleasingOSTransaction;
- (void)checkAndScheduleProcessing;
- (void)checkAndStartBGTaskStartGuardTimer;
- (void)cleanup;
- (void)cleanupOnInvalidation;
- (void)clearCache;
- (void)clearStagingArea;
- (void)connectToMediaService:(id)a3 uploadConfig:(id)a4;
- (void)copyAndCreateServiceItemsForRequest:(id)a3;
- (void)copyMediaItemToStaging:(id)a3;
- (void)dealloc;
- (void)delayMediaUpload;
- (void)encodeWithCoder:(id)a3;
- (void)handleAbortForMediaServiceItem:(id)a3;
- (void)handleDelayForMediaServiceItem:(id)a3;
- (void)handleEncryptionCompletionForServiceItem:(id)a3 encryptedFileURL:(id)a4 authTag:(id)a5;
- (void)handleRemoteProxyError:(id)a3 forProcessIdentifier:(int)a4;
- (void)insertMediaServiceItemInUploadList:(id)a3;
- (void)notifyProgressUITaskCompletion;
- (void)prepareForServiceTeardown;
- (void)processCompletedQueueForCachedRequest:(id)a3;
- (void)processDelayQueueForCachedRequest:(id)a3;
- (void)processMediaServicesEndOfExtendedSessionNotification;
- (void)processMediaServicesForRequestID:(id)a3 callUUID:(id)a4 uploadURL:(id)a5 sharedInfoPrefix:(id)a6 combinedSecret:(id)a7 token:(id)a8 mediaList:(id)a9 mitigation:(id)a10 completion:(id)a11;
- (void)processMediaServicesFromCache;
- (void)processMediaServicesMitigations:(id)a3;
- (void)processNextInFlightServiceItem;
- (void)processPendingQueueForCachedRequest:(id)a3;
- (void)releaseOSTransaction;
- (void)removeCompletedRequestsOtherThan:(id)a3;
- (void)restoreDelayedMediaServiceItems;
- (void)scheduleContinuousProcessingTask;
- (void)sendCompletionIndication;
- (void)setDebounceTimerForReleasingOSTransaction;
- (void)setProgressUITaskCompletion;
- (void)startContinuousProcessingTask:(id)a3;
- (void)storeDataToCache;
- (void)submitCAMetricForRequest:(id)a3;
- (void)submitCAMetricForUploadItem:(id)a3;
- (void)takeOSTransaction;
- (void)transcodeMediaItem:(id)a3;
- (void)triggerAllProcessing;
- (void)triggerUploadForServiceItem:(id)a3;
- (void)updateCallRecordForMediaServiceItem:(id)a3;
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
  v8 = [v7 UTF8String];
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create(v8, v9);
  fQueue = v4->fQueue;
  v4->fQueue = v10;

  v12 = [NSString stringWithFormat:@"_CLEEDMediaServiceEncryption, %p", v4];
  v13 = [v12 UTF8String];
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create(v13, v14);
  fEncryptionQueue = v4->fEncryptionQueue;
  v4->fEncryptionQueue = v15;

  v17 = [NSString stringWithFormat:@"_CLEEDMediaServiceSandboxCopy, %p", v4];
  v18 = [v17 UTF8String];
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create(v18, v19);
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
    v47 = [*(v46 + 824) sharedScheduler];
    v48 = v4->fQueue;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100006104;
    v61[3] = &unk_100024538;
    v49 = v4;
    v62 = v49;
    LOBYTE(v48) = [v47 registerForTaskWithIdentifier:@"com.corelocation.eedmediaservice.progress" usingQueue:v48 launchHandler:v61];

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
    v53 = [*(v52 + 840) sharedInstance];
    fCallCenter = v49->fCallCenter;
    v49->fCallCenter = v53;

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

- (id)getMediaServiceRequestWithID:(id)a3
{
  v4 = a3;
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
  v5 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      v12 = [v11 requestID];
      if ([v12 isEqual:v4])
      {
        v13 = [v11 requestTimestamp];
        [v13 timeIntervalSinceNow];
        v15 = fabs(v14);

        if (v15 > 14400.0)
        {
          continue;
        }

        v12 = v8;
        v8 = v11;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v7);
LABEL_18:

  return v8;
}

- (void)removeCompletedRequestsOtherThan:(id)a3
{
  v3 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v4 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 requestID];
    v7 = [v6 UUIDString];
    *buf = 136446466;
    v33 = "[CLEEDMediaService removeCompletedRequestsOtherThan:]";
    v34 = 2082;
    v35 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, activeRequest:%{public}s", buf, 0x16u);
  }

  v8 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = [v15 requestID];
        v17 = [v3 requestID];
        v18 = [v16 isEqual:v17];

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
            v21 = [v15 requestID];
            v22 = [v21 UUIDString];
            v23 = [v22 UTF8String];
            *buf = v25;
            v33 = "[CLEEDMediaService removeCompletedRequestsOtherThan:]";
            v34 = 2082;
            v35 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, removingRequest:%{public}s", buf, 0x16u);
          }

          [v8 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v12);
  }

  v24 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [v24 removeObjectsInArray:v8];
}

- (BOOL)clientConnection:(id)a3 hasEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v14 = v5;
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s[connection:%{public}@, entitlementString:%{private}@]", &v11, 0x20u);
  }

  v8 = [v5 valueForEntitlement:v6];
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

- (id)executablePathOfConnection:(id)a3
{
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath([a3 processIdentifier], buffer, 0x1000u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buffer];
  }

  v5 = [v4 lastPathComponent];

  return v5;
}

- (BOOL)isExecutableAllowed:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObjects:@"locationd", 0];
  v6 = [(CLEEDMediaService *)self executablePathOfConnection:v4];
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
    v13 = v4;
    v14 = 2113;
    v15 = v5;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s, [connection:%{public}@, allowedExecutables:%{private}@, executable:%{public}@]", buf, 0x2Au);
  }

  v8 = [v5 containsObject:v6];

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v25 = v7;
    v26 = 2114;
    v27 = fConnection;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, newConnection:%{public}@, currentConnection:%{public}@", buf, 0x20u);
  }

  if (qword_100029E60 != -1)
  {
    sub_1000144A0();
  }

  if (![(CLEEDMediaService *)self clientConnection:v7 hasEntitlement:@"com.apple.private.corelocation.eedmediaservice"])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v13 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000144C8(v13, v7);
    }

    goto LABEL_25;
  }

  if (![(CLEEDMediaService *)self isExecutableAllowed:v7])
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v14 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014568(v14, self, v7);
    }

LABEL_25:
    [v7 invalidate];
    v12 = 0;
    goto LABEL_26;
  }

  [v7 setRemoteObjectInterface:qword_100029E58];
  [v7 setExportedInterface:qword_100029E50];
  [v7 setExportedObject:self];
  [v7 _setQueue:self->fQueue];
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100006E60;
  v19 = &unk_1000245A0;
  objc_copyWeak(&v20, &location);
  [v7 setInvalidationHandler:&v16];
  [v7 setInterruptionHandler:{&stru_1000245C0, v16, v17, v18, v19}];
  v10 = self->fConnection;
  if (v10)
  {
    [(NSXPCConnection *)v10 invalidate];
  }

  objc_storeStrong(&self->fConnection, a4);
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

- (void)handleRemoteProxyError:(id)a3 forProcessIdentifier:(int)a4
{
  v6 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_1000146A4(v7, v6, a4);
  }

  fConnection = self->fConnection;
  if (fConnection)
  {
    [(NSXPCConnection *)fConnection invalidate];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    sub_100014794(self, v5);
  }

  [v4 encodeObject:self->_mediaServiceRequestList forKey:@"mediaServiceRequestList"];
  [v4 encodeBool:self->_extendedSessionEnded forKey:@"extendedSessionEnded"];
  [v4 encodeInteger:self->_totalBytesUploadedDuringCall forKey:@"totalBytesUploadedDuringCall"];
}

- (CLEEDMediaService)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"mediaServiceRequestList"];
  mediaServiceRequestList = self->_mediaServiceRequestList;
  self->_mediaServiceRequestList = v7;

  self->_extendedSessionEnded = [v4 decodeBoolForKey:@"extendedSessionEnded"];
  v9 = [v4 decodeIntegerForKey:@"totalBytesUploadedDuringCall"];

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
  v3 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 metricProcessed] & 1) == 0)
        {
          [(CLEEDMediaService *)self submitCAMetricForRequest:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

- (void)connectToMediaService:(id)a3 uploadConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v34 = v6;
    v35 = 2114;
    v36 = v7;
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
        v18 = [@"/private/var/mobile/Library/CLEEDMediaService/" UTF8String];
        *buf = 136446723;
        v32 = "[CLEEDMediaService connectToMediaService:uploadConfig:]";
        v33 = 2081;
        v34 = v18;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, error retrieving contents of directory:%{private}s, Error:%{public}@", buf, 0x20u);
      }
    }

    if (v6)
    {
      v19 = v6;
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
    if (v7)
    {
      v23 = v7;
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

- (void)processMediaServicesForRequestID:(id)a3 callUUID:(id)a4 uploadURL:(id)a5 sharedInfoPrefix:(id)a6 combinedSecret:(id)a7 token:(id)a8 mediaList:(id)a9 mitigation:(id)a10 completion:(id)a11
{
  v61 = a3;
  v60 = a4;
  v59 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v22 = qword_100029E68;
  v23 = v19;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v22;
    v25 = [v16 base64EncodedStringWithOptions:0];
    v26 = [v25 UTF8String];
    [v17 base64EncodedStringWithOptions:0];
    v56 = v21;
    v28 = v27 = v16;
    *buf = 136448259;
    v71 = "[CLEEDMediaService processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:]";
    v72 = 2114;
    v73 = v61;
    v74 = 2114;
    v75 = v60;
    v76 = 2114;
    v77 = v59;
    v78 = 2081;
    v79 = v26;
    v80 = 2081;
    v81 = [v28 UTF8String];
    v82 = 2113;
    v83 = v18;
    v84 = 2114;
    v85 = v20;
    v86 = 2114;
    v87 = v19;
    v23 = v19;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, requestID:%{public}@, callUUID:%{public}@, uploadURL:%{public}@, sharedInfoPrefix:%{private}s, combinedSecret:%{private}s, token:%{private}@, mitigation:%{public}@, mediaList:%{public}@", buf, 0x5Cu);

    v16 = v27;
    v21 = v56;
  }

  [(CLEEDMediaService *)self takeOSTransaction];
  if (v20)
  {
    v29 = v20;
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

  if (!v16 || !v17)
  {
    v51 = [NSError alloc];
    v66 = NSLocalizedDescriptionKey;
    v67 = @"missing sharedInfoPrefix/combinedSecret";
    v48 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v49 = v51;
    v50 = 1003;
    goto LABEL_25;
  }

  v33 = [(CLEEDMediaService *)self getMediaServiceRequestWithID:v61];
  v34 = v33;
  if (!v33)
  {
    v35 = [[CLEEDMediaServiceRequest alloc] initWithRequestID:v61 callUUID:v60 uploadURL:v59 sharedInfoPrefix:v16 combinedSecret:v17 token:v18];
    if (v35)
    {
      v34 = v35;
      v36 = [(CLEEDMediaService *)self mediaServiceRequestList];
      [v36 addObject:v34];

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

    v21[2](v21, v46);
    [(CLEEDMediaService *)self prepareForServiceTeardown];
    goto LABEL_32;
  }

LABEL_14:
  v57 = v20;
  v37 = v17;
  v38 = v16;
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
      v44 = [v34 filteredQueue];
      v45 = [v44 count];
      *buf = 136446722;
      v71 = "[CLEEDMediaService processMediaServicesForRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:mediaList:mitigation:completion:]";
      v72 = 2050;
      v73 = v43;
      v74 = 2050;
      v75 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaListCount:%{public}lu, filteredListCount:%{public}lu", buf, 0x20u);

      v16 = v38;
    }

    [(CLEEDMediaService *)self storeDataToCache];
    v21[2](v21, 0);
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

    v21[2](v21, v46);
    [(CLEEDMediaService *)self prepareForServiceTeardown];

    v16 = v38;
  }

  v17 = v37;
  v20 = v57;
LABEL_32:
}

- (void)processMediaServicesMitigations:(id)a3
{
  v4 = a3;
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
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mitigation:%{public}@", &v11, 0x16u);
  }

  v6 = self->fCurrentMitigation;
  if (v4)
  {
    v7 = v4;
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
  v10 = [(CLEEDMitigation *)self->fCurrentMitigation uploadMigitation];
  if (v10)
  {
    if (v10 == 1)
    {
      if (!v6 || ![(CLEEDMitigation *)v6 uploadMigitation])
      {
        [(CLEEDMediaService *)self delayMediaUpload];
      }
    }

    else if (v10 == 2 && (!v6 || [(CLEEDMitigation *)v6 uploadMigitation]!= 2))
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

- (void)updateCallRecordForMediaServiceItem:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaItem];
  v6 = [v5 uploadStatus];

  if (v6 == 5)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008A84;
    block[3] = &unk_1000245E8;
    objc_copyWeak(&v10, &location);
    v9 = v4;
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
      sub_100014B2C(v7, v4);
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
    v5 = [(CLEEDMediaService *)self mediaServiceRequestList];
    *buf = 136446466;
    v39 = "[CLEEDMediaService triggerAllProcessing]";
    v40 = 2050;
    v41 = [v5 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, numRequests:%{public}lu", buf, 0x16u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 filteredQueue];
        v13 = [v12 count];

        if (v13)
        {
          [(CLEEDMediaService *)self copyAndCreateServiceItemsForRequest:v11];
          [(CLEEDMediaService *)self storeDataToCache];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
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

- (void)copyAndCreateServiceItemsForRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_42;
  }

  v6 = [v4 filteredQueue];
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = v6;
  v8 = [v5 filteredQueue];
  v9 = [v8 count];

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
      v12 = [v5 filteredQueue];
      v13 = [v12 count];
      v14 = [v5 filteredQueue];
      *buf = 136446979;
      v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
      v61 = 2050;
      v62 = v13;
      v63 = 2113;
      v64 = v14;
      v65 = 2113;
      v66 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaListCount:%{public}lu, mediaList:%{private}@, mediaRequest:%{private}@", buf, 0x2Au);
    }

    v15 = objc_autoreleasePoolPush();
    v16 = [NSArray alloc];
    v17 = [v5 filteredQueue];
    v18 = [v17 allObjects];
    v19 = [v16 initWithArray:v18];

    v20 = [v19 count];
    fCopyQueue = self->fCopyQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009AA4;
    block[3] = &unk_100024638;
    v56 = v19;
    v57 = self;
    v22 = v19;
    dispatch_apply(v20, fCopyQueue, block);

    objc_autoreleasePoolPop(v15);
    v50 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v23 = [v5 filteredQueue];
    v24 = [v23 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
            objc_enumerationMutation(v23);
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
              v37 = [v48 path];
              *buf = v47;
              v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
              v61 = 2113;
              v62 = v37;
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
              v39 = [v49 path];
              *buf = v47;
              v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
              v61 = 2113;
              v62 = v39;
              _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not copy file to staging area:%{private}@", buf, 0x16u);

              v26 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
            }

            [(NSMutableArray *)self->fCompletedServiceItemsList addObject:v31];
LABEL_30:
            [(CLEEDMediaService *)self submitCAMetricForUploadItem:v30];
            v32 = [v5 completedQueue];
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
          v32 = ;
LABEL_31:
          v35 = v32;
          [v32 addObject:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v40 = [v23 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
      v44 = [v5 filteredQueue];
      v45 = [v44 count];
      *buf = 136446722;
      v60 = "[CLEEDMediaService copyAndCreateServiceItemsForRequest:]";
      v61 = 2050;
      v62 = v43;
      v63 = 2050;
      v64 = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, FilteredServiceItemsCount:%{public}lu, mediaListCount:%{public}lu", buf, 0x20u);
    }

    v46 = [v5 filteredQueue];
    [v46 removeAllObjects];

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

- (void)copyMediaItemToStaging:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URL];

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

      v7 = [v5 sandboxExtension];
      [v7 UTF8String];
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
        v24 = self;
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
            v18 = [v21 path];
            v19 = v18;
            v20 = [v18 UTF8String];
            *buf = 136446723;
            v34 = "[CLEEDMediaService copyMediaItemToStaging:]";
            v35 = 2114;
            v36 = v12;
            v37 = 2081;
            v38 = v20;
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

- (void)transcodeMediaItem:(id)a3
{
  v3 = a3;
  if ([v3 type] != 2)
  {
    v73 = objc_autoreleasePoolPush();
    v72 = +[NSDate date];
    v4 = [v3 stagingURL];
    v5 = [v4 path];
    v6 = [NSURL fileURLWithPath:v5];

    v7 = [v6 URLByDeletingPathExtension];
    v8 = [v7 path];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s.jpeg", [v8 UTF8String]);
    v74 = [NSURL fileURLWithPath:v9];

    v11 = sub_1000164E4(v6, 0, v10);
    v13 = sub_10001661C(v12);
    v16 = [*(v14 + 896) typeWithIdentifier:{sub_10001653C(v15, v13)}];
    v18 = sub_100016510(v11, v17);
    v20 = sub_1000164B8(v11, v18, 0, v19);
    v22 = sub_1000166D0(v21);
    v25 = [v24 objectForKeyedSubscript:{**(v23 + 888), v22}];
    v26 = [v25 integerValue];

    v28 = sub_1000166AC(v27);
    v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:**(v29 + 880), v28];
    v31 = [v30 integerValue];

    v32 = v31 * v26;
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
        v41 = [v3 stagingURL];
        v42 = [v41 lastPathComponent];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        v80 = [v42 UTF8String];
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
        v70 = [v3 stagingURL];
        v47 = [v70 lastPathComponent];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        v80 = [v47 UTF8String];
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Resizing %{private}s", buf, 0x16u);

        v6 = v69;
      }

      v48 = 2880.0 / sqrt(v32);
      if (v26 <= v31)
      {
        v49 = v31;
      }

      else
      {
        v49 = v26;
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
    v53 = [v36 identifier];
    v55 = sub_100016460(v74, v53, 1uLL, 0, v54);

    sub_100016434(v55, v11, v18, v44, v56);
    v38 = v73;
    if (sub_10001648C(v55, v57))
    {
      v58 = [v6 path];
      v59 = [(__CFURL *)v74 path];
      v60 = [v58 isEqualToString:v59];

      if ((v60 & 1) == 0)
      {
        [v3 setStagingURL:v74];
        v61 = [v6 path];
        [CLEEDMediaService deleteFileAtPath:v61];
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
        v64 = [v3 stagingURL];
        v65 = [v64 lastPathComponent];
        v66 = [v65 UTF8String];
        *buf = 136446467;
        v78 = "[CLEEDMediaService transcodeMediaItem:]";
        v79 = 2081;
        v80 = v66;
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
      [v3 setDurationTranscodeMs:(fabs(v68) * 1000.0)];

      goto LABEL_36;
    }

LABEL_32:
    CFRelease(v11);
    goto LABEL_33;
  }

LABEL_37:
}

- (void)insertMediaServiceItemInUploadList:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList indexOfObject:v4 inSortedRange:0 options:[(NSMutableArray *)self->fPendingServiceItemsForUploadList count] usingComparator:1024, &stru_1000246A0];
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v6 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 mediaItem];
    v9 = [v8 mediaItemID];
    v10 = [v9 UUIDString];
    v11 = [v10 UTF8String];
    v12 = [v4 mediaItem];
    v13 = [v12 mediaItemSizeBytes];
    v14 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
    v15 = 136447235;
    v16 = "[CLEEDMediaService insertMediaServiceItemInUploadList:]";
    v17 = 2081;
    v18 = v11;
    v19 = 2050;
    v20 = v13;
    v21 = 2050;
    v22 = v5;
    v23 = 2050;
    v24 = v14;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, mediaID:%{private}s, size:%{public}lu, indexToInsert:%{public}lu, count:%{public}lu", &v15, 0x34u);
  }

  [(NSMutableArray *)self->fPendingServiceItemsForUploadList insertObject:v4 atIndex:v5];
}

- (void)handleEncryptionCompletionForServiceItem:(id)a3 encryptedFileURL:(id)a4 authTag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  fQueue = self->fQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000B0E8;
  v15[3] = &unk_1000244C0;
  objc_copyWeak(&v20, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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
    v18 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList firstObject];
    if (v18)
    {
      if ([(CLEEDMediaService *)self checkIfUploadQuotaReached:v18])
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
        [(NSMutableArray *)self->fInFlightServiceItemsList addObject:v18];
        [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeObject:v18];
        [(CLEEDMediaService *)self triggerUploadForServiceItem:v18];
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
  v18 = sub_1000012D8();
  v30 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
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
    v28 = v18;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
    goto LABEL_52;
  }

  if (v30)
  {
    *buf = 136446210;
    v38 = "[CLEEDMediaService processNextInFlightServiceItem]";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Input list is empty, preparing for service teardown.", buf, 0xCu);
  }

  [(CLEEDMediaService *)self notifyProgressUITaskCompletion];
  [(CLEEDMediaService *)self prepareForServiceTeardown];
}

- (BOOL)checkIfUploadQuotaReached:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v6 = [(CLEEDMediaService *)self totalBytesUploadedDuringCall];
  v7 = [v4 mediaItem];
  v8 = ([v7 mediaItemSizeBytes] + v6);
  v9 = [(CLEEDUploadServiceConfig *)self->fUploadServiceConfig maxUploadQuotaMB]* 1048576.0;

  if (v9 >= v8)
  {
    v15 = [v4 mediaItem];
    -[CLEEDMediaService setTotalBytesUploadedDuringCall:](self, "setTotalBytesUploadedDuringCall:", [v15 mediaItemSizeBytes] + -[CLEEDMediaService totalBytesUploadedDuringCall](self, "totalBytesUploadedDuringCall"));

    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v16 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = vcvtd_n_f64_s64([(CLEEDMediaService *)self totalBytesUploadedDuringCall], 0x14uLL);
      v19 = [v4 mediaItem];
      v21 = 136446722;
      v22 = "[CLEEDMediaService checkIfUploadQuotaReached:]";
      v23 = 2050;
      v24 = v18;
      v25 = 2050;
      v26 = vcvtd_n_f64_u64([v19 mediaItemSizeBytes], 0x14uLL);
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
    v13 = [v4 mediaItem];
    v21 = 136446722;
    v22 = "[CLEEDMediaService checkIfUploadQuotaReached:]";
    v23 = 2050;
    v24 = v12;
    v25 = 2050;
    v26 = vcvtd_n_f64_u64([v13 mediaItemSizeBytes], 0x14uLL);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, totalBytesUploadedInCall:%{public}.2lf MB, mediaServiceItemSize:%{public}.2lf MB", &v21, 0x20u);
  }

  v14 = 1;
LABEL_22:

  return v14;
}

- (void)triggerUploadForServiceItem:(id)a3
{
  v4 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 mediaItem];
    v8 = [v7 mediaItemID];
    v9 = [v8 UUIDString];
    *buf = 136446467;
    v15 = "[CLEEDMediaService triggerUploadForServiceItem:]";
    v16 = 2081;
    v17 = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaID:%{private}s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  objc_initWeak(&location, v4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000C0A8;
  v10[3] = &unk_1000246F0;
  objc_copyWeak(&v11, buf);
  objc_copyWeak(&v12, &location);
  [v4 processMediaItemWithCompletion:v10];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (unint64_t)countOfCompletedItemsInState:(int64_t)a3
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

        v10 = [*(*(&v14 + 1) + 8 * i) mediaItem];
        v11 = [v10 uploadStatus];

        if (v11 == a3)
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
    v21 = a3;
    v22 = 2050;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, state:%{public}ld, count:%{public}lu", buf, 0x20u);
  }

  return v7;
}

- (id)getLocalizedStringByMediaTypeWithCount:(unint64_t)a3 forTitle:(BOOL)a4
{
  v4 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v9 |= [v13 hasPendingVideos];
        v10 |= [v13 hasPendingPhotos];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);

    if (v10 & v9)
    {
      v14 = +[NSBundle mainBundle];
      if (v4)
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
      if (v4)
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
  if (v4)
  {
    v15 = @"%lu Videos";
  }

  else
  {
    v15 = @"%lu videos";
  }

LABEL_20:
  v16 = [v14 localizedStringForKey:v15 value:&stru_100024E98 table:0];
  v17 = [NSString localizedStringWithFormat:v16, a3];

  return v17;
}

- (void)updateProgress
{
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v58 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v43 + 1) + 8 * i) filteredQueue];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v43 objects:v58 count:16];
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
    v35 = [v28 UTF8String];
    v36 = [v31 UTF8String];
    v37 = self->fProgress;
    *buf = 136447234;
    v48 = "[CLEEDMediaService updateProgress]";
    v49 = 2082;
    v50 = v35;
    v51 = 2082;
    v52 = v36;
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
  v3 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v36 + 1) + 8 * i) filteredQueue];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v36 objects:v48 count:16];
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
      v26 = [v18 title];
      v27 = [v18 reason];
      *buf = 136446978;
      v41 = "[CLEEDMediaService scheduleContinuousProcessingTask]";
      v42 = 2114;
      v43 = v18;
      v44 = 2114;
      v45 = v26;
      v46 = 2114;
      v47 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, ContinuedProcessingTaskRequest:%{public}@, Title:%{public}@, Reason:%{public}@", buf, 0x2Au);
    }

    v28 = sub_100016568(v24);
    v30 = [*(v29 + 824) sharedScheduler];
    v35 = 0;
    v31 = [v30 submitTaskRequest:v18 error:&v35];
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

- (void)startContinuousProcessingTask:(id)a3
{
  v5 = a3;
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

    [v5 setTaskCompletedWithSuccess:0];
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
    objc_initWeak(buf, v5);
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000D254;
    v7[3] = &unk_1000246F0;
    objc_copyWeak(&v8, &location);
    objc_copyWeak(&v9, buf);
    [v5 setExpirationHandler:v7];
    objc_storeStrong(&self->fProgressUITask, a3);
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
        v21 = [v10 UTF8String];
        v22 = [v11 UTF8String];
        v23 = self->fProgress;
        *buf = 136446978;
        v45 = "[CLEEDMediaService notifyProgressUITaskCompletion]";
        v46 = 2082;
        v47 = v21;
        v48 = 2082;
        v49 = v22;
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
        v17 = [v16 urlUploadTask];

        if (v17)
        {
          v18 = [v16 urlUploadTask];
          [v18 cancel];
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
  v34 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v35 = [v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
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
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v45 + 1) + 8 * n);
        if (([v39 metricProcessed] & 1) == 0)
        {
          [(CLEEDMediaService *)self submitCAMetricForRequest:v39];
        }

        v40 = [v39 filteredQueue];
        [v40 removeAllObjects];

        v41 = [v39 pendingQueue];
        [v41 removeAllObjects];

        v42 = [v39 delayQueue];
        [v42 removeAllObjects];

        v43 = [v39 completedQueue];
        [v43 removeAllObjects];
      }

      v36 = [v34 countByEnumeratingWithState:&v45 objects:v65 count:16];
    }

    while (v36);
  }

  v44 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [v44 removeAllObjects];

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
        v16 = [v15 urlUploadTask];

        if (v16)
        {
          v17 = [v15 urlUploadTask];
          [v17 cancel];
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
        v9 = [v8 mediaRequest];
        v10 = [v9 delayQueue];
        v11 = [v8 mediaItem];
        v12 = [v10 member:v11];

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
            v15 = [v8 mediaItem];
            *buf = v26;
            v33 = "[CLEEDMediaService restoreDelayedMediaServiceItems]";
            v34 = 2114;
            v35 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, MediaServiceItem:%{public}@", buf, 0x16u);
          }

          v16 = [v8 mediaItem];
          v17 = [v16 uploadStatus];

          if (v17 == 1)
          {
            [(NSMutableArray *)self->fFilteredMediaServiceItemList addObject:v8];
          }

          else
          {
            if (v17 != 3)
            {
              continue;
            }

            [(CLEEDMediaService *)self insertMediaServiceItemInUploadList:v8];
          }

          v21 = [v8 mediaRequest];
          v22 = [v21 pendingQueue];
          v23 = [v8 mediaItem];
          [v22 addObject:v23];

          v19 = [v8 mediaRequest];
          v24 = [v19 delayQueue];
          v25 = [v8 mediaItem];
          [v24 removeObject:v25];

          goto LABEL_20;
        }

        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        v18 = qword_100029E68;
        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          v20 = [v8 mediaItem];
          *buf = v26;
          v33 = "[CLEEDMediaService restoreDelayedMediaServiceItems]";
          v34 = 2114;
          v35 = v20;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, media item not part of delay queue:%{public}@", buf, 0x16u);

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
        v9 = [v8 urlUploadTask];

        if (v9)
        {
          v10 = [v8 urlUploadTask];
          [v10 cancel];
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

- (void)handleAbortForMediaServiceItem:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaItem];
  [v5 setUploadStatus:7];

  v6 = [v4 mediaRequest];

  if (v6)
  {
    v7 = [v4 mediaRequest];
    [v7 setDidUserCancelUpload:1];
  }

  v8 = [v4 mediaItem];
  [(CLEEDMediaService *)self submitCAMetricForUploadItem:v8];

  v9 = [v4 mediaRequest];
  v10 = [v9 pendingQueue];
  v11 = [v4 mediaItem];
  v12 = [v10 member:v11];

  if (v12)
  {
    [(NSMutableArray *)self->fCompletedServiceItemsList addObject:v4];
    v13 = [v4 mediaItem];
    v14 = [v13 stagingURL];
    v15 = [v14 path];
    [CLEEDMediaService deleteFileAtPath:v15];

    v16 = [v4 mediaItem];
    v17 = [v16 encryptedFileURL];
    v18 = [v17 path];
    [CLEEDMediaService deleteFileAtPath:v18];
  }

  v19 = [v4 mediaRequest];
  v20 = [v4 mediaItem];
  v21 = [v19 updateQueueForProcessedMediaItem:v20];

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

- (void)handleDelayForMediaServiceItem:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaRequest];
  v6 = [v5 delayQueue];
  v7 = [v4 mediaItem];
  v8 = [v6 member:v7];

  if (!v8)
  {
    v9 = [v4 mediaRequest];
    v10 = [v9 pendingQueue];
    v11 = [v4 mediaItem];
    v12 = [v10 member:v11];

    if (v12)
    {
      [(NSMutableArray *)self->fDelayedServiceItemsList addObject:v4];
      if ([(CLEEDMediaService *)self delayRequired])
      {
        v13 = [v4 mediaItem];
        [v13 setDidApplyDelayMitigation:1];
      }
    }

    v14 = [v4 mediaRequest];
    v15 = [v4 mediaItem];
    v16 = [v14 updateQueueForDelayedMediaItem:v15];

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
  v5 = [(CLEEDMediaService *)self mediaServiceRequestList];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 filteredQueue];
        [v11 removeAllObjects];

        v12 = [v10 delayQueue];
        [v12 removeAllObjects];

        v13 = [v10 pendingQueue];
        [v13 removeAllObjects];

        v14 = [v10 completedQueue];
        [v14 removeAllObjects];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = [(CLEEDMediaService *)self mediaServiceRequestList];
  [v15 removeAllObjects];

  [(NSMutableArray *)self->fDelayedServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fFilteredMediaServiceItemList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForUploadList removeAllObjects];
  [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList removeAllObjects];
  [(NSMutableArray *)self->fCompletedServiceItemsList removeAllObjects];
  [(NSMutableArray *)self->fInFlightServiceItemsList removeAllObjects];
}

+ (void)deleteFileAtPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v6 = +[NSFileManager defaultManager];
      v9 = 0;
      [v6 removeItemAtPath:v3 error:&v9];
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

  v6 = [(CLEEDMediaService *)self loadFromCache];
  v7 = v6;
  if (!v6 || ![v6 count])
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
  v56 = self;
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
      v13 = [v12 requestID];
      if (!v13)
      {
        goto LABEL_36;
      }

      v14 = v13;
      v15 = [v12 uploadURL];
      if (!v15)
      {
        goto LABEL_35;
      }

      v16 = v15;
      v17 = v9;
      v18 = [v12 sharedInfoPrefix];
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = v18;
      v20 = [v12 combinedSecret];
      if (!v20)
      {
        goto LABEL_33;
      }

      v21 = [v12 deviceKeyConfirmation];
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = [v12 token];
      if (!v22)
      {
        goto LABEL_31;
      }

      v23 = [v12 requestTimestamp];
      if (!v23)
      {
        goto LABEL_30;
      }

      v24 = [v12 callUUID];
      if (!v24)
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

      v58 = v24;
      v25 = [v12 pendingQueue];
      if (v25)
      {
        goto LABEL_23;
      }

      v26 = [v12 completedQueue];
      if (v26)
      {

        v25 = 0;
LABEL_23:

        v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
        v10 = v60;
        v9 = v17;
        goto LABEL_24;
      }

      v55 = [v12 filteredQueue];

      v3 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
      v4 = &selRef_createDirectoryAtPath_withIntermediateDirectories_attributes_error_;
      v10 = v60;
      v9 = v17;
      if (!v55)
      {
        goto LABEL_36;
      }

LABEL_24:
      v27 = [v12 requestTimestamp];
      [v27 timeIntervalSinceNow];
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
        v32 = [v12 delayQueue];
        if (![v32 count])
        {
          goto LABEL_46;
        }

        v33 = [(CLEEDMediaService *)v56 delayRequired];

        if ((v33 & 1) == 0)
        {
          v34 = [v12 pendingQueue];
          v35 = [v12 delayQueue];
          [v34 unionSet:v35];

          v32 = [v12 delayQueue];
          [v32 removeAllObjects];
LABEL_46:
        }

        [(CLEEDMediaService *)v56 processCompletedQueueForCachedRequest:v12];
        [(CLEEDMediaService *)v56 processPendingQueueForCachedRequest:v12];
        [(CLEEDMediaService *)v56 processDelayQueueForCachedRequest:v12];
        v36 = [v12 requestID];
        v37 = [(CLEEDMediaService *)v56 getMediaServiceRequestWithID:v36];

        if (!v37)
        {
          v38 = [(CLEEDMediaService *)v56 mediaServiceRequestList];
          [v38 addObject:v12];
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
        v59 = [v12 requestID];
        v40 = [v59 UUIDString];
        v41 = [v40 UTF8String];
        v54 = [v12 filteredQueue];
        v42 = [v54 count];
        v43 = [v12 pendingQueue];
        v44 = [v43 count];
        v45 = [v12 delayQueue];
        v46 = [v45 count];
        v47 = [v12 completedQueue];
        v48 = [v47 count];
        *buf = 136447491;
        v67 = "[CLEEDMediaService processMediaServicesFromCache]";
        v68 = 2081;
        v69 = v41;
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

  self = v56;
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

  [(CLEEDMediaService *)v56 checkAndScheduleProcessing];
LABEL_66:
}

- (void)processCompletedQueueForCachedRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 completedQueue];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 completedQueue];
    v8 = [v7 count];

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
        v11 = [v4 completedQueue];
        v12 = [v11 count];
        v13 = [v4 completedQueue];
        *buf = 136446723;
        v35 = "[CLEEDMediaService processCompletedQueueForCachedRequest:]";
        v36 = 2049;
        v37 = v12;
        v38 = 2113;
        v39 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, completedQueueCount:%{private}lu, completedQueue:%{private}@", buf, 0x20u);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = [v4 completedQueue];
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
            v18 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v17 mediaRequest:v4 mediaService:self];
            if (v18)
            {
              [(NSMutableArray *)self->fCompletedServiceItemsList addObject:v18];
            }

            v19 = [v17 stagingURL];
            v20 = [v19 path];
            [CLEEDMediaService deleteFileAtPath:v20];

            v21 = [v17 encryptedFileURL];
            v22 = [v21 path];
            [CLEEDMediaService deleteFileAtPath:v22];
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

- (void)processDelayQueueForCachedRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 delayQueue];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 delayQueue];
    v8 = [v7 count];

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
        v11 = [v4 delayQueue];
        *buf = 136446467;
        v44 = "[CLEEDMediaService processDelayQueueForCachedRequest:]";
        v45 = 2049;
        v46 = [v11 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, delayQueueCount:%{private}lu", buf, 0x16u);
      }

      v12 = objc_alloc_init(NSMutableSet);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v13 = [v4 delayQueue];
      v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v14)
      {
        v16 = v14;
        v17 = *v39;
        *&v15 = 136446467;
        v35 = v15;
        v37 = self;
        do
        {
          v18 = 0;
          do
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v38 + 1) + 8 * v18);
            v20 = [v4 completedQueue];
            v21 = [v20 member:v19];

            if (v21 || ([v4 pendingQueue], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "member:", v19), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
            {
              [v12 addObject:v19];
            }

            else
            {
              v24 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v19 mediaRequest:v4 mediaService:self];
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
                  v36 = [v19 encryptedFileURL];
                  v28 = [v36 path];
                  *buf = v35;
                  v44 = "[CLEEDMediaService processDelayQueueForCachedRequest:]";
                  v45 = 2113;
                  v46 = v28;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not create mediaServiceItem, path:%{private}@", buf, 0x16u);
                }

                v26 = [v4 completedQueue];
                [v26 addObject:v19];

                [v12 addObject:v19];
                self = v37;
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v29 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
          v16 = v29;
        }

        while (v29);
      }

      v30 = [v4 delayQueue];
      [v30 minusSet:v12];

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

- (void)processPendingQueueForCachedRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 pendingQueue];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 pendingQueue];
    v8 = [v7 count];

    if (v8)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v9 = qword_100029E68;
      v92 = self;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = [v4 filteredQueue];
        v12 = [v11 count];
        v13 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
        v14 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
        v15 = [(NSMutableArray *)v92->fCompletedServiceItemsList count];
        *buf = 136447491;
        v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
        v103 = 2113;
        v104 = v4;
        v105 = 2049;
        v106 = v12;
        v107 = 2049;
        v108 = v13;
        v109 = 2049;
        v110 = v14;
        self = v92;
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
      obj = [v4 pendingQueue];
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
            v22 = [v4 completedQueue];
            v23 = [v22 member:v21];

            if (v23)
            {
              [v16 addObject:v21];
              goto LABEL_26;
            }

            v24 = [[CLEEDMediaServiceItem alloc] initWithMediaItem:v21 mediaRequest:v4 mediaService:self];
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
                v44 = [v21 encryptedFileURL];
                v45 = [v44 path];
                *buf = 136446467;
                v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                v103 = 2113;
                v104 = v45;
                _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Could not create mediaServiceItem, path:%{private}@", buf, 0x16u);

                self = v92;
              }

              v28 = [v4 completedQueue];
              [v28 addObject:v21];

              goto LABEL_23;
            }

            v25 = [v21 uploadStatus];
            if (v25 <= 2)
            {
              if (v25)
              {
                if (v25 == 1)
                {
                  v38 = +[NSFileManager defaultManager];
                  v39 = [v21 stagingURL];
                  v40 = [v39 path];
                  v41 = [v38 fileExistsAtPath:v40];

                  if (v41)
                  {
                    [v90 addObject:v24];
                    self = v92;
                    v16 = v93;
                    goto LABEL_25;
                  }

                  self = v92;
                  if (qword_100029E70 != -1)
                  {
                    sub_100013358();
                  }

                  v42 = qword_100029E68;
                  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
                  {
                    v56 = v42;
                    v57 = [v21 stagingURL];
                    v58 = [v57 path];
                    v59 = [v58 UTF8String];
                    *buf = 136446467;
                    v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                    v103 = 2081;
                    v104 = v59;
                    _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Staging file does not exist, path:%{private}s", buf, 0x16u);
                  }

                  [v21 setUploadStatus:8];
                }

                else if (v25 != 2)
                {
                  goto LABEL_25;
                }

LABEL_17:
                [v94 addObject:v24];
                v26 = [v4 completedQueue];
                [v26 addObject:v21];

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

            if ((v25 - 4) < 6)
            {
              goto LABEL_17;
            }

            if (v25 == 3)
            {
              v30 = [v21 encryptedFileURL];
              if (!v30)
              {
                goto LABEL_48;
              }

              v31 = v30;
              v32 = [v21 authTag];
              if (!v32)
              {
                goto LABEL_47;
              }

              v33 = v32;
              v34 = [v21 mediaItemID];
              if (!v34)
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
                  v89 = [v21 encryptedFileURL];
                  v87 = [v89 path];
                  v80 = [v87 UTF8String];
                  v85 = [v21 mediaItemID];
                  v53 = [v85 UUIDString];
                  v79 = [v53 UTF8String];
                  v83 = [v21 authTag];
                  v54 = [v83 base64EncodedStringWithOptions:0];
                  v55 = [v54 UTF8String];
                  *buf = 136446979;
                  v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
                  v103 = 2081;
                  v104 = v80;
                  v105 = 2081;
                  v106 = v79;
                  v107 = 2081;
                  v108 = v55;
                  _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Item missing encryption information, path:%{private}s, mediaID:%{private}s, authTag:%{private}s", buf, 0x2Au);
                }

                v47 = [v21 stagingURL];
                v48 = [v47 path];
                [CLEEDMediaService deleteFileAtPath:v48];

                v49 = [v21 encryptedFileURL];
                v50 = [v49 path];
                [CLEEDMediaService deleteFileAtPath:v50];

                [v21 setUploadStatus:8];
                [v94 addObject:v24];
                v51 = [v4 completedQueue];
                [v51 addObject:v21];

                [v16 addObject:v21];
                self = v92;
                goto LABEL_25;
              }

              v86 = v34;
              v88 = +[NSFileManager defaultManager];
              v82 = [v21 encryptedFileURL];
              v35 = [v82 path];
              v84 = [v88 fileExistsAtPath:v35];

              self = v92;
              if (!v84)
              {
                goto LABEL_48;
              }

              [v81 addObject:v24];
              v36 = [v21 stagingURL];
              v37 = [v36 path];
              [CLEEDMediaService deleteFileAtPath:v37];
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
          v62 = [v94 allObjects];
          [(NSMutableArray *)fCompletedServiceItemsList addObjectsFromArray:v62];
        }

        if ([v81 count])
        {
          fPendingServiceItemsForUploadList = self->fPendingServiceItemsForUploadList;
          v64 = [v81 allObjects];
          [(NSMutableArray *)fPendingServiceItemsForUploadList addObjectsFromArray:v64];

          [(NSMutableArray *)self->fPendingServiceItemsForUploadList sortUsingSelector:"compareMediaSize:"];
        }

        if ([v90 count])
        {
          fFilteredMediaServiceItemList = self->fFilteredMediaServiceItemList;
          v66 = [v90 allObjects];
          [(NSMutableArray *)fFilteredMediaServiceItemList addObjectsFromArray:v66];
        }

        if ([v91 count])
        {
          v67 = [v4 filteredQueue];
          v68 = [v91 allObjects];
          [v67 addObjectsFromArray:v68];
        }
      }

      v69 = [v4 pendingQueue];
      [v69 minusSet:v93];

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v70 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v70;
        v72 = [v4 filteredQueue];
        v73 = [v72 count];
        v74 = [(NSMutableArray *)self->fPendingServiceItemsForEncryptionList count];
        v75 = [(NSMutableArray *)self->fPendingServiceItemsForUploadList count];
        v76 = self;
        v77 = v75;
        v78 = [(NSMutableArray *)v76->fCompletedServiceItemsList count];
        *buf = 136447491;
        v102 = "[CLEEDMediaService processPendingQueueForCachedRequest:]";
        v103 = 2113;
        v104 = v4;
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
        v10 = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
        v11 = [v2 length];
        *buf = 136446723;
        v14 = "[CLEEDMediaService storeDataToCache]";
        v15 = 2081;
        v16 = v10;
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

      v12 = 0;
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
        v9 = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
        v10 = [v4 length];
        v11 = [v5 mediaServiceRequestList];
        *buf = 136446979;
        v17 = "[CLEEDMediaService loadFromCache]";
        v18 = 2081;
        v19 = v9;
        v20 = 2050;
        v21 = v10;
        v22 = 2114;
        v23 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Successfully read CLEEDMediaService data from cache file:%{private}s, cacheSize:%{public}lu, requests:%{public}@", buf, 0x2Au);
      }

      -[CLEEDMediaService setTotalBytesUploadedDuringCall:](self, "setTotalBytesUploadedDuringCall:", [v5 totalBytesUploadedDuringCall]);
      v12 = [v5 mediaServiceRequestList];
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

    v12 = 0;
  }

  return v12;
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
      v9 = [@"/private/var/mobile/Library/CLEEDMediaService/CLEEDMSCache" UTF8String];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, CLEEDMediaService cache file:%{private}s does not exist", &v6, 0x16u);
    }
  }
}

- (double)getUploadDataRateForMediaItem:(id)a3
{
  v3 = a3;
  v4 = v3;
  v5 = 0.0;
  if (v3 && [v3 uploadStatus] == 5 && objc_msgSend(v4, "mediaItemSizeBytes") && objc_msgSend(v4, "durationUploadMs") >= 1)
  {
    v6 = [v4 mediaItemSizeBytes] * 8.0;
    v5 = v6 / [v4 durationUploadMs];
  }

  return v5;
}

- (void)submitCAMetricForUploadItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 metricProcessed])
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
      v24 = [v5 mediaItemFormat];
      v25 = v24;
      v26 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v24 UTF8String]);
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

- (unint64_t)countOfItemsInRequest:(id)a3 withState:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 completedQueue];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * i) uploadStatus] == a4)
        {
          ++v8;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)countOfDelayedItemsInRequest:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 completedQueue];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) didApplyDelayMitigation];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)getMaxSizeInRequest:(id)a3 withType:(int64_t)a4
{
  if (!a3)
  {
    return 0.0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 completedQueue];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == a4 && v9 < objc_msgSend(v11, "mediaItemSizeBytes"))
        {
          v9 = [v11 mediaItemSizeBytes];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    v12 = v9 * 0.000000953674316;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)getAvgSizeInRequest:(id)a3 withType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0.0;
  if (v5)
  {
    v8 = [v5 completedQueue];
    v9 = [v8 count];

    if (v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [v6 completedQueue];
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v18 + 1) + 8 * i);
            if ([v16 type] == a4)
            {
              v7 = v7 + [v16 mediaItemSizeBytes];
              ++v13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (double)getMinSizeInRequest:(id)a3 withType:(int64_t)a4
{
  if (!a3)
  {
    return 0.0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [a3 completedQueue];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == a4 && (v9 == 0.0 || v9 > objc_msgSend(v11, "mediaItemSizeBytes")))
        {
          v9 = [v11 mediaItemSizeBytes];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
    v12 = v9 * 0.000000953674316;
  }

  else
  {
    v12 = 0.0;
  }

  return v12;
}

- (double)getTotalSizeOfSuccessfulUploadsInRequest:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 completedQueue];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 uploadStatus] == 5)
        {
          v7 = v7 + [v9 mediaItemSizeBytes];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (double)getTotalSizeOfFailedUploadsInRequest:(id)a3
{
  if (!a3)
  {
    return 0.0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 completedQueue];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 uploadStatus] != 5)
        {
          v7 = v7 + [v9 mediaItemSizeBytes];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)submitCAMetricForRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 metricProcessed])
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
      v34 = [v5 completedQueue];
      v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v34 count]);
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
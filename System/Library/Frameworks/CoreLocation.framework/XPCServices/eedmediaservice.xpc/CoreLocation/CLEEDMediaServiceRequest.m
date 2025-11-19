@interface CLEEDMediaServiceRequest
- (BOOL)anyItemsToProcess;
- (CLEEDMediaServiceRequest)initWithCoder:(id)a3;
- (CLEEDMediaServiceRequest)initWithRequestID:(id)a3 callUUID:(id)a4 uploadURL:(id)a5 sharedInfoPrefix:(id)a6 combinedSecret:(id)a7 token:(id)a8;
- (id)description;
- (id)generateDeviceKeyConfirmationFromSharedInfoPrefix:(id)a3 combinedSecret:(id)a4;
- (unint64_t)filterAndAddMediaList:(id)a3;
- (unint64_t)updateQueueForDelayedMediaItem:(id)a3;
- (unint64_t)updateQueueForProcessedMediaItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLEEDMediaServiceRequest

- (CLEEDMediaServiceRequest)initWithRequestID:(id)a3 callUUID:(id)a4 uploadURL:(id)a5 sharedInfoPrefix:(id)a6 combinedSecret:(id)a7 token:(id)a8
{
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v34 = a6;
  v15 = a7;
  v16 = a8;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v17 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v41 = "[CLEEDMediaServiceRequest initWithRequestID:callUUID:uploadURL:sharedInfoPrefix:combinedSecret:token:]";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s", buf, 0xCu);
  }

  v39.receiver = self;
  v39.super_class = CLEEDMediaServiceRequest;
  v18 = [(CLEEDMediaServiceRequest *)&v39 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v18->_requestID, a3);
  objc_storeStrong(&v19->_callUUID, a4);
  objc_storeStrong(&v19->_uploadURL, a5);
  objc_storeStrong(&v19->_sharedInfoPrefix, a6);
  objc_storeStrong(&v19->_combinedSecret, a7);
  objc_storeStrong(&v19->_token, a8);
  v20 = +[NSDate date];
  requestTimestamp = v19->_requestTimestamp;
  v19->_requestTimestamp = v20;

  v22 = [(CLEEDMediaServiceRequest *)v19 generateDeviceKeyConfirmationFromSharedInfoPrefix:v19->_sharedInfoPrefix combinedSecret:v19->_combinedSecret];
  deviceKeyConfirmation = v19->_deviceKeyConfirmation;
  v19->_deviceKeyConfirmation = v22;

  if (v19->_deviceKeyConfirmation)
  {
    v24 = objc_alloc_init(NSMutableSet);
    filteredQueue = v19->_filteredQueue;
    v19->_filteredQueue = v24;

    v26 = objc_alloc_init(NSMutableSet);
    pendingQueue = v19->_pendingQueue;
    v19->_pendingQueue = v26;

    v28 = objc_alloc_init(NSMutableSet);
    delayQueue = v19->_delayQueue;
    v19->_delayQueue = v28;

    v30 = objc_alloc_init(NSMutableSet);
    completedQueue = v19->_completedQueue;
    v19->_completedQueue = v30;

    *&v19->_didUserCancelUpload = 0;
    v19->_numAdditionalMediaItemsSelected = 0;
    v19->_durationRequestHandlingMs = 0;
LABEL_8:
    v32 = v19;
    goto LABEL_14;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_100013380();
  }

  v32 = 0;
LABEL_14:

  return v32;
}

- (id)description
{
  v15 = [(CLEEDMediaServiceRequest *)self requestID];
  v3 = [(CLEEDMediaServiceRequest *)self uploadURL];
  v4 = [(CLEEDMediaServiceRequest *)self callUUID];
  v5 = [(CLEEDMediaServiceRequest *)self requestTimestamp];
  v6 = [(CLEEDMediaServiceRequest *)self filteredQueue];
  v7 = [v6 count];
  v8 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v9 = [v8 count];
  v10 = [(CLEEDMediaServiceRequest *)self delayQueue];
  v11 = [v10 count];
  v12 = [(CLEEDMediaServiceRequest *)self completedQueue];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" <CLEEDMediaServiceRequest: ID:%@, uploadURL:%@, callUUID:%@, requestTimestamp:%@, numFiltered:%lu, numPending:%lu, numDelay:%lu, numComplete:%lu>", v15, v3, v4, v5, v7, v9, v11, [v12 count]);

  return v13;
}

- (id)generateDeviceKeyConfirmationFromSharedInfoPrefix:(id)a3 combinedSecret:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [@"device key confirmation" dataUsingEncoding:4];
    v9 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [v5 length] + objc_msgSend(@"device key confirmation", "length"));
    [v9 appendData:v5];
    [v9 appendData:v8];
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v10 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      sub_100013480(v10);
    }

    v11 = [CLEEDCryptoUtilities getDerivedKeyWithLength:48 secretData:v7 additionalInfo:v9];
    v12 = v11;
    if (!v11)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_1000136D0();
      }

      v16 = 0;
      goto LABEL_41;
    }

    v13 = [v11 subdataWithRange:{0, 32}];
    v14 = [v12 subdataWithRange:{32, 16}];
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v15 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      log = v15;
      v25 = [v12 base64EncodedStringWithOptions:0];
      v22 = [v25 UTF8String];
      v23 = [v13 base64EncodedStringWithOptions:0];
      v19 = [v23 UTF8String];
      v21 = [v14 base64EncodedStringWithOptions:0];
      *buf = 136446979;
      v27 = "[CLEEDMediaServiceRequest generateDeviceKeyConfirmationFromSharedInfoPrefix:combinedSecret:]";
      v28 = 2081;
      v29 = v22;
      v30 = 2081;
      v31 = v19;
      v32 = 2081;
      v33 = [v21 UTF8String];
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, Derived key blob:%{private}s, derived key:%{private}s, derived IV blob:%{private}s", buf, 0x2Au);

      if (!v13)
      {
        goto LABEL_35;
      }
    }

    else if (!v13)
    {
      goto LABEL_35;
    }

    if (v14)
    {
      v16 = [CLEEDCryptoUtilities getGMACWithAuthData:v8 key:v13 iv:v14];
      if (v16)
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        v17 = qword_100029E68;
        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
        {
          sub_1000135A8(v17);
        }

        v18 = v16;
      }

      else
      {
        if (qword_100029E70 != -1)
        {
          sub_100013358();
        }

        if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
        {
          sub_100013650();
        }
      }

LABEL_40:
LABEL_41:

      goto LABEL_42;
    }

LABEL_35:
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100013528();
    }

    v16 = 0;
    goto LABEL_40;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_100013400();
  }

  v16 = 0;
LABEL_42:

  return v16;
}

- (unint64_t)updateQueueForProcessedMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v6 = [v5 member:v4];

  if (v6)
  {
    v7 = [(CLEEDMediaServiceRequest *)self completedQueue];
    [v7 addObject:v4];

    v8 = [(CLEEDMediaServiceRequest *)self pendingQueue];
    [v8 removeObject:v4];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100013750();
    }
  }

  v9 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(CLEEDMediaServiceRequest *)self durationRequestHandlingMs];
    v12 = [(CLEEDMediaServiceRequest *)self requestTimestamp];
    [v12 timeIntervalSinceNow];
    [(CLEEDMediaServiceRequest *)self setDurationRequestHandlingMs:(v11 + fabs(v13) * 1000.0)];
  }

  v14 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v15 = [v14 count];

  return v15;
}

- (unint64_t)updateQueueForDelayedMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v6 = [v5 member:v4];

  if (v6)
  {
    v7 = [(CLEEDMediaServiceRequest *)self delayQueue];
    [v7 addObject:v4];

    v8 = [(CLEEDMediaServiceRequest *)self pendingQueue];
    [v8 removeObject:v4];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000137CC();
    }
  }

  v9 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v10 = [v9 count];

  if (!v10)
  {
    v11 = [(CLEEDMediaServiceRequest *)self durationRequestHandlingMs];
    v12 = [(CLEEDMediaServiceRequest *)self requestTimestamp];
    [v12 timeIntervalSinceNow];
    [(CLEEDMediaServiceRequest *)self setDurationRequestHandlingMs:(v11 + fabs(v13) * 1000.0)];
  }

  v14 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v15 = [v14 count];

  return v15;
}

- (unint64_t)filterAndAddMediaList:(id)a3
{
  v4 = a3;
  if (![(CLEEDMediaServiceRequest *)self anyItemsToProcess])
  {
    [(CLEEDMediaServiceRequest *)self setHasPendingPhotos:0];
    [(CLEEDMediaServiceRequest *)self setHasPendingVideos:0];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [(CLEEDMediaServiceRequest *)self filteredQueue];
        v12 = [v11 member:v10];

        if (!v12)
        {
          v13 = [(CLEEDMediaServiceRequest *)self pendingQueue];
          v14 = [v13 member:v10];

          if (!v14)
          {
            v15 = [(CLEEDMediaServiceRequest *)self delayQueue];
            v16 = [v15 member:v10];

            if (!v16)
            {
              v17 = [(CLEEDMediaServiceRequest *)self completedQueue];
              v18 = [v17 member:v10];

              if (!v18)
              {
                if ([v10 type] == 1)
                {
                  [(CLEEDMediaServiceRequest *)self setHasPendingPhotos:1];
                }

                else
                {
                  [(CLEEDMediaServiceRequest *)self setHasPendingVideos:1];
                }

                v19 = [(CLEEDMediaServiceRequest *)self filteredQueue];
                [v19 addObject:v10];
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = [(CLEEDMediaServiceRequest *)self filteredQueue];
  v21 = [v20 count];

  return v21;
}

- (BOOL)anyItemsToProcess
{
  v3 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CLEEDMediaServiceRequest *)self delayQueue];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(CLEEDMediaServiceRequest *)self filteredQueue];
      v4 = [v6 count] != 0;
    }
  }

  return v4;
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
    sub_100013848(self, v5);
  }

  [v4 encodeObject:self->_requestID forKey:@"requestID"];
  [v4 encodeObject:self->_callUUID forKey:@"callUUID"];
  [v4 encodeObject:self->_requestTimestamp forKey:@"requestTimestamp"];
  [v4 encodeObject:self->_uploadURL forKey:@"uploadURL"];
  [v4 encodeObject:self->_sharedInfoPrefix forKey:@"sharedInfoPrefix"];
  [v4 encodeObject:self->_combinedSecret forKey:@"combinedSecret"];
  [v4 encodeObject:self->_token forKey:@"token"];
  [v4 encodeObject:self->_deviceKeyConfirmation forKey:@"deviceKeyConfirmation"];
  [v4 encodeObject:self->_filteredQueue forKey:@"filteredQueue"];
  [v4 encodeObject:self->_pendingQueue forKey:@"pendingQueue"];
  [v4 encodeObject:self->_delayQueue forKey:@"delayQueue"];
  [v4 encodeObject:self->_completedQueue forKey:@"completedQueue"];
  [v4 encodeInteger:self->_numAdditionalMediaItemsSelected forKey:@"numAdditionalMediaItemsSelected"];
  [v4 encodeInteger:self->_durationRequestHandlingMs forKey:@"durationRequestHandlingMs"];
  [v4 encodeBool:self->_didUserCancelUpload forKey:@"didUserCancelUpload"];
  [v4 encodeBool:self->_metricProcessed forKey:@"metricProcessed"];
  [v4 encodeBool:self->_hasPendingVideos forKey:@"hasPendingVideos"];
  [v4 encodeBool:self->_hasPendingPhotos forKey:@"hasPendingPhotos"];
}

- (CLEEDMediaServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
  requestID = self->_requestID;
  self->_requestID = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
  callUUID = self->_callUUID;
  self->_callUUID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestTimestamp"];
  requestTimestamp = self->_requestTimestamp;
  self->_requestTimestamp = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uploadURL"];
  uploadURL = self->_uploadURL;
  self->_uploadURL = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedInfoPrefix"];
  sharedInfoPrefix = self->_sharedInfoPrefix;
  self->_sharedInfoPrefix = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"combinedSecret"];
  combinedSecret = self->_combinedSecret;
  self->_combinedSecret = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceKeyConfirmation"];
  deviceKeyConfirmation = self->_deviceKeyConfirmation;
  self->_deviceKeyConfirmation = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  token = self->_token;
  self->_token = v19;

  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
  v23 = [v4 decodeObjectOfClasses:v22 forKey:@"filteredQueue"];
  filteredQueue = self->_filteredQueue;
  self->_filteredQueue = v23;

  v25 = objc_opt_class();
  v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
  v27 = [v4 decodeObjectOfClasses:v26 forKey:@"pendingQueue"];
  pendingQueue = self->_pendingQueue;
  self->_pendingQueue = v27;

  v29 = objc_opt_class();
  v30 = [NSSet setWithObjects:v29, objc_opt_class(), 0];
  v31 = [v4 decodeObjectOfClasses:v30 forKey:@"delayQueue"];
  delayQueue = self->_delayQueue;
  self->_delayQueue = v31;

  v33 = objc_opt_class();
  v34 = [NSSet setWithObjects:v33, objc_opt_class(), 0];
  v35 = [v4 decodeObjectOfClasses:v34 forKey:@"completedQueue"];
  completedQueue = self->_completedQueue;
  self->_completedQueue = v35;

  self->_numAdditionalMediaItemsSelected = [v4 decodeIntegerForKey:@"numAdditionalMediaItemsSelected"];
  self->_durationRequestHandlingMs = [v4 decodeIntegerForKey:@"durationRequestHandlingMs"];
  self->_didUserCancelUpload = [v4 decodeBoolForKey:@"didUserCancelUpload"];
  self->_metricProcessed = [v4 decodeBoolForKey:@"metricProcessed"];
  self->_hasPendingVideos = [v4 decodeBoolForKey:@"hasPendingVideos"];
  LOBYTE(v34) = [v4 decodeBoolForKey:@"hasPendingPhotos"];

  self->_hasPendingPhotos = v34;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v37 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    v39 = self->_requestID;
    v40 = self->_callUUID;
    v42 = self->_requestTimestamp;
    v41 = self->_uploadURL;
    v43 = self->_sharedInfoPrefix;
    v50 = self->_combinedSecret;
    v51 = self->_deviceKeyConfirmation;
    v52 = self->_token;
    v44 = self->_filteredQueue;
    v45 = v37;
    v46 = [(NSMutableSet *)v44 count];
    v47 = [(NSMutableSet *)self->_pendingQueue count];
    v48 = [(NSMutableSet *)self->_delayQueue count];
    v49 = [(NSMutableSet *)self->_completedQueue count];
    *buf = 136449283;
    v54 = "[CLEEDMediaServiceRequest initWithCoder:]";
    v55 = 2114;
    v56 = v39;
    v57 = 2114;
    v58 = v41;
    v59 = 2114;
    v60 = v40;
    v61 = 2114;
    v62 = v42;
    v63 = 2113;
    v64 = v43;
    v65 = 2113;
    v66 = v50;
    v67 = 2113;
    v68 = v51;
    v69 = 2113;
    v70 = v52;
    v71 = 2050;
    v72 = v46;
    v73 = 2050;
    v74 = v47;
    v75 = 2050;
    v76 = v48;
    v77 = 2050;
    v78 = v49;
    _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s[requestID:%{public}@,uploadURL:%{public}@,callUUID:%{public}@,requestTimestamp:%{public}@,sharedInfoPrefix:%{private}@,combinedSecret:%{private}@,deviceKeyConfirmation:%{private}@,Token:%{private}@,numFiltered:%{public}lu,numPending:%{public}lu,numDelayed:%{public}lu,numCompleted:%{public}lu]", buf, 0x84u);
  }

  return self;
}

@end
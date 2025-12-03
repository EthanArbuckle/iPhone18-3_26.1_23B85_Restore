@interface CLEEDMediaServiceRequest
- (BOOL)anyItemsToProcess;
- (CLEEDMediaServiceRequest)initWithCoder:(id)coder;
- (CLEEDMediaServiceRequest)initWithRequestID:(id)d callUUID:(id)iD uploadURL:(id)l sharedInfoPrefix:(id)prefix combinedSecret:(id)secret token:(id)token;
- (id)description;
- (id)generateDeviceKeyConfirmationFromSharedInfoPrefix:(id)prefix combinedSecret:(id)secret;
- (unint64_t)filterAndAddMediaList:(id)list;
- (unint64_t)updateQueueForDelayedMediaItem:(id)item;
- (unint64_t)updateQueueForProcessedMediaItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLEEDMediaServiceRequest

- (CLEEDMediaServiceRequest)initWithRequestID:(id)d callUUID:(id)iD uploadURL:(id)l sharedInfoPrefix:(id)prefix combinedSecret:(id)secret token:(id)token
{
  dCopy = d;
  iDCopy = iD;
  lCopy = l;
  prefixCopy = prefix;
  secretCopy = secret;
  tokenCopy = token;
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

  objc_storeStrong(&v18->_requestID, d);
  objc_storeStrong(&v19->_callUUID, iD);
  objc_storeStrong(&v19->_uploadURL, l);
  objc_storeStrong(&v19->_sharedInfoPrefix, prefix);
  objc_storeStrong(&v19->_combinedSecret, secret);
  objc_storeStrong(&v19->_token, token);
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
  requestID = [(CLEEDMediaServiceRequest *)self requestID];
  uploadURL = [(CLEEDMediaServiceRequest *)self uploadURL];
  callUUID = [(CLEEDMediaServiceRequest *)self callUUID];
  requestTimestamp = [(CLEEDMediaServiceRequest *)self requestTimestamp];
  filteredQueue = [(CLEEDMediaServiceRequest *)self filteredQueue];
  v7 = [filteredQueue count];
  pendingQueue = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v9 = [pendingQueue count];
  delayQueue = [(CLEEDMediaServiceRequest *)self delayQueue];
  v11 = [delayQueue count];
  completedQueue = [(CLEEDMediaServiceRequest *)self completedQueue];
  v13 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" <CLEEDMediaServiceRequest: ID:%@, uploadURL:%@, callUUID:%@, requestTimestamp:%@, numFiltered:%lu, numPending:%lu, numDelay:%lu, numComplete:%lu>", requestID, uploadURL, callUUID, requestTimestamp, v7, v9, v11, [completedQueue count]);

  return v13;
}

- (id)generateDeviceKeyConfirmationFromSharedInfoPrefix:(id)prefix combinedSecret:(id)secret
{
  prefixCopy = prefix;
  secretCopy = secret;
  v7 = secretCopy;
  if (prefixCopy && secretCopy)
  {
    v8 = [@"device key confirmation" dataUsingEncoding:4];
    v9 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [prefixCopy length] + objc_msgSend(@"device key confirmation", "length"));
    [v9 appendData:prefixCopy];
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
      uTF8String = [v25 UTF8String];
      v23 = [v13 base64EncodedStringWithOptions:0];
      uTF8String2 = [v23 UTF8String];
      v21 = [v14 base64EncodedStringWithOptions:0];
      *buf = 136446979;
      v27 = "[CLEEDMediaServiceRequest generateDeviceKeyConfirmationFromSharedInfoPrefix:combinedSecret:]";
      v28 = 2081;
      v29 = uTF8String;
      v30 = 2081;
      v31 = uTF8String2;
      v32 = 2081;
      uTF8String3 = [v21 UTF8String];
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

- (unint64_t)updateQueueForProcessedMediaItem:(id)item
{
  itemCopy = item;
  pendingQueue = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v6 = [pendingQueue member:itemCopy];

  if (v6)
  {
    completedQueue = [(CLEEDMediaServiceRequest *)self completedQueue];
    [completedQueue addObject:itemCopy];

    pendingQueue2 = [(CLEEDMediaServiceRequest *)self pendingQueue];
    [pendingQueue2 removeObject:itemCopy];
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

  pendingQueue3 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v10 = [pendingQueue3 count];

  if (!v10)
  {
    durationRequestHandlingMs = [(CLEEDMediaServiceRequest *)self durationRequestHandlingMs];
    requestTimestamp = [(CLEEDMediaServiceRequest *)self requestTimestamp];
    [requestTimestamp timeIntervalSinceNow];
    [(CLEEDMediaServiceRequest *)self setDurationRequestHandlingMs:(durationRequestHandlingMs + fabs(v13) * 1000.0)];
  }

  pendingQueue4 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v15 = [pendingQueue4 count];

  return v15;
}

- (unint64_t)updateQueueForDelayedMediaItem:(id)item
{
  itemCopy = item;
  pendingQueue = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v6 = [pendingQueue member:itemCopy];

  if (v6)
  {
    delayQueue = [(CLEEDMediaServiceRequest *)self delayQueue];
    [delayQueue addObject:itemCopy];

    pendingQueue2 = [(CLEEDMediaServiceRequest *)self pendingQueue];
    [pendingQueue2 removeObject:itemCopy];
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

  pendingQueue3 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v10 = [pendingQueue3 count];

  if (!v10)
  {
    durationRequestHandlingMs = [(CLEEDMediaServiceRequest *)self durationRequestHandlingMs];
    requestTimestamp = [(CLEEDMediaServiceRequest *)self requestTimestamp];
    [requestTimestamp timeIntervalSinceNow];
    [(CLEEDMediaServiceRequest *)self setDurationRequestHandlingMs:(durationRequestHandlingMs + fabs(v13) * 1000.0)];
  }

  pendingQueue4 = [(CLEEDMediaServiceRequest *)self pendingQueue];
  v15 = [pendingQueue4 count];

  return v15;
}

- (unint64_t)filterAndAddMediaList:(id)list
{
  listCopy = list;
  if (![(CLEEDMediaServiceRequest *)self anyItemsToProcess])
  {
    [(CLEEDMediaServiceRequest *)self setHasPendingPhotos:0];
    [(CLEEDMediaServiceRequest *)self setHasPendingVideos:0];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = listCopy;
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
        filteredQueue = [(CLEEDMediaServiceRequest *)self filteredQueue];
        v12 = [filteredQueue member:v10];

        if (!v12)
        {
          pendingQueue = [(CLEEDMediaServiceRequest *)self pendingQueue];
          v14 = [pendingQueue member:v10];

          if (!v14)
          {
            delayQueue = [(CLEEDMediaServiceRequest *)self delayQueue];
            v16 = [delayQueue member:v10];

            if (!v16)
            {
              completedQueue = [(CLEEDMediaServiceRequest *)self completedQueue];
              v18 = [completedQueue member:v10];

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

                filteredQueue2 = [(CLEEDMediaServiceRequest *)self filteredQueue];
                [filteredQueue2 addObject:v10];
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

  filteredQueue3 = [(CLEEDMediaServiceRequest *)self filteredQueue];
  v21 = [filteredQueue3 count];

  return v21;
}

- (BOOL)anyItemsToProcess
{
  pendingQueue = [(CLEEDMediaServiceRequest *)self pendingQueue];
  if ([pendingQueue count])
  {
    v4 = 1;
  }

  else
  {
    delayQueue = [(CLEEDMediaServiceRequest *)self delayQueue];
    if ([delayQueue count])
    {
      v4 = 1;
    }

    else
    {
      filteredQueue = [(CLEEDMediaServiceRequest *)self filteredQueue];
      v4 = [filteredQueue count] != 0;
    }
  }

  return v4;
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
    sub_100013848(self, v5);
  }

  [coderCopy encodeObject:self->_requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeObject:self->_requestTimestamp forKey:@"requestTimestamp"];
  [coderCopy encodeObject:self->_uploadURL forKey:@"uploadURL"];
  [coderCopy encodeObject:self->_sharedInfoPrefix forKey:@"sharedInfoPrefix"];
  [coderCopy encodeObject:self->_combinedSecret forKey:@"combinedSecret"];
  [coderCopy encodeObject:self->_token forKey:@"token"];
  [coderCopy encodeObject:self->_deviceKeyConfirmation forKey:@"deviceKeyConfirmation"];
  [coderCopy encodeObject:self->_filteredQueue forKey:@"filteredQueue"];
  [coderCopy encodeObject:self->_pendingQueue forKey:@"pendingQueue"];
  [coderCopy encodeObject:self->_delayQueue forKey:@"delayQueue"];
  [coderCopy encodeObject:self->_completedQueue forKey:@"completedQueue"];
  [coderCopy encodeInteger:self->_numAdditionalMediaItemsSelected forKey:@"numAdditionalMediaItemsSelected"];
  [coderCopy encodeInteger:self->_durationRequestHandlingMs forKey:@"durationRequestHandlingMs"];
  [coderCopy encodeBool:self->_didUserCancelUpload forKey:@"didUserCancelUpload"];
  [coderCopy encodeBool:self->_metricProcessed forKey:@"metricProcessed"];
  [coderCopy encodeBool:self->_hasPendingVideos forKey:@"hasPendingVideos"];
  [coderCopy encodeBool:self->_hasPendingPhotos forKey:@"hasPendingPhotos"];
}

- (CLEEDMediaServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
  requestID = self->_requestID;
  self->_requestID = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
  callUUID = self->_callUUID;
  self->_callUUID = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestTimestamp"];
  requestTimestamp = self->_requestTimestamp;
  self->_requestTimestamp = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uploadURL"];
  uploadURL = self->_uploadURL;
  self->_uploadURL = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedInfoPrefix"];
  sharedInfoPrefix = self->_sharedInfoPrefix;
  self->_sharedInfoPrefix = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"combinedSecret"];
  combinedSecret = self->_combinedSecret;
  self->_combinedSecret = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceKeyConfirmation"];
  deviceKeyConfirmation = self->_deviceKeyConfirmation;
  self->_deviceKeyConfirmation = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
  token = self->_token;
  self->_token = v19;

  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
  v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"filteredQueue"];
  filteredQueue = self->_filteredQueue;
  self->_filteredQueue = v23;

  v25 = objc_opt_class();
  v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
  v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"pendingQueue"];
  pendingQueue = self->_pendingQueue;
  self->_pendingQueue = v27;

  v29 = objc_opt_class();
  v30 = [NSSet setWithObjects:v29, objc_opt_class(), 0];
  v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"delayQueue"];
  delayQueue = self->_delayQueue;
  self->_delayQueue = v31;

  v33 = objc_opt_class();
  v34 = [NSSet setWithObjects:v33, objc_opt_class(), 0];
  v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"completedQueue"];
  completedQueue = self->_completedQueue;
  self->_completedQueue = v35;

  self->_numAdditionalMediaItemsSelected = [coderCopy decodeIntegerForKey:@"numAdditionalMediaItemsSelected"];
  self->_durationRequestHandlingMs = [coderCopy decodeIntegerForKey:@"durationRequestHandlingMs"];
  self->_didUserCancelUpload = [coderCopy decodeBoolForKey:@"didUserCancelUpload"];
  self->_metricProcessed = [coderCopy decodeBoolForKey:@"metricProcessed"];
  self->_hasPendingVideos = [coderCopy decodeBoolForKey:@"hasPendingVideos"];
  LOBYTE(v34) = [coderCopy decodeBoolForKey:@"hasPendingPhotos"];

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
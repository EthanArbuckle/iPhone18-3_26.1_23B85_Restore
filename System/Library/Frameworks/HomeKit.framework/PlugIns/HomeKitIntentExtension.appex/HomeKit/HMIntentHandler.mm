@interface HMIntentHandler
+ (id)logCategory;
- (id)handlerForIntent:(id)intent;
- (void)_handleRequestForIntent:(id)intent payload:(id)payload completion:(id)completion;
- (void)_reportToResponseHandlerWithOutcome:(id)outcome;
- (void)_resetIntentTimer;
- (void)_startIntentTimerWithTimeInterval:(double)interval;
- (void)confirmControlHome:(id)home completion:(id)completion;
- (void)handleControlHome:(id)home completion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIntentHandler

+ (id)logCategory
{
  if (qword_100008700 != -1)
  {
    dispatch_once(&qword_100008700, &stru_100004298);
  }

  v3 = qword_100008708;

  return v3;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  clientQueue = [(HMIntentHandler *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000FF8;
  v7[3] = &unk_100004258;
  v8 = fireCopy;
  selfCopy = self;
  v6 = fireCopy;
  dispatch_async(clientQueue, v7);
}

- (void)_resetIntentTimer
{
  intentTimer = [(HMIntentHandler *)self intentTimer];
  [intentTimer cancel];

  [(HMIntentHandler *)self setIntentTimer:0];
}

- (void)_startIntentTimerWithTimeInterval:(double)interval
{
  v4 = [[HMFTimer alloc] initWithTimeInterval:1 options:interval];
  [(HMIntentHandler *)self setIntentTimer:v4];

  intentTimer = [(HMIntentHandler *)self intentTimer];
  [intentTimer setDelegate:self];

  intentTimer2 = [(HMIntentHandler *)self intentTimer];
  [intentTimer2 resume];
}

- (void)_reportToResponseHandlerWithOutcome:(id)outcome
{
  outcomeCopy = outcome;
  if ([outcomeCopy isEqualToString:HMIntentOutcomeSuccess])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 3;
LABEL_7:
    v7 = [v5 initWithCode:v6 userActivity:0];
LABEL_8:
    responseHandler = [(HMIntentHandler *)self responseHandler];

    if (responseHandler)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        intent = [(HMIntentHandler *)selfCopy intent];
        v26 = 138543874;
        v27 = v12;
        v28 = 2112;
        v29 = intent;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Invoking completion for intent %@ with response %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      responseHandler2 = [(HMIntentHandler *)selfCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v7);
    }

    [(HMIntentHandler *)self setIntent:0];
    [(HMIntentHandler *)self setResponseHandler:0];

    goto LABEL_13;
  }

  if ([outcomeCopy isEqualToString:HMIntentOutcomeInProgress])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 2;
    goto LABEL_7;
  }

  if ([outcomeCopy isEqualToString:HMIntentOutcomeFailure])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 5;
    goto LABEL_7;
  }

  if ([outcomeCopy isEqualToString:HMIntentOutcomeUnsecuringUnlockRequired])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@This intent contains unsecuring actions and needs user's authentication", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v7 = [[INControlHomeIntentResponse alloc] initWithCode:1 userActivity:0];
    [v7 _setRequiresAuthentication:1];
    goto LABEL_8;
  }

  v19 = [outcomeCopy isEqualToString:HMIntentOutcomeUnsecuringNotAllowed];
  v20 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v22 = HMFGetOSLogHandle();
  v23 = v22;
  if (v19)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@This intent contains unsecuring actions but the device does not enable the passcode", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@Passed-in outcome is invalid", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_13:
}

- (void)_handleRequestForIntent:(id)intent payload:(id)payload completion:(id)completion
{
  intentCopy = intent;
  payloadCopy = payload;
  completionCopy = completion;
  responseHandler = [(HMIntentHandler *)self responseHandler];

  if (responseHandler)
  {
    v12 = [[INControlHomeIntentResponse alloc] initWithCode:5 userActivity:0];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v13 = +[HMFProductInfo productInfo];
    productClass = [v13 productClass];

    if (productClass == 6)
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@HomePod is not eligible for intent handling", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMIntentHandler *)selfCopy _reportToResponseHandlerWithOutcome:HMIntentOutcomeFailure];
    }

    else
    {
      [(HMIntentHandler *)self setIntent:intentCopy];
      [(HMIntentHandler *)self setResponseHandler:completionCopy];
      [(HMIntentHandler *)self _startIntentTimer];
      objc_initWeak(buf, self);
      v19 = +[HMClientConnection sharedInstance];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100001804;
      v20[3] = &unk_100004230;
      objc_copyWeak(&v24, buf);
      v23 = completionCopy;
      v21 = payloadCopy;
      v22 = intentCopy;
      [v19 sendIntentRequestCommand:v22 withPayload:v21 completionHandler:v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)handleControlHome:(id)home completion:(id)completion
{
  v10[0] = kSiriIntentKey;
  completionCopy = completion;
  homeCopy = home;
  v8 = encodeRootObject();
  v10[1] = kSiriIntentRequestTypeKey;
  v11[0] = v8;
  v11[1] = &off_100004340;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(HMIntentHandler *)self _handleRequestForIntent:homeCopy payload:v9 completion:completionCopy];
}

- (void)confirmControlHome:(id)home completion:(id)completion
{
  v10[0] = kSiriIntentKey;
  completionCopy = completion;
  homeCopy = home;
  v8 = encodeRootObject();
  v10[1] = kSiriIntentRequestTypeKey;
  v11[0] = v8;
  v11[1] = &off_100004328;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(HMIntentHandler *)self _handleRequestForIntent:homeCopy payload:v9 completion:completionCopy];
}

- (id)handlerForIntent:(id)intent
{
  clientQueue = [(HMIntentHandler *)self clientQueue];

  if (!clientQueue)
  {
    v5 = HMDispatchQueueNameString();
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    clientQueue = self->_clientQueue;
    self->_clientQueue = v6;

    responseHandler = self->_responseHandler;
    self->_responseHandler = 0;

    intent = self->_intent;
    self->_intent = 0;
  }

  return self;
}

@end
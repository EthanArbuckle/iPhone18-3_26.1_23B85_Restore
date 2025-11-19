@interface HMIntentHandler
+ (id)logCategory;
- (id)handlerForIntent:(id)a3;
- (void)_handleRequestForIntent:(id)a3 payload:(id)a4 completion:(id)a5;
- (void)_reportToResponseHandlerWithOutcome:(id)a3;
- (void)_resetIntentTimer;
- (void)_startIntentTimerWithTimeInterval:(double)a3;
- (void)confirmControlHome:(id)a3 completion:(id)a4;
- (void)handleControlHome:(id)a3 completion:(id)a4;
- (void)timerDidFire:(id)a3;
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

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMIntentHandler *)self clientQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000FF8;
  v7[3] = &unk_100004258;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_resetIntentTimer
{
  v3 = [(HMIntentHandler *)self intentTimer];
  [v3 cancel];

  [(HMIntentHandler *)self setIntentTimer:0];
}

- (void)_startIntentTimerWithTimeInterval:(double)a3
{
  v4 = [[HMFTimer alloc] initWithTimeInterval:1 options:a3];
  [(HMIntentHandler *)self setIntentTimer:v4];

  v5 = [(HMIntentHandler *)self intentTimer];
  [v5 setDelegate:self];

  v6 = [(HMIntentHandler *)self intentTimer];
  [v6 resume];
}

- (void)_reportToResponseHandlerWithOutcome:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:HMIntentOutcomeSuccess])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 3;
LABEL_7:
    v7 = [v5 initWithCode:v6 userActivity:0];
LABEL_8:
    v8 = [(HMIntentHandler *)self responseHandler];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [(HMIntentHandler *)v10 intent];
        v26 = 138543874;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Invoking completion for intent %@ with response %@", &v26, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [(HMIntentHandler *)v10 responseHandler];
      (v14)[2](v14, v7);
    }

    [(HMIntentHandler *)self setIntent:0];
    [(HMIntentHandler *)self setResponseHandler:0];

    goto LABEL_13;
  }

  if ([v4 isEqualToString:HMIntentOutcomeInProgress])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 2;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:HMIntentOutcomeFailure])
  {
    v5 = [INControlHomeIntentResponse alloc];
    v6 = 5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:HMIntentOutcomeUnsecuringUnlockRequired])
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v19 = [v4 isEqualToString:HMIntentOutcomeUnsecuringNotAllowed];
  v20 = objc_autoreleasePoolPush();
  v21 = self;
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

- (void)_handleRequestForIntent:(id)a3 payload:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMIntentHandler *)self responseHandler];

  if (v11)
  {
    v12 = [[INControlHomeIntentResponse alloc] initWithCode:5 userActivity:0];
    v10[2](v10, v12);
  }

  else
  {
    v13 = +[HMFProductInfo productInfo];
    v14 = [v13 productClass];

    if (v14 == 6)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@HomePod is not eligible for intent handling", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMIntentHandler *)v16 _reportToResponseHandlerWithOutcome:HMIntentOutcomeFailure];
    }

    else
    {
      [(HMIntentHandler *)self setIntent:v8];
      [(HMIntentHandler *)self setResponseHandler:v10];
      [(HMIntentHandler *)self _startIntentTimer];
      objc_initWeak(buf, self);
      v19 = +[HMClientConnection sharedInstance];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100001804;
      v20[3] = &unk_100004230;
      objc_copyWeak(&v24, buf);
      v23 = v10;
      v21 = v9;
      v22 = v8;
      [v19 sendIntentRequestCommand:v22 withPayload:v21 completionHandler:v20];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }
  }
}

- (void)handleControlHome:(id)a3 completion:(id)a4
{
  v10[0] = kSiriIntentKey;
  v6 = a4;
  v7 = a3;
  v8 = encodeRootObject();
  v10[1] = kSiriIntentRequestTypeKey;
  v11[0] = v8;
  v11[1] = &off_100004340;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(HMIntentHandler *)self _handleRequestForIntent:v7 payload:v9 completion:v6];
}

- (void)confirmControlHome:(id)a3 completion:(id)a4
{
  v10[0] = kSiriIntentKey;
  v6 = a4;
  v7 = a3;
  v8 = encodeRootObject();
  v10[1] = kSiriIntentRequestTypeKey;
  v11[0] = v8;
  v11[1] = &off_100004328;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  [(HMIntentHandler *)self _handleRequestForIntent:v7 payload:v9 completion:v6];
}

- (id)handlerForIntent:(id)a3
{
  v4 = [(HMIntentHandler *)self clientQueue];

  if (!v4)
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
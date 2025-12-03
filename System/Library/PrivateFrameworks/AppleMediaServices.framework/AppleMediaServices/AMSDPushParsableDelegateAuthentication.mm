@interface AMSDPushParsableDelegateAuthentication
+ (id)_getSessionForKey:(id)key;
+ (id)_sessionMap;
+ (void)_cancelDelegateAuthenticateWithCacheKey:(id)key;
+ (void)_removeSessionForKey:(id)key;
+ (void)_saveSession:(id)session forKey:(id)key;
+ (void)_startDelegateAuthenticateWithAccount:(id)account bag:(id)bag cacheKey:(id)key challenge:(id)challenge deviceName:(id)name;
+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag;
@end

@implementation AMSDPushParsableDelegateAuthentication

+ (void)handleNotificationPayload:(id)payload config:(id)config bag:(id)bag
{
  payloadCopy = payload;
  bagCopy = bag;
  v10 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v5 = &_s18AppleMediaServices16RemoteSignInTaskC7performSDySSSbGyYaKFTjTu_ptr;
    selfCopy = self;
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      self = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v15, self];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v14];
    }
    selfCopy2 = ;
    *buf = 138543362;
    v51 = selfCopy2;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Received a push notification for delegate auth", buf, 0xCu);
    if (v12)
    {

      selfCopy2 = self;
    }

    self = selfCopy;
  }

  v17 = [payloadCopy objectForKeyedSubscript:@"cacheKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    account = +[AMSLogConfig sharedPushNotificationConfig];
    if (!account)
    {
      account = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [account OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v22OSLogObject = AMSLogKey();
    v24 = objc_opt_class();
    v25 = v24;
    if (v22OSLogObject)
    {
      v5 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v25, v5];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v24];
    }
    v23OSLogObject = ;
    *buf = 138543362;
    v51 = v23OSLogObject;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing cache key", buf, 0xCu);
    if (v22OSLogObject)
    {

      v23OSLogObject = v5;
    }

    goto LABEL_59;
  }

  v19 = [payloadCopy objectForKeyedSubscript:@"cancel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  bOOLValue = [v20 BOOLValue];
  if (!bOOLValue)
  {
    account = [payloadCopy account];
    if (!account)
    {
      selfCopy3 = self;
      oSLogObject2 = +[AMSLogConfig sharedPushNotificationConfig];
      if (!oSLogObject2)
      {
        oSLogObject2 = +[AMSLogConfig sharedConfig];
      }

      v22OSLogObject = [oSLogObject2 OSLogObject];
      if (os_log_type_enabled(v22OSLogObject, OS_LOG_TYPE_ERROR))
      {
        v29 = bagCopy;
        v30 = AMSLogKey();
        v31 = objc_opt_class();
        v32 = v31;
        if (v30)
        {
          selfCopy3 = AMSLogKey();
          [NSString stringWithFormat:@"%@: [%@] ", v32, selfCopy3];
        }

        else
        {
          [NSString stringWithFormat:@"%@: ", v31];
        }
        v33 = ;
        *buf = 138543362;
        v51 = v33;
        _os_log_impl(&_mh_execute_header, v22OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing account DSID", buf, 0xCu);
        if (v30)
        {

          v33 = selfCopy3;
        }

        bagCopy = v29;
      }

      goto LABEL_66;
    }

    selfCopy4 = self;
    v27 = [payloadCopy objectForKeyedSubscript:@"challenge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      oSLogObject2 = v27;
    }

    else
    {
      oSLogObject2 = 0;
    }

    if (oSLogObject2)
    {
      v34 = [payloadCopy objectForKeyedSubscript:@"device"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22OSLogObject = v34;
      }

      else
      {
        v22OSLogObject = 0;
      }

      if (!v22OSLogObject)
      {
        v48 = bagCopy;
        v41 = +[AMSLogConfig sharedPushNotificationConfig];
        if (!v41)
        {
          v41 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v41 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v43 = AMSLogKey();
          v44 = NSString;
          v45 = objc_opt_class();
          v46 = v45;
          if (v43)
          {
            v44 = AMSLogKey();
            [NSString stringWithFormat:@"%@: [%@] ", v46, v44];
          }

          else
          {
            [NSString stringWithFormat:@"%@: ", v45];
          }
          v47 = ;
          *buf = 138543362;
          v51 = v47;
          _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@No device name included in the payload. Will proceed anyway.", buf, 0xCu);
          if (v43)
          {

            v47 = v44;
          }
        }

        bagCopy = v48;
      }

      [selfCopy4 _startDelegateAuthenticateWithAccount:account bag:bagCopy cacheKey:v18 challenge:oSLogObject2 deviceName:v22OSLogObject];
      goto LABEL_66;
    }

    v22OSLogObject = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v22OSLogObject)
    {
      v22OSLogObject = +[AMSLogConfig sharedConfig];
    }

    v23OSLogObject = [v22OSLogObject OSLogObject];
    if (os_log_type_enabled(v23OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v36 = bagCopy;
      v37 = AMSLogKey();
      v38 = objc_opt_class();
      v39 = v38;
      if (v37)
      {
        selfCopy4 = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v39, selfCopy4];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v38];
      }
      v40 = ;
      *buf = 138543362;
      v51 = v40;
      _os_log_impl(&_mh_execute_header, v23OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Dropping due to invalid payload missing challenge", buf, 0xCu);
      if (v37)
      {

        v40 = selfCopy4;
      }

      bagCopy = v36;
    }

LABEL_59:

LABEL_66:
LABEL_67:

    goto LABEL_68;
  }

  [self _cancelDelegateAuthenticateWithCacheKey:v18];
LABEL_68:
}

+ (void)_startDelegateAuthenticateWithAccount:(id)account bag:(id)bag cacheKey:(id)key challenge:(id)challenge deviceName:(id)name
{
  accountCopy = account;
  keyCopy = key;
  challengeCopy = challenge;
  nameCopy = name;
  bagCopy = bag;
  v17 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v17)
  {
    v17 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v17 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v19 = AMSLogKey();
    selfCopy = self;
    v21 = v19;
    v32 = selfCopy;
    v22 = objc_opt_class();
    v23 = v22;
    if (v21)
    {
      v31 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v23, v31];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v22];
    }
    v24 = ;
    *buf = 138543618;
    v40 = v24;
    v41 = 2112;
    v42 = keyCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Starting a new delegate auth session with identifier: %@", buf, 0x16u);
    if (v21)
    {

      v24 = v31;
    }

    self = v32;
  }

  v25 = [bagCopy integerForKey:@"delegateAuthTimeout"];

  valuePromise = [v25 valuePromise];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10007E298;
  v33[3] = &unk_1002B1DD8;
  v37 = accountCopy;
  selfCopy2 = self;
  v34 = keyCopy;
  v35 = challengeCopy;
  v36 = nameCopy;
  v27 = accountCopy;
  v28 = nameCopy;
  v29 = challengeCopy;
  v30 = keyCopy;
  [valuePromise resultWithCompletion:v33];
}

+ (void)_cancelDelegateAuthenticateWithCacheKey:(id)key
{
  keyCopy = key;
  v6 = +[AMSLogConfig sharedPushNotificationConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = AMSLogKey();
    v9 = objc_opt_class();
    v10 = v9;
    if (v8)
    {
      v3 = AMSLogKey();
      [NSString stringWithFormat:@"%@: [%@] ", v10, v3];
    }

    else
    {
      [NSString stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = keyCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Canceling a delegate auth session with identifier: %@", buf, 0x16u);
    if (v8)
    {

      v11 = v3;
    }
  }

  v12 = [self _getSessionForKey:keyCopy];
  v13 = v12;
  if (v12)
  {
    [v12 cancel];
  }

  else
  {
    v14 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = objc_opt_class();
      v18 = v17;
      if (v16)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v18, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v17];
      }
      selfCopy = ;
      *buf = 138543362;
      v21 = selfCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Recieved a notification to cancel a delegate auth, but no session could be found", buf, 0xCu);
      if (v16)
      {

        selfCopy = self;
      }
    }
  }
}

+ (void)_saveSession:(id)session forKey:(id)key
{
  sessionCopy = session;
  keyCopy = key;
  _sessionMap = [self _sessionMap];
  v9 = [_sessionMap objectForKey:keyCopy];

  if (v9)
  {
    _sessionMap2 = +[AMSLogConfig sharedPushNotificationConfig];
    if (!_sessionMap2)
    {
      _sessionMap2 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [_sessionMap2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = objc_opt_class();
      v14 = v13;
      if (v12)
      {
        self = AMSLogKey();
        [NSString stringWithFormat:@"%@: [%@] ", v14, self];
      }

      else
      {
        [NSString stringWithFormat:@"%@: ", v13];
      }
      selfCopy = ;
      *buf = 138543362;
      v17 = selfCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Tried to save session under an already existing key.", buf, 0xCu);
      if (v12)
      {

        selfCopy = self;
      }
    }
  }

  else
  {
    _sessionMap2 = [self _sessionMap];
    [_sessionMap2 setObject:sessionCopy forKey:keyCopy];
  }
}

+ (id)_getSessionForKey:(id)key
{
  keyCopy = key;
  _sessionMap = [self _sessionMap];
  v6 = [_sessionMap objectForKey:keyCopy];

  return v6;
}

+ (void)_removeSessionForKey:(id)key
{
  keyCopy = key;
  _sessionMap = [self _sessionMap];
  [_sessionMap removeObjectForKey:keyCopy];
}

+ (id)_sessionMap
{
  v2 = qword_1002E3408;
  if (!qword_1002E3408)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = qword_1002E3408;
    qword_1002E3408 = v3;

    v2 = qword_1002E3408;
  }

  return v2;
}

@end
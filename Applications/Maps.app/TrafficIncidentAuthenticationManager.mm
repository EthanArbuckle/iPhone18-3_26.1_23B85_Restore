@interface TrafficIncidentAuthenticationManager
+ (id)sharedInstance;
- (BOOL)_isUUIDValid;
- (TrafficIncidentAuthenticationManager)init;
- (id)_clientDataHash;
- (id)_keyId;
- (id)_storedUUID;
- (void)_attestKeyId:(id)id completionHandler:(id)handler;
- (void)_generateAssertionKeyId:(id)id completionHandler:(id)handler;
- (void)_generateKey:(id)key;
- (void)_incrementSubmissionCount;
- (void)_refreshStoredUUID;
- (void)_rollOverKeyId:(id)id completionHandler:(id)handler;
- (void)dealloc;
- (void)generateAuthenticationInfoWithCompletionHandler:(id)handler;
- (void)rolloverAnonymousId;
- (void)submissionDidFailAttestation;
@end

@implementation TrafficIncidentAuthenticationManager

+ (id)sharedInstance
{
  if (qword_10195E900 != -1)
  {
    dispatch_once(&qword_10195E900, &stru_10163BF70);
  }

  v3 = qword_10195E8F8;

  return v3;
}

- (TrafficIncidentAuthenticationManager)init
{
  v10.receiver = self;
  v10.super_class = TrafficIncidentAuthenticationManager;
  v2 = [(TrafficIncidentAuthenticationManager *)&v10 init];
  if (v2)
  {
    v3 = +[UIApplication sharedMapsDelegate];
    v4 = dispatch_get_global_queue(2, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100021D38;
    v7[3] = &unk_101661A90;
    v8 = v2;
    v9 = v3;
    v5 = v3;
    dispatch_async(v4, v7);
  }

  return v2;
}

- (void)submissionDidFailAttestation
{
  v3 = sub_10002171C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: submissionDidFailAttestation", v5, 2u);
  }

  [(TrafficIncidentAuthenticationManager *)self rolloverAnonymousId];
  v4 = +[TrafficIncidentsStorageManager sharedInstance];
  [v4 resubmitLastReport];
}

- (id)_clientDataHash
{
  _storedUUID = [(TrafficIncidentAuthenticationManager *)self _storedUUID];
  v3 = [NSMutableData dataWithLength:32];
  v4 = [_storedUUID cStringUsingEncoding:1];
  v5 = [NSData dataWithBytes:v4 length:strlen(v4)];
  CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v3, "mutableBytes"));

  return v3;
}

- (id)_keyId
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"TrafficIncidentAuthenicationInfo"];
  v4 = [v3 objectForKey:@"TrafficIncidentAuthenicationKeyId"];

  return v4;
}

- (BOOL)_isUUIDValid
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"TrafficIncidentAuthenicationUUID"];
  [v2 doubleForKey:@"TrafficIncidentAuthenicationRolloverTimestamp"];
  v5 = v4;
  Current = CFAbsoluteTimeGetCurrent();
  if (v3)
  {
    v7 = Current - v5;
    GEOConfigGetDouble();
    if (v7 >= v8)
    {
      v10 = [v2 integerForKey:@"TrafficIncidentAuthenicationSubmissionCount"];
      v9 = v10 <= GEOConfigGetUInteger();
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    [v2 integerForKey:{@"TrafficIncidentAuthenicationSubmissionCount", Current}];
    v9 = 0;
  }

  return v9;
}

- (id)_storedUUID
{
  v2 = objc_alloc_init(NSUserDefaults);
  v3 = [v2 objectForKey:@"TrafficIncidentAuthenicationUUID"];

  return v3;
}

- (void)_incrementSubmissionCount
{
  v2 = objc_alloc_init(NSUserDefaults);
  v3 = [v2 integerForKey:@"TrafficIncidentAuthenicationSubmissionCount"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setInteger:v3 + 1 forKey:@"TrafficIncidentAuthenicationSubmissionCount"];
}

- (void)_refreshStoredUUID
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:uUIDString forKey:@"TrafficIncidentAuthenicationUUID"];
  [v4 setInteger:0 forKey:@"TrafficIncidentAuthenicationSubmissionCount"];
  [v4 setDouble:@"TrafficIncidentAuthenicationRolloverTimestamp" forKey:CFAbsoluteTimeGetCurrent()];
  v5 = sub_10002171C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: did refreshStoredUUID", v6, 2u);
  }
}

- (void)_rollOverKeyId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  v8 = sub_10002171C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: _rollOverKeyId:", buf, 2u);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B9E0F8;
  v10[3] = &unk_10163C010;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(TrafficIncidentAuthenticationManager *)self _generateAssertionKeyId:idCopy completionHandler:v10];
}

- (void)_generateAssertionKeyId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  idCopy = id;
  v8 = sub_10002171C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: _generateAssertionKeyId:", buf, 2u);
  }

  _clientDataHash = [(TrafficIncidentAuthenticationManager *)self _clientDataHash];
  v10 = +[DCAppAttestService sharedService];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B9E384;
  v12[3] = &unk_10163BFE8;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [v10 generateAssertion:idCopy clientDataHash:_clientDataHash completionHandler:v12];
}

- (void)_attestKeyId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v8 = sub_10002171C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: _attestKeyId:", buf, 2u);
  }

  _clientDataHash = [(TrafficIncidentAuthenticationManager *)self _clientDataHash];
  v10 = +[DCAppAttestService sharedService];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100B9E6B8;
  v13[3] = &unk_10163BFC0;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = idCopy;
  v11 = idCopy;
  v12 = handlerCopy;
  [v10 attestKey:v11 clientDataHash:_clientDataHash completionHandler:v13];
}

- (void)_generateKey:(id)key
{
  keyCopy = key;
  v5 = sub_10002171C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TrafficIncidentAuthenticationManager: _generateKey:", buf, 2u);
  }

  v6 = +[DCAppAttestService sharedService];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B9EA68;
  v8[3] = &unk_10163BF98;
  v8[4] = self;
  v9 = keyCopy;
  v7 = keyCopy;
  [v6 generateKeyWithCompletionHandler:v8];
}

- (void)rolloverAnonymousId
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setObject:0 forKey:@"TrafficIncidentAuthenicationInfo"];

  [(TrafficIncidentAuthenticationManager *)self _refreshStoredUUID];
}

- (void)generateAuthenticationInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(TrafficIncidentAuthenticationManager *)self isSupported])
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v5 = [v4 objectForKey:@"TrafficIncidentAuthenicationInfo"];
    v6 = [v5 objectForKey:@"TrafficIncidentAuthenicationKeyId"];
    v7 = [v5 objectForKey:@"TrafficIncidentAuthenicationAttested"];

    [(TrafficIncidentAuthenticationManager *)self _incrementSubmissionCount];
    _isUUIDValid = [(TrafficIncidentAuthenticationManager *)self _isUUIDValid];
    if (v5 && v6)
    {
      if (((v7 == 0) & _isUUIDValid) == 1)
      {
        [(TrafficIncidentAuthenticationManager *)self _attestKeyId:v6 completionHandler:handlerCopy];
      }

      else if (!v7 || ((_isUUIDValid ^ 1) & 1) != 0)
      {
        if ((_isUUIDValid & 1) == 0)
        {
          [(TrafficIncidentAuthenticationManager *)self _rollOverKeyId:v6 completionHandler:handlerCopy];
        }
      }

      else
      {
        [(TrafficIncidentAuthenticationManager *)self _generateAssertionKeyId:v6 completionHandler:handlerCopy];
      }
    }

    else
    {
      [(TrafficIncidentAuthenticationManager *)self _generateKey:handlerCopy];
    }
  }

  else
  {
    v9 = handlerCopy;
    if (!handlerCopy)
    {
      goto LABEL_11;
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v9 = handlerCopy;
LABEL_11:
}

- (void)dealloc
{
  v3 = +[UIApplication sharedMapsDelegate];
  submissionManager = [v3 submissionManager];
  [submissionManager removeObserver:self];

  v5.receiver = self;
  v5.super_class = TrafficIncidentAuthenticationManager;
  [(TrafficIncidentAuthenticationManager *)&v5 dealloc];
}

@end
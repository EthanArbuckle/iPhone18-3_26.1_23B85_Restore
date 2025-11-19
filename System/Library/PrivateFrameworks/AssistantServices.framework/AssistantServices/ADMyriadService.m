@interface ADMyriadService
+ (id)sharedService;
- (ADMyriadService)init;
- (void)_handleLastWinRequest:(id)a3 completion:(id)a4;
- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)_handleRequest:(id)a3 fromDeviceWithIdentifier:(id)a4 completion:(id)a5;
- (void)_setLastMyriadWin:(id)a3;
- (void)_setLastTimeStereoPartnerWon:(id)a3;
- (void)_setStereoPartnerIdentifier:(id)a3;
- (void)_stereoConfigurationDidChangeNotification:(id)a3;
- (void)_syncLastWinWithStereoPartner;
- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)lastMyriadWinForStereoPartner:(id)a3;
- (void)setMyriadDecisionResult:(BOOL)a3;
@end

@implementation ADMyriadService

- (void)_handleLastWinRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  serialQueue = self->_serialQueue;
  v8 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v9 = [v8 objectForKey:@"lastWin"];

  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "[ADMyriadService _handleLastWinRequest:completion:]";
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Received malformed lastWin data", buf, 0xCu);
      }

      v11 = [AFError errorWithCode:11];
      v6[2](v6, 0, v11);
      goto LABEL_11;
    }
  }

  [(ADMyriadService *)self _setLastTimeStereoPartnerWon:v9];
  if (v6)
  {
    lastTimeWon = self->_lastTimeWon;
    if (lastTimeWon)
    {
      v13 = @"lastWin";
      v14 = lastTimeWon;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    }

    else
    {
      v11 = 0;
    }

    (v6)[2](v6, v11, 0);
LABEL_11:
  }
}

- (void)_handleRequest:(id)a3 fromDeviceWithIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v11 = [v8 objectForKey:@"methodName"];
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[ADMyriadService _handleRequest:fromDeviceWithIdentifier:completion:]";
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s %@", &v17, 0x16u);
  }

  if (![(NSString *)self->_stereoPartnerIdentifier isEqualToString:v9])
  {
    v13 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[ADMyriadService _handleRequest:fromDeviceWithIdentifier:completion:]";
      v19 = 2112;
      v20 = v9;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Received message from device not in stereo pair: %@", &v17, 0x16u);
    }

    v14 = 1005;
    goto LABEL_12;
  }

  if (![v11 isEqualToString:@"lastWin"])
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "[ADMyriadService _handleRequest:fromDeviceWithIdentifier:completion:]";
      v19 = 2112;
      v20 = v11;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Received message with unknown method name: %@", &v17, 0x16u);
    }

    v14 = 1004;
LABEL_12:
    v16 = [AFError errorWithCode:v14];
    v10[2](v10, 0, v16);

    goto LABEL_13;
  }

  [(ADMyriadService *)self _handleLastWinRequest:v8 completion:v10];
LABEL_13:
}

- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *v20 = 136315650;
    *&v20[4] = "[ADMyriadService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    *&v20[12] = 2112;
    *&v20[14] = v11;
    *&v20[22] = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@ %@", v20, 0x20u);
  }

  if (([v11 isEqualToString:@"myriad"] & 1) == 0)
  {
    v17 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      v19 = [AFError errorWithCode:1004, *v20, *&v20[16]];
      v13[2](v13, 0, v19);

      goto LABEL_10;
    }

    *v20 = 136315394;
    *&v20[4] = "[ADMyriadService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    *&v20[12] = 2112;
    *&v20[14] = v11;
    v18 = "%s Received message from unknown message type: %@";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, v20, 0x16u);
    goto LABEL_9;
  }

  v15 = [v10 objectForKey:@"methodType"];
  v16 = [v15 integerValue];

  if (v16 != 2)
  {
    v17 = AFSiriLogContextDaemon;
    if (!os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *v20 = 136315394;
    *&v20[4] = "[ADMyriadService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    *&v20[12] = 2048;
    *&v20[14] = v16;
    v18 = "%s Received message with unhandled method type: %ld";
    goto LABEL_12;
  }

  [(ADMyriadService *)self _handleRequest:v10 fromDeviceWithIdentifier:v12 completion:v13];
LABEL_10:
}

- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C65F0;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(serialQueue, block);
}

- (void)_stereoConfigurationDidChangeNotification:(id)a3
{
  v4 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[ADMyriadService _stereoConfigurationDidChangeNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v5 = +[ADCompanionService sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1002C6718;
  v6[3] = &unk_100519FC0;
  v6[4] = self;
  [v5 getStereoPartnerIdentifierWithCompletion:v6];
}

- (void)_syncLastWinWithStereoPartner
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[ADMyriadService _syncLastWinWithStereoPartner]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_stereoPartnerIdentifier)
  {
    v4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:&off_100533F38, @"methodType", @"lastWin", @"methodName", 0];
    v5 = v4;
    lastTimeWon = self->_lastTimeWon;
    if (lastTimeWon)
    {
      [v4 setObject:lastTimeWon forKey:@"lastWin"];
    }

    v7 = self->_stereoPartnerIdentifier;
    objc_initWeak(buf, self);
    v8 = +[ADCompanionService sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1002C6A28;
    v11[3] = &unk_10051A010;
    v11[4] = self;
    objc_copyWeak(&v13, buf);
    v9 = v7;
    v12 = v9;
    [v8 sendStereoPartnerMessage:v5 messageType:@"myriad" completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[ADMyriadService _syncLastWinWithStereoPartner]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s No stereo partner", buf, 0xCu);
    }
  }
}

- (void)_setLastTimeStereoPartnerWon:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  lastTimeStereoPartnerWon = self->_lastTimeStereoPartnerWon;
  p_lastTimeStereoPartnerWon = &self->_lastTimeStereoPartnerWon;
  v6 = lastTimeStereoPartnerWon;
  if (lastTimeStereoPartnerWon != v5 && ([(NSDate *)v6 isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(p_lastTimeStereoPartnerWon, a3);
    v9 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v10 = *p_lastTimeStereoPartnerWon;
      v12 = 136315394;
      v13 = "[ADMyriadService _setLastTimeStereoPartnerWon:]";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s lastWin changed to: %@", &v12, 0x16u);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, kAFStereoPartnerMyriadDataDidChangeDarwinNotification, 0, 0, 1u);
  }
}

- (void)_setStereoPartnerIdentifier:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  stereoPartnerIdentifier = self->_stereoPartnerIdentifier;
  if (stereoPartnerIdentifier != v4 && ![(NSString *)stereoPartnerIdentifier isEqualToString:v4])
  {
    v6 = [(NSString *)v4 copy];
    v7 = self->_stereoPartnerIdentifier;
    self->_stereoPartnerIdentifier = v6;

    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      v9 = self->_stereoPartnerIdentifier;
      v10 = 136315394;
      v11 = "[ADMyriadService _setStereoPartnerIdentifier:]";
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s stereo partner changed to: %@", &v10, 0x16u);
    }

    if (self->_stereoPartnerIdentifier)
    {
      [(ADMyriadService *)self _syncLastWinWithStereoPartner];
    }

    else
    {
      [(ADMyriadService *)self _setLastTimeStereoPartnerWon:0];
    }
  }
}

- (void)lastMyriadWinForStereoPartner:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002C6FF8;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_setLastMyriadWin:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = v7;
  lastTimeWon = self->_lastTimeWon;
  if (lastTimeWon != v7)
  {
    lastTimeWon = [(NSDate *)lastTimeWon isEqual:v7];
    v5 = v7;
    if ((lastTimeWon & 1) == 0)
    {
      objc_storeStrong(&self->_lastTimeWon, a3);
      v5 = v7;
      if (self->_stereoPartnerIdentifier)
      {
        lastTimeWon = [(ADMyriadService *)self _syncLastWinWithStereoPartner];
        v5 = v7;
      }
    }
  }

  _objc_release_x1(lastTimeWon, v5);
}

- (void)setMyriadDecisionResult:(BOOL)a3
{
  v3 = a3;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[ADMyriadService setMyriadDecisionResult:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  if (v3)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C725C;
    block[3] = &unk_10051DFE8;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (ADMyriadService)init
{
  v12.receiver = self;
  v12.super_class = ADMyriadService;
  v2 = [(ADMyriadService *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Myriad Service Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = +[ADCompanionService sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002C7408;
    v10[3] = &unk_100519FC0;
    v7 = v2;
    v11 = v7;
    [v6 getStereoPartnerIdentifierWithCompletion:v10];
    [v6 setMessageHandler:v7 forMessageType:@"myriad"];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_stereoConfigurationDidChangeNotification:" name:@"ADCompanionServiceStereoConfigurationDidChangeNotification" object:0];
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C7560;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_100590858 != -1)
  {
    dispatch_once(&qword_100590858, block);
  }

  v2 = qword_100590860;

  return v2;
}

@end
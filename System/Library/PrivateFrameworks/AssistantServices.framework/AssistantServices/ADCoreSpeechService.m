@interface ADCoreSpeechService
+ (id)sharedService;
- (ADCoreSpeechService)init;
- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6;
- (void)sendMessageWithPayload:(id)a3 toPeer:(id)a4 withReply:(id)a5;
@end

@implementation ADCoreSpeechService

- (void)sendMessageWithPayload:(id)a3 toPeer:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[ADCoreSpeechService sendMessageWithPayload:toPeer:withReply:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v12 = +[ADCompanionService sharedInstance];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C9DCC;
  v14[3] = &unk_100514DE0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v12 sendMessage:v8 messageType:@"corespeech" toDeviceWithIDSIdentifier:v9 completion:v14];
}

- (void)_handleMessage:(id)a3 messageType:(id)a4 fromDeviceWithIdentifier:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[ADCoreSpeechService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ %@", &v16, 0x20u);
  }

  if ([v10 isEqualToString:@"corespeech"])
  {
    v14 = +[CSP2PService sharedInstance];
    [v14 processRemoteCommandWithPayload:v9 fromPeer:v11 withReply:v12];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[ADCoreSpeechService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      v18 = 2112;
      v19 = v10;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Received message from unknown message type: %@", &v16, 0x16u);
    }

    v14 = [AFError errorWithCode:1004];
    v12[2](v12, 0, v14);
  }
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
  block[2] = sub_1000CA1B0;
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

- (ADCoreSpeechService)init
{
  v9.receiver = self;
  v9.super_class = ADCoreSpeechService;
  v2 = [(ADCoreSpeechService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("Core Speech Service Queue", v3);

    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = +[ADCompanionService sharedInstance];
    [v6 setMessageHandler:v2 forMessageType:@"corespeech"];

    v7 = +[CSP2PService sharedInstance];
    [v7 setAdCompanionServiceProvider:v2];
  }

  return v2;
}

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA338;
  block[3] = &unk_10051E200;
  block[4] = a1;
  if (qword_10058FFD8 != -1)
  {
    dispatch_once(&qword_10058FFD8, block);
  }

  v2 = qword_10058FFE0;

  return v2;
}

@end
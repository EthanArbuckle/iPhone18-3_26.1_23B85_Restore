@interface ADCoreSpeechService
+ (id)sharedService;
- (ADCoreSpeechService)init;
- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion;
- (void)sendMessageWithPayload:(id)payload toPeer:(id)peer withReply:(id)reply;
@end

@implementation ADCoreSpeechService

- (void)sendMessageWithPayload:(id)payload toPeer:(id)peer withReply:(id)reply
{
  payloadCopy = payload;
  peerCopy = peer;
  replyCopy = reply;
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
  v15 = replyCopy;
  v13 = replyCopy;
  [v12 sendMessage:payloadCopy messageType:@"corespeech" toDeviceWithIDSIdentifier:peerCopy completion:v14];
}

- (void)_handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  v13 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = 136315650;
    v17 = "[ADCoreSpeechService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
    v18 = 2112;
    v19 = typeCopy;
    v20 = 2112;
    v21 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s %@ %@", &v16, 0x20u);
  }

  if ([typeCopy isEqualToString:@"corespeech"])
  {
    v14 = +[CSP2PService sharedInstance];
    [v14 processRemoteCommandWithPayload:messageCopy fromPeer:identifierCopy withReply:completionCopy];
  }

  else
  {
    v15 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "[ADCoreSpeechService _handleMessage:messageType:fromDeviceWithIdentifier:completion:]";
      v18 = 2112;
      v19 = typeCopy;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Received message from unknown message type: %@", &v16, 0x16u);
    }

    v14 = [AFError errorWithCode:1004];
    completionCopy[2](completionCopy, 0, v14);
  }
}

- (void)handleMessage:(id)message messageType:(id)type fromDeviceWithIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  typeCopy = type;
  identifierCopy = identifier;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA1B0;
  block[3] = &unk_10051D2A0;
  block[4] = self;
  v20 = messageCopy;
  v21 = typeCopy;
  v22 = identifierCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = identifierCopy;
  v17 = typeCopy;
  v18 = messageCopy;
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
  block[4] = self;
  if (qword_10058FFD8 != -1)
  {
    dispatch_once(&qword_10058FFD8, block);
  }

  v2 = qword_10058FFE0;

  return v2;
}

@end
@interface AVTPushNotificationsSupport
- (AVTPushNotificationsSupport)initWithEnvironment:(id)environment connectionFactory:(id)factory;
- (AVTPushNotificationsSupportDelegate)delegate;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)setupConnectionWithCompletionHandler:(id)handler;
- (void)startListeningToPushNotifications;
- (void)stopListeningToPushNotifications;
@end

@implementation AVTPushNotificationsSupport

- (AVTPushNotificationsSupport)initWithEnvironment:(id)environment connectionFactory:(id)factory
{
  environmentCopy = environment;
  factoryCopy = factory;
  v17.receiver = self;
  v17.super_class = AVTPushNotificationsSupport;
  v9 = [(AVTPushNotificationsSupport *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, environment);
    serialQueueProvider = [environmentCopy serialQueueProvider];
    v12 = (serialQueueProvider)[2](serialQueueProvider, "com.apple.AvatarUI.AVTPushNotificationSupport.connectionQueue");
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v12;

    logger = [environmentCopy logger];
    logger = v10->_logger;
    v10->_logger = logger;

    objc_storeStrong(&v10->_connectionFactory, factory);
  }

  return v10;
}

- (void)setupConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AVTPushNotificationsSupport_setupConnectionWithCompletionHandler___block_invoke;
  v6[3] = &unk_278CFB270;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(AVTPushNotificationsSupport *)self getAPSEnvironmentString:v6];
}

void __68__AVTPushNotificationsSupport_setupConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) connectionFactory];
    v8 = [*(a1 + 32) connectionQueue];
    v9 = [v7 connectionWithEnvironmentName:v5 namedDelegatePort:@"com.apple.aps.avatar.service" queue:v8];

    v10 = *(a1 + 40);
    if (v9)
    {
      (*(v10 + 16))(v10, v9, 0);
    }

    else
    {
      v15 = *MEMORY[0x277CCA470];
      v16[0] = @"Unable to create an APSConnection";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13 = [AVTError errorWithCode:1 userInfo:v12];
      (*(v10 + 16))(v10, 0, v13);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v6);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  logger = [(AVTPushNotificationsSupport *)self logger];
  v6 = [tokenCopy base64EncodedStringWithOptions:0];

  [logger logPushConnectionReceivedPublicToken:v6];
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  identifierCopy = identifier;
  topicCopy = topic;
  tokenCopy = token;
  logger = [(AVTPushNotificationsSupport *)self logger];
  v12 = [tokenCopy base64EncodedStringWithOptions:0];

  [logger logPushConnectionReceivedToken:v12 topic:topicCopy identifier:identifierCopy];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:userInfo];
  logger = [(AVTPushNotificationsSupport *)self logger];
  topic = [messageCopy topic];

  v9 = [v6 description];
  [logger logPushNotificationReceivedForTopic:topic payload:v9];

  delegate = [(AVTPushNotificationsSupport *)self delegate];
  [delegate didReceivePushNotification:self];
}

- (void)startListeningToPushNotifications
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__AVTPushNotificationsSupport_startListeningToPushNotifications__block_invoke;
  v2[3] = &unk_278CFB298;
  v2[4] = self;
  [(AVTPushNotificationsSupport *)self setupConnectionWithCompletionHandler:v2];
}

void __64__AVTPushNotificationsSupport_startListeningToPushNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 setDelegate:*(a1 + 32)];
    [*(a1 + 32) setPushConnection:v5];
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() topic];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10 = [*(a1 + 32) pushConnection];
    [v10 _setEnabledTopics:v9];
  }

  else
  {
    v11 = [*(a1 + 32) logger];
    v12 = [v6 description];
    [v11 logUnableToCreatePushConnection:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopListeningToPushNotifications
{
  pushConnection = [(AVTPushNotificationsSupport *)self pushConnection];
  [pushConnection _setEnabledTopics:0];
}

- (AVTPushNotificationsSupportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
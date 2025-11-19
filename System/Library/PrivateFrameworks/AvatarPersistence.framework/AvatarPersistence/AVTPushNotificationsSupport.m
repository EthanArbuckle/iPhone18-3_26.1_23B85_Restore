@interface AVTPushNotificationsSupport
- (AVTPushNotificationsSupport)initWithEnvironment:(id)a3 connectionFactory:(id)a4;
- (AVTPushNotificationsSupportDelegate)delegate;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)setupConnectionWithCompletionHandler:(id)a3;
- (void)startListeningToPushNotifications;
- (void)stopListeningToPushNotifications;
@end

@implementation AVTPushNotificationsSupport

- (AVTPushNotificationsSupport)initWithEnvironment:(id)a3 connectionFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = AVTPushNotificationsSupport;
  v9 = [(AVTPushNotificationsSupport *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_environment, a3);
    v11 = [v7 serialQueueProvider];
    v12 = (v11)[2](v11, "com.apple.AvatarUI.AVTPushNotificationSupport.connectionQueue");
    connectionQueue = v10->_connectionQueue;
    v10->_connectionQueue = v12;

    v14 = [v7 logger];
    logger = v10->_logger;
    v10->_logger = v14;

    objc_storeStrong(&v10->_connectionFactory, a4);
  }

  return v10;
}

- (void)setupConnectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__AVTPushNotificationsSupport_setupConnectionWithCompletionHandler___block_invoke;
  v6[3] = &unk_278CFB270;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  v7 = [(AVTPushNotificationsSupport *)self logger];
  v6 = [v5 base64EncodedStringWithOptions:0];

  [v7 logPushConnectionReceivedPublicToken:v6];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = [(AVTPushNotificationsSupport *)self logger];
  v12 = [v11 base64EncodedStringWithOptions:0];

  [v13 logPushConnectionReceivedToken:v12 topic:v10 identifier:v9];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v11 = [v5 userInfo];
  v6 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:v11];
  v7 = [(AVTPushNotificationsSupport *)self logger];
  v8 = [v5 topic];

  v9 = [v6 description];
  [v7 logPushNotificationReceivedForTopic:v8 payload:v9];

  v10 = [(AVTPushNotificationsSupport *)self delegate];
  [v10 didReceivePushNotification:self];
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
  v2 = [(AVTPushNotificationsSupport *)self pushConnection];
  [v2 _setEnabledTopics:0];
}

- (AVTPushNotificationsSupportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
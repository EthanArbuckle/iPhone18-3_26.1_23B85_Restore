@interface AVTAvatarsDaemonClient
- (AVTAvatarsDaemonClient)initWithConnectionFactory:(id)factory logger:(id)logger;
- (void)checkIn;
- (void)performWorkWithConnection:(id)connection;
- (void)performWorkWithSynchronousProxy:(id)proxy;
@end

@implementation AVTAvatarsDaemonClient

id __41__AVTAvatarsDaemonClient_initWithLogger___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.avatar.support" options:0];

  return v0;
}

- (AVTAvatarsDaemonClient)initWithConnectionFactory:(id)factory logger:(id)logger
{
  factoryCopy = factory;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = AVTAvatarsDaemonClient;
  v8 = [(AVTAvatarsDaemonClient *)&v12 init];
  if (v8)
  {
    v9 = [factoryCopy copy];
    connectionFactory = v8->_connectionFactory;
    v8->_connectionFactory = v9;

    objc_storeStrong(&v8->_logger, logger);
  }

  return v8;
}

- (void)performWorkWithConnection:(id)connection
{
  connectionCopy = connection;
  connectionFactory = [(AVTAvatarsDaemonClient *)self connectionFactory];
  v6 = connectionFactory[2]();

  logger = [(AVTAvatarsDaemonClient *)self logger];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__AVTAvatarsDaemonClient_performWorkWithConnection___block_invoke;
  v16[3] = &unk_278CFA4E8;
  v8 = logger;
  v17 = v8;
  [v6 setInterruptionHandler:v16];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __52__AVTAvatarsDaemonClient_performWorkWithConnection___block_invoke_2;
  v14 = &unk_278CFA4E8;
  v15 = v8;
  v9 = v8;
  [v6 setInvalidationHandler:&v11];
  v10 = [AVTAvatarsDaemon xpcInterface:v11];
  [v6 setRemoteObjectInterface:v10];

  [v6 resume];
  connectionCopy[2](connectionCopy, v6);

  [v6 invalidate];
}

- (void)performWorkWithSynchronousProxy:(id)proxy
{
  proxyCopy = proxy;
  logger = [(AVTAvatarsDaemonClient *)self logger];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__AVTAvatarsDaemonClient_performWorkWithSynchronousProxy___block_invoke;
  v8[3] = &unk_278CFA538;
  v9 = logger;
  v10 = proxyCopy;
  v6 = proxyCopy;
  v7 = logger;
  [(AVTAvatarsDaemonClient *)self performWorkWithConnection:v8];
}

void __58__AVTAvatarsDaemonClient_performWorkWithSynchronousProxy___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__AVTAvatarsDaemonClient_performWorkWithSynchronousProxy___block_invoke_2;
  v5[3] = &unk_278CFA510;
  v6 = *(a1 + 32);
  v4 = [a2 synchronousRemoteObjectProxyWithErrorHandler:v5];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __58__AVTAvatarsDaemonClient_performWorkWithSynchronousProxy___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 logErrorGettingAvatarsDaemonClientProxy:v3];
}

- (void)checkIn
{
  logger = [(AVTAvatarsDaemonClient *)self logger];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__AVTAvatarsDaemonClient_checkIn__block_invoke;
  v4[3] = &unk_278CFA430;
  v4[4] = self;
  [logger checkingIn:v4];
}

@end
@interface AVTAvatarsDaemonServer
- (AVTAvatarsDaemonServer)initWithListener:(id)listener logger:(id)logger;
- (AVTAvatarsDaemonServer)initWithLogger:(id)logger;
- (AVTAvatarsDaemonServerDelegate)delegate;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)checkIn;
- (void)startListening;
@end

@implementation AVTAvatarsDaemonServer

- (AVTAvatarsDaemonServer)initWithLogger:(id)logger
{
  v4 = MEMORY[0x277CCAE98];
  loggerCopy = logger;
  v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.avatar.support"];
  v7 = [(AVTAvatarsDaemonServer *)self initWithListener:v6 logger:loggerCopy];

  return v7;
}

- (AVTAvatarsDaemonServer)initWithListener:(id)listener logger:(id)logger
{
  listenerCopy = listener;
  loggerCopy = logger;
  v12.receiver = self;
  v12.super_class = AVTAvatarsDaemonServer;
  v9 = [(AVTAvatarsDaemonServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, logger);
    objc_storeStrong(&v10->_listener, listener);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
  }

  return v10;
}

- (void)startListening
{
  listener = [(AVTAvatarsDaemonServer *)self listener];
  [listener resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  logger = [(AVTAvatarsDaemonServer *)self logger];
  [logger logAvatarsDaemonReceivesIncomingConnection];

  v7 = +[AVTAvatarsDaemon xpcInterface];
  [connectionCopy setExportedInterface:v7];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)checkIn
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];

  logger = [(AVTAvatarsDaemonServer *)self logger];
  [logger logAvatarsDaemonClientChecksIn:processIdentifier];

  delegate = [(AVTAvatarsDaemonServer *)self delegate];
  [delegate clientDidCheckInForServer:self];
}

- (AVTAvatarsDaemonServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
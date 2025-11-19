@interface AVTAvatarsDaemonServer
- (AVTAvatarsDaemonServer)initWithListener:(id)a3 logger:(id)a4;
- (AVTAvatarsDaemonServer)initWithLogger:(id)a3;
- (AVTAvatarsDaemonServerDelegate)delegate;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)checkIn;
- (void)startListening;
@end

@implementation AVTAvatarsDaemonServer

- (AVTAvatarsDaemonServer)initWithLogger:(id)a3
{
  v4 = MEMORY[0x277CCAE98];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:@"com.apple.avatar.support"];
  v7 = [(AVTAvatarsDaemonServer *)self initWithListener:v6 logger:v5];

  return v7;
}

- (AVTAvatarsDaemonServer)initWithListener:(id)a3 logger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AVTAvatarsDaemonServer;
  v9 = [(AVTAvatarsDaemonServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, a4);
    objc_storeStrong(&v10->_listener, a3);
    [(NSXPCListener *)v10->_listener setDelegate:v10];
  }

  return v10;
}

- (void)startListening
{
  v2 = [(AVTAvatarsDaemonServer *)self listener];
  [v2 resume];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(AVTAvatarsDaemonServer *)self logger];
  [v6 logAvatarsDaemonReceivesIncomingConnection];

  v7 = +[AVTAvatarsDaemon xpcInterface];
  [v5 setExportedInterface:v7];

  [v5 setExportedObject:self];
  [v5 resume];

  return 1;
}

- (void)checkIn
{
  v3 = [MEMORY[0x277CCAE80] currentConnection];
  v4 = [v3 processIdentifier];

  v5 = [(AVTAvatarsDaemonServer *)self logger];
  [v5 logAvatarsDaemonClientChecksIn:v4];

  v6 = [(AVTAvatarsDaemonServer *)self delegate];
  [v6 clientDidCheckInForServer:self];
}

- (AVTAvatarsDaemonServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end
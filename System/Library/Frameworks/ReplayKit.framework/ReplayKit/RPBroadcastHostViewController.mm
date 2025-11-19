@interface RPBroadcastHostViewController
- (void)updateBroadcastHandlerListenerEndpoint;
@end

@implementation RPBroadcastHostViewController

- (void)updateBroadcastHandlerListenerEndpoint
{
  hostContext = self->_hostContext;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __71__RPBroadcastHostViewController_updateBroadcastHandlerListenerEndpoint__block_invoke;
  v3[3] = &unk_278B62560;
  v3[4] = self;
  [(RPBroadcastExtensionHostContext *)hostContext updateBroadcastHandlerListenerEndpoint:v3];
}

@end
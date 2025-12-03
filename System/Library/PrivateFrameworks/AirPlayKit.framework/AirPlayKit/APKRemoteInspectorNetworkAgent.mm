@interface APKRemoteInspectorNetworkAgent
- (APKRemoteInspectorNetworkAgent)initWithDispatcher:(id)dispatcher;
- (APKRemoteInspectorNetworkAgentDelegate)delegate;
@end

@implementation APKRemoteInspectorNetworkAgent

- (APKRemoteInspectorNetworkAgent)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorNetworkAgent;
  v6 = [(APKRemoteInspectorNetworkAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
  }

  return v7;
}

- (APKRemoteInspectorNetworkAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
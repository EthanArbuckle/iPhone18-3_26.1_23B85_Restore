@interface APKRemoteInspectorNetworkAgent
- (APKRemoteInspectorNetworkAgent)initWithDispatcher:(id)a3;
- (APKRemoteInspectorNetworkAgentDelegate)delegate;
@end

@implementation APKRemoteInspectorNetworkAgent

- (APKRemoteInspectorNetworkAgent)initWithDispatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorNetworkAgent;
  v6 = [(APKRemoteInspectorNetworkAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, a3);
  }

  return v7;
}

- (APKRemoteInspectorNetworkAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
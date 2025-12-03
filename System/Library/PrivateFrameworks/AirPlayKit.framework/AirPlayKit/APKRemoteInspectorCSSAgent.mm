@interface APKRemoteInspectorCSSAgent
- (APKRemoteInspectorCSSAgent)initWithDispatcher:(id)dispatcher;
- (APKRemoteInspectorCSSAgentDelegate)delegate;
@end

@implementation APKRemoteInspectorCSSAgent

- (APKRemoteInspectorCSSAgent)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorCSSAgent;
  v6 = [(APKRemoteInspectorCSSAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
  }

  return v7;
}

void __93__APKRemoteInspectorCSSAgent_getInlineStylesForNodeWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 32) + 16))();
    v7 = v6;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [a3 localizedDescription];
    (*(v8 + 16))(v8, v9);
  }
}

void __94__APKRemoteInspectorCSSAgent_getComputedStyleForNodeWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [a3 localizedDescription];
    (*(v5 + 16))(v5, v6);
  }
}

- (APKRemoteInspectorCSSAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
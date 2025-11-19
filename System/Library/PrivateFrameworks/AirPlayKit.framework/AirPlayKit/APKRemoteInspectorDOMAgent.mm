@interface APKRemoteInspectorDOMAgent
- (APKRemoteInspectorDOMAgent)initWithDispatcher:(id)a3;
- (APKRemoteInspectorDOMAgentDelegate)delegate;
- (void)getDocumentWithErrorCallback:(id)a3 successCallback:(id)a4;
@end

@implementation APKRemoteInspectorDOMAgent

- (APKRemoteInspectorDOMAgent)initWithDispatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorDOMAgent;
  v6 = [(APKRemoteInspectorDOMAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, a3);
  }

  return v7;
}

- (void)getDocumentWithErrorCallback:(id)a3 successCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APKRemoteInspectorDOMAgent *)self delegate];

  if (v8)
  {
    v9 = [(APKRemoteInspectorDOMAgent *)self delegate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__APKRemoteInspectorDOMAgent_getDocumentWithErrorCallback_successCallback___block_invoke;
    v10[3] = &unk_278C5DD90;
    v11 = v7;
    v12 = v6;
    [v9 DOMAgent:self onDocumentWithCompletion:v10];
  }

  else
  {
    (*(v6 + 2))(v6, @"Not supported");
  }
}

void __75__APKRemoteInspectorDOMAgent_getDocumentWithErrorCallback_successCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = v5;
  if (v5)
  {
    [v5 setFrameId:@"AirPlayKit.DisplayTree"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [a3 localizedDescription];
    (*(v6 + 16))(v6, v7);
  }
}

void __83__APKRemoteInspectorDOMAgent_getOuterHTMLWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __84__APKRemoteInspectorDOMAgent_getAttributesWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __94__APKRemoteInspectorDOMAgent_requestChildNodesWithErrorCallback_successCallback_nodeId_depth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained dispatcher];
    [v6 setChildNodesWithParentId:*(a1 + 56) nodes:v9];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [a3 localizedDescription];
    (*(v7 + 16))(v7, v8);
  }
}

- (APKRemoteInspectorDOMAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
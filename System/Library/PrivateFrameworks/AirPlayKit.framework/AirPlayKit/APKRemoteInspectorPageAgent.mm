@interface APKRemoteInspectorPageAgent
- (APKRemoteInspectorPageAgent)initWithDispatcher:(id)a3;
- (APKRemoteInspectorPageAgentDelegate)delegate;
- (void)getResourceContentWithErrorCallback:(id)a3 successCallback:(id)a4 frameId:(id)a5 url:(id)a6;
- (void)getResourceTreeWithErrorCallback:(id)a3 successCallback:(id)a4;
@end

@implementation APKRemoteInspectorPageAgent

- (APKRemoteInspectorPageAgent)initWithDispatcher:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorPageAgent;
  v6 = [(APKRemoteInspectorPageAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, a3);
  }

  return v7;
}

- (void)getResourceTreeWithErrorCallback:(id)a3 successCallback:(id)a4
{
  v5 = a4;
  v6 = [(APKRemoteInspectorPageAgent *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__APKRemoteInspectorPageAgent_getResourceTreeWithErrorCallback_successCallback___block_invoke;
  v8[3] = &unk_278C5DE08;
  v9 = v5;
  v7 = v5;
  [v6 pageAgent:self onResourcesRequestWithCompletion:v8];
}

void __80__APKRemoteInspectorPageAgent_getResourceTreeWithErrorCallback_successCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7B798];
  v4 = a2;
  v6 = [[v3 alloc] initWithIdentifier:@"AirPlayKit.DisplayTree" loaderId:&stru_285120260 url:@"airplay://index" securityOrigin:@"AirPlayKit.DisplayTree" mimeType:@"text/xml"];
  v5 = [objc_alloc(MEMORY[0x277D7B7A8]) initWithFrame:v6 resources:v4];

  (*(*(a1 + 32) + 16))();
}

- (void)getResourceContentWithErrorCallback:(id)a3 successCallback:(id)a4 frameId:(id)a5 url:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(APKRemoteInspectorPageAgent *)self delegate];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __95__APKRemoteInspectorPageAgent_getResourceContentWithErrorCallback_successCallback_frameId_url___block_invoke;
  v15[3] = &unk_278C5DE30;
  v16 = v10;
  v17 = v9;
  v13 = v9;
  v14 = v10;
  [v12 pageAgent:self onResourceContentRequestWithIdentifier:v11 completion:v15];
}

void __95__APKRemoteInspectorPageAgent_getResourceContentWithErrorCallback_successCallback_frameId_url___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [a4 localizedDescription];
    (*(v6 + 16))(v6, v7);
  }
}

- (APKRemoteInspectorPageAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
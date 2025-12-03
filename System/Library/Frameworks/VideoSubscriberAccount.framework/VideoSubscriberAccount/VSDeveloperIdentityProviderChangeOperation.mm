@interface VSDeveloperIdentityProviderChangeOperation
- (VSDeveloperIdentityProviderChangeOperation)init;
- (id)_serviceWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)executionDidBegin;
@end

@implementation VSDeveloperIdentityProviderChangeOperation

- (VSDeveloperIdentityProviderChangeOperation)init
{
  v10.receiver = self;
  v10.super_class = VSDeveloperIdentityProviderChangeOperation;
  v2 = [(VSDeveloperIdentityProviderChangeOperation *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.VideoSubscriberAccount.DeveloperService"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = VSDeveloperServiceInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
    v7 = objc_alloc_init(VSOptional);
    v8 = v2->_result;
    v2->_result = v7;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = VSDeveloperIdentityProviderChangeOperation;
  [(VSDeveloperIdentityProviderChangeOperation *)&v3 dealloc];
}

- (id)_serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(VSDeveloperIdentityProviderChangeOperation *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)executionDidBegin
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke;
  v12[3] = &unk_278B732E0;
  v12[4] = self;
  v3 = [(VSDeveloperIdentityProviderChangeOperation *)self _serviceWithErrorHandler:v12];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will change developer identity.", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke_6;
  aBlock[3] = &unk_278B73308;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  identityProvider = [(VSDeveloperIdentityProviderChangeOperation *)self identityProvider];
  changeKind = [(VSDeveloperIdentityProviderChangeOperation *)self changeKind];
  switch(changeKind)
  {
    case 2:
      uniqueID = [identityProvider uniqueID];
      forceUnwrapObject = [uniqueID forceUnwrapObject];
      [v3 removeDeveloperIdentityProviderWithUniqueID:forceUnwrapObject completionHandler:v5];

      break;
    case 1:
      [v3 updateExistingDeveloperIdentityProvider:identityProvider completionHandler:v5];
      break;
    case 0:
      [v3 addDeveloperIdentityProvider:identityProvider completionHandler:v5];
      break;
  }
}

void __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = [VSFailable failableWithError:v3];
  v7 = [VSOptional optionalWithObject:v6];
  [v5 setResult:v7];

  [*(a1 + 32) finishExecutionIfPossible];
}

uint64_t __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [VSOptional optionalWithObject:a2];
  [v3 setResult:v4];

  v5 = *(a1 + 32);

  return [v5 finishExecutionIfPossible];
}

void __63__VSDeveloperIdentityProviderChangeOperation_executionDidBegin__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error with developer service: %@", &v2, 0xCu);
}

@end
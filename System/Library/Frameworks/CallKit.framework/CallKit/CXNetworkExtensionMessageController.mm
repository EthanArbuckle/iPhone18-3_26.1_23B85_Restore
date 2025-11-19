@interface CXNetworkExtensionMessageController
- (CXNetworkExtensionMessageController)init;
- (CXNetworkExtensionMessageController)initWithDataSource:(id)a3;
- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
@end

@implementation CXNetworkExtensionMessageController

- (CXNetworkExtensionMessageController)init
{
  v3 = objc_alloc_init(CXNetworkExtensionMessageControllerXPCClient);
  v4 = [(CXNetworkExtensionMessageController *)self initWithDataSource:v3];

  return v4;
}

- (CXNetworkExtensionMessageController)initWithDataSource:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = CXNetworkExtensionMessageController;
  v6 = [(CXNetworkExtensionMessageController *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXNetworkExtensionMessageController initWithDataSource:]", @"dataSource"}];
    }

    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v6;
}

- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXNetworkExtensionMessageController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__CXNetworkExtensionMessageController_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C07758;
  v14 = v8;
  v12 = v8;
  [v11 sendNetworkExtensionMessage:v10 forBundleIdentifier:v9 completion:v13];
}

uint64_t __98__CXNetworkExtensionMessageController_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXNetworkExtensionMessageController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__CXNetworkExtensionMessageController_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C07758;
  v14 = v8;
  v12 = v8;
  [v11 sendNetworkExtensionPushToTalkMessage:v10 forBundleIdentifier:v9 completion:v13];
}

uint64_t __108__CXNetworkExtensionMessageController_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
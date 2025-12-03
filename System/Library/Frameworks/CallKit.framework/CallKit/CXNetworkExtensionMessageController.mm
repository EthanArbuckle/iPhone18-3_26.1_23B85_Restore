@interface CXNetworkExtensionMessageController
- (CXNetworkExtensionMessageController)init;
- (CXNetworkExtensionMessageController)initWithDataSource:(id)source;
- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier completion:(id)completion;
- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation CXNetworkExtensionMessageController

- (CXNetworkExtensionMessageController)init
{
  v3 = objc_alloc_init(CXNetworkExtensionMessageControllerXPCClient);
  v4 = [(CXNetworkExtensionMessageController *)self initWithDataSource:v3];

  return v4;
}

- (CXNetworkExtensionMessageController)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = CXNetworkExtensionMessageController;
  v6 = [(CXNetworkExtensionMessageController *)&v8 init];
  if (v6)
  {
    if (!sourceCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXNetworkExtensionMessageController initWithDataSource:]", @"dataSource"}];
    }

    objc_storeStrong(&v6->_dataSource, source);
  }

  return v6;
}

- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageCopy = message;
  dataSource = [(CXNetworkExtensionMessageController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __98__CXNetworkExtensionMessageController_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C07758;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource sendNetworkExtensionMessage:messageCopy forBundleIdentifier:identifierCopy completion:v13];
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

- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  messageCopy = message;
  dataSource = [(CXNetworkExtensionMessageController *)self dataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __108__CXNetworkExtensionMessageController_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7C07758;
  v14 = completionCopy;
  v12 = completionCopy;
  [dataSource sendNetworkExtensionPushToTalkMessage:messageCopy forBundleIdentifier:identifierCopy completion:v13];
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
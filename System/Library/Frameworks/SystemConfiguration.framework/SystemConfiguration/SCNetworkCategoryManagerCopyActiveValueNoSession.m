@interface SCNetworkCategoryManagerCopyActiveValueNoSession
@end

@implementation SCNetworkCategoryManagerCopyActiveValueNoSession

void ____SCNetworkCategoryManagerCopyActiveValueNoSession_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_create("__SCNetworkCategoryManagerCopyActiveValueNoSession_block_invoke", 0);
  __SCNetworkCategoryManagerCopyActiveValueNoSession_connection = CategoryManagerConnectionCreate(v0, 0);
  v1 = *MEMORY[0x1E69E9840];

  dispatch_release(v0);
}

@end
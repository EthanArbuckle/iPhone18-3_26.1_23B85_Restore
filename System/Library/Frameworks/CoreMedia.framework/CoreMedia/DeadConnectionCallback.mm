@interface DeadConnectionCallback
@end

@implementation DeadConnectionCallback

void __remoteXPCEndpointManagerClient_DeadConnectionCallback_block_invoke(uint64_t a1)
{
  remoteXPCEndpointManager_EmptyCaches(*(a1 + 40));
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *(v2 + 48);
  *(v2 + 48) = 0;
}

@end
@interface RemoteClientOneTimeInitialization
@end

@implementation RemoteClientOneTimeInitialization

dispatch_queue_t __figXPC_RemoteClientOneTimeInitialization_block_invoke()
{
  FigKTraceInit();
  result = dispatch_queue_create("FigXPCRemoteClientCommonCleanupQueue", 0);
  gCommonRemoteClientCleanupQueue = result;
  return result;
}

@end
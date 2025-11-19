@interface AFSynchronousClientLite
@end

@implementation AFSynchronousClientLite

void __97__AFSynchronousClientLite__handleCommand_afterCurrentRequest_isOneWay_commandHandler_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

@end
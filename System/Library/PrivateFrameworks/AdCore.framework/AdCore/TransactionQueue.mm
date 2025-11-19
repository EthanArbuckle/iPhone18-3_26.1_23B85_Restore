@interface TransactionQueue
@end

@implementation TransactionQueue

uint64_t ___TransactionQueue_block_invoke()
{
  _TransactionQueue___queue = dispatch_queue_create("com.apple.ap.adprivacyd.transaction-queue", 0);

  return MEMORY[0x2821F96F8]();
}

@end
@interface FigVideoTargetConnectionEstablisher
@end

@implementation FigVideoTargetConnectionEstablisher

void __FigVideoTargetConnectionEstablisher_EstablishConnectionSync_block_invoke(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v4 + 8) + 24) = a2;
  dispatch_group_leave(v3);
  v5 = *(a1 + 40);

  dispatch_release(v5);
}

@end
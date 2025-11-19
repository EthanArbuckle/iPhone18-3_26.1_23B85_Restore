@interface HMNetworkConnection
@end

@implementation HMNetworkConnection

void __46___HMNetworkConnection_setPathChangedHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_HMNetworkPath alloc] initWithNwPath:v3];

  (*(*(a1 + 32) + 16))();
}

@end
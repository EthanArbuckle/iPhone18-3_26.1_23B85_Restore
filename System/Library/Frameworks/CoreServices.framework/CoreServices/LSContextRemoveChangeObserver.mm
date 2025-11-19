@interface LSContextRemoveChangeObserver
@end

@implementation LSContextRemoveChangeObserver

uint64_t ___LSContextRemoveChangeObserver_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  LaunchServices::notifyd::NotifyToken::cancel((*(a1 + 32) + 20));
  v4 = gChangeObservers;
  v5 = *(a1 + 40);

  return [v4 removeObjectIdenticalTo:v5];
}

@end
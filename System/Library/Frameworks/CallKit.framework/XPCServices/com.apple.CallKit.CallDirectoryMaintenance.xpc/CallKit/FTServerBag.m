@interface FTServerBag
- (unint64_t)blockingWaitSeconds;
- (unint64_t)identityWaitSeconds;
@end

@implementation FTServerBag

- (unint64_t)identityWaitSeconds
{
  v2 = self;
  v3 = FTServerBag.identityWaitSeconds.getter();

  return v3;
}

- (unint64_t)blockingWaitSeconds
{
  v2 = self;
  v3 = FTServerBag.blockingWaitSeconds.getter();

  return v3;
}

@end
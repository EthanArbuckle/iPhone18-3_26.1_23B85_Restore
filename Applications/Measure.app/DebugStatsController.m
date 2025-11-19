@interface DebugStatsController
- (void)tick;
@end

@implementation DebugStatsController

- (void)tick
{
  v2 = *self->tickCount;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *self->tickCount = v4;
  }
}

@end
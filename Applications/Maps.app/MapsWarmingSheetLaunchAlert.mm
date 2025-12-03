@interface MapsWarmingSheetLaunchAlert
- (_TtC4Maps27MapsWarmingSheetLaunchAlert)init;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler;
@end

@implementation MapsWarmingSheetLaunchAlert

- (_TtC4Maps27MapsWarmingSheetLaunchAlert)init
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_locIntWelcomeViewController) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC4Maps27MapsWarmingSheetLaunchAlert_completionBlock);
  v4 = type metadata accessor for MapsWarmingSheetLaunchAlert();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(MapsWarmingSheetLaunchAlert *)&v6 init];
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100333CC4(sub_1000FA694, v5);
}

@end
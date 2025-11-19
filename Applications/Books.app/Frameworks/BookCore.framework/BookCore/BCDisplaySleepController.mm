@interface BCDisplaySleepController
- (BCDisplaySleepController)init;
- (UIWindow)window;
- (void)setWindow:(id)a3;
@end

@implementation BCDisplaySleepController

- (UIWindow)window
{
  v3 = OBJC_IVAR___BCDisplaySleepController_window;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setWindow:(id)a3
{
  v5 = OBJC_IVAR___BCDisplaySleepController_window;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (BCDisplaySleepController)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BCDisplaySleepController_window) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BCDisplaySleepController *)&v5 init];
}

@end
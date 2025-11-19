@interface TapPointCoordinator
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC5Books19TapPointCoordinator)init;
@end

@implementation TapPointCoordinator

- (_TtC5Books19TapPointCoordinator)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC5Books19TapPointCoordinator_currentTouchType) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TapPointCoordinator *)&v5 init];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = self;
  v6 = [a4 type];
  *(&v5->super.isa + OBJC_IVAR____TtC5Books19TapPointCoordinator_currentTouchType) = v6;

  return 1;
}

@end
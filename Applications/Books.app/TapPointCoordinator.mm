@interface TapPointCoordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  selfCopy = self;
  type = [touch type];
  *(&selfCopy->super.isa + OBJC_IVAR____TtC5Books19TapPointCoordinator_currentTouchType) = type;

  return 1;
}

@end
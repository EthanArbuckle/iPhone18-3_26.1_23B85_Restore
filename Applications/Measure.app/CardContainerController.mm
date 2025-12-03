@interface CardContainerController
- (_TtC7Measure23CardContainerController)init;
- (void)dealloc;
@end

@implementation CardContainerController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7Measure23CardContainerController_draggingAnimator);
  selfCopy = self;
  if (v5)
  {
    [v5 stopAnimation:1];
    v7 = *(&self->super.isa + v4);
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.isa + v4) = 0;

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(CardContainerController *)&v8 dealloc];
}

- (_TtC7Measure23CardContainerController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface ControlObserver
- (_TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver)init;
- (void)dealloc;
@end

@implementation ControlObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (*(&self->super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) == 1)
  {
    *(&self->super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_isActive) = 0;
    [*(&self->super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver_instance) unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5.receiver = self;
  v5.super_class = ObjectType;
  [(ControlObserver *)&v5 dealloc];
}

- (_TtC27ActionButtonConfigurationUIP33_71488BF1F1CBF40E6211521E328CAE4615ControlObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
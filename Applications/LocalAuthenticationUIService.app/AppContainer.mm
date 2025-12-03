@interface AppContainer
+ (_TtC28LocalAuthenticationUIService12AppContainer)shared;
- (_TtC28LocalAuthenticationUIService12AppContainer)init;
- (void)assemble;
@end

@implementation AppContainer

+ (_TtC28LocalAuthenticationUIService12AppContainer)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static AppContainer.shared;

  return v3;
}

- (void)assemble
{
  selfCopy = self;
  AppContainer.assemble()();
}

- (_TtC28LocalAuthenticationUIService12AppContainer)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelConnectionHandler;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = self + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelConnectionListener;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelManager);
  *v6 = 0;
  v6[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelPresenter) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_angelSceneProvider) = 0;
  v7 = (&self->super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService12AppContainer_sceneController);
  *v7 = 0;
  v7[1] = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(AppContainer *)&v9 init];
}

@end
@interface ApplicationCapabilities.Controller.ProfileObserver
- (_TtCCV9MusicCore23ApplicationCapabilities10ControllerP33_3C92A9FA31E0FE3D8D536795352BB0D115ProfileObserver)init;
- (void)dealloc;
@end

@implementation ApplicationCapabilities.Controller.ProfileObserver

- (_TtCCV9MusicCore23ApplicationCapabilities10ControllerP33_3C92A9FA31E0FE3D8D536795352BB0D115ProfileObserver)init
{
  swift_weakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
  v3 = [(ApplicationCapabilities.Controller.ProfileObserver *)&v8 init];
  v4 = objc_opt_self();
  v5 = v3;
  result = [v4 sharedConnection];
  if (result)
  {
    v7 = result;
    [(ApplicationCapabilities.Controller.ProfileObserver *)result registerObserver:v5];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedConnection = [v3 sharedConnection];
  if (sharedConnection)
  {
    v6 = sharedConnection;
    [sharedConnection unregisterObserver:selfCopy];

    v7.receiver = selfCopy;
    v7.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    [(ApplicationCapabilities.Controller.ProfileObserver *)&v7 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end
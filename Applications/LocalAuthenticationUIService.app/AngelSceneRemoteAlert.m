@interface AngelSceneRemoteAlert
- (LACUIAngelSceneDelegate)delegate;
- (NSString)identifier;
- (NSString)persistentIdentifier;
- (_TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert)init;
- (void)activate;
- (void)deactivate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setPersistentIdentifier:(id)a3;
@end

@implementation AngelSceneRemoteAlert

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_identifier);
  v3 = *(self + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_identifier + 8);

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)persistentIdentifier
{
  v2 = (self + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPersistentIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert_persistentIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (LACUIAngelSceneDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)activate
{
  v2 = self;
  AngelSceneRemoteAlert.activate()();
}

- (void)deactivate
{
  v2 = self;
  AngelSceneRemoteAlert.deactivate()();
}

- (_TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized AngelSceneRemoteAlert.remoteAlertHandleDidActivate(_:)();
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized AngelSceneRemoteAlert.remoteAlertHandleDidDeactivate(_:)();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  specialized AngelSceneRemoteAlert.remoteAlertHandle(_:didInvalidateWithError:)(a4);
}

@end
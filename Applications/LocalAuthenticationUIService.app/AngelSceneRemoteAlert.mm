@interface AngelSceneRemoteAlert
- (LACUIAngelSceneDelegate)delegate;
- (NSString)identifier;
- (NSString)persistentIdentifier;
- (_TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert)init;
- (void)activate;
- (void)deactivate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)setPersistentIdentifier:(id)identifier;
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

- (void)setPersistentIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  AngelSceneRemoteAlert.activate()();
}

- (void)deactivate
{
  selfCopy = self;
  AngelSceneRemoteAlert.deactivate()();
}

- (_TtC28LocalAuthenticationUIService21AngelSceneRemoteAlert)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  selfCopy = self;
  specialized AngelSceneRemoteAlert.remoteAlertHandleDidActivate(_:)();
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  specialized AngelSceneRemoteAlert.remoteAlertHandleDidDeactivate(_:)();
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  selfCopy = self;
  errorCopy = error;
  specialized AngelSceneRemoteAlert.remoteAlertHandle(_:didInvalidateWithError:)(error);
}

@end
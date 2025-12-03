@interface AngelSceneProviderRemoteAlert
- (_TtC28LocalAuthenticationUIService29AngelSceneProviderRemoteAlert)init;
- (id)makeSceneForRequest:(id)request;
@end

@implementation AngelSceneProviderRemoteAlert

- (id)makeSceneForRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  v6 = specialized AngelSceneProviderRemoteAlert.makeRemoteAlertScene(for:)(requestCopy);

  return v6;
}

- (_TtC28LocalAuthenticationUIService29AngelSceneProviderRemoteAlert)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AngelSceneProviderRemoteAlert();
  return [(AngelSceneProviderRemoteAlert *)&v3 init];
}

@end
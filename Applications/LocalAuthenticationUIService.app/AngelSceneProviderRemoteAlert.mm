@interface AngelSceneProviderRemoteAlert
- (_TtC28LocalAuthenticationUIService29AngelSceneProviderRemoteAlert)init;
- (id)makeSceneForRequest:(id)a3;
@end

@implementation AngelSceneProviderRemoteAlert

- (id)makeSceneForRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized AngelSceneProviderRemoteAlert.makeRemoteAlertScene(for:)(v4);

  return v6;
}

- (_TtC28LocalAuthenticationUIService29AngelSceneProviderRemoteAlert)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AngelSceneProviderRemoteAlert();
  return [(AngelSceneProviderRemoteAlert *)&v3 init];
}

@end
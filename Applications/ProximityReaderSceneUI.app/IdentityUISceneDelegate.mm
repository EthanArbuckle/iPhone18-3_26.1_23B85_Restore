@interface IdentityUISceneDelegate
- (_TtC22ProximityReaderSceneUI23IdentityUISceneDelegate)init;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation IdentityUISceneDelegate

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_100009CF0();
}

- (_TtC22ProximityReaderSceneUI23IdentityUISceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IdentityUISceneDelegate();
  return [(BaseUISceneDelegate *)&v3 init];
}

@end
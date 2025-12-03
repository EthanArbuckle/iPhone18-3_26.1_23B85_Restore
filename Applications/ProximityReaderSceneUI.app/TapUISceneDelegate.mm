@interface TapUISceneDelegate
- (_TtC22ProximityReaderSceneUI18TapUISceneDelegate)init;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation TapUISceneDelegate

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_10000DFA0();
}

- (_TtC22ProximityReaderSceneUI18TapUISceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapUISceneDelegate();
  return [(BaseUISceneDelegate *)&v3 init];
}

@end
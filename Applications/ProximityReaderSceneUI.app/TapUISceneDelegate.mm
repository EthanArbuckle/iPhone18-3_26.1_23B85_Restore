@interface TapUISceneDelegate
- (_TtC22ProximityReaderSceneUI18TapUISceneDelegate)init;
- (void)sceneDidDisconnect:(id)a3;
@end

@implementation TapUISceneDelegate

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000DFA0();
}

- (_TtC22ProximityReaderSceneUI18TapUISceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapUISceneDelegate();
  return [(BaseUISceneDelegate *)&v3 init];
}

@end
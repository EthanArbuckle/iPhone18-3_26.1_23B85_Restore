@interface ClarityUISceneDelegate
- (_TtC7AppleTV22ClarityUISceneDelegate)init;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
@end

@implementation ClarityUISceneDelegate

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100009D24(v8);
}

- (_TtC7AppleTV22ClarityUISceneDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClarityUISceneDelegate();
  return [(ClarityUISceneDelegate *)&v3 init];
}

@end
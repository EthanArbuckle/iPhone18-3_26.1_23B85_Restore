@interface AppDelegate
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v5 = a4;
  v6 = [v5 role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v6];

  type metadata accessor for LimitedAccessPromptSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

@end
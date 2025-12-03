@interface AppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  role = [sessionCopy role];
  v7 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:role];

  type metadata accessor for LimitedAccessPromptSceneDelegate();
  [v7 setDelegateClass:swift_getObjCClassFromMetadata()];

  return v7;
}

@end
@interface MOAppDelegate
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation MOAppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = specialized MOAppDelegate.application(_:configurationForConnecting:options:)(sessionCopy);

  return v12;
}

@end
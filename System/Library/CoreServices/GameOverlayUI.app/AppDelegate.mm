@interface AppDelegate
- (_TtC13GameOverlayUI11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10009564C(applicationCopy, sessionCopy, optionsCopy);

  return v12;
}

- (_TtC13GameOverlayUI11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppDelegate *)&v3 init];
}

@end
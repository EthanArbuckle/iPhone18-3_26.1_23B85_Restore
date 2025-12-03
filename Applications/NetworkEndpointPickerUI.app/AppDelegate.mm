@interface AppDelegate
- (_TtC23NetworkEndpointPickerUI11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000237C(sessionCopy);

  return v12;
}

- (_TtC23NetworkEndpointPickerUI11AppDelegate)init
{
  Logger.init(subsystem:category:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v4 init];
}

@end
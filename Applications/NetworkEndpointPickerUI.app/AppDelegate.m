@interface AppDelegate
- (_TtC23NetworkEndpointPickerUI11AppDelegate)init;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
@end

@implementation AppDelegate

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10000237C(v9);

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
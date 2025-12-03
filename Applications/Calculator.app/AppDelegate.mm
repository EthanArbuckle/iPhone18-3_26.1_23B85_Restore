@interface AppDelegate
- (_TtC10Calculator11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation AppDelegate

- (_TtC10Calculator11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000AD38(sessionCopy);

  return v12;
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000A83AC(builder);
  swift_unknownObjectRelease();
}

@end
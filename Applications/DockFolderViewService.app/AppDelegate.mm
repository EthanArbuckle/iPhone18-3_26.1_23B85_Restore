@interface AppDelegate
- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options;
- (_TtC21DockFolderViewService11AppDelegate)init;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (BOOL)application:(id)application willFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10008C0B0(&qword_1000BBA40, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10008B77C();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10008BD70(sessionCopy);

  return v12;
}

- (_TtC21DockFolderViewService11AppDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService11AppDelegate_sourceObserver) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end
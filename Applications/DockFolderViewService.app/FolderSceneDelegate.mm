@interface FolderSceneDelegate
- (_TtC21DockFolderViewService19FolderSceneDelegate)init;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (void)handleActionForFloatingDockRemoteContentScene:(id)scene withActionContext:(id)context;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)updateContentForFloatingDockRemoteContentScene:(id)scene withContext:(id)context withAnimationSettings:(id)settings;
@end

@implementation FolderSceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100072B9C(sceneCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000731B8(disconnectCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000733EC(activeCopy);
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100073620(activeCopy);
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100073854(foregroundCopy);
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100073A88(backgroundCopy);
}

- (_TtC21DockFolderViewService19FolderSceneDelegate)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for FolderSceneDelegate();
  return [(FolderSceneDelegate *)&v3 init];
}

- (void)updateContentForFloatingDockRemoteContentScene:(id)scene withContext:(id)context withAnimationSettings:(id)settings
{
  sceneCopy = scene;
  contextCopy = context;
  settingsCopy = settings;
  selfCopy = self;
  sub_100068F60(sceneCopy, contextCopy, settingsCopy);
}

- (void)handleActionForFloatingDockRemoteContentScene:(id)scene withActionContext:(id)context
{
  sceneCopy = scene;
  contextCopy = context;
  selfCopy = self;
  sub_10006C370(sceneCopy, contextCopy);
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  sub_10001A2A8(0, &qword_1000BCE40, BSAction_ptr);
  sub_100072660();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

@end
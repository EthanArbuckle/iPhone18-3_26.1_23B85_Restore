@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window;
- (void)applicationWillTerminate:(id)terminate;
- (void)buildMenuWithBuilder:(id)builder;
- (void)newSpeechTranslation:;
- (void)newTranslation:;
- (void)openDownloadSheet:(id)sheet;
- (void)setWindow:(id)window;
- (void)switchToTranslateTab:(id)tab;
- (void)validateCommand:(id)command;
@end

@implementation AppDelegate

- (void)openDownloadSheet:(id)sheet
{
  selfCopy = self;
  sub_10000B744();
  if (v3)
  {
    v4 = v3;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  else
  {
  }
}

- (void)switchToTranslateTab:(id)tab
{
  selfCopy = self;
  sub_10000B744();
  if (v3)
  {
    v4 = v3;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
  }

  else
  {
  }
}

- (void)newTranslation:
{
  sub_10000B744();
  if (v0)
  {
    v1 = v0;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 6)
    {
      if (v21)
      {
        sub_10000A948(v20, v21);
        sub_10000B744();
        if (!v10)
        {
          return;
        }

        goto LABEL_10;
      }
    }
  }

  sub_10000B744();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_menuCommandController];
    v4 = v2;

    swift_beginAccess();
    v5 = *(v3 + 16);
    if (*(v5 + 16))
    {
      v6 = sub_10028DDAC(0);
      if (v7)
      {
        v8 = *(*(v5 + 56) + 16 * v6);

        v8(v9);
      }
    }
  }

  sub_10000B744();
  if (v10)
  {
LABEL_10:
    v11 = v10;

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 6)
    {
      if (v21 == 2)
      {
        sub_10000B744();
        if (v12)
        {
          v13 = *&v12[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_menuCommandController];
          v14 = v12;

          swift_beginAccess();
          v15 = *(v13 + 16);
          if (*(v15 + 16))
          {
            v16 = sub_10028DDAC(2u);
            if (v17)
            {
              v18 = *(*(v15 + 56) + 16 * v16);

              v18(v19);
            }
          }
        }
      }

      else
      {
        sub_10000A948(v20, v21);
      }
    }
  }
}

- (void)newSpeechTranslation:
{
  sub_10000B744();
  if (v0)
  {
    v1 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator13SceneDelegate_menuCommandController];
    v2 = v0;

    swift_beginAccess();
    v3 = *(v1 + 16);
    if (*(v3 + 16))
    {
      v4 = sub_10028DDAC(1u);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 16 * v4);

        v6(v7);
      }
    }
  }
}

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_window) = window;
  windowCopy = window;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000C1D8();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_10000BAFC();

  return v8 & 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_10000BBE8(sessionCopy);

  return v12;
}

- (unint64_t)application:(id)application supportedInterfaceOrientationsForWindow:(id)window
{
  selfCopy = self;
  if (!window)
  {
    goto LABEL_9;
  }

  windowCopy = window;
  rootViewController = [windowCopy rootViewController];
  if (!rootViewController)
  {
    v8 = windowCopy;
LABEL_8:

    goto LABEL_9;
  }

  v8 = rootViewController;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_8;
  }

  selectedIndex = [v9 selectedIndex];

  if (selectedIndex != 1)
  {
LABEL_9:
    v11 = *(&selfCopy->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_orientationLock);
    goto LABEL_10;
  }

  v11 = 26;
LABEL_10:

  return v11;
}

- (void)applicationWillTerminate:(id)terminate
{
  if (qword_1003A92D8 != -1)
  {
    swift_once();
  }

  sub_1001A2440(0);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000BF10(builder);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10000C084(commandCopy);
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(v7) = sub_1000110E0(applicationCopy, v7, v9);

  return v7 & 1;
}

@end
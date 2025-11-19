@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4;
- (void)applicationWillTerminate:(id)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)newSpeechTranslation:;
- (void)newTranslation:;
- (void)openDownloadSheet:(id)a3;
- (void)setWindow:(id)a3;
- (void)switchToTranslateTab:(id)a3;
- (void)validateCommand:(id)a3;
@end

@implementation AppDelegate

- (void)openDownloadSheet:(id)a3
{
  v5 = self;
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

- (void)switchToTranslateTab:(id)a3
{
  v5 = self;
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

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_window) = a3;
  v3 = a3;
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10000C1D8();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_10000BAFC();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10000BBE8(v9);

  return v12;
}

- (unint64_t)application:(id)a3 supportedInterfaceOrientationsForWindow:(id)a4
{
  v5 = self;
  if (!a4)
  {
    goto LABEL_9;
  }

  v6 = a4;
  v7 = [v6 rootViewController];
  if (!v7)
  {
    v8 = v6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = [v9 selectedIndex];

  if (v10 != 1)
  {
LABEL_9:
    v11 = *(&v5->super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator11AppDelegate_orientationLock);
    goto LABEL_10;
  }

  v11 = 26;
LABEL_10:

  return v11;
}

- (void)applicationWillTerminate:(id)a3
{
  if (qword_1003A92D8 != -1)
  {
    swift_once();
  }

  sub_1001A2440(0);
}

- (void)buildMenuWithBuilder:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10000BF10(a3);
  swift_unknownObjectRelease();
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10000C084(v4);
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_1000110E0(v10, v7, v9);

  return v7 & 1;
}

@end
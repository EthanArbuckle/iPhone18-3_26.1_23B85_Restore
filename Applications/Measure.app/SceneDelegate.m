@interface SceneDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setWindow:(id)a3;
- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Measure13SceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC7Measure13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100032D68(v8, v10);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100033144();
}

- (void)sceneWillResignActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000332F4();
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100033464();
}

- (void)sceneWillEnterForeground:(id)a3
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v4 = 0x8000000100400B00;
  v5 = 0xD000000000000019;

  Log.default(_:isPrivate:)(*&v5, 0);
}

- (void)windowScene:(id)a3 performActionForShortcutItem:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = a4;
  v9 = self;
  sub_100032298(v8);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  if (a4)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (!a5)
    {
      goto LABEL_15;
    }

    v11 = v8;
  }

  else
  {
    if (!a5)
    {
LABEL_17:
      result = sub_1000321B4();
      goto LABEL_18;
    }

    v10 = 0;
    v11 = 0;
  }

  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  result = sub_1000321B4();
  if (!v10)
  {
    goto LABEL_18;
  }

  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a3)
  {
    v14 = a3;
    v15 = self;

    v16._countAndFlagsBits = v11;
    v16._object = v10;
    v17 = _findStringSwitchCase(cases:string:)(&off_100464E68, v16);

    v18 = 0;
    if (v17)
    {
      if (v17 != 1)
      {
LABEL_13:

        return v18;
      }

      v18 = 1;
    }

    sub_100133550(v18, v14);
    v18 = 1;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  result = sub_1000321B4();
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

@end
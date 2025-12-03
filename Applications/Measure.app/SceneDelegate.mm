@interface SceneDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setWindow:(id)window;
- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC7Measure13SceneDelegate_window);
  *(&self->super.isa + OBJC_IVAR____TtC7Measure13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_100032D68(sceneCopy, optionsCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100033144();
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1000332F4();
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  sub_100033464();
}

- (void)sceneWillEnterForeground:(id)foreground
{
  if (qword_1004A0280 != -1)
  {
    swift_once();
  }

  v4 = 0x8000000100400B00;
  v5 = 0xD000000000000019;

  Log.default(_:isPrivate:)(*&v5, 0);
}

- (void)windowScene:(id)scene performActionForShortcutItem:(id)item completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  itemCopy = item;
  selfCopy = self;
  sub_100032298(itemCopy);
  v7[2](v7, 1);

  _Block_release(v7);
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  if (test)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (!options)
    {
      goto LABEL_15;
    }

    v11 = v8;
  }

  else
  {
    if (!options)
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

  if (application)
  {
    applicationCopy = application;
    selfCopy = self;

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

    sub_100133550(v18, applicationCopy);
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
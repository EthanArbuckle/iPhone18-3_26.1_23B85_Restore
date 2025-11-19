@interface ApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5;
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (UIResponder)nextResponder;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (id)application:(id)a3 handlerForIntent:(id)a4;
- (uint64_t)userNotificationCenter:openSettingsForNotification:;
- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5;
@end

@implementation ApplicationDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  if (a4)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_10035EAC8(&qword_101180898, type metadata accessor for LaunchOptionsKey);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  v8 = sub_100024B50();

  return v8 & 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_10002C0B8(v9, v10);

  return v12;
}

- (BOOL)application:(id)a3 openURL:(id)a4 options:(id)a5
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_10035EAC8(&qword_1011808A8, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = self;
  v14 = sub_10035E554(v12, v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)a3 willPresentNotification:(UNNotification *)a4 withCompletionHandler:(id)a5
{
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100EC7B78;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100EC7B88;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10035E0F8(0, 0, v11, &unk_100EC7B98, v16);
}

- (UIResponder)nextResponder
{
  v2 = self;
  v3 = sub_10035D8C4();

  return v3;
}

- (id)application:(id)a3 handlerForIntent:(id)a4
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v4 = [objc_allocWithZone(type metadata accessor for MediaIntentHandler()) init];
  }

  return v4;
}

- (uint64_t)userNotificationCenter:openSettingsForNotification:
{
  v0 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v0 - 8);
  v2 = &v19[-v1];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v12);
  v14 = v13;

  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = sub_1007E90D4(0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v14 + 32);
  }

  v17 = v16;

  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    return sub_1000095E8(v2, &qword_101183A20);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v18 = v17;
    sub_1002B8D68(v6, 0, v18);
    sub_1002C5A04();

    return (*(v4 + 8))(v9, v3);
  }
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_10059FAE0(a3, v8, v10, v5);

  return v13 & 1;
}

@end
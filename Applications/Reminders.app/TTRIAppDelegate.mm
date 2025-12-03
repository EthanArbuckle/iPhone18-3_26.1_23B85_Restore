@interface TTRIAppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type;
- (void)application:(id)application didUpdateUserActivity:(id)activity;
- (void)application:(id)application userDidAcceptCloudKitShareWithMetadata:(id)metadata;
- (void)buildMenuWithBuilder:(id)builder;
- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification;
@end

@implementation TTRIAppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_100007284(&qword_100767FE8, type metadata accessor for LaunchOptionsKey);
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  applicationCopy = application;
  selfCopy = self;
  v9 = sub_10000364C(optionsCopy);

  return v9 & 1;
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for OpenURLOptionsKey(0);
  sub_100007284(&qword_100767FF8, type metadata accessor for OpenURLOptionsKey);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  applicationCopy = application;
  selfCopy = self;
  v14 = sub_1003274F4(v10, v11);

  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

- (BOOL)application:(id)application willContinueUserActivityWithType:(id)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  applicationCopy = application;
  selfCopy = self;
  LOBYTE(v6) = sub_100327974(v6, v8);

  return v6 & 1;
}

- (void)application:(id)application didUpdateUserActivity:(id)activity
{
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  sub_100327AC0(activityCopy);
}

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  v12 = sub_100327C20(activityCopy);
  _Block_release(v8);

  return v12 & 1;
}

- (void)application:(id)application userDidAcceptCloudKitShareWithMetadata:(id)metadata
{
  applicationCopy = application;
  metadataCopy = metadata;
  selfCopy = self;
  sub_100327D74(metadataCopy);
}

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1003269BC(builder);
  swift_unknownObjectRelease();
}

- (void)userNotificationCenter:(id)center openSettingsForNotification:(id)notification
{
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_100328668(notification);
}

@end
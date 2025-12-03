@interface ShareSheetUISession
- (_TtC16SharingUIService19ShareSheetUISession)init;
- (void)connectionInterrupted;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration;
- (void)dealloc;
- (void)didSelectCollaborativeAction;
- (void)didSelectSendCopyAction;
- (void)didUpdateSheetSize;
- (void)handleActionsEdit;
- (void)handleClose;
- (void)handleCollaborationOptions;
- (void)handleCustomHeaderButton;
- (void)handleInfoSuggestionPress:(id)press;
- (void)handleNext;
- (void)handleOptions;
- (void)performShareActivityProxy:(id)proxy activityIdentifier:(id)identifier;
- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category;
- (void)removePeopleSuggestionProxy:(id)proxy;
- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds;
- (void)userDefaultsViewController:(id)controller didFavoriteActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)userDefaultsViewController:(id)controller didSelectActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category disabled:(BOOL)disabled;
- (void)userDefaultsViewController:(id)controller didToggleActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category;
- (void)userDefaultsViewController:(id)controller didUpdateFavoritesProxies:(id)proxies activityCategory:(int64_t)category;
- (void)userDefaultsViewControllerDidDisappear:(id)disappear;
- (void)userDefaultsViewControllerDidRequestDismissal:(id)dismissal;
@end

@implementation ShareSheetUISession

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(ShareSheetUISession *)&v6 dealloc];
}

- (_TtC16SharingUIService19ShareSheetUISession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connectionInterrupted
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  selfCopy = self;
  if (v2)
  {
    [v2 invalidate];
  }

  sub_10001B71C();
}

- (void)dataSourceUpdatedWithSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_10001C450(configurationCopy);
}

- (void)performUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds activityCategory:(int64_t)category
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001C9B0(v8, v9, v10, category);
}

- (void)updateUserDefaultsWithFavoritesProxies:(id)proxies suggestionProxies:(id)suggestionProxies orderedUUIDs:(id)ds
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001D18C(v6, v7, v8);
}

- (void)removePeopleSuggestionProxy:(id)proxy
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001D88C(proxy);
  swift_unknownObjectRelease();
}

- (void)performShareActivityProxy:(id)proxy activityIdentifier:(id)identifier
{
  v7 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10001DC0C(proxy, v10);
  swift_unknownObjectRelease();

  sub_100009C18(v10, &qword_100046C08, &unk_10002E280);
}

- (void)handleActionsEdit
{
  selfCopy = self;
  sub_10001EB20();
}

- (void)handleOptions
{
  selfCopy = self;
  sub_10002026C("handle options", 1);
}

- (void)didUpdateSheetSize
{
  selfCopy = self;
  sub_10001ED2C();
}

- (void)handleClose
{
  selfCopy = self;
  sub_10002026C("handle close", 5);
}

- (void)handleNext
{
  selfCopy = self;
  sub_10002026C("handle next button", 7);
}

- (void)handleCollaborationOptions
{
  selfCopy = self;
  sub_10002026C("handle collaboration options", 2);
}

- (void)handleCustomHeaderButton
{
  selfCopy = self;
  sub_10002026C("handle custom header button", 0);
}

- (void)handleInfoSuggestionPress:(id)press
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001F150();
}

- (void)didSelectCollaborativeAction
{
  selfCopy = self;
  sub_10002026C("did select collaborative action", 3);
}

- (void)didSelectSendCopyAction
{
  selfCopy = self;
  sub_10002026C("did select send copy action", 4);
}

- (void)userDefaultsViewControllerDidRequestDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  selfCopy = self;
  sub_10002026C("userDefaultsViewControllerDidRequestDismissal", 13);
}

- (void)userDefaultsViewController:(id)controller didToggleActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_10002040C(v12, category);

  (*(v9 + 8))(v12, v8);
}

- (void)userDefaultsViewController:(id)controller didFavoriteActivity:(BOOL)activity withIdentifier:(id)identifier activityCategory:(int64_t)category
{
  activityCopy = activity;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1000206FC(activityCopy, v14, category);

  (*(v11 + 8))(v14, v10);
}

- (void)userDefaultsViewController:(id)controller didUpdateFavoritesProxies:(id)proxies activityCategory:(int64_t)category
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_1000209F4(v8, category);
}

- (void)userDefaultsViewController:(id)controller didSelectActivityWithIdentifier:(id)identifier activityCategory:(int64_t)category disabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  sub_100020C34(v14, category, disabledCopy);

  (*(v11 + 8))(v14, v10);
}

- (void)userDefaultsViewControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10001F888(disappearCopy);
}

@end
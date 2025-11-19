@interface ShareSheetUISession
- (_TtC16SharingUIService19ShareSheetUISession)init;
- (void)connectionInterrupted;
- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3;
- (void)dealloc;
- (void)didSelectCollaborativeAction;
- (void)didSelectSendCopyAction;
- (void)didUpdateSheetSize;
- (void)handleActionsEdit;
- (void)handleClose;
- (void)handleCollaborationOptions;
- (void)handleCustomHeaderButton;
- (void)handleInfoSuggestionPress:(id)a3;
- (void)handleNext;
- (void)handleOptions;
- (void)performShareActivityProxy:(id)a3 activityIdentifier:(id)a4;
- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6;
- (void)removePeopleSuggestionProxy:(id)a3;
- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5;
- (void)userDefaultsViewController:(id)a3 didFavoriteActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6;
- (void)userDefaultsViewController:(id)a3 didSelectActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5 disabled:(BOOL)a6;
- (void)userDefaultsViewController:(id)a3 didToggleActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5;
- (void)userDefaultsViewController:(id)a3 didUpdateFavoritesProxies:(id)a4 activityCategory:(int64_t)a5;
- (void)userDefaultsViewControllerDidDisappear:(id)a3;
- (void)userDefaultsViewControllerDidRequestDismissal:(id)a3;
@end

@implementation ShareSheetUISession

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService19ShareSheetUISession_slotManager);
  v5 = self;
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
  v3 = self;
  if (v2)
  {
    [v2 invalidate];
  }

  sub_10001B71C();
}

- (void)dataSourceUpdatedWithSessionConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001C450(v4);
}

- (void)performUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5 activityCategory:(int64_t)a6
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  sub_10001C9B0(v8, v9, v10, a6);
}

- (void)updateUserDefaultsWithFavoritesProxies:(id)a3 suggestionProxies:(id)a4 orderedUUIDs:(id)a5
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for UUID();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_10001D18C(v6, v7, v8);
}

- (void)removePeopleSuggestionProxy:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10001D88C(a3);
  swift_unknownObjectRelease();
}

- (void)performShareActivityProxy:(id)a3 activityIdentifier:(id)a4
{
  v7 = sub_1000025C4(&qword_100046C08, &unk_10002E280);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  if (a4)
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
  v13 = self;
  sub_10001DC0C(a3, v10);
  swift_unknownObjectRelease();

  sub_100009C18(v10, &qword_100046C08, &unk_10002E280);
}

- (void)handleActionsEdit
{
  v2 = self;
  sub_10001EB20();
}

- (void)handleOptions
{
  v2 = self;
  sub_10002026C("handle options", 1);
}

- (void)didUpdateSheetSize
{
  v2 = self;
  sub_10001ED2C();
}

- (void)handleClose
{
  v2 = self;
  sub_10002026C("handle close", 5);
}

- (void)handleNext
{
  v2 = self;
  sub_10002026C("handle next button", 7);
}

- (void)handleCollaborationOptions
{
  v2 = self;
  sub_10002026C("handle collaboration options", 2);
}

- (void)handleCustomHeaderButton
{
  v2 = self;
  sub_10002026C("handle custom header button", 0);
}

- (void)handleInfoSuggestionPress:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10001F150();
}

- (void)didSelectCollaborativeAction
{
  v2 = self;
  sub_10002026C("did select collaborative action", 3);
}

- (void)didSelectSendCopyAction
{
  v2 = self;
  sub_10002026C("did select send copy action", 4);
}

- (void)userDefaultsViewControllerDidRequestDismissal:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10002026C("userDefaultsViewControllerDidRequestDismissal", 13);
}

- (void)userDefaultsViewController:(id)a3 didToggleActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_10002040C(v12, a5);

  (*(v9 + 8))(v12, v8);
}

- (void)userDefaultsViewController:(id)a3 didFavoriteActivity:(BOOL)a4 withIdentifier:(id)a5 activityCategory:(int64_t)a6
{
  v7 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  sub_1000206FC(v7, v14, a6);

  (*(v11 + 8))(v14, v10);
}

- (void)userDefaultsViewController:(id)a3 didUpdateFavoritesProxies:(id)a4 activityCategory:(int64_t)a5
{
  sub_10000A598(0, &unk_1000479E0, _UIUserDefaultsActivityProxy_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  sub_1000209F4(v8, a5);
}

- (void)userDefaultsViewController:(id)a3 didSelectActivityWithIdentifier:(id)a4 activityCategory:(int64_t)a5 disabled:(BOOL)a6
{
  v6 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = self;
  sub_100020C34(v14, a5, v6);

  (*(v11 + 8))(v14, v10);
}

- (void)userDefaultsViewControllerDidDisappear:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001F888(v4);
}

@end
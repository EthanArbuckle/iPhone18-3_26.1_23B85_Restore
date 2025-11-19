@interface CRLBoardLibrary
- (_TtC8Freeform15CRLBoardLibrary)init;
- (void)dealloc;
- (void)highlightControllerHighlightsDidChange:(id)a3 highlights:(id)a4;
- (void)updateBoardMetadataForNotification:(id)a3;
- (void)updateStoreSnapshotForHierarchyNotification:(id)a3;
@end

@implementation CRLBoardLibrary

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  sub_1010BC5AC();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(CRLBoardLibrary *)&v5 dealloc];
}

- (_TtC8Freeform15CRLBoardLibrary)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)highlightControllerHighlightsDidChange:(id)a3 highlights:(id)a4
{
  type metadata accessor for CRLSharedHighlight();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  sub_101105F54(v6);
}

- (void)updateBoardMetadataForNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1010F132C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)updateStoreSnapshotForHierarchyNotification:(id)a3
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for MainActor();
  v15 = self;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v15;
  (*(v8 + 32))(&v18[v17], v10, v7);
  sub_10064191C(0, 0, v6, &unk_1014C5EE0, v18);

  (*(v8 + 8))(v13, v7);
}

@end
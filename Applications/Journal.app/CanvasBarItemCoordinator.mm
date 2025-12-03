@interface CanvasBarItemCoordinator
- (void)editingDidChange;
- (void)updateUndoRedoItems:(id)items;
@end

@implementation CanvasBarItemCoordinator

- (void)editingDidChange
{

  sub_1003CFBF4();
}

- (void)updateUndoRedoItems:(id)items
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  swift_retain_n();
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = self;
  sub_1003E9BBC(0, 0, v6, &unk_100953700, v13);

  (*(v8 + 8))(v10, v7);
}

@end
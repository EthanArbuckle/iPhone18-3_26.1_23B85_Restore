@interface RCVisibleEntitiesObserver
- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
@end

@implementation RCVisibleEntitiesObserver

- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = sub_1000C773C(&qword_1002D11F8);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v17);
  v19 = &v28[-v18];
  v20 = a3;
  swift_unknownObjectRetain();
  v21 = self;
  v22 = a5;
  v23 = a7;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (v22)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = type metadata accessor for IndexPath();
    (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
  }

  else
  {
    v25 = type metadata accessor for IndexPath();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  if (v23)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = type metadata accessor for IndexPath();
  (*(*(v27 - 8) + 56))(v16, v26, 1, v27);
  sub_10011A5DC(v20, v28, v19, a6, v16);

  sub_10011AA08(v16);
  sub_10011AA08(v19);
  sub_100014B64(v28);
}

@end
@interface RCVisibleEntitiesObserver
- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
@end

@implementation RCVisibleEntitiesObserver

- (_TtC10VoiceMemos25RCVisibleEntitiesObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  v12 = sub_1000C773C(&qword_1002D11F8);
  v14 = __chkstk_darwin(v12 - 8, v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v17);
  v19 = &v28[-v18];
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  pathCopy = path;
  indexPathCopy = indexPath;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (pathCopy)
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

  if (indexPathCopy)
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
  sub_10011A5DC(controllerCopy, v28, v19, type, v16);

  sub_10011AA08(v16);
  sub_10011AA08(v19);
  sub_100014B64(v28);
}

@end
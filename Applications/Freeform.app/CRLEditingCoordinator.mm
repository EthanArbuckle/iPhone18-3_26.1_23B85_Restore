@interface CRLEditingCoordinator
- (BOOL)canPerformUserAction;
- (BOOL)enableCollaboratorCursors;
- (BOOL)isInRealTimeSyncSession;
- (BOOL)isInSandboxiCloudEnvironment;
- (_TtC8Freeform13CRLBoardActor)boardActor;
- (_TtC8Freeform21CRLEditingCoordinator)init;
- (id)sourceContextForPasteboardController:(id)controller;
- (void)canPerformUserActionUsingBlock:(id)block;
- (void)currentUserGainedEditPermissions;
- (void)currentUserLostEditPermissions;
- (void)didProcessAuxiliaryRealTimeChanges;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)setBoardItemFactory:(id)factory;
- (void)setEnableCollaboratorCursors:(BOOL)cursors;
- (void)shareStateUpdatedWithShare:(id)share;
- (void)willProcessAuxiliaryRealTimeChanges;
- (void)willUndo;
@end

@implementation CRLEditingCoordinator

- (void)willUndo
{
  selfCopy = self;
  sub_10092CCE8();
}

- (void)willProcessAuxiliaryRealTimeChanges
{
  selfCopy = self;
  sub_100909C00();
}

- (void)didProcessAuxiliaryRealTimeChanges
{
  selfCopy = self;
  sub_10090A820();
}

- (_TtC8Freeform13CRLBoardActor)boardActor
{

  return v2;
}

- (void)setBoardItemFactory:(id)factory
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory) = factory;
  factoryCopy = factory;
}

- (BOOL)enableCollaboratorCursors
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setEnableCollaboratorCursors:(BOOL)cursors
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static Published.subscript.setter();
  sub_10092B3AC();
}

- (void)canPerformUserActionUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_10092E73C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)canPerformUserAction
{
  selfCopy = self;
  v3 = sub_10092C914();

  return v3;
}

- (BOOL)isInRealTimeSyncSession
{
  v3 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v6 + v7, v5, &qword_101A08DF0);
  v8 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  LOBYTE(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_10000CAAC(v5, &qword_101A08DF0);
  return v6;
}

- (BOOL)isInSandboxiCloudEnvironment
{
  if (qword_1019F1590 != -1)
  {
    swift_once();
  }

  return qword_101AD6520 == 2;
}

- (void)shareStateUpdatedWithShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_10092CE1C(share);
}

- (void)currentUserLostEditPermissions
{
  selfCopy = self;
  sub_10092D0BC();
}

- (void)currentUserGainedEditPermissions
{
  selfCopy = self;
  sub_10092D110();
}

- (_TtC8Freeform21CRLEditingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10092D5B4(v5);

  sub_100005070(&v7);
}

- (id)sourceContextForPasteboardController:(id)controller
{
  v3 = *(*(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v4 = type metadata accessor for CRLPasteboardSourceContext();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__store] = v3;
  v6 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
  *&v5[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__sourceContext] = v6;
  v11.receiver = v5;
  v11.super_class = v4;
  v7 = v3;
  v8 = v6;
  v9 = [(CRLEditingCoordinator *)&v11 init];

  return v9;
}

@end
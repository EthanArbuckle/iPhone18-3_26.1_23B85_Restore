@interface CRLEditingCoordinator
- (BOOL)canPerformUserAction;
- (BOOL)enableCollaboratorCursors;
- (BOOL)isInRealTimeSyncSession;
- (BOOL)isInSandboxiCloudEnvironment;
- (_TtC8Freeform13CRLBoardActor)boardActor;
- (_TtC8Freeform21CRLEditingCoordinator)init;
- (id)sourceContextForPasteboardController:(id)a3;
- (void)canPerformUserActionUsingBlock:(id)a3;
- (void)currentUserGainedEditPermissions;
- (void)currentUserLostEditPermissions;
- (void)didProcessAuxiliaryRealTimeChanges;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)setBoardItemFactory:(id)a3;
- (void)setEnableCollaboratorCursors:(BOOL)a3;
- (void)shareStateUpdatedWithShare:(id)a3;
- (void)willProcessAuxiliaryRealTimeChanges;
- (void)willUndo;
@end

@implementation CRLEditingCoordinator

- (void)willUndo
{
  v1 = a1;
  sub_10092CCE8();
}

- (void)willProcessAuxiliaryRealTimeChanges
{
  v2 = self;
  sub_100909C00();
}

- (void)didProcessAuxiliaryRealTimeChanges
{
  v2 = self;
  sub_10090A820();
}

- (_TtC8Freeform13CRLBoardActor)boardActor
{

  return v2;
}

- (void)setBoardItemFactory:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory) = a3;
  v3 = a3;
}

- (BOOL)enableCollaboratorCursors
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  return v5;
}

- (void)setEnableCollaboratorCursors:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
  sub_10092B3AC();
}

- (void)canPerformUserActionUsingBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_10092E73C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (BOOL)canPerformUserAction
{
  v2 = self;
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

- (void)shareStateUpdatedWithShare:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10092CE1C(a3);
}

- (void)currentUserLostEditPermissions
{
  v2 = self;
  sub_10092D0BC();
}

- (void)currentUserGainedEditPermissions
{
  v2 = self;
  sub_10092D110();
}

- (_TtC8Freeform21CRLEditingCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10092D5B4(v5);

  sub_100005070(&v7);
}

- (id)sourceContextForPasteboardController:(id)a3
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
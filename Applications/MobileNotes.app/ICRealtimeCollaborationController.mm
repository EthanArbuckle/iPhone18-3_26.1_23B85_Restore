@interface ICRealtimeCollaborationController
+ (BOOL)isRealtimeCollaborationEnabled;
+ (BOOL)isRealtimeCollaborationEnabledForNote:(id)a3;
- (BOOL)hasActiveSession;
- (ICRealtimeCollaborationController)init;
- (ICRealtimeCollaborationDelegate)delegate;
- (NSString)currentNoteIdentifier;
- (NSString)description;
- (void)configurePaperKitAttachmentViewIfNecessary:(id)a3;
- (void)dealloc;
- (void)removePaperKitMessengerForViewIfNecessary:(id)a3;
@end

@implementation ICRealtimeCollaborationController

+ (BOOL)isRealtimeCollaborationEnabled
{
  if (qword_1006BC7C8 != -1)
  {
    swift_once();
  }

  return byte_1006EF718;
}

+ (BOOL)isRealtimeCollaborationEnabledForNote:(id)a3
{
  v3 = a3;
  v4 = _s11MobileNotes31RealtimeCollaborationControllerC02iscD7Enabled3forSbSo6ICNoteC_tFZ_0(v3);

  return v4 & 1;
}

- (ICRealtimeCollaborationDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)hasActiveSession
{
  v3 = OBJC_IVAR___ICRealtimeCollaborationController_activeSession;
  swift_beginAccess();
  return *(self + v3) != 0;
}

- (NSString)currentNoteIdentifier
{
  v3 = type metadata accessor for EditNoteActivity();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___ICRealtimeCollaborationController_stateMachine;
  swift_beginAccess();
  v8 = type metadata accessor for FastSyncStateMachine();
  v9 = (*(*(v8 - 8) + 48))(self + v7, 1, v8);
  v10 = 0;
  if (!v9)
  {
    (*(v4 + 16))(v6, self + v7, v3);
    EditNoteActivity.noteID.getter();
    (*(v4 + 8))(v6, v3);
    v11 = String._bridgeToObjectiveC()();

    v10 = v11;
  }

  return v10;
}

- (void)dealloc
{
  if (*(self + OBJC_IVAR___ICRealtimeCollaborationController_watchForContextChangesTask))
  {
    ObjectType = swift_getObjectType();
    v4 = self;

    Task.cancel()();

    v5.receiver = v4;
    v5.super_class = ObjectType;
    [(ICRealtimeCollaborationController *)&v5 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)removePaperKitMessengerForViewIfNecessary:(id)a3
{
  v4 = a3;
  v5 = self;
  RealtimeCollaborationController.removePaperKitMessengerIfNecessary(for:)(v4);
}

- (void)configurePaperKitAttachmentViewIfNecessary:(id)a3
{
  v4 = a3;
  v5 = self;
  RealtimeCollaborationController.configurePaperKitAttachmentViewIfNecessary(_:)(v4);
}

- (NSString)description
{
  v2 = self;
  RealtimeCollaborationController.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (ICRealtimeCollaborationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
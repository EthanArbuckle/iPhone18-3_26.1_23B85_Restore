@interface ICFastSyncPresenceController
+ (uint64_t)setUp;
- (ICFastSyncPresenceController)init;
- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state;
- (void)realtimeCollaborationControllerSessionDidBegin:(id)begin;
- (void)realtimeCollaborationControllerSessionDidTerminate:(id)terminate;
- (void)realtimeCollaborationControllerSessionWillBegin:(id)begin;
@end

@implementation ICFastSyncPresenceController

+ (uint64_t)setUp
{
  v0 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  sharedContext = [objc_opt_self() sharedContext];
  if (sharedContext)
  {
    v11 = sharedContext;
    static Logger.fastSyncPresence.getter();
    v12 = objc_allocWithZone(type metadata accessor for FastSyncPresenceController(0));
    v13 = v11;
    v14 = sub_100006B04(v9, 0xD000000000000010, 0x800000010056E900, v13);

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v17 = v14;
    v18 = sub_100386B84(0, 0, v2, &unk_100545F20, v16);
    sub_1000073B4(v2, &qword_1006C2170);
    qword_1006C5668 = v18;
  }

  else
  {
    static Logger.fastSyncPresence.getter();
    v20 = static os_log_type_t.fault.getter();
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v22 = 136315650;
      v23 = StaticString.description.getter();
      v25 = sub_100009D88(v23, v24, &v27);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2048;
      *(v22 + 14) = 72;
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_100009D88(0xD00000000000004CLL, 0x800000010056E8B0, &v27);
      _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    return (*(v4 + 8))(v7, v3);
  }
}

- (ICFastSyncPresenceController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)realtimeCollaborationControllerSessionWillBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  FastSyncPresenceController.realtimeCollaborationControllerSessionWillBegin(_:)(beginCopy);
}

- (void)realtimeCollaborationControllerSessionDidBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  FastSyncPresenceController.realtimeCollaborationControllerSessionDidBegin(_:)(beginCopy);
}

- (void)realtimeCollaborationControllerSessionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  FastSyncPresenceController.realtimeCollaborationControllerSessionDidTerminate(_:)(terminateCopy);
}

- (void)realtimeCollaborationControllerDidChangeSelectionState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  FastSyncPresenceController.realtimeCollaborationControllerDidChangeSelectionState(_:)(stateCopy);
}

@end
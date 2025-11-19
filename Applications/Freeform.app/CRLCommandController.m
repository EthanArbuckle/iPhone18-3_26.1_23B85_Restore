@interface CRLCommandController
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)isGroupOpen;
- (BOOL)isProgressiveEnqueuingInCurrentGroupEnabled;
- (BOOL)isRealTimeSyncProgressiveEnqueuingInCurrentGroupEnabled;
- (BOOL)isRealTimeSyncProgressiveWithSimultaneousRealtimeIncomingInCurrentGroupEnabled;
- (NSString)currentGroupActionString;
- (NSString)redoActionString;
- (NSString)undoActionString;
- (_TtC8Freeform20CRLCommandController)init;
- (int64_t)groupingLevel;
- (int64_t)redoCount;
- (int64_t)undoCount;
- (void)_stepWatermarkContextIfNecessary;
- (void)closeGroupWithSelectionBehavior:(id)a3;
- (void)destroyOutermostCommandGroupOnClose;
- (void)enableProgressiveEnqueuingInCurrentGroup;
- (void)enableRealTimeSyncProgressiveEnqueuingInCurrentGroup;
- (void)enableRealTimeSyncProgressiveEnqueuingWithSimultaneousRealtimeIncomingInCurrentGroup;
- (void)enqueueCommand:(id)a3 withSelectionBehavior:(id)a4;
- (void)openGroupWithSelectionBehavior:(id)a3;
- (void)performBlockOnMainThreadWhenSafeToEnqueueCommands:(id)a3;
- (void)redo;
- (void)setCurrentGroupActionString:(id)a3;
- (void)undo;
@end

@implementation CRLCommandController

- (void)enqueueCommand:(id)a3 withSelectionBehavior:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100888700(v6, 0, a4, 4, 0);
}

- (void)performBlockOnMainThreadWhenSafeToEnqueueCommands:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100896574(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)undo
{
  v2 = self;
  sub_10088BDDC();
}

- (void)redo
{
  v2 = self;
  sub_10088C914();
}

- (BOOL)canUndo
{
  v2 = self;
  v3 = sub_10088D480();

  return v3;
}

- (BOOL)canRedo
{
  v2 = self;
  v3 = sub_10088D5AC();

  return v3;
}

- (int64_t)undoCount
{
  v2 = self;
  v3 = sub_10088D6DC();

  return v3;
}

- (int64_t)redoCount
{
  v2 = self;
  v3 = sub_10088D800();

  return v3;
}

- (NSString)undoActionString
{
  v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  sub_100D4D760(*(&self->super.isa + v3));
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (NSString)redoActionString
{
  v2 = self + OBJC_IVAR____TtC8Freeform20CRLCommandController_commandHistory;
  swift_beginAccess();
  sub_100D4D760(*(v2 + 1));
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)currentGroupActionString
{
  v2 = self;
  sub_10088DC9C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setCurrentGroupActionString:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10088DE20(v4, v6);
}

- (int64_t)groupingLevel
{
  v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (BOOL)isGroupOpen
{
  v3 = OBJC_IVAR____TtC8Freeform20CRLCommandController_openGroupDatas;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 > 0;
}

- (void)openGroupWithSelectionBehavior:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10088E3FC(a3);
}

- (void)closeGroupWithSelectionBehavior:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10088E600(a3);
}

- (void)destroyOutermostCommandGroupOnClose
{
  v2 = self;
  sub_10088ECA0();
}

- (void)enableProgressiveEnqueuingInCurrentGroup
{
  v2 = self;
  sub_10088F490();
}

- (BOOL)isProgressiveEnqueuingInCurrentGroupEnabled
{
  v2 = self;
  v3 = sub_10088FA60();

  return v3 & 1;
}

- (void)enableRealTimeSyncProgressiveEnqueuingInCurrentGroup
{
  v2 = self;
  sub_10088FB4C();
}

- (void)enableRealTimeSyncProgressiveEnqueuingWithSimultaneousRealtimeIncomingInCurrentGroup
{
  v2 = self;
  sub_100890138();
}

- (BOOL)isRealTimeSyncProgressiveEnqueuingInCurrentGroupEnabled
{
  v2 = self;
  v3 = sub_100890754();

  return v3 & 1;
}

- (BOOL)isRealTimeSyncProgressiveWithSimultaneousRealtimeIncomingInCurrentGroupEnabled
{
  v2 = self;
  v3 = sub_100890874();

  return v3 & 1;
}

- (void)_stepWatermarkContextIfNecessary
{
  v2 = self;
  sub_10089095C();
}

- (_TtC8Freeform20CRLCommandController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
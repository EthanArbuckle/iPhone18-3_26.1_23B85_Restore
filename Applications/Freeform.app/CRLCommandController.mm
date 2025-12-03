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
- (void)closeGroupWithSelectionBehavior:(id)behavior;
- (void)destroyOutermostCommandGroupOnClose;
- (void)enableProgressiveEnqueuingInCurrentGroup;
- (void)enableRealTimeSyncProgressiveEnqueuingInCurrentGroup;
- (void)enableRealTimeSyncProgressiveEnqueuingWithSimultaneousRealtimeIncomingInCurrentGroup;
- (void)enqueueCommand:(id)command withSelectionBehavior:(id)behavior;
- (void)openGroupWithSelectionBehavior:(id)behavior;
- (void)performBlockOnMainThreadWhenSafeToEnqueueCommands:(id)commands;
- (void)redo;
- (void)setCurrentGroupActionString:(id)string;
- (void)undo;
@end

@implementation CRLCommandController

- (void)enqueueCommand:(id)command withSelectionBehavior:(id)behavior
{
  commandCopy = command;
  behaviorCopy = behavior;
  selfCopy = self;
  sub_100888700(commandCopy, 0, behavior, 4, 0);
}

- (void)performBlockOnMainThreadWhenSafeToEnqueueCommands:(id)commands
{
  v4 = _Block_copy(commands);
  _Block_copy(v4);
  selfCopy = self;
  sub_100896574(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)undo
{
  selfCopy = self;
  sub_10088BDDC();
}

- (void)redo
{
  selfCopy = self;
  sub_10088C914();
}

- (BOOL)canUndo
{
  selfCopy = self;
  v3 = sub_10088D480();

  return v3;
}

- (BOOL)canRedo
{
  selfCopy = self;
  v3 = sub_10088D5AC();

  return v3;
}

- (int64_t)undoCount
{
  selfCopy = self;
  v3 = sub_10088D6DC();

  return v3;
}

- (int64_t)redoCount
{
  selfCopy = self;
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
  selfCopy = self;
  sub_10088DC9C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setCurrentGroupActionString:(id)string
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
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

- (void)openGroupWithSelectionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  selfCopy = self;
  sub_10088E3FC(behavior);
}

- (void)closeGroupWithSelectionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  selfCopy = self;
  sub_10088E600(behavior);
}

- (void)destroyOutermostCommandGroupOnClose
{
  selfCopy = self;
  sub_10088ECA0();
}

- (void)enableProgressiveEnqueuingInCurrentGroup
{
  selfCopy = self;
  sub_10088F490();
}

- (BOOL)isProgressiveEnqueuingInCurrentGroupEnabled
{
  selfCopy = self;
  v3 = sub_10088FA60();

  return v3 & 1;
}

- (void)enableRealTimeSyncProgressiveEnqueuingInCurrentGroup
{
  selfCopy = self;
  sub_10088FB4C();
}

- (void)enableRealTimeSyncProgressiveEnqueuingWithSimultaneousRealtimeIncomingInCurrentGroup
{
  selfCopy = self;
  sub_100890138();
}

- (BOOL)isRealTimeSyncProgressiveEnqueuingInCurrentGroupEnabled
{
  selfCopy = self;
  v3 = sub_100890754();

  return v3 & 1;
}

- (BOOL)isRealTimeSyncProgressiveWithSimultaneousRealtimeIncomingInCurrentGroupEnabled
{
  selfCopy = self;
  v3 = sub_100890874();

  return v3 & 1;
}

- (void)_stepWatermarkContextIfNecessary
{
  selfCopy = self;
  sub_10089095C();
}

- (_TtC8Freeform20CRLCommandController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface SRAutoBugCaptureManagerBridge
- (SRAutoBugCaptureManagerBridge)init;
- (SRAutoBugCaptureManagerBridge)initWithSessionDuration:(double)duration;
- (void)generateSnapshotWithErrorType:(id)type errorSubType:(id)subType subTypeContext:(id)context completion:(id)completion;
@end

@implementation SRAutoBugCaptureManagerBridge

- (SRAutoBugCaptureManagerBridge)initWithSessionDuration:(double)duration
{
  type metadata accessor for AutoBugCaptureManager();
  *(&self->super.isa + OBJC_IVAR___SRAutoBugCaptureManagerBridge_autoBugCaptureManager) = AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AutoBugCaptureManagerBridge();
  return [(SRAutoBugCaptureManagerBridge *)&v5 init];
}

- (void)generateSnapshotWithErrorType:(id)type errorSubType:(id)subType subTypeContext:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  selfCopy = self;
  dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();
}

- (SRAutoBugCaptureManagerBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
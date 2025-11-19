@interface SRAutoBugCaptureManagerBridge
- (SRAutoBugCaptureManagerBridge)init;
- (SRAutoBugCaptureManagerBridge)initWithSessionDuration:(double)a3;
- (void)generateSnapshotWithErrorType:(id)a3 errorSubType:(id)a4 subTypeContext:(id)a5 completion:(id)a6;
@end

@implementation SRAutoBugCaptureManagerBridge

- (SRAutoBugCaptureManagerBridge)initWithSessionDuration:(double)a3
{
  type metadata accessor for AutoBugCaptureManager();
  *(&self->super.isa + OBJC_IVAR___SRAutoBugCaptureManagerBridge_autoBugCaptureManager) = AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)();
  v5.receiver = self;
  v5.super_class = type metadata accessor for AutoBugCaptureManagerBridge();
  return [(SRAutoBugCaptureManagerBridge *)&v5 init];
}

- (void)generateSnapshotWithErrorType:(id)a3 errorSubType:(id)a4 subTypeContext:(id)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v7;
  v8 = self;
  dispatch thunk of AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)();
}

- (SRAutoBugCaptureManagerBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface OnDemandAudioDiagnosticMonitorController
- (void)cancel;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation OnDemandAudioDiagnosticMonitorController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100001484(inputs, responder);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  selfCopy = self;
  sub_1000018F0();
}

- (void)cancel
{
  selfCopy = self;
  sub_10000401C(1u);
}

- (void)teardown
{
  v2 = *&self->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient];
  selfCopy = self;
  [v2 invalidate];
  if (*&selfCopy->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder])
  {
    v3 = *&selfCopy->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder];
    [swift_unknownObjectRetain() clearAllowSessionAccessoryDisconnect];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end
@interface OnDemandAudioDiagnosticMonitorController
- (void)cancel;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation OnDemandAudioDiagnosticMonitorController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_100001484(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  v2 = self;
  sub_1000018F0();
}

- (void)cancel
{
  v2 = self;
  sub_10000401C(1u);
}

- (void)teardown
{
  v2 = *&self->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient];
  v4 = self;
  [v2 invalidate];
  if (*&v4->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder])
  {
    v3 = *&v4->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder];
    [swift_unknownObjectRetain() clearAllowSessionAccessoryDisconnect];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end
@interface OnDemandAudioDiagnosticTriggerController
- (OnDemandAudioDiagnosticTriggerController)init;
- (void)cancel;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation OnDemandAudioDiagnosticTriggerController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = self;
  sub_10000134C(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  v2 = self;
  sub_100001498();
}

- (void)cancel
{
  v2 = self;
  sub_10000225C(1u);
}

- (OnDemandAudioDiagnosticTriggerController)init
{
  v3 = OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_hearingModeClient;
  *&self->DKDiagnosticController_opaque[v3] = [objc_allocWithZone(HMServiceClient) init];
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs] = 0;
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder] = 0;
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_retryCount] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for OnDemandAudioDiagnosticTriggerController();
  return [(OnDemandAudioDiagnosticTriggerController *)&v5 init];
}

@end
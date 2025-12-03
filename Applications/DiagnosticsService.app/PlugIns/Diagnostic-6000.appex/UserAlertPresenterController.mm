@interface UserAlertPresenterController
- (UserAlertPresenterController)init;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation UserAlertPresenterController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100001710(inputs, responder);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)start
{
  selfCopy = self;
  sub_1000019BC();
}

- (UserAlertPresenterController)init
{
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___UserAlertPresenterController_inputs] = 0;
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___UserAlertPresenterController_responder] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UserAlertPresenterController();
  return [(UserAlertPresenterController *)&v3 init];
}

@end
@interface UnpairSessionAccessoryController
- (UnpairSessionAccessoryController)init;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
@end

@implementation UnpairSessionAccessoryController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([responder respondsToSelector:"unpairSessionAccessoryOnTestCompletion"])
  {
    v6 = *&selfCopy->DKDiagnosticController_opaque[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder];
    *&selfCopy->DKDiagnosticController_opaque[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder] = responder;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (void)start
{
  selfCopy = self;
  sub_10000126C();
}

- (UnpairSessionAccessoryController)init
{
  *&self->DKDiagnosticController_opaque[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for UnpairSessionAccessoryController();
  return [(UnpairSessionAccessoryController *)&v3 init];
}

@end
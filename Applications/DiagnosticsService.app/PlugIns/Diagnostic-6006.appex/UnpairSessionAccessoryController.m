@interface UnpairSessionAccessoryController
- (UnpairSessionAccessoryController)init;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
@end

@implementation UnpairSessionAccessoryController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  if ([a4 respondsToSelector:"unpairSessionAccessoryOnTestCompletion"])
  {
    v6 = *&v7->DKDiagnosticController_opaque[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder];
    *&v7->DKDiagnosticController_opaque[OBJC_IVAR___UnpairSessionAccessoryController_accessoryResponder] = a4;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (void)start
{
  v2 = self;
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
@interface CRLiOSPrintCoordinator
- (id)appOptionsViewController;
- (void)printInteractionControllerDidFinishJob:(id)job;
@end

@implementation CRLiOSPrintCoordinator

- (void)printInteractionControllerDidFinishJob:(id)job
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_printInteractionController) = 0;
  selfCopy = self;

  *(&selfCopy->super.isa + OBJC_IVAR____TtC8Freeform22CRLiOSPrintCoordinator_isPresenting) = 0;
}

- (id)appOptionsViewController
{
  v2 = sub_1008BC200();

  return v2;
}

@end
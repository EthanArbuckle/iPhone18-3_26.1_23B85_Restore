@interface CRLiOSAlignmentToolsController
- (UIViewController)viewController;
- (_TtC8Freeform30CRLiOSAlignmentToolsController)init;
- (_TtC8Freeform30CRLiOSAlignmentToolsController)initWithDelegate:(id)delegate;
- (void)dismissAlignmentTools;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setViewController:(id)controller;
@end

@implementation CRLiOSAlignmentToolsController

- (_TtC8Freeform30CRLiOSAlignmentToolsController)initWithDelegate:(id)delegate
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController) = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSAlignmentToolsController();
  return [(CRLiOSAlignmentToolsController *)&v5 init];
}

- (UIViewController)viewController
{
  selfCopy = self;
  v3 = sub_100763C28();

  return v3;
}

- (void)setViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController) = controller;
  controllerCopy = controller;
}

- (void)dismissAlignmentTools
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alignmentToolsControllerShouldDismiss:self];

    swift_unknownObjectRelease();
  }
}

- (_TtC8Freeform30CRLiOSAlignmentToolsController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong userDismissedAlignmentToolsController:self];

    swift_unknownObjectRelease();
  }
}

@end
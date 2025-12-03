@interface ExportViewController
- (_TtC11FTMInternal20ExportViewController)initWithCoder:(id)coder;
- (_TtC11FTMInternal20ExportViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapDismissWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation ExportViewController

- (_TtC11FTMInternal20ExportViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___exportOptionsLabel) = 0;
  v4 = OBJC_IVAR____TtC11FTMInternal20ExportViewController_dismissButton;
  *(&self->super.super.super.super.isa + v4) = sub_10026C574();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal20ExportViewController____lazy_storage___loadingView) = 0;
  v5 = OBJC_IVAR____TtC11FTMInternal20ExportViewController_containerView;
  *(&self->super.super.super.super.isa + v5) = [objc_allocWithZone(UIView) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10026CC58();
}

- (void)didTapDismissWithSender:(id)sender
{
  v4 = objc_allocWithZone(UIImpactFeedbackGenerator);
  selfCopy = self;
  v5 = [v4 initWithStyle:1];
  [v5 impactOccurred];
  [(ExportViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC11FTMInternal20ExportViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
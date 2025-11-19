@interface APUISystemApertureAccessoryViewController
- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithCoder:(id)a3;
- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
@end

@implementation APUISystemApertureAccessoryViewController

- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController;
  v4 = *(v2 + OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController);
  v5 = self;
  [v4 willMoveToParentViewController:v5];
  [(APUISystemApertureAccessoryViewController *)v5 addChildViewController:*(v2 + v3)];
  [(APUISystemApertureAccessoryViewController *)v5 setView:v2];
  [*(v2 + v3) didMoveToParentViewController:v5];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  swift_unknownObjectRetain();
  v6 = self;
  v5 = [(APUISystemApertureAccessoryViewController *)v6 parentViewController];
  [v5 preferredContentSizeDidChangeForChildContentContainer:a3];

  swift_unknownObjectRelease();
}

- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
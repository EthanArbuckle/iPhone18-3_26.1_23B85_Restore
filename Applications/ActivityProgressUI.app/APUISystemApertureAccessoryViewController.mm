@interface APUISystemApertureAccessoryViewController
- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithCoder:(id)coder;
- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation APUISystemApertureAccessoryViewController

- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  [v4 willMoveToParentViewController:selfCopy];
  [(APUISystemApertureAccessoryViewController *)selfCopy addChildViewController:*(v2 + v3)];
  [(APUISystemApertureAccessoryViewController *)selfCopy setView:v2];
  [*(v2 + v3) didMoveToParentViewController:selfCopy];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  parentViewController = [(APUISystemApertureAccessoryViewController *)selfCopy parentViewController];
  [parentViewController preferredContentSizeDidChangeForChildContentContainer:container];

  swift_unknownObjectRelease();
}

- (_TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
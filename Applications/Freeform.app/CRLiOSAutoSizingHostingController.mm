@interface CRLiOSAutoSizingHostingController
- (UINavigationItem)navigationItem;
- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithCoder:(id)coder;
- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation CRLiOSAutoSizingHostingController

- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_lastLayoutSize);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_didChangeSize) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_pendingResizeAnimator) = 0;
  v4 = OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_scrollTargets;
  *(&self->super.super.super.isa + v4) = sub_100BD7F38(_swiftEmptyArrayStorage);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  selfCopy = self;
  v4 = [v3 init];
  [(CRLiOSAutoSizingHostingController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  CRLiOSAutoSizingHostingController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CRLiOSAutoSizingHostingController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CRLiOSAutoSizingHostingController.viewWillLayoutSubviews()();
}

- (UINavigationItem)navigationItem
{
  navigationItem = [*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController) navigationItem];

  return navigationItem;
}

- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
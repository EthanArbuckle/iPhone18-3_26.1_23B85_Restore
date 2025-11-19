@interface CRLiOSAutoSizingHostingController
- (UINavigationItem)navigationItem;
- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithCoder:(id)a3;
- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CRLiOSAutoSizingHostingController

- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithCoder:(id)a3
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
  v5 = self;
  v4 = [v3 init];
  [(CRLiOSAutoSizingHostingController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  CRLiOSAutoSizingHostingController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CRLiOSAutoSizingHostingController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  CRLiOSAutoSizingHostingController.viewWillLayoutSubviews()();
}

- (UINavigationItem)navigationItem
{
  v2 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSAutoSizingHostingController_hostingController) navigationItem];

  return v2;
}

- (_TtC8Freeform33CRLiOSAutoSizingHostingController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
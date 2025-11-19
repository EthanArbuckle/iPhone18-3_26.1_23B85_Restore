@interface CRLiOSCompactScenesNavigatorViewController
+ (BOOL)scenesNavigatorHasFixedPositionWith:(id)a3;
- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithCoder:(id)a3;
- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismiss;
- (void)selectionPathDidChangeWithNotification:(id)a3;
- (void)teardown;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CRLiOSCompactScenesNavigatorViewController

- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform42CRLiOSCompactScenesNavigatorViewController_contentViewSize);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)teardown
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1009FFBB8();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSCompactScenesNavigatorViewController();
  v2 = v3.receiver;
  [(CRLiOSCompactScenesNavigatorViewController *)&v3 viewDidLayoutSubviews];
  sub_100A00500();
}

+ (BOOL)scenesNavigatorHasFixedPositionWith:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  if ([v4 crl_phoneUI])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 crl_isCompactWidth];
  }

  return v6;
}

- (void)dismiss
{
  v4 = self;
  v2 = [(CRLiOSCompactScenesNavigatorViewController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 removeFromSuperview];

    [(CRLiOSCompactScenesNavigatorViewController *)v4 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8Freeform42CRLiOSCompactScenesNavigatorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)selectionPathDidChangeWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100A00908(v4);
}

@end
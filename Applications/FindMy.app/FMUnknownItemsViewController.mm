@interface FMUnknownItemsViewController
- (_TtC6FindMy28FMUnknownItemsViewController)initWithCoder:(id)a3;
- (_TtC6FindMy28FMUnknownItemsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMUnknownItemsViewController

- (_TtC6FindMy28FMUnknownItemsViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_selectionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_deviceSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_shownLandingView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10043266C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004328D8(a3);
}

- (_TtC6FindMy28FMUnknownItemsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
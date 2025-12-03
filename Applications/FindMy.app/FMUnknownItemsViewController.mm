@interface FMUnknownItemsViewController
- (_TtC6FindMy28FMUnknownItemsViewController)initWithCoder:(id)coder;
- (_TtC6FindMy28FMUnknownItemsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMUnknownItemsViewController

- (_TtC6FindMy28FMUnknownItemsViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_selectionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_deviceSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy28FMUnknownItemsViewController_shownLandingView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10043266C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004328D8(disappear);
}

- (_TtC6FindMy28FMUnknownItemsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
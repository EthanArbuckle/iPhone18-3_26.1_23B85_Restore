@interface FMSideBarViewController
- (_TtC6FindMy23FMSideBarViewController)initWithCoder:(id)a3;
- (_TtC6FindMy23FMSideBarViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)indexChangedWithSender:(id)a3;
- (void)indexNotChangedWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation FMSideBarViewController

- (_TtC6FindMy23FMSideBarViewController)initWithCoder:(id)a3
{
  *&self->contentDelegate[OBJC_IVAR____TtC6FindMy23FMSideBarViewController_contentDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_segmentedControl) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_topConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMSideBarViewController_devicesSubscription) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10025AE30();
}

- (void)indexChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10025BAC8(v4);
}

- (void)indexNotChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10025BDB4(v4);
}

- (_TtC6FindMy23FMSideBarViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
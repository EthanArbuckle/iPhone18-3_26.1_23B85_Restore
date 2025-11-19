@interface FMItemDetailCardViewController
- (_TtC6FindMy30FMItemDetailCardViewController)initWithCoder:(id)a3;
- (_TtC6FindMy30FMItemDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleCloseAction;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMItemDetailCardViewController

- (_TtC6FindMy30FMItemDetailCardViewController)initWithCoder:(id)a3
{
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_selectionSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_isSharedLostItem) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy30FMItemDetailCardViewController_alertController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003E5D4C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003E61B8(a3);
}

- (void)handleCloseAction
{
  v2 = self;
  sub_1003E6CF8();
}

- (_TtC6FindMy30FMItemDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface FMPersonDetailCardViewController
- (_TtC6FindMy32FMPersonDetailCardViewController)initWithCoder:(id)a3;
- (_TtC6FindMy32FMPersonDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMPersonDetailCardViewController

- (_TtC6FindMy32FMPersonDetailCardViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription) = 0;
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1004DD770(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1004DDE1C(a3);
}

- (_TtC6FindMy32FMPersonDetailCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
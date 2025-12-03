@interface FMPersonDetailCardViewController
- (_TtC6FindMy32FMPersonDetailCardViewController)initWithCoder:(id)coder;
- (_TtC6FindMy32FMPersonDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMPersonDetailCardViewController

- (_TtC6FindMy32FMPersonDetailCardViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_conditionsSubscription) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMPersonDetailCardViewController_selectionSubscription) = 0;
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1004DD770(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1004DDE1C(disappear);
}

- (_TtC6FindMy32FMPersonDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
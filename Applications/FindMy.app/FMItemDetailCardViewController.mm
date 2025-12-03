@interface FMItemDetailCardViewController
- (_TtC6FindMy30FMItemDetailCardViewController)initWithCoder:(id)coder;
- (_TtC6FindMy30FMItemDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleCloseAction;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMItemDetailCardViewController

- (_TtC6FindMy30FMItemDetailCardViewController)initWithCoder:(id)coder
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

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003E5D4C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003E61B8(disappear);
}

- (void)handleCloseAction
{
  selfCopy = self;
  sub_1003E6CF8();
}

- (_TtC6FindMy30FMItemDetailCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
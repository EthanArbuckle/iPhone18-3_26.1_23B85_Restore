@interface FMUTCardViewController
- (_TtC6FindMy22FMUTCardViewController)initWithCoder:(id)coder;
- (_TtC6FindMy22FMUTCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleCloseAction;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMUTCardViewController

- (_TtC6FindMy22FMUTCardViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_selectionSubscription) = 0;
  v4 = OBJC_IVAR____TtC6FindMy22FMUTCardViewController_returnSelection;
  v5 = type metadata accessor for FMSelectedSection();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_bypassWelcomeScreen) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003E42C0(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003E4418(disappear);
}

- (void)handleCloseAction
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMUTCardViewController_content))
  {
    selfCopy = self;
    sub_10024D71C();
  }
}

- (_TtC6FindMy22FMUTCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface LoggingCardViewController
- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)infoButtonTapped:(id)tapped;
- (void)respondToContentSizeChanges;
- (void)viewDidLoad;
@end

@implementation LoggingCardViewController

- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController____lazy_storage___footerView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_alphaValue) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_footerHeightConstraint) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_flashedScrollIndicatorOnLoad) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DEBF3B8();
}

- (void)respondToContentSizeChanges
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
  selfCopy = self;
  [v2 contentSize];
  sub_29DEBEAEC(v3, v4);
}

- (void)infoButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_29DEC03D4();
}

- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
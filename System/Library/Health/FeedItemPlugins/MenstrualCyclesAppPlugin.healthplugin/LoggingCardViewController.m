@interface LoggingCardViewController
- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)infoButtonTapped:(id)a3;
- (void)respondToContentSizeChanges;
- (void)viewDidLoad;
@end

@implementation LoggingCardViewController

- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_29DEBF3B8();
}

- (void)respondToContentSizeChanges
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25LoggingCardViewController_tableView);
  v5 = self;
  [v2 contentSize];
  sub_29DEBEAEC(v3, v4);
}

- (void)infoButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DEC03D4();
}

- (_TtC24MenstrualCyclesAppPlugin25LoggingCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
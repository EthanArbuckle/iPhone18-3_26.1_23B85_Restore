@interface AssessmentQRCodeViewController
- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AssessmentQRCodeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000B5DCC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B6594(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000B66A0(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentQRCodeViewController();
  v4 = v5.receiver;
  [(AssessmentQRCodeViewController *)&v5 viewWillDisappear:disappearCopy];
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting) != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }
}

- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
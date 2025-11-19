@interface AssessmentQRCodeViewController
- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AssessmentQRCodeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000B5DCC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B6594(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000B66A0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssessmentQRCodeViewController();
  v4 = v5.receiver;
  [(AssessmentQRCodeViewController *)&v5 viewWillDisappear:v3];
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting) != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }
}

- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics30AssessmentQRCodeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface SelfServiceSuitePickerViewController
- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SelfServiceSuitePickerViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v2 = v4.receiver;
  [(SelfServiceBaseNavigationController *)&v4 viewDidLoad];
  sub_1000B2984();
  v3 = [v2 contentView];
  [v3 addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView]];

  sub_1000B2B44();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v4 = v5.receiver;
  [(SelfServiceSuitePickerViewController *)&v5 viewDidAppear:v3];
  *(*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C3D60;
  swift_unknownObjectWeakAssign();
  [*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView] invalidateIntrinsicContentSize];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v4 = v5.receiver;
  [(SelfServiceSuitePickerViewController *)&v5 viewWillDisappear:v3];
  *(*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
}

- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
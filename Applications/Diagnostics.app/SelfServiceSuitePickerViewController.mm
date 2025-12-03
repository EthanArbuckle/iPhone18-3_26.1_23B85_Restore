@interface SelfServiceSuitePickerViewController
- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SelfServiceSuitePickerViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v2 = v4.receiver;
  [(SelfServiceBaseNavigationController *)&v4 viewDidLoad];
  sub_1000B2984();
  contentView = [v2 contentView];
  [contentView addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView]];

  sub_1000B2B44();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v4 = v5.receiver;
  [(SelfServiceSuitePickerViewController *)&v5 viewDidAppear:appearCopy];
  *(*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C3D60;
  swift_unknownObjectWeakAssign();
  [*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_tableView] invalidateIntrinsicContentSize];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceSuitePickerViewController();
  v4 = v5.receiver;
  [(SelfServiceSuitePickerViewController *)&v5 viewWillDisappear:disappearCopy];
  *(*&v4[OBJC_IVAR____TtC11Diagnostics36SelfServiceSuitePickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
}

- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics36SelfServiceSuitePickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
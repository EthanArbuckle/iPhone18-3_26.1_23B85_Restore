@interface SelfServiceDestinationPickerViewController
- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SelfServiceDestinationPickerViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  v2 = v5.receiver;
  [(SelfServiceDestinationPickerViewController *)&v5 viewDidLoad];
  sub_1001338E8();
  contentView = [v2 contentView];
  [contentView addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView]];

  buttonTray = [v2 buttonTray];
  [buttonTray addButton:*&v2[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton]];

  sub_1001340A0();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1001333B4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100133804(disappear);
}

- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1001344E0(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_100135648();

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1001357CC();

  (*(v7 + 8))(v9, v6);
}

@end
@interface SelfServiceDestinationPickerViewController
- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SelfServiceDestinationPickerViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  v2 = v5.receiver;
  [(SelfServiceDestinationPickerViewController *)&v5 viewDidLoad];
  sub_1001338E8();
  v3 = [v2 contentView];
  [v3 addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView]];

  v4 = [v2 buttonTray];
  [v4 addButton:*&v2[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton]];

  sub_1001340A0();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1001333B4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100133804(a3);
}

- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics42SelfServiceDestinationPickerViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1001344E0(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100135648();

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_1001357CC();

  (*(v7 + 8))(v9, v6);
}

@end
@interface DeviceSelector
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)continueConsent;
- (void)tryAgain;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation DeviceSelector

- (void)viewDidLoad
{
  v2 = self;
  sub_1000BDFB4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1000BE490();
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v7 viewWillAppear:v3];
  v5 = *&v4->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
  if (v5)
  {
    v6 = v5;
    [v6 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1000C1940();
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  v5.receiver = v4;
  v5.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v5 viewDidDisappear:v3];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1000C3BF0(v6, a4);

  return v8;
}

- (void)continueConsent
{
  v2 = self;
  sub_1000C4224();
}

- (void)tryAgain
{
  v2 = self;
  sub_1000C171C();
  sub_1000BE490();
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
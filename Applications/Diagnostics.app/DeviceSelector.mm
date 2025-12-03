@interface DeviceSelector
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)continueConsent;
- (void)tryAgain;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation DeviceSelector

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000BDFB4();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_1000BE490();
  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v7 viewWillAppear:appearCopy];
  v5 = *&selfCopy->OBWelcomeController_opaque[OBJC_IVAR____TtC11Diagnostics14DeviceSelector_devicesTableView];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_1000C1940();
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.stopDeviceDiscovery()();
  }

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DeviceSelector();
  [(DeviceSelector *)&v5 viewDidDisappear:disappearCopy];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1000C3BF0(viewCopy, section);

  return v8;
}

- (void)continueConsent
{
  selfCopy = self;
  sub_1000C4224();
}

- (void)tryAgain
{
  selfCopy = self;
  sub_1000C171C();
  sub_1000BE490();
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics14DeviceSelector)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
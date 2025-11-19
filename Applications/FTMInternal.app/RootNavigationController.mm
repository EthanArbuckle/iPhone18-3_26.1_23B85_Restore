@interface RootNavigationController
- (_TtC11FTMInternal24RootNavigationController)initWithCoder:(id)a3;
- (_TtC11FTMInternal24RootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11FTMInternal24RootNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11FTMInternal24RootNavigationController)initWithRootViewController:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)firstTimerMetricRefresh;
- (void)viewDidLoad;
@end

@implementation RootNavigationController

- (_TtC11FTMInternal24RootNavigationController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10022F8E4();
}

- (void)firstTimerMetricRefresh
{
  v2 = self;
  sub_10022FF18();
}

- (void)dealloc
{
  v2 = qword_100374F90;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)();
  v4.receiver = v3;
  v4.super_class = type metadata accessor for RootNavigationController();
  [(RootNavigationController *)&v4 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for RootNavigationController();
  [(RootNavigationController *)&v2 didReceiveMemoryWarning];
}

- (_TtC11FTMInternal24RootNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11FTMInternal24RootNavigationController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11FTMInternal24RootNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
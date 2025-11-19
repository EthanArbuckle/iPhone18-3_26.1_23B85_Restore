@interface CarReportIncidentViewController
- (NSArray)incidentLayoutItems;
- (_TtC4Maps31CarReportIncidentViewController)initWithCoder:(id)a3;
- (_TtC4Maps31CarReportIncidentViewController)initWithDelegate:(id)a3;
- (_TtC4Maps31CarReportIncidentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps39CarReportIncidentViewControllerDelegate_)delegate;
- (void)didSelectWithItem:(id)a3;
- (void)setIncidentLayoutItems:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarReportIncidentViewController

- (_TtP4Maps39CarReportIncidentViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps31CarReportIncidentViewController)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v3 = sub_10030FA90();
  swift_unknownObjectRelease();
  return v3;
}

- (_TtC4Maps31CarReportIncidentViewController)initWithCoder:(id)a3
{
  v4 = sub_1000CE6B8(&qword_101919440);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC4Maps31CarReportIncidentViewController__incidentLayoutItems;
  v10[1] = _swiftEmptyArrayStorage;
  sub_1000CE6B8(&qword_101919438);
  Published.init(initialValue:)();
  (*(v5 + 32))(self + v8, v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(CarReportIncidentViewController *)&v7 viewWillAppear:v3];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 currentIncidentsLayout];

  sub_100014C84(0, &qword_101919470);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.setter();
}

- (NSArray)incidentLayoutItems
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  static Published.subscript.getter();

  sub_100014C84(0, &qword_101919470);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (void)setIncidentLayoutItems:(id)a3
{
  sub_100014C84(0, &qword_101919470);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  static Published.subscript.setter();
}

- (void)didSelectWithItem:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong reportIncidentViewController:self didSelectReport:a3];

    swift_unknownObjectRelease();
  }
}

- (_TtC4Maps31CarReportIncidentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
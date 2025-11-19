@interface TrafficIncidentContaineeViewController
- (_TtC4Maps38TrafficIncidentContaineeViewController)init;
- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation TrafficIncidentContaineeViewController

- (_TtC4Maps38TrafficIncidentContaineeViewController)init
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v4 = objc_allocWithZone(type metadata accessor for TrafficIncidentViewModel());
  *&v3[OBJC_IVAR____TtC4Maps38TrafficIncidentContaineeViewController_viewModel] = sub_10034C598(0, 2);
  v7.receiver = v3;
  v7.super_class = ObjectType;
  v5 = [(MapsHostingContaineeViewController *)&v7 initWithNibName:0 bundle:0];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002B8F5C();
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v4 = self;
  sub_1002B90B8(a3);
}

- (void)willResignCurrent:(BOOL)a3
{
  v4 = self;
  sub_1002B922C(a3);
}

- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
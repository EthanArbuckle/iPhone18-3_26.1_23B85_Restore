@interface TrafficIncidentContaineeViewController
- (_TtC4Maps38TrafficIncidentContaineeViewController)init;
- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithCoder:(id)coder;
- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willResignCurrent:(BOOL)current;
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

- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002B8F5C();
}

- (void)willBecomeCurrent:(BOOL)current
{
  selfCopy = self;
  sub_1002B90B8(current);
}

- (void)willResignCurrent:(BOOL)current
{
  selfCopy = self;
  sub_1002B922C(current);
}

- (_TtC4Maps38TrafficIncidentContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
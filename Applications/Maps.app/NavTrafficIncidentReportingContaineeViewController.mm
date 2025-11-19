@interface NavTrafficIncidentReportingContaineeViewController
- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithIncidentReportingDelegate:(id)a3;
- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps58NavTrafficIncidentReportingContaineeViewControllerDelegate_)incidentReportingDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NavTrafficIncidentReportingContaineeViewController

- (_TtP4Maps58NavTrafficIncidentReportingContaineeViewControllerDelegate_)incidentReportingDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithIncidentReportingDelegate:(id)a3
{
  swift_unknownObjectRetain();
  sub_100381D9C();
  v4 = v3;
  swift_unknownObjectRelease();
  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidLoad];
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100380244(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1003803F8(a3);
}

- (double)heightForLayout:(unint64_t)a3
{
  v4 = self;
  sub_100380784(a3);
  v6 = v5;

  return v6;
}

- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
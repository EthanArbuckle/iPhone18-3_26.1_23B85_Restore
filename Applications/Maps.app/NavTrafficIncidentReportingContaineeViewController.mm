@interface NavTrafficIncidentReportingContaineeViewController
- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithIncidentReportingDelegate:(id)delegate;
- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps58NavTrafficIncidentReportingContaineeViewControllerDelegate_)incidentReportingDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavTrafficIncidentReportingContaineeViewController

- (_TtP4Maps58NavTrafficIncidentReportingContaineeViewControllerDelegate_)incidentReportingDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithIncidentReportingDelegate:(id)delegate
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
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100380244(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003803F8(appear);
}

- (double)heightForLayout:(unint64_t)layout
{
  selfCopy = self;
  sub_100380784(layout);
  v6 = v5;

  return v6;
}

- (_TtC4Maps50NavTrafficIncidentReportingContaineeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface VisitHistoryCityOverviewViewController
- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithCoder:(id)a3;
- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation VisitHistoryCityOverviewViewController

- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:v3];
  sub_1000F4194();
}

- (void)didResignCurrent
{
  v2 = self;
  sub_1000F1378();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidLoad];
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setPresentedModally:1];

    v5 = [v2 cardPresentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setTakesAvailableHeight:1];

      sub_1000F1488();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
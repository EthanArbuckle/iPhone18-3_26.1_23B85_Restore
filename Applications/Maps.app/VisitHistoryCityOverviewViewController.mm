@interface VisitHistoryCityOverviewViewController
- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithCoder:(id)coder;
- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation VisitHistoryCityOverviewViewController

- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)current
{
  currentCopy = current;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:currentCopy];
  sub_1000F4194();
}

- (void)didResignCurrent
{
  selfCopy = self;
  sub_1000F1378();
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewDidLoad];
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [v2 cardPresentationController];
    if (cardPresentationController2)
    {
      v6 = cardPresentationController2;
      [cardPresentationController2 setTakesAvailableHeight:1];

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

- (_TtC4Maps38VisitHistoryCityOverviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
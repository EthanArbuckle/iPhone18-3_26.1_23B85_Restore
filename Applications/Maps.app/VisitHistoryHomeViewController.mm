@interface VisitHistoryHomeViewController
- (_TtC4Maps30VisitHistoryHomeViewController)initWithCoder:(id)coder;
- (_TtC4Maps30VisitHistoryHomeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation VisitHistoryHomeViewController

- (_TtC4Maps30VisitHistoryHomeViewController)initWithCoder:(id)coder
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_mapModificationDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_clearHistoryAlertProvider) = 0;
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
  sub_10040EAA8();
}

- (void)didResignCurrent
{
  selfCopy = self;
  sub_10018304C();
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidLoad];
  sub_10018318C();
  sharedService = [objc_opt_self() sharedService];
  if (sharedService)
  {
    v4 = sharedService;
    [sharedService captureUserAction:21 onTarget:147 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps30VisitHistoryHomeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
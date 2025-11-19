@interface VisitHistoryHomeViewController
- (_TtC4Maps30VisitHistoryHomeViewController)initWithCoder:(id)a3;
- (_TtC4Maps30VisitHistoryHomeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation VisitHistoryHomeViewController

- (_TtC4Maps30VisitHistoryHomeViewController)initWithCoder:(id)a3
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

- (void)willBecomeCurrent:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(ContaineeViewController *)&v5 willBecomeCurrent:v3];
  sub_10040EAA8();
}

- (void)didResignCurrent
{
  v2 = self;
  sub_10018304C();
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidLoad];
  sub_10018318C();
  v3 = [objc_opt_self() sharedService];
  if (v3)
  {
    v4 = v3;
    [v3 captureUserAction:21 onTarget:147 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps30VisitHistoryHomeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
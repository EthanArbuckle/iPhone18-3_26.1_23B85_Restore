@interface VisitHistoryFilterViewController
- (_TtC4Maps32VisitHistoryFilterViewController)initWithCoder:(id)a3;
- (_TtC4Maps32VisitHistoryFilterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation VisitHistoryFilterViewController

- (_TtC4Maps32VisitHistoryFilterViewController)initWithCoder:(id)a3
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_mapModificationDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v4 = self;
  sub_10018F828(a3);
}

- (void)didResignCurrent
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ContaineeViewController *)&v3 didResignCurrent];
  sub_10025E5EC();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MapsHostingContaineeViewController *)&v3 viewDidLoad];
  sub_10018FA00();
}

- (_TtC4Maps32VisitHistoryFilterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
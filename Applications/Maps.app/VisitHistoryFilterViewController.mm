@interface VisitHistoryFilterViewController
- (_TtC4Maps32VisitHistoryFilterViewController)initWithCoder:(id)coder;
- (_TtC4Maps32VisitHistoryFilterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didResignCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation VisitHistoryFilterViewController

- (_TtC4Maps32VisitHistoryFilterViewController)initWithCoder:(id)coder
{
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_actionDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super._cardPresentationController + OBJC_IVAR____TtC4Maps32VisitHistoryFilterViewController_mapModificationDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)willBecomeCurrent:(BOOL)current
{
  selfCopy = self;
  sub_10018F828(current);
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

- (_TtC4Maps32VisitHistoryFilterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
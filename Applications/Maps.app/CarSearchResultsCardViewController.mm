@interface CarSearchResultsCardViewController
- (_TtC4Maps34CarSearchResultsCardViewController)initWithCoder:(id)coder;
- (_TtC4Maps34CarSearchResultsCardViewController)initWithDelegate:(id)delegate;
- (_TtC4Maps34CarSearchResultsCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps28CarSearchResultsCardDelegate_)delegate;
- (void)setError:(id)error;
- (void)setLoading;
- (void)setSearchResults:(id)results searchAlongRoute:(BOOL)route;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarSearchResultsCardViewController

- (_TtP4Maps28CarSearchResultsCardDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps34CarSearchResultsCardViewController)initWithDelegate:(id)delegate
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel;
  v6 = objc_allocWithZone(type metadata accessor for CarSearchResultsViewModel());
  swift_unknownObjectRetain();
  *(self + v5) = [v6 init];
  swift_unknownObjectWeakAssign();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(CarHostingViewController *)&v9 initWithNibName:0 bundle:0];
  swift_unknownObjectRelease();
  return v7;
}

- (_TtC4Maps34CarSearchResultsCardViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel;
  *(self + v4) = [objc_allocWithZone(type metadata accessor for CarSearchResultsViewModel()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003A2088(appear);
}

- (void)setLoading
{
  v2 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
}

- (void)setSearchResults:(id)results searchAlongRoute:(BOOL)route
{
  sub_10019152C();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  static Published.subscript.setter();
}

- (void)setError:(id)error
{
  v4 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  errorCopy = error;
  v6 = v4;
  static Published.subscript.setter();
}

- (_TtC4Maps34CarSearchResultsCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
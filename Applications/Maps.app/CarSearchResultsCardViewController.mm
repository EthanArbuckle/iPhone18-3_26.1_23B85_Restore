@interface CarSearchResultsCardViewController
- (_TtC4Maps34CarSearchResultsCardViewController)initWithCoder:(id)a3;
- (_TtC4Maps34CarSearchResultsCardViewController)initWithDelegate:(id)a3;
- (_TtC4Maps34CarSearchResultsCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps28CarSearchResultsCardDelegate_)delegate;
- (void)setError:(id)a3;
- (void)setLoading;
- (void)setSearchResults:(id)a3 searchAlongRoute:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarSearchResultsCardViewController

- (_TtP4Maps28CarSearchResultsCardDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps34CarSearchResultsCardViewController)initWithDelegate:(id)a3
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

- (_TtC4Maps34CarSearchResultsCardViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel;
  *(self + v4) = [objc_allocWithZone(type metadata accessor for CarSearchResultsViewModel()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003A2088(a3);
}

- (void)setLoading
{
  v2 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
}

- (void)setSearchResults:(id)a3 searchAlongRoute:(BOOL)a4
{
  sub_10019152C();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  static Published.subscript.setter();
}

- (void)setError:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps34CarSearchResultsCardViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = v4;
  static Published.subscript.setter();
}

- (_TtC4Maps34CarSearchResultsCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
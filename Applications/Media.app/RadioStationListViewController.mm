@interface RadioStationListViewController
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (_TtC5Media30RadioStationListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)invalidate;
- (void)nowPlayingTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RadioStationListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001775C();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100018B60(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100018D8C(appear);
}

- (void)invalidate
{
  v3 = OBJC_IVAR____TtC5Media30RadioStationListViewController_cancelSet;
  swift_beginAccess();
  v4 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = &_swiftEmptySetSingleton;
}

- (void)nowPlayingTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_100010040();
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_100019FF0(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (_TtC5Media30RadioStationListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface WorkoutAppRecommendationCollectionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithCoder:(id)coder;
- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation WorkoutAppRecommendationCollectionViewController

- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithCoder:(id)coder
{
  type metadata accessor for WorkoutAppRecommendationCollectionViewController();
  swift_deallocPartialClassInstance();
  return 0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100630DC0();
}

- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10FitnessApp48WorkoutAppRecommendationCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100631114(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  [view frame];
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = v11 * 0.25;
  v13 = v11 * 0.25 + 28.0;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1006317EC();

  (*(v7 + 8))(v9, v6);
}

@end
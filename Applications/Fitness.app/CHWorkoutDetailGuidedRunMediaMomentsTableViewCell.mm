@interface CHWorkoutDetailGuidedRunMediaMomentsTableViewCell
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CHWorkoutDetailGuidedRunMediaMomentsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)onDidTapMediaMomentItem;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureWithWorkout:(id)workout fitnessAppContext:(id)context;
- (void)setOnDidTapMediaMomentItem:(id)item;
@end

@implementation CHWorkoutDetailGuidedRunMediaMomentsTableViewCell

- (id)onDidTapMediaMomentItem
{
  if (*(self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem))
  {
    v2 = *(self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem + 8);
    v5[4] = *(self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001CA96C;
    v5[3] = &unk_10085AAB8;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnDidTapMediaMomentItem:(id)item
{
  v4 = _Block_copy(item);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1001FE648;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem);
  v8 = *(self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_onDidTapMediaMomentItem);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000245E0(v8);
}

- (CHWorkoutDetailGuidedRunMediaMomentsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10043FF7C(style, identifier, v6);
}

- (void)configureWithWorkout:(id)workout fitnessAppContext:(id)context
{
  workoutCopy = workout;
  contextCopy = context;
  selfCopy = self;
  sub_100440570(workoutCopy, contextCopy);
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(self + OBJC_IVAR___CHWorkoutDetailGuidedRunMediaMomentsTableViewCell_mediaMomentArtworkItems);
  if (v4 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
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
  v12 = sub_100440D0C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
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
  sub_100441254();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
  v9 = 164.0;
  v10 = 164.0;
  result.height = v10;
  result.width = v9;
  return result;
}

@end
@interface CHWorkoutDetailGuidedRunMediaMomentsTableViewCell
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CHWorkoutDetailGuidedRunMediaMomentsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)onDidTapMediaMomentItem;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureWithWorkout:(id)a3 fitnessAppContext:(id)a4;
- (void)setOnDidTapMediaMomentItem:(id)a3;
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

- (void)setOnDidTapMediaMomentItem:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_1000245E0(v8);
}

- (CHWorkoutDetailGuidedRunMediaMomentsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10043FF7C(a3, a4, v6);
}

- (void)configureWithWorkout:(id)a3 fitnessAppContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100440570(v6, v7);
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100440D0C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100441254();

  (*(v7 + 8))(v9, v6);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
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
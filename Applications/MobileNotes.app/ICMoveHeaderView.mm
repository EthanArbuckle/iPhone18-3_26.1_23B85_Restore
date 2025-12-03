@interface ICMoveHeaderView
+ (double)absoluteHeight;
- (NSArray)objectIds;
- (NSString)reuseIdentifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setObjectIds:(id)ids;
- (void)updateUIForCurrentTraitCollection;
@end

@implementation ICMoveHeaderView

- (void)updateUIForCurrentTraitCollection
{
  selfCopy = self;
  sub_100399928();
}

+ (double)absoluteHeight
{
  if (qword_1006BC838 != -1)
  {
    swift_once();
  }

  return *&qword_1006EF858;
}

- (NSString)reuseIdentifier
{
  swift_getObjectType();
  sub_10015DA04(&unk_1006C5D80);
  String.init<A>(describing:)();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICellConfigurationState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  static UIBackgroundConfiguration.clear()();
  [(ICMoveHeaderView *)selfCopy directionalLayoutMargins];
  [(ICMoveHeaderView *)selfCopy directionalLayoutMargins];
  UIBackgroundConfiguration.backgroundInsets.setter();
  (*(v8 + 16))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  UICollectionViewCell.backgroundConfiguration.setter();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

- (NSArray)objectIds
{
  sub_1000054A4(0, &qword_1006BFEC0);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setObjectIds:(id)ids
{
  sub_1000054A4(0, &qword_1006BFEC0);
  *(self + OBJC_IVAR___ICMoveHeaderView_objectIds) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_10039A580();
}

@end
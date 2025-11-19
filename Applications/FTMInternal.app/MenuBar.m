@interface MenuBar
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
@end

@implementation MenuBar

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_10023D718(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  sub_10023E3F4(v10);

  (*(v7 + 8))(v10, v6);
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = self;
  [(MenuBar *)v11 frame];
  v12 = CGRectGetWidth(v18) / *(&v11->super.super.super.isa + OBJC_IVAR____TtC11FTMInternal7MenuBar_segmentWidthMultiplier);
  [(MenuBar *)v11 frame];
  Height = CGRectGetHeight(v19);

  (*(v7 + 8))(v10, v6);
  v14 = v12;
  v15 = Height;
  result.height = v15;
  result.width = v14;
  return result;
}

@end
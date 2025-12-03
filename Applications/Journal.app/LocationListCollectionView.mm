@interface LocationListCollectionView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC7Journal26LocationListCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)setContentSize:(CGSize)size;
@end

@implementation LocationListCollectionView

- (CGSize)intrinsicContentSize
{
  [(LocationListCollectionView *)self contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LocationListCollectionView();
  [(LocationListCollectionView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_100357444(width, height);
}

- (_TtC7Journal26LocationListCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
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
  sub_10035F334();

  (*(v7 + 8))(v9, v6);
}

@end
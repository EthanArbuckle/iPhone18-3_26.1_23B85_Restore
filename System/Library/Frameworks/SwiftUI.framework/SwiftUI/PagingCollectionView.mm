@interface PagingCollectionView
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithCoder:(id)a3;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)layoutSubviews;
- (void)scrollToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation PagingCollectionView

- (void)layoutSubviews
{
  v2 = self;
  PagingCollectionView.layoutSubviews()();
}

- (void)scrollToItemAtIndexPath:(id)a3 atScrollPosition:(unint64_t)a4 animated:(BOOL)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = self;
  PagingCollectionView.scrollToItem(at:at:animated:)(v11, a4, a5);

  (*(v9 + 8))(v11, v8);
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
  v11 = type metadata accessor for IndexPath();
  v12 = *(*(v11 - 8) + 56);
  v12(self + v10, 1, 1, v11);
  v12(self + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath, 1, 1, v11);
  v13 = self + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize;
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v15.receiver = self;
  v15.super_class = type metadata accessor for PagingCollectionView();
  return [(PagingCollectionView *)&v15 initWithFrame:a4 collectionViewLayout:x, y, width, height];
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
  v6 = type metadata accessor for IndexPath();
  v7 = *(*(v6 - 8) + 56);
  v7(self + v5, 1, 1, v6);
  v7(self + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath, 1, 1, v6);
  v8 = self + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12.receiver = self;
  v12.super_class = type metadata accessor for PagingCollectionView();
  v9 = a3;
  v10 = [(PagingCollectionView *)&v12 initWithCoder:v9];

  if (v10)
  {
  }

  return v10;
}

@end
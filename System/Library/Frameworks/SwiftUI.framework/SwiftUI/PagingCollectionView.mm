@interface PagingCollectionView
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithCoder:(id)coder;
- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)layoutSubviews;
- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated;
@end

@implementation PagingCollectionView

- (void)layoutSubviews
{
  selfCopy = self;
  PagingCollectionView.layoutSubviews()();
}

- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PagingCollectionView.scrollToItem(at:at:animated:)(v11, position, animated);

  (*(v9 + 8))(v11, v8);
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  return [(PagingCollectionView *)&v15 initWithFrame:layout collectionViewLayout:x, y, width, height];
}

- (_TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView)initWithCoder:(id)coder
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
  coderCopy = coder;
  v10 = [(PagingCollectionView *)&v12 initWithCoder:coderCopy];

  if (v10)
  {
  }

  return v10;
}

@end
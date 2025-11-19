@interface ShelfCollectionViewLayout
+ (Class)invalidationContextClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (CGSize)collectionViewContentSize;
- (_TtC16MusicApplication25ShelfCollectionViewLayout)initWithCoder:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)music_collectionViewInheritedLayoutInsetsDidChange;
- (void)panGestureRecognizerStateDidChange:(id)a3;
- (void)prepareLayout;
@end

@implementation ShelfCollectionViewLayout

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize);
  v3 = *&self->scrollStyle[OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (Class)invalidationContextClass
{
  type metadata accessor for ShelfCollectionViewLayout.InvalidationContext();

  return swift_getObjCClassFromMetadata();
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = ShelfCollectionViewLayout.invalidationContext(forBoundsChange:)(x, y, width, height);

  return v8;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  ShelfCollectionViewLayout.invalidateLayout(with:)(v4);
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = _swiftEmptyArrayStorage;
  v7 = self;
  sub_335730(v7, v7, &v10, x, y, width, height);
  sub_335F5C(v7, v7, &v10, x, y, width, height);
  sub_336220(v7, v7, &v10, x, y, width, height);

  sub_13C80(0, &qword_E04510);
  v8.super.isa = sub_AB9740().super.isa;

  return v8.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v9 = a3;
  v10 = self;
  v11 = ShelfCollectionViewLayout.layoutAttributesForItem(at:)(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB92A0();
  v13 = v12;
  sub_AB3790();
  v14 = a3;
  v15 = a4;
  v16 = self;
  v17 = ShelfCollectionViewLayout.layoutAttributesForSupplementaryView(ofKind:at:)(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v17;
}

- (void)prepareLayout
{
  v2 = self;
  ShelfCollectionViewLayout.prepare()();
}

- (void)panGestureRecognizerStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_3235B8(v4);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = ShelfCollectionViewLayout.shouldInvalidateLayout(forBoundsChange:)(x, y, width, height);

  return v8 & 1;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  x = a4.x;
  y = a3.y;
  v6 = a3.x;
  v7 = self;
  v8 = ShelfCollectionViewLayout.targetContentOffset(forProposedContentOffset:withScrollingVelocity:)(v6, y, x);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)music_collectionViewInheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShelfCollectionViewLayout();
  v2 = v3.receiver;
  [(ShelfCollectionViewLayout *)&v3 music_collectionViewInheritedLayoutInsetsDidChange];
  [v2 invalidateLayout];
}

- (_TtC16MusicApplication25ShelfCollectionViewLayout)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_336C20(v3);

  return v4;
}

@end
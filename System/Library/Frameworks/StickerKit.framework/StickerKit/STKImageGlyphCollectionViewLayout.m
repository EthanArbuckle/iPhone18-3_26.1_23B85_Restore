@interface STKImageGlyphCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result withScrollingVelocity:(CGPoint)a4;
- (CGRect)targetRectForSectionIndex:(int64_t)a3;
- (CGSize)collectionViewContentSize;
- (STKImageGlyphCollectionViewLayout)initWithSection:(id)a3;
- (STKImageGlyphCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (STKImageGlyphCollectionViewLayout)initWithSectionProvider:(id)a3;
- (STKImageGlyphCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)currentlyFocusedIndexPath;
- (id)invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:(id)a3 previousIndexPaths:(id)a4 movementCancelled:(BOOL)a5;
- (id)invalidationContextForInteractivelyMovingItems:(id)a3 withTargetPosition:(CGPoint)a4 previousIndexPaths:(id)a5 previousPosition:(CGPoint)a6;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)paginationOriginForCurrentOffset:(CGPoint)a3;
- (id)targetIndexPathForInteractivelyMovingItem:(id)a3 withPosition:(CGPoint)a4;
- (int64_t)currentlyFocusedSectionIndex;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayout;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
@end

@implementation STKImageGlyphCollectionViewLayout

- (STKImageGlyphCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_19A7260E4(sub_19A72A8E4, v6, a4);
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v3 = self;
  v4 = sub_19A725FAC();
  v5 = *&v4[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_lock];
  os_unfair_lock_lock(v5 + 4);
  sub_19A6FBE70(&v8);
  os_unfair_lock_unlock(v5 + 4);

  sub_19A5F5028(0, &qword_1EAFCA440);
  v6 = sub_19A7AB234();

  return v6;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  [(STKImageGlyphCollectionViewLayout *)self targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, 0.0, 0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)result withScrollingVelocity:(CGPoint)a4
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) & 1) == 0)
  {
    x = a4.x;
    y = a4.y;
    v6 = result.x;
    v7 = result.y;
    v8 = self;
    v9 = sub_19A725FAC();
    v10 = [(STKImageGlyphCollectionViewLayout *)v8 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 contentOffset];
      v13 = v12;
      v15 = v14;

      v10 = v13;
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_19A6D719C(v10, v16, 0, v6, v7, x, y);
    v18 = v17;
    v20 = v19;

    result.x = v18;
    result.y = v20;
  }

  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_19A726788(x, y, width, height);

  return v8;
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = sub_19A725FAC();
  sub_19A6D6CB0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v8 = self;
  v9 = sub_19A726A50();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  v9 = self;
  v10 = sub_19A725FAC();
  v11 = sub_19A7A9064();
  v12 = sub_19A6D7E98(v11);
  if (!v12)
  {

    goto LABEL_5;
  }

  v13 = v12;
  if (sub_19A7A9044())
  {

LABEL_5:
    v14 = 0;
    goto LABEL_7;
  }

  v15 = *&v13[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_lock];
  v16 = MEMORY[0x1EEE9AC00](0);
  *(&v19 - 2) = v13;
  MEMORY[0x1EEE9AC00](v16);
  *(&v19 - 2) = sub_19A62C654;
  *(&v19 - 1) = v17;
  os_unfair_lock_lock(v15 + 4);
  sub_19A6FBE70(&v20);
  os_unfair_lock_unlock(v15 + 4);
  v14 = v20;

LABEL_7:
  (*(v6 + 8))(v8, v5);

  return v14;
}

- (id)targetIndexPathForInteractivelyMovingItem:(id)a3 withPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_19A7A9024();
  v14 = self;
  sub_19A726FA4(x, y);

  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = sub_19A7A9014();
  v15(v13, v7);

  return v16;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  *(&self->super.super.super.isa + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 1;
  v11 = self;
  v12 = sub_19A7A9014();
  v13 = type metadata accessor for ImageGlyphCollectionViewLayout();
  v16.receiver = v11;
  v16.super_class = v13;
  v14 = [(STKImageGlyphCollectionViewLayout *)&v16 layoutAttributesForInteractivelyMovingItemAtIndexPath:v12 withTargetPosition:x, y];

  (*(v8 + 8))(v10, v7);

  return v14;
}

- (id)invalidationContextForInteractivelyMovingItems:(id)a3 withTargetPosition:(CGPoint)a4 previousIndexPaths:(id)a5 previousPosition:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v9 = a4.y;
  v10 = a4.x;
  *(&self->super.super.super.isa + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 0;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v12 = [(STKImageGlyphCollectionViewLayout *)&v14 invalidationContextForInteractivelyMovingItems:a3 withTargetPosition:a5 previousIndexPaths:v10 previousPosition:v9, x, y];

  return v12;
}

- (id)invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:(id)a3 previousIndexPaths:(id)a4 movementCancelled:(BOOL)a5
{
  v5 = a5;
  *(&self->super.super.super.isa + OBJC_IVAR___STKImageGlyphCollectionViewLayout_isRearranging) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  v8 = [(STKImageGlyphCollectionViewLayout *)&v10 invalidationContextForEndingInteractiveMovementOfItemsToFinalIndexPaths:a3 previousIndexPaths:a4 movementCancelled:v5];

  return v8;
}

- (void)invalidateLayout
{
  v2 = self;
  v3 = sub_19A725FAC();
  sub_19A6D8040();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImageGlyphCollectionViewLayout();
  [(STKImageGlyphCollectionViewLayout *)&v4 invalidateLayout];
}

- (void)prepareLayout
{
  v2 = self;
  sub_19A7277DC();
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  sub_19A5F5028(0, &qword_1EAFCF1C0);
  v4 = sub_19A7AB254();
  v5 = self;
  sub_19A7278F8(v4);
}

- (void)finalizeCollectionViewUpdates
{
  v2 = self;
  sub_19A728300();
}

- (id)paginationOriginForCurrentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_19A725FAC();
  v7 = sub_19A6D75E4(x, y);
  v9 = v8;
  v11 = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [objc_opt_self() itk:*&v7 valueWithPoint:v9];
  }

  return v12;
}

- (CGRect)targetRectForSectionIndex:(int64_t)a3
{
  v4 = self;
  v5 = sub_19A725FAC();
  v6 = sub_19A6D7E98(a3);
  if (v6)
  {
    v7 = v6;
    v8 = sub_19A627590();
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {

    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)currentlyFocusedIndexPath
{
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_19A728698();

  v8 = sub_19A7A9014();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (int64_t)currentlyFocusedSectionIndex
{
  v2 = self;
  v3 = sub_19A725FAC();
  v4 = [(STKImageGlyphCollectionViewLayout *)v2 collectionView];
  if (v4)
  {
    v5 = v4;
    [v4 contentOffset];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  v10 = sub_19A6D7704(v7, v9);

  return v10;
}

- (STKImageGlyphCollectionViewLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (STKImageGlyphCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (STKImageGlyphCollectionViewLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface MosaicLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (_TtC21JournalShareExtension12MosaicLayout)init;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation MosaicLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for MosaicLayout();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_10001A0C4();
}

- (CGSize)collectionViewContentSize
{
  v2 = *&self->contentBounds[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds];
  v3 = *&self->contentBounds[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds + 8];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  selfCopy = self;
  collectionView = [(MosaicLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v7 = collectionView;
    [collectionView bounds];
    v10.width = width;
    v10.height = height;
    v8 = CGSizeEqualToSize(v10, v11);

    return !v8;
  }

  else
  {

    return 0;
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1000FFA44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FFA24();
  selfCopy = self;
  v9 = sub_1000225D4();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_1000227C8(x, y, width, height);

  if (v8)
  {
    sub_100023374();
    v9.super.isa = sub_1001011C4().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (_TtC21JournalShareExtension12MosaicLayout)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v2 = (self + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds);
  *v2 = 0u;
  v2[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType) = 2;
  v3 = self + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = self + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *(&self->super.super.isa + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_isExpanded) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_enforceShowCompressedAssetGrid) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for MosaicLayout();
  return [(MosaicLayout *)&v6 init];
}

@end
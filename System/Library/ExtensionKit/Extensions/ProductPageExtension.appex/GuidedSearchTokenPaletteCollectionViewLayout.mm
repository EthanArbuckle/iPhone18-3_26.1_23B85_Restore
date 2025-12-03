@interface GuidedSearchTokenPaletteCollectionViewLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout)init;
- (_TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
@end

@implementation GuidedSearchTokenPaletteCollectionViewLayout

- (_TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout)init
{
  *&self->pinningEnabled[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v3 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v5 init];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setScrollDirection:1];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setMinimumInteritemSpacing:5.0];

  return v3;
}

- (_TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)coder
{
  *&self->pinningEnabled[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_10077156C();
  __break(1u);
  return result;
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  sub_100016F40(0, &qword_10095EBE0);
  v4 = sub_1007701BC();
  selfCopy = self;
  sub_1005BB1D0(v4);
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v2 = v3.receiver;
  [(GuidedSearchTokenPaletteCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate] = _swiftEmptyArrayStorage;

  *&v2[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate] = _swiftEmptyArrayStorage;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_1005BBB1C(x, y, width, height);

  if (v8)
  {
    sub_100016F40(0, &qword_100947EF0);
    v9.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  selfCopy = self;
  isa = sub_10075E02C().super.isa;
  v10 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1005BC3E0(v11);

    selfCopy = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v7 = v10.receiver;
  if ([(GuidedSearchTokenPaletteCollectionViewLayout *)&v10 shouldInvalidateLayoutForBoundsChange:x, y, width, height])
  {
    v8 = 1;
  }

  else
  {
    v8 = v7[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled];
  }

  return v8;
}

@end
@interface GuidedSearchTokenPaletteCollectionViewLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout)init;
- (_TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
@end

@implementation GuidedSearchTokenPaletteCollectionViewLayout

- (_TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout)init
{
  *&self->pinningEnabled[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v3 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v5 init];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setScrollDirection:1];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setMinimumInteritemSpacing:5.0];

  return v3;
}

- (_TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)a3
{
  *&self->pinningEnabled[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = sub_76A840();
  __break(1u);
  return result;
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  sub_BE70(0, &unk_94A220);
  v4 = sub_769460();
  v5 = self;
  sub_1FA080(v4);
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v2 = v3.receiver;
  [(GuidedSearchTokenPaletteCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate] = _swiftEmptyArrayStorage;

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate] = _swiftEmptyArrayStorage;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1FA9CC(x, y, width, height);

  if (v8)
  {
    sub_BE70(0, &qword_944B40);
    v9.super.isa = sub_769450().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v8 = self;
  isa = sub_757550().super.isa;
  v10 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1FB290(v11);

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v7 = v10.receiver;
  if ([(GuidedSearchTokenPaletteCollectionViewLayout *)&v10 shouldInvalidateLayoutForBoundsChange:x, y, width, height])
  {
    v8 = 1;
  }

  else
  {
    v8 = v7[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled];
  }

  return v8;
}

@end
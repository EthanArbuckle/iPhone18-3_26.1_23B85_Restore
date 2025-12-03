@interface GuidedSearchTokenPaletteCollectionViewLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (_TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout)init;
- (_TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)updates;
@end

@implementation GuidedSearchTokenPaletteCollectionViewLayout

- (_TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout)init
{
  *&self->pinningEnabled[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v3 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v5 init];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setScrollDirection:1];
  [(GuidedSearchTokenPaletteCollectionViewLayout *)v3 setMinimumInteritemSpacing:5.0];

  return v3;
}

- (_TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout)initWithCoder:(id)coder
{
  *&self->pinningEnabled[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate] = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
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
  sub_100005744(0, &qword_100984B00);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1004103BC(v4);
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v2 = v3.receiver;
  [(GuidedSearchTokenPaletteCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate] = _swiftEmptyArrayStorage;

  *&v2[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate] = _swiftEmptyArrayStorage;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_100410D08(x, y, width, height);

  if (v8)
  {
    sub_100005744(0, &qword_1009759D0);
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(GuidedSearchTokenPaletteCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1004115CC(v11);

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
    v8 = v7[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled];
  }

  return v8;
}

@end
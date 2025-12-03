@interface MOSuggestionSheetHalfMosaicLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (_TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout)init;
- (_TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation MOSuggestionSheetHalfMosaicLayout

- (void)prepareLayout
{
  selfCopy = self;
  MOSuggestionSheetHalfMosaicLayout.prepare()();
}

- (CGSize)collectionViewContentSize
{
  v2 = *((swift_isaMask & self->super.super.isa) + 0x80);
  selfCopy = self;
  v2();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  selfCopy = self;
  collectionView = [(MOSuggestionSheetHalfMosaicLayout *)selfCopy collectionView];
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
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *((swift_isaMask & self->super.super.isa) + 0x68);
  selfCopy = self;
  v10 = v8();
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v11)
  {

    v14 = 0;
    goto LABEL_9;
  }

  v12 = IndexPath.item.getter();
  result = v8();
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_9;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v14 = *(result + v12 + 4);

LABEL_9:
  (*(v5 + 8))(v7, v4);

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = MOSuggestionSheetHalfMosaicLayout.layoutAttributesForElements(in:)(x, y, width, height);

  if (v8)
  {
    type metadata accessor for UICollectionViewLayoutAttributes();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (_TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v3 = (self + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *&self->cachedAttributes[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  return [(MOSuggestionSheetHalfMosaicLayout *)&v5 init];
}

- (_TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_cachedAttributes) = _swiftEmptyArrayStorage;
  v5 = (self + OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_contentBounds);
  *v5 = 0u;
  v5[1] = 0u;
  *&self->cachedAttributes[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionSheetHalfMosaicLayout_mosaicSegmentDelegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for MOSuggestionSheetHalfMosaicLayout();
  coderCopy = coder;
  v7 = [(MOSuggestionSheetHalfMosaicLayout *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end
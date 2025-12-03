@interface CompositeCollectionViewLayout
+ (Class)invalidationContextClass;
- (BOOL)canBeEdited;
- (BOOL)isEditing;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (id)_decorationViewForLayoutAttributes:(id)attributes;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareForCollectionViewUpdates:(id)updates;
- (void)prepareLayout;
- (void)setEditing:(BOOL)editing;
@end

@implementation CompositeCollectionViewLayout

- (void)prepareLayout
{
  selfCopy = self;
  sub_BE1D8();
}

- (CGSize)collectionViewContentSize
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData))
  {
    selfCopy = self;

    *&v3 = COERCE_DOUBLE(sub_B793C());
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v8 = *&v3;
      v9 = v4;

      v5 = v8;
      v6 = v9;
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_BE4C8(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_2B860(0, &qword_1C5C48);
    v10.super.isa = sub_1449CC().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_140C2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  selfCopy = self;
  sub_C1480(v7, 0, 0, 0, selfCopy);
  v10 = v9;

  (*(v5 + 8))(v7, v4);

  return v10;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  selfCopy = self;
  v13 = sub_BECD4(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  selfCopy = self;
  sub_C2A0C(v8, 1, v9, v11, selfCopy, v9, v11, &selRef_layoutAttributesForSupplementaryViewOfKind_atIndexPath_);
  v14 = v13;

  (*(v6 + 8))(v8, v5);

  return v14;
}

- (void)prepareForCollectionViewUpdates:(id)updates
{
  sub_2B860(0, &qword_1C6A78);
  v5 = sub_1449DC();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositeCollectionViewLayout();
  selfCopy = self;
  [(CompositeCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:updates];
  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_currentCollectionViewUpdates) = v5;
}

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)kind
{
  sub_1448DC();
  selfCopy = self;
  sub_BF270();

  sub_140C2C();
  v5.super.isa = sub_1449CC().super.isa;

  return v5.super.isa;
}

+ (Class)invalidationContextClass
{
  type metadata accessor for CompositeCollectionViewLayout.InvalidationContext();

  return swift_getObjCClassFromMetadata();
}

- (void)invalidateLayoutWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_BFA1C(contextCopy);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_C0060(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  selfCopy = self;
  v8 = sub_C0638(x, y, width, height);

  return v8;
}

- (id)_decorationViewForLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = sub_C0B6C(attributesCopy);

  return v6;
}

- (BOOL)canBeEdited
{
  selfCopy = self;
  v3 = sub_C116C();

  return v3 & 1;
}

- (BOOL)isEditing
{
  selfCopy = self;
  collectionView = [(CompositeCollectionViewLayout *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    mt_isEditing = [collectionView mt_isEditing];
  }

  else
  {
    mt_isEditing = 0;
  }

  return mt_isEditing;
}

- (void)setEditing:(BOOL)editing
{
  selfCopy = self;
  sub_C1350(editing);
}

@end
@interface CompositeCollectionViewLayout
+ (Class)invalidationContextClass;
- (BOOL)canBeEdited;
- (BOOL)isEditing;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (id)_decorationViewForLayoutAttributes:(id)a3;
- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)setEditing:(BOOL)a3;
@end

@implementation CompositeCollectionViewLayout

- (void)prepareLayout
{
  v2 = self;
  sub_BE1D8();
}

- (CGSize)collectionViewContentSize
{
  if (*(&self->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_layoutData))
  {
    v2 = self;

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

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
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

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_140C2C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v8 = self;
  sub_C1480(v7, 0, 0, 0, v8);
  v10 = v9;

  (*(v5 + 8))(v7, v4);

  return v10;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  v12 = self;
  v13 = sub_BECD4(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_140C2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1448DC();
  v11 = v10;
  sub_140BAC();
  v12 = self;
  sub_C2A0C(v8, 1, v9, v11, v12, v9, v11, &selRef_layoutAttributesForSupplementaryViewOfKind_atIndexPath_);
  v14 = v13;

  (*(v6 + 8))(v8, v5);

  return v14;
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  sub_2B860(0, &qword_1C6A78);
  v5 = sub_1449DC();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CompositeCollectionViewLayout();
  v6 = self;
  [(CompositeCollectionViewLayout *)&v7 prepareForCollectionViewUpdates:a3];
  *(&v6->super.super.isa + OBJC_IVAR____TtC12NowPlayingUI29CompositeCollectionViewLayout_currentCollectionViewUpdates) = v5;
}

- (id)indexPathsToDeleteForDecorationViewOfKind:(id)a3
{
  sub_1448DC();
  v4 = self;
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

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_BFA1C(v4);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_C0060(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_C0638(x, y, width, height);

  return v8;
}

- (id)_decorationViewForLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_C0B6C(v4);

  return v6;
}

- (BOOL)canBeEdited
{
  v2 = self;
  v3 = sub_C116C();

  return v3 & 1;
}

- (BOOL)isEditing
{
  v2 = self;
  v3 = [(CompositeCollectionViewLayout *)v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 mt_isEditing];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setEditing:(BOOL)a3
{
  v4 = self;
  sub_C1350(a3);
}

@end
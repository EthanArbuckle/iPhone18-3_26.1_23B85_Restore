@interface BaseCollectionCompositionalLayout
+ (Class)layoutAttributesClass;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3;
- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation BaseCollectionCompositionalLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for BaseCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_1003B60D4(sub_1003B7DBC, v6, a4);
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_indexPathsRequiringRubberbanding) = &_swiftEmptySetSingleton;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1003B66AC(x, y, width, height);

  if (v8)
  {
    sub_1000DE4D0();
    v9.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  return v9.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v8 = self;
  isa = sub_10075E02C().super.isa;
  v10 = type metadata accessor for BaseCollectionCompositionalLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(BaseCollectionCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1003B59A0(v11);

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (void)prepareLayout
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseCollectionCompositionalLayout();
  v2 = v6.receiver;
  [(BaseCollectionCompositionalLayout *)&v6 prepareLayout];
  v3 = &v2[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
  if (v4)
  {

    v4(v2);
    sub_1000167E0(v4);
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_1000167E0(v5);
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1003B6C9C(x, y, width, height);

  return v8 & 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_1003B6F34(x, y, width, height);

  return v8;
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension33BaseCollectionCompositionalLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface SearchCollectionViewLayout
+ (Class)layoutAttributesClass;
- (CGSize)collectionViewContentSize;
- (_TtC20ProductPageExtension26SearchCollectionViewLayout)initWithCoder:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation SearchCollectionViewLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for SearchCollectionLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC20ProductPageExtension26SearchCollectionViewLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_backgroundCornerRadius) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = sub_10019A164();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  x = a3.origin.x;
  v4 = self;
  v5 = sub_10019A320(x);

  if (v5)
  {
    sub_100016F40(0, &qword_100947EF0);
    v6.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
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
  v10 = type metadata accessor for SearchCollectionViewLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(SearchCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_10019AF94(v11);

    v8 = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF9C();
  v11 = v10;
  sub_10075E06C();
  v12 = self;
  v13 = sub_10019B424(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (void)prepareLayout
{
  v2 = self;
  sub_10019C330();
}

@end
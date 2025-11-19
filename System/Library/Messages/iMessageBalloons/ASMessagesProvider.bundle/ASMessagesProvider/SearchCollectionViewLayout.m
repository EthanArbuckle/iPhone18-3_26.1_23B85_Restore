@interface SearchCollectionViewLayout
+ (Class)layoutAttributesClass;
- (CGSize)collectionViewContentSize;
- (_TtC18ASMessagesProvider26SearchCollectionViewLayout)initWithCoder:(id)a3;
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

- (_TtC18ASMessagesProvider26SearchCollectionViewLayout)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_backgroundCornerRadius) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)collectionViewContentSize
{
  v2 = self;
  v3 = sub_158690();
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
  v5 = sub_15884C(x);

  if (v5)
  {
    sub_BE70(0, &qword_944B40);
    v6.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
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
  v10 = type metadata accessor for SearchCollectionViewLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(SearchCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_1594C0(v11);

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
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_769240();
  v11 = v10;
  sub_757590();
  v12 = self;
  v13 = sub_159950(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (void)prepareLayout
{
  v2 = self;
  sub_15A85C();
}

@end
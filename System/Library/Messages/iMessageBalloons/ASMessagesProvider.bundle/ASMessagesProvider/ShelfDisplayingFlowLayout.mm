@interface ShelfDisplayingFlowLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (_TtC18ASMessagesProvider25ShelfDisplayingFlowLayout)initWithCoder:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
@end

@implementation ShelfDisplayingFlowLayout

- (_TtC18ASMessagesProvider25ShelfDisplayingFlowLayout)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *(&self->super.super.super.isa + v4) = sub_10E41C(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *(&self->super.super.super.isa + v5) = sub_10E4FC(_swiftEmptyArrayStorage);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v2 = v3.receiver;
  [(ShelfDisplayingFlowLayout *)&v3 prepareLayout];
  sub_16D814();
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_16E2F8(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_BE70(0, &qword_944B40);
    v10.super.isa = sub_769450().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v8 = self;
  v9 = sub_16E814();

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_769240();
  v12 = v11;
  sub_757590();
  if (v10 == 0xD00000000000001FLL && 0x80000000007D2110 == v12 || (sub_76A950() & 1) != 0)
  {
    v13 = self;
    v14 = sub_16D420();
  }

  else
  {
    v15 = self;
    v16 = a3;

    isa = sub_757550().super.isa;
    v18 = type metadata accessor for ShelfDisplayingFlowLayout();
    v20.receiver = v15;
    v20.super_class = v18;
    v14 = [(ShelfDisplayingFlowLayout *)&v20 layoutAttributesForDecorationViewOfKind:v16 atIndexPath:isa];
  }

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = [(ShelfDisplayingFlowLayout *)v7 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;

    if (v11 != width)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0.0;
    if (width != 0.0)
    {
      goto LABEL_7;
    }
  }

  if (v13 == height)
  {
    v16.receiver = v7;
    v16.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
    v14 = [(ShelfDisplayingFlowLayout *)&v16 shouldInvalidateLayoutForBoundsChange:x, y, width, height];

    return v14;
  }

LABEL_7:

  return 1;
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  v8 = sub_16ED6C(x, y, width, height);

  return v8;
}

@end
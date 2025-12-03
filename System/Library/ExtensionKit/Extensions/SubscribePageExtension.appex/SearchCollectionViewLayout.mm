@interface SearchCollectionViewLayout
+ (Class)layoutAttributesClass;
- (CGSize)collectionViewContentSize;
- (_TtC22SubscribePageExtension26SearchCollectionViewLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation SearchCollectionViewLayout

+ (Class)layoutAttributesClass
{
  type metadata accessor for SearchCollectionLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (_TtC22SubscribePageExtension26SearchCollectionViewLayout)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_backgroundCornerRadius) = 0;
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SearchCollectionViewLayout_pendingPrepareObserver);
  *v3 = 0;
  v3[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)collectionViewContentSize
{
  selfCopy = self;
  v3 = sub_100463940();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  x = rect.origin.x;
  selfCopy = self;
  v5 = sub_100463AFC(x);

  if (v5)
  {
    sub_100016C60(0, &qword_100923730);
    v6.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  selfCopy = self;
  isa = sub_100741704().super.isa;
  v10 = type metadata accessor for SearchCollectionViewLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(SearchCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_100464770(v11);

    selfCopy = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100753094();
  v11 = v10;
  sub_100741744();
  selfCopy = self;
  v13 = sub_100464C00(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_100465B0C();
}

@end
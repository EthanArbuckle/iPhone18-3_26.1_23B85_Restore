@interface WideFlowLayout
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation WideFlowLayout

- (CGSize)collectionViewContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize);
  v3 = *&self->maxRowsPerSection[OBJC_IVAR____TtC26GameCenterMessageExtension14WideFlowLayout_contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_100022690();
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_100022EB4(x, y, width, height);
  v9 = v8;

  if (v9)
  {
    sub_100023F98();
    v10.super.isa = sub_100041C10().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  return v10.super.isa;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_1000412F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100041B20();
  v12 = v11;
  sub_1000412D0();
  selfCopy = self;
  v14 = sub_1000232C8(v10, v12, v9);

  (*(v6 + 8))(v9, v5);

  return v14;
}

@end
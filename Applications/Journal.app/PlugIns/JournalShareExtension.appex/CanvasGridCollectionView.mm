@interface CanvasGridCollectionView
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC21JournalShareExtension24CanvasGridCollectionView)initWithCoder:(id)a3;
- (void)invalidateIntrinsicContentSize;
- (void)setContentSize:(CGSize)a3;
@end

@implementation CanvasGridCollectionView

- (_TtC21JournalShareExtension24CanvasGridCollectionView)initWithCoder:(id)a3
{
  v5 = sub_1001019B4();
  __chkstk_darwin(v5);
  v6 = sub_100007210(&qword_1001500D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC21JournalShareExtension24CanvasGridCollectionView__isExpanded;
  v13[15] = 0;
  v11 = a3;
  sub_1001019A4();
  sub_100101964();

  (*(v7 + 32))(self + v10, v9, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21JournalShareExtension24CanvasGridCollectionView_enforceShowCompressedAssetGrid) = 0;
  (*(v7 + 8))(self + v10, v6);
  type metadata accessor for CanvasGridCollectionView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (CGSize)intrinsicContentSize
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_100101974();

  if (v10 == 1)
  {
    [(CanvasGridCollectionView *)v3 contentSize];
  }

  else
  {
    sub_1000C546C();
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  v2 = self;
  sub_1000C51F8();
}

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for CanvasGridCollectionView();
  [(CanvasGridCollectionView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = type metadata accessor for CanvasGridCollectionView();
  v16.receiver = self;
  v16.super_class = v6;
  v7 = self;
  [(CanvasGridCollectionView *)&v16 contentSize];
  v9 = v8;
  v11 = v10;
  v15.receiver = v7;
  v15.super_class = v6;
  [(CanvasGridCollectionView *)&v15 setContentSize:width, height];
  [(CanvasGridCollectionView *)v7 contentSize];
  if (v13 != v9 || v12 != v11)
  {
    [(CanvasGridCollectionView *)v7 invalidateIntrinsicContentSize];
  }
}

- (BOOL)isAccessibilityElement
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CanvasGridCollectionView();
  v2 = v5.receiver;
  if ([(CanvasGridCollectionView *)&v5 isAccessibilityElement])
  {
    v3 = [v2 numberOfSections];

    return v3 > 0;
  }

  else
  {

    return 0;
  }
}

- (BOOL)accessibilityElementsHidden
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CanvasGridCollectionView();
  v2 = v5.receiver;
  if ([(CanvasGridCollectionView *)&v5 accessibilityElementsHidden])
  {

    return 1;
  }

  else
  {
    v4 = [v2 numberOfSections];

    return v4 == 0;
  }
}

@end
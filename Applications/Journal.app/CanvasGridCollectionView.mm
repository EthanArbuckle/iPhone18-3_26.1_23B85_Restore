@interface CanvasGridCollectionView
- (BOOL)accessibilityElementsHidden;
- (BOOL)isAccessibilityElement;
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC7Journal24CanvasGridCollectionView)initWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)setContentSize:(CGSize)size;
@end

@implementation CanvasGridCollectionView

- (CGSize)intrinsicContentSize
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  static UIView.Invalidating.subscript.getter();

  if (v10 == 1)
  {
    [(CanvasGridCollectionView *)selfCopy contentSize];
  }

  else
  {
    sub_100057544();
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
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

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = type metadata accessor for CanvasGridCollectionView();
  v16.receiver = self;
  v16.super_class = v6;
  selfCopy = self;
  [(CanvasGridCollectionView *)&v16 contentSize];
  v9 = v8;
  v11 = v10;
  v15.receiver = selfCopy;
  v15.super_class = v6;
  [(CanvasGridCollectionView *)&v15 setContentSize:width, height];
  [(CanvasGridCollectionView *)selfCopy contentSize];
  if (v13 != v9 || v12 != v11)
  {
    [(CanvasGridCollectionView *)selfCopy invalidateIntrinsicContentSize];
  }
}

- (void)invalidateIntrinsicContentSize
{
  selfCopy = self;
  sub_10006AB10();
}

- (_TtC7Journal24CanvasGridCollectionView)initWithCoder:(id)coder
{
  v5 = type metadata accessor for UIView.Invalidations.IntrinsicContentSize();
  __chkstk_darwin(v5);
  v6 = sub_1000F24EC(&qword_100AEAA98);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-v8];
  v10 = OBJC_IVAR____TtC7Journal24CanvasGridCollectionView__isExpanded;
  v13[15] = 0;
  coderCopy = coder;
  UIView.Invalidations.IntrinsicContentSize.init()();
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v7 + 32))(self + v10, v9, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal24CanvasGridCollectionView_enforceShowCompressedAssetGrid) = 0;
  (*(v7 + 8))(self + v10, v6);
  type metadata accessor for CanvasGridCollectionView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (BOOL)isAccessibilityElement
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CanvasGridCollectionView();
  v2 = v5.receiver;
  if ([(CanvasGridCollectionView *)&v5 isAccessibilityElement])
  {
    numberOfSections = [v2 numberOfSections];

    return numberOfSections > 0;
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
    numberOfSections = [v2 numberOfSections];

    return numberOfSections == 0;
  }
}

@end
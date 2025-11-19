@interface ModalCardHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)viewSize;
- (_TtC4Maps19ModalCardHeaderView)initWithCoder:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setShowTitle:(BOOL)a3;
- (void)setViewSize:(CGSize)a3;
@end

@implementation ModalCardHeaderView

- (CGSize)viewSize
{
  v2 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize);
  v3 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setViewSize:(CGSize)a3
{
  v3 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize);
  v4 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize + 8);
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize) = a3;
  if (a3.width != v3 || a3.height != v4)
  {
    [(ModalCardHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setShowTitle:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle);
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_100282F08();
  }
}

- (_TtC4Maps19ModalCardHeaderView)initWithCoder:(id)a3
{
  v3 = (self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_title);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_customTitleAXID);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_leadingButton) = 0;
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_trailingButton) = 0;
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a4)
  {
    v7 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v8 = self;
  }

  sub_100282F08();

  sub_100024F64(v9, &unk_101908380);
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end
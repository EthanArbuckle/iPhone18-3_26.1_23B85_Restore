@interface ModalCardHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)viewSize;
- (_TtC4Maps19ModalCardHeaderView)initWithCoder:(id)coder;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setShowTitle:(BOOL)title;
- (void)setViewSize:(CGSize)size;
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

- (void)setViewSize:(CGSize)size
{
  v3 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize);
  v4 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize + 8);
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_viewSize) = size;
  if (size.width != v3 || size.height != v4)
  {
    [(ModalCardHeaderView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setShowTitle:(BOOL)title
{
  v4 = *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle);
  *(self + OBJC_IVAR____TtC4Maps19ModalCardHeaderView_showTitle) = title;
  if (v4 != title)
  {
    selfCopy = self;
    sub_100282F08();
  }
}

- (_TtC4Maps19ModalCardHeaderView)initWithCoder:(id)coder
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
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
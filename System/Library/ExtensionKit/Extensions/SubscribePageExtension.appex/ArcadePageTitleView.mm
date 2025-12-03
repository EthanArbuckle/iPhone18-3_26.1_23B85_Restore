@interface ArcadePageTitleView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension19ArcadePageTitleView)initWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ArcadePageTitleView

- (_TtC22SubscribePageExtension19ArcadePageTitleView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = &self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView__contentOffset];
  *v4 = 0;
  v4[8] = 1;
  v5 = &self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  sub_1002FEDE4();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v2 = v13.receiver;
  [(ArcadePageTitleView *)&v13 layoutSubviews];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
  sub_1007477B4();
  [v4 measurementsWithFitting:v2 in:{v5, v6, v13.receiver, v13.super_class}];
  v8 = v7;
  v10 = v9;
  v11 = *&v2[v3];
  sub_1007477B4();
  MinX = CGRectGetMinX(v14);
  sub_1007477B4();
  [v11 setFrame:{MinX, CGRectGetMaxY(v15) - v10, v8, v10}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = *&self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_lockupView];
  selfCopy = self;
  [(ArcadePageTitleView *)selfCopy layoutMargins];
  sub_100753BA4();
  [v4 sizeThatFits:?];
  v7 = v6;
  sub_1002FEA90();
  v9 = v8;

  v10 = v7 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)invalidateIntrinsicContentSize
{
  ObjectType = swift_getObjectType();
  v4 = &self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &self->_UINavigationBarTitleView_opaque[OBJC_IVAR____TtC22SubscribePageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  [(ArcadePageTitleView *)&v6 invalidateIntrinsicContentSize];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002FF110(change);
}

@end
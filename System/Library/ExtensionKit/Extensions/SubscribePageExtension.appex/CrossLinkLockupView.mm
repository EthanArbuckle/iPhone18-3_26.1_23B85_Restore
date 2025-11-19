@interface CrossLinkLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CrossLinkLockupView

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  sub_1001F5A40(v9);
  [(CrossLinkLockupView *)v10 layoutMargins];
  v13 = sub_1001CF768(v9, v10, width, height, v11, v12);
  v15 = v14;

  (*(v7 + 8))(v9, v6);
  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001F61F8();
}

@end
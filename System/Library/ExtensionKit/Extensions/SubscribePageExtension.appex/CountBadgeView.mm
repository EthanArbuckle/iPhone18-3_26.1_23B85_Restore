@interface CountBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension14CountBadgeView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension14CountBadgeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CountBadgeView

- (_TtC22SubscribePageExtension14CountBadgeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_size) = 1;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_10011C21C();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CountBadgeView();
  v2 = v12.receiver;
  [(CountBadgeView *)&v12 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
  [v2 bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;
  v10 = v8 * 0.5;
  sub_1007477B4();
  v11 = CGRectGetMidX(v13) - v7 * 0.5;
  sub_1007477B4();
  [v3 setFrame:{v11, CGRectGetMidY(v14) - v10, v7, v9}];
}

- (_TtC22SubscribePageExtension14CountBadgeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
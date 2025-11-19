@interface BuyButtonUIView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BuyButtonUIView

- (void)layoutSubviews
{
  v2 = self;
  sub_10031ACB4();
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BuyButtonUIView_button);
  v3 = self;
  [v2 intrinsicContentSize];
  [v2 alignmentRectForFrame:{0.0, 0.0, v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = OBJC_IVAR____TtC5Books15BuyButtonUIView_button;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Books15BuyButtonUIView_button);
  v8 = self;
  [v7 sizeThatFits:{width, height}];
  [*(&self->super.super.super.isa + v6) alignmentRectForFrame:{0.0, 0.0, v9, v10}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end
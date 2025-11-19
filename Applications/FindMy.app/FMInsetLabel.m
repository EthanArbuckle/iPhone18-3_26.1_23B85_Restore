@interface FMInsetLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC6FindMy12FMInsetLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation FMInsetLabel

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_10010AE0C(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_10010AF1C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_10010B040();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC6FindMy12FMInsetLabel)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMInsetLabel_topInset) = 0x4020000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMInsetLabel_leftInset) = 0x4020000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMInsetLabel_bottomInset) = 0x4020000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy12FMInsetLabel_rightInset) = 0x4020000000000000;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMInsetLabel();
  return [(FMInsetLabel *)&v8 initWithFrame:x, y, width, height];
}

@end
@interface AgeRatingBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation AgeRatingBadgeView

- (void)tintColorDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel);
  v4 = self;
  v3 = [(AgeRatingBadgeView *)v4 tintColor];
  [v2 setTextColor:v3];

  [(AgeRatingBadgeView *)v4 setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1004B9360(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1004B9658(width);
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
  v12.super_class = swift_getObjectType();
  v2 = v12.receiver;
  [(AgeRatingBadgeView *)&v12 layoutSubviews];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
  sub_1007477B4();
  [v4 sizeThatFits:{v5, v6, v12.receiver, v12.super_class}];
  v8 = v7;
  v10 = v9;
  sub_1007477B4();
  v11 = CGRectGetMidX(v13) - v8 * 0.5;
  sub_1007477B4();
  [*&v2[v3] setFrame:{v11, CGRectGetMidY(v14) - v10 * 0.5, v8, v10}];
}

@end
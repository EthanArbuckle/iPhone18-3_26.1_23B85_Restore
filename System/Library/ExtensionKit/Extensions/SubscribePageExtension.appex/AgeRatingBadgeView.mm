@interface AgeRatingBadgeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation AgeRatingBadgeView

- (void)tintColorDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel);
  selfCopy = self;
  tintColor = [(AgeRatingBadgeView *)selfCopy tintColor];
  [v2 setTextColor:tintColor];

  [(AgeRatingBadgeView *)selfCopy setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1004B9360(x, y, width, height);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
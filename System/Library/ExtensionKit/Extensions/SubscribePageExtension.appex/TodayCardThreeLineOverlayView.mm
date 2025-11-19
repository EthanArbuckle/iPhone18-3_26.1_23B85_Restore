@interface TodayCardThreeLineOverlayView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TodayCardThreeLineOverlayView

- (void)layoutSubviews
{
  v2 = self;
  sub_10067DB14();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_10067DEA0(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10067E7B0(a3);
}

@end
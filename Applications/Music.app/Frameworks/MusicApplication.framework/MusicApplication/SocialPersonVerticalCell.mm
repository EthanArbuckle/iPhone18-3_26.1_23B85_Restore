@interface SocialPersonVerticalCell
- (CGRect)bounds;
- (CGRect)frame;
- (MPButton)accessibilityCloseButton;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SocialPersonVerticalCell

- (void)layoutSubviews
{
  v2 = self;
  sub_11661C();
}

- (CGRect)frame
{
  sub_116E7C(self, a2, &selRef_frame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_116F4C(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_116E7C(self, a2, &selRef_bounds);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_116F4C(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_117074(a3);
}

- (MPButton)accessibilityCloseButton
{
  v2 = self;
  sub_117824();
  v4 = v3;

  return v4;
}

@end
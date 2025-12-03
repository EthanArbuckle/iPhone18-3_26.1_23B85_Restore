@interface SocialPersonVerticalCell
- (CGRect)bounds;
- (CGRect)frame;
- (MPButton)accessibilityCloseButton;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SocialPersonVerticalCell

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  sub_116F4C(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_117074(change);
}

- (MPButton)accessibilityCloseButton
{
  selfCopy = self;
  sub_117824();
  v4 = v3;

  return v4;
}

@end
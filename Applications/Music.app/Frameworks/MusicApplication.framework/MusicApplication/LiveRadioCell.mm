@interface LiveRadioCell
- (CGRect)bounds;
- (CGRect)frame;
- (NSString)description;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation LiveRadioCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_151590(change);
}

- (CGRect)frame
{
  sub_88978(self, a2, &selRef_frame);
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
  sub_153268(&selRef_frame, &selRef_setFrame_, x, y, width, height);
}

- (CGRect)bounds
{
  sub_88978(self, a2, &selRef_bounds);
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
  sub_153268(&selRef_bounds, &selRef_setBounds_, x, y, width, height);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_153378();
}

- (NSString)description
{
  selfCopy = self;
  sub_153D54();

  v3 = sub_AB9260();

  return v3;
}

@end
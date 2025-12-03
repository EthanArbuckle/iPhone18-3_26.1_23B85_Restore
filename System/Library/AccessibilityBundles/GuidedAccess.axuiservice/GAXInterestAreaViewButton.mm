@interface GAXInterestAreaViewButton
+ (GAXInterestAreaViewButton)buttonWithImage:(id)image;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation GAXInterestAreaViewButton

+ (GAXInterestAreaViewButton)buttonWithImage:(id)image
{
  imageCopy = image;
  v5 = [self buttonWithType:0];
  [v5 setImage:imageCopy forState:0];

  [v5 sizeToFit];

  return v5;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(GAXInterestAreaViewButton *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (id)accessibilityLabel
{
  if ([(GAXInterestAreaViewButton *)self isCloseButton])
  {
    v2 = @"AX_CLOSE_BUTTON";
  }

  else
  {
    v2 = @"AX_RESIZE_KNOB";
  }

  return GAXLocString(v2);
}

- (id)accessibilityHint
{
  if ([(GAXInterestAreaViewButton *)self isCloseButton])
  {
    v2 = 0;
  }

  else
  {
    v2 = GAXLocString(@"AX_RESIZE_KNOB_HINT");
  }

  return v2;
}

- (id)accessibilityValue
{
  v2 = [(GAXInterestAreaViewButton *)self knobPosition]- 1;
  if (v2 <= 7 && ((0x8Bu >> v2) & 1) != 0)
  {
    v3 = GAXLocString(off_5D420[v2]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
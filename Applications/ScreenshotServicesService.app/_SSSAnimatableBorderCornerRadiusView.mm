@interface _SSSAnimatableBorderCornerRadiusView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
@end

@implementation _SSSAnimatableBorderCornerRadiusView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _SSSAnimatableBorderCornerRadiusView;
  if ([(_SSSAnimatableBorderCornerRadiusView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"cornerRadius"];
  }

  return v5;
}

- (void)setBorderWidth:(double)width
{
  layer = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  [layer setBorderWidth:width];
}

- (double)borderWidth
{
  layer = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

- (UIColor)borderColor
{
  layer = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [layer borderColor]);

  return v3;
}

@end
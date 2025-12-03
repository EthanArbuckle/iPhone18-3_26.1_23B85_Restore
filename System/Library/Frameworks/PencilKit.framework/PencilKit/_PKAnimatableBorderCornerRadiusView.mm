@interface _PKAnimatableBorderCornerRadiusView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
@end

@implementation _PKAnimatableBorderCornerRadiusView

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _PKAnimatableBorderCornerRadiusView;
  if ([(_PKAnimatableBorderCornerRadiusView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
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
  layer = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  [layer setBorderWidth:width];
}

- (double)borderWidth
{
  layer = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  layer = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  cGColor = [colorCopy CGColor];

  [layer setBorderColor:cGColor];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  layer = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(layer, "borderColor")}];

  return v4;
}

@end
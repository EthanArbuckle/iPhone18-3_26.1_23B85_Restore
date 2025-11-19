@interface _PKAnimatableBorderCornerRadiusView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
@end

@implementation _PKAnimatableBorderCornerRadiusView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _PKAnimatableBorderCornerRadiusView;
  if ([(_PKAnimatableBorderCornerRadiusView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"cornerRadius"];
  }

  return v5;
}

- (void)setBorderWidth:(double)a3
{
  v4 = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  [v4 setBorderWidth:a3];
}

- (double)borderWidth
{
  v2 = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v6 = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

- (UIColor)borderColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(_PKAnimatableBorderCornerRadiusView *)self layer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "borderColor")}];

  return v4;
}

@end
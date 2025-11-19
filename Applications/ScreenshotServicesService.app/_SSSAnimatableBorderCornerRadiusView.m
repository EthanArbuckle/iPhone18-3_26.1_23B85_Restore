@interface _SSSAnimatableBorderCornerRadiusView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIColor)borderColor;
- (double)borderWidth;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
@end

@implementation _SSSAnimatableBorderCornerRadiusView

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _SSSAnimatableBorderCornerRadiusView;
  if ([(_SSSAnimatableBorderCornerRadiusView *)&v7 _shouldAnimatePropertyWithKey:v4])
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
  v4 = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  [v4 setBorderWidth:a3];
}

- (double)borderWidth
{
  v2 = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v6 = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  v5 = [v4 CGColor];

  [v6 setBorderColor:v5];
}

- (UIColor)borderColor
{
  v2 = [(_SSSAnimatableBorderCornerRadiusView *)self layer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 borderColor]);

  return v3;
}

@end
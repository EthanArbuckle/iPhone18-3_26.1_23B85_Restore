@interface SSSPathView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setFillColor:(id)a3;
- (void)setPath:(id)a3;
@end

@implementation SSSPathView

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(SSSPathView *)self _shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

- (UIBezierPath)path
{
  v2 = [(SSSPathView *)self _shapeLayer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [v2 path]);

  return v3;
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v6 = [(SSSPathView *)self _shapeLayer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (UIColor)fillColor
{
  v2 = [(SSSPathView *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 fillColor]);

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SSSPathView;
  if ([(SSSPathView *)&v7 _shouldAnimatePropertyWithKey:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"path"];
  }

  return v5;
}

@end
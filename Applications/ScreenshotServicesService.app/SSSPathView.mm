@interface SSSPathView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setFillColor:(id)color;
- (void)setPath:(id)path;
@end

@implementation SSSPathView

- (void)setPath:(id)path
{
  pathCopy = path;
  _shapeLayer = [(SSSPathView *)self _shapeLayer];
  cGPath = [pathCopy CGPath];

  [_shapeLayer setPath:cGPath];
}

- (UIBezierPath)path
{
  _shapeLayer = [(SSSPathView *)self _shapeLayer];
  v3 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [_shapeLayer path]);

  return v3;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  _shapeLayer = [(SSSPathView *)self _shapeLayer];
  cGColor = [colorCopy CGColor];

  [_shapeLayer setFillColor:cGColor];
}

- (UIColor)fillColor
{
  _shapeLayer = [(SSSPathView *)self _shapeLayer];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [_shapeLayer fillColor]);

  return v3;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = SSSPathView;
  if ([(SSSPathView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [keyCopy isEqualToString:@"path"];
  }

  return v5;
}

@end
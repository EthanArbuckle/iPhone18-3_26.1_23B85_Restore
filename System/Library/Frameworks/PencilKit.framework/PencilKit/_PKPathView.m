@interface _PKPathView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setFillColor:(id)a3;
- (void)setPath:(id)a3;
@end

@implementation _PKPathView

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(_PKPathView *)self _shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

- (UIBezierPath)path
{
  v2 = MEMORY[0x1E69DC728];
  v3 = [(_PKPathView *)self _shapeLayer];
  v4 = [v2 bezierPathWithCGPath:{objc_msgSend(v3, "path")}];

  return v4;
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v6 = [(_PKPathView *)self _shapeLayer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (UIColor)fillColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(_PKPathView *)self _shapeLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "fillColor")}];

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _PKPathView;
  if ([(_PKPathView *)&v7 _shouldAnimatePropertyWithKey:v4])
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
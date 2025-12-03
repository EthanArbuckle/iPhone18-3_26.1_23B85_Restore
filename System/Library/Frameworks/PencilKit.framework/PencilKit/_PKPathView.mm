@interface _PKPathView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIBezierPath)path;
- (UIColor)fillColor;
- (void)setFillColor:(id)color;
- (void)setPath:(id)path;
@end

@implementation _PKPathView

- (void)setPath:(id)path
{
  pathCopy = path;
  _shapeLayer = [(_PKPathView *)self _shapeLayer];
  cGPath = [pathCopy CGPath];

  [_shapeLayer setPath:cGPath];
}

- (UIBezierPath)path
{
  v2 = MEMORY[0x1E69DC728];
  _shapeLayer = [(_PKPathView *)self _shapeLayer];
  v4 = [v2 bezierPathWithCGPath:{objc_msgSend(_shapeLayer, "path")}];

  return v4;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  _shapeLayer = [(_PKPathView *)self _shapeLayer];
  cGColor = [colorCopy CGColor];

  [_shapeLayer setFillColor:cGColor];
}

- (UIColor)fillColor
{
  v2 = MEMORY[0x1E69DC888];
  _shapeLayer = [(_PKPathView *)self _shapeLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(_shapeLayer, "fillColor")}];

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  v7.receiver = self;
  v7.super_class = _PKPathView;
  if ([(_PKPathView *)&v7 _shouldAnimatePropertyWithKey:keyCopy])
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
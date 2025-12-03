@interface _HKShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UIBezierPath)path;
- (void)setPath:(id)path;
@end

@implementation _HKShapeView

- (void)setPath:(id)path
{
  pathCopy = path;
  shapeLayer = [(_HKShapeView *)self shapeLayer];
  cGPath = [pathCopy CGPath];

  [shapeLayer setPath:cGPath];
}

- (UIBezierPath)path
{
  shapeLayer = [(_HKShapeView *)self shapeLayer];
  path = [shapeLayer path];

  if (path)
  {
    v5 = MEMORY[0x277D75208];
    shapeLayer2 = [(_HKShapeView *)self shapeLayer];
    v7 = [v5 bezierPathWithCGPath:{objc_msgSend(shapeLayer2, "path")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _HKShapeView;
    v5 = [(_HKShapeView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end
@interface _HKShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UIBezierPath)path;
- (void)setPath:(id)a3;
@end

@implementation _HKShapeView

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(_HKShapeView *)self shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

- (UIBezierPath)path
{
  v3 = [(_HKShapeView *)self shapeLayer];
  v4 = [v3 path];

  if (v4)
  {
    v5 = MEMORY[0x277D75208];
    v6 = [(_HKShapeView *)self shapeLayer];
    v7 = [v5 bezierPathWithCGPath:{objc_msgSend(v6, "path")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _HKShapeView;
    v5 = [(_HKShapeView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end
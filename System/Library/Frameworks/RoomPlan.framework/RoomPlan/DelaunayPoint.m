@interface DelaunayPoint
- (DelaunayPoint)initWithValue:(DelaunayPoint *)self;
@end

@implementation DelaunayPoint

- (DelaunayPoint)initWithValue:(DelaunayPoint *)self
{
  v3 = v2;
  v8.receiver = self;
  v8.super_class = DelaunayPoint;
  v4 = [(DelaunayPoint *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *v4->_value = v3;
    v6 = v4;
  }

  return v5;
}

@end
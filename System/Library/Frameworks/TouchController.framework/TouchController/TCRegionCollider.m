@interface TCRegionCollider
- (BOOL)containsPoint:(CGPoint)a3;
- (TCRegionCollider)initWithRegion:(int64_t)a3 TouchController:(id)a4;
- (int64_t)colliderShape;
@end

@implementation TCRegionCollider

- (TCRegionCollider)initWithRegion:(int64_t)a3 TouchController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = TCRegionCollider;
  v7 = [(TCRegionCollider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_region = a3;
    v7->_enabled = 1;
    objc_storeWeak(&v7->_touchController, v6);
  }

  return v8;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  if (!self->_enabled)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_touchController);
  [WeakRetained size];
  v8 = v7;

  v9 = objc_loadWeakRetained(&self->_touchController);
  [v9 size];
  v11 = v10;

  v12 = v8 * 0.5;
  v13 = x;
  v14 = y;
  if (!self->_region)
  {
    v19 = v12 + -10.0;
    if (v13 >= 10.0 && v19 > v13 && v14 >= 10.0)
    {
      v17 = v11 + -10.0;
      return v17 >= v14;
    }

    return 0;
  }

  if ((v12 + 10.0) > v13 || (v8 + -10.0) <= v13 || v14 < 10.0)
  {
    return 0;
  }

  v17 = v11 + -10.0;
  return v17 >= v14;
}

- (int64_t)colliderShape
{
  if (self->_region)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

@end
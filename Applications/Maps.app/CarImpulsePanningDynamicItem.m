@interface CarImpulsePanningDynamicItem
- (CGAffineTransform)transform;
- (CGPoint)center;
- (CGRect)bounds;
- (CarImpulsePanningDynamicItem)initWithBounds:(CGRect)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation CarImpulsePanningDynamicItem

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_transform.tx = *&a3->tx;
  *&self->_transform.c = v4;
  *&self->_transform.a = v3;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CarImpulsePanningDynamicItem)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  result = [(CarImpulsePanningDynamicItem *)self init];
  if (result)
  {
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
  }

  return result;
}

@end
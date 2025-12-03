@interface MKLayer
- (BOOL)containsPoint:(CGPoint)point;
- (CGPoint)hitOffset;
- (CGPoint)hitOutset;
- (CGRect)hitBounds;
- (void)setBounds:(CGRect)bounds;
- (void)setHitOffset:(CGPoint)offset;
- (void)setHitOutset:(CGPoint)outset;
@end

@implementation MKLayer

- (CGRect)hitBounds
{
  x = self->_hitBounds.origin.x;
  y = self->_hitBounds.origin.y;
  width = self->_hitBounds.size.width;
  height = self->_hitBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)hitOutset
{
  x = self->_hitOutset.x;
  y = self->_hitOutset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)hitOffset
{
  x = self->_hitOffset.x;
  y = self->_hitOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(MKLayer *)self hitBounds];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = MKLayer;
  [(MKLayer *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(MKLayer *)self bounds];
  v6 = CGRectOffset(v5, self->_hitOffset.x, self->_hitOffset.y);
  self->_hitBounds = CGRectInset(v6, -self->_hitOutset.x, -self->_hitOutset.y);
}

- (void)setHitOffset:(CGPoint)offset
{
  p_hitOffset = &self->_hitOffset;
  self->_hitOffset = offset;
  p_hitBounds = &self->_hitBounds;
  [(MKLayer *)self bounds];
  v7 = CGRectOffset(v6, p_hitOffset->x, p_hitOffset->y);
  *p_hitBounds = CGRectInset(v7, -self->_hitOutset.x, -self->_hitOutset.y);
}

- (void)setHitOutset:(CGPoint)outset
{
  p_hitOutset = &self->_hitOutset;
  self->_hitOutset = outset;
  p_hitBounds = &self->_hitBounds;
  [(MKLayer *)self bounds];
  v7 = CGRectOffset(v6, self->_hitOffset.x, self->_hitOffset.y);
  *p_hitBounds = CGRectInset(v7, -p_hitOutset->x, -p_hitOutset->y);
}

@end
@interface AVLabel
- (AVContentIntersectingDelegate)contentIntersectingDelegate;
- (CGRect)contentIntersection;
- (void)setContentIntersection:(CGRect)intersection;
- (void)updateForContentIntersection;
@end

@implementation AVLabel

- (CGRect)contentIntersection
{
  x = self->_contentIntersection.origin.x;
  y = self->_contentIntersection.origin.y;
  width = self->_contentIntersection.size.width;
  height = self->_contentIntersection.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AVContentIntersectingDelegate)contentIntersectingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentIntersectingDelegate);

  return WeakRetained;
}

- (void)updateForContentIntersection
{
  [(AVLabel *)self bounds];
  v5 = (COERCE__INT64(fabs(v3 * v4)) - 0x10000000000000) >> 53;
  v8 = (COERCE__INT64(v3 * v4) >= 0 && v5 <= 0x3FE || (COERCE__INT64(v3 * v4) - 1) <= 0xFFFFFFFFFFFFELL) && self->_contentIntersection.size.height * self->_contentIntersection.size.width / (v3 * v4) > 0.8;
  if (self->_isOverVideo != v8)
  {
    self->_isOverVideo = v8;
    contentIntersectingDelegate = [(AVLabel *)self contentIntersectingDelegate];
    if (contentIntersectingDelegate)
    {
      v10 = contentIntersectingDelegate;
      [contentIntersectingDelegate viewIsOverVideoDidChange:self];
      contentIntersectingDelegate = v10;
    }
  }
}

- (void)setContentIntersection:(CGRect)intersection
{
  height = intersection.size.height;
  width = intersection.size.width;
  y = intersection.origin.y;
  x = intersection.origin.x;
  p_contentIntersection = &self->_contentIntersection;
  if (!CGRectEqualToRect(intersection, self->_contentIntersection))
  {
    p_contentIntersection->origin.x = x;
    p_contentIntersection->origin.y = y;
    p_contentIntersection->size.width = width;
    p_contentIntersection->size.height = height;

    [(AVLabel *)self updateForContentIntersection];
  }
}

@end
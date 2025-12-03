@interface BEScrollViewScrollUpdate
- (CGPoint)locationInView:(id)view;
- (CGPoint)translationInView:(id)view;
- (double)timestamp;
- (uint64_t)_scrollEvent;
- (void)initWithScrollEvent:(uint64_t)event phase:;
@end

@implementation BEScrollViewScrollUpdate

- (void)initWithScrollEvent:(uint64_t)event phase:
{
  v6 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = BEScrollViewScrollUpdate;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 2, a2);
      self[1] = event;
    }
  }

  return self;
}

- (double)timestamp
{
  if (self)
  {
    self = self->__scrollEvent;
  }

  [(BEScrollViewScrollUpdate *)self timestamp];
  return result;
}

- (uint64_t)_scrollEvent
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (CGPoint)locationInView:(id)view
{
  if (self)
  {
    self = self->__scrollEvent;
  }

  [(BEScrollViewScrollUpdate *)self locationInView:view];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  if (self)
  {
    self = self->__scrollEvent;
  }

  [(BEScrollViewScrollUpdate *)self _adjustedAcceleratedDeltaInView:view];
  result.y = v4;
  result.x = v3;
  return result;
}

@end
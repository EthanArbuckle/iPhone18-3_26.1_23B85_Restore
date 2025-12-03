@interface ASVWorldGestureDragOffsetCorrector
- (ASVWorldGestureDragOffsetCorrector)initWithInitialDragOffset:(ASVWorldGestureDragOffsetCorrector *)self thresholdDragOffset:(SEL)offset;
- (uint64_t)currentDragOffset;
@end

@implementation ASVWorldGestureDragOffsetCorrector

- (ASVWorldGestureDragOffsetCorrector)initWithInitialDragOffset:(ASVWorldGestureDragOffsetCorrector *)self thresholdDragOffset:(SEL)offset
{
  v4 = v3;
  v5 = v2;
  v9.receiver = self;
  v9.super_class = ASVWorldGestureDragOffsetCorrector;
  v6 = [(ASVWorldGestureDragOffsetCorrector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *v6->_initialDragOffset = v5;
    *v6->_thresholdDragOffset = v4;
    v6->_startTime = CACurrentMediaTime();
  }

  return v7;
}

- (uint64_t)currentDragOffset
{
  v2 = CACurrentMediaTime();
  [self startTime];
  if (v2 - v3 >= 0.25)
  {

    return [self initialDragOffset];
  }

  else
  {
    [self thresholdDragOffset];
    return [self initialDragOffset];
  }
}

@end
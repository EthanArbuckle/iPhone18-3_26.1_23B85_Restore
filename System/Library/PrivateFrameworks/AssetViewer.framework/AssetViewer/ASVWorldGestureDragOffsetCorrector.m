@interface ASVWorldGestureDragOffsetCorrector
- (ASVWorldGestureDragOffsetCorrector)initWithInitialDragOffset:(ASVWorldGestureDragOffsetCorrector *)self thresholdDragOffset:(SEL)a2;
- (uint64_t)currentDragOffset;
@end

@implementation ASVWorldGestureDragOffsetCorrector

- (ASVWorldGestureDragOffsetCorrector)initWithInitialDragOffset:(ASVWorldGestureDragOffsetCorrector *)self thresholdDragOffset:(SEL)a2
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
  [a1 startTime];
  if (v2 - v3 >= 0.25)
  {

    return [a1 initialDragOffset];
  }

  else
  {
    [a1 thresholdDragOffset];
    return [a1 initialDragOffset];
  }
}

@end
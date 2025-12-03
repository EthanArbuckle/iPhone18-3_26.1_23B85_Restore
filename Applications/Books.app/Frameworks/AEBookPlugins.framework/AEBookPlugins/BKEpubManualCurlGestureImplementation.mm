@interface BKEpubManualCurlGestureImplementation
- (BKEpubManualCurlGestureImplementation)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration;
- (CGPoint)endPoint;
- (CGPoint)locationInView:(id)view;
- (CGPoint)startLocationInView:(id)view;
- (CGPoint)startPoint;
- (CGPoint)translationInView:(id)view;
- (CGPoint)velocity;
- (CGPoint)velocityInView:(id)view;
- (void)setStartTime:(double)time;
@end

@implementation BKEpubManualCurlGestureImplementation

- (BKEpubManualCurlGestureImplementation)initWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  v11.receiver = self;
  v11.super_class = BKEpubManualCurlGestureImplementation;
  result = [(BKEpubManualCurlGestureImplementation *)&v11 init];
  if (result)
  {
    result->_startPoint.x = v9;
    result->_startPoint.y = v8;
    result->_endPoint.x = x;
    result->_endPoint.y = y;
    result->_duration = duration;
    result->_velocity.x = (x - v9) / duration;
    result->_velocity.y = (y - v8) / duration;
  }

  return result;
}

- (void)setStartTime:(double)time
{
  v3 = self->_duration + time;
  self->_startTime = time;
  self->_endTime = v3;
}

- (CGPoint)startLocationInView:(id)view
{
  [view convertPoint:0 fromView:{self->_startPoint.x, self->_startPoint.y}];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  [(BKEpubManualCurlGestureImplementation *)self nextTime];
  v6 = v5;
  [(BKEpubManualCurlGestureImplementation *)self startTime];
  v8 = v6 - v7;
  [(BKEpubManualCurlGestureImplementation *)self duration];
  v10 = v8 / v9;
  [(BKEpubManualCurlGestureImplementation *)self startPoint];
  v12 = v11;
  [(BKEpubManualCurlGestureImplementation *)self endPoint];
  v14 = v13;
  [(BKEpubManualCurlGestureImplementation *)self startPoint];
  v16 = v12 + (v14 - v15) * v10;
  [(BKEpubManualCurlGestureImplementation *)self startPoint];
  v18 = v17;
  [(BKEpubManualCurlGestureImplementation *)self endPoint];
  v20 = v19;
  [(BKEpubManualCurlGestureImplementation *)self startPoint];
  [viewCopy convertPoint:0 fromView:{v16, v18 + (v20 - v21) * v10}];
  v23 = v22;
  v25 = v24;

  v26 = v23;
  v27 = v25;
  result.y = v27;
  result.x = v26;
  return result;
}

- (CGPoint)translationInView:(id)view
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  viewCopy = view;
  [viewCopy convertPoint:0 fromView:{x, y}];
  v8 = v7;
  v10 = v9;
  [(BKEpubManualCurlGestureImplementation *)self locationInView:viewCopy];
  v12 = v11;
  v14 = v13;

  v15 = v12 - v8;
  v16 = v14 - v10;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)velocityInView:(id)view
{
  viewCopy = view;
  [(BKEpubManualCurlGestureImplementation *)self velocity];
  [viewCopy convertPoint:0 fromView:?];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)velocity
{
  x = self->_velocity.x;
  y = self->_velocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
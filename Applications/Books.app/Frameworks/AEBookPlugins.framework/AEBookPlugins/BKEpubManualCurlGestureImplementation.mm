@interface BKEpubManualCurlGestureImplementation
- (BKEpubManualCurlGestureImplementation)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5;
- (CGPoint)endPoint;
- (CGPoint)locationInView:(id)a3;
- (CGPoint)startLocationInView:(id)a3;
- (CGPoint)startPoint;
- (CGPoint)translationInView:(id)a3;
- (CGPoint)velocity;
- (CGPoint)velocityInView:(id)a3;
- (void)setStartTime:(double)a3;
@end

@implementation BKEpubManualCurlGestureImplementation

- (BKEpubManualCurlGestureImplementation)initWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v11.receiver = self;
  v11.super_class = BKEpubManualCurlGestureImplementation;
  result = [(BKEpubManualCurlGestureImplementation *)&v11 init];
  if (result)
  {
    result->_startPoint.x = v9;
    result->_startPoint.y = v8;
    result->_endPoint.x = x;
    result->_endPoint.y = y;
    result->_duration = a5;
    result->_velocity.x = (x - v9) / a5;
    result->_velocity.y = (y - v8) / a5;
  }

  return result;
}

- (void)setStartTime:(double)a3
{
  v3 = self->_duration + a3;
  self->_startTime = a3;
  self->_endTime = v3;
}

- (CGPoint)startLocationInView:(id)a3
{
  [a3 convertPoint:0 fromView:{self->_startPoint.x, self->_startPoint.y}];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
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
  [v4 convertPoint:0 fromView:{v16, v18 + (v20 - v21) * v10}];
  v23 = v22;
  v25 = v24;

  v26 = v23;
  v27 = v25;
  result.y = v27;
  result.x = v26;
  return result;
}

- (CGPoint)translationInView:(id)a3
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  v6 = a3;
  [v6 convertPoint:0 fromView:{x, y}];
  v8 = v7;
  v10 = v9;
  [(BKEpubManualCurlGestureImplementation *)self locationInView:v6];
  v12 = v11;
  v14 = v13;

  v15 = v12 - v8;
  v16 = v14 - v10;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)velocityInView:(id)a3
{
  v4 = a3;
  [(BKEpubManualCurlGestureImplementation *)self velocity];
  [v4 convertPoint:0 fromView:?];
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
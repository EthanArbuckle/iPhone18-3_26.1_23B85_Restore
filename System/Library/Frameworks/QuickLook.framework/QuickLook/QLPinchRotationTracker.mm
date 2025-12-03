@interface QLPinchRotationTracker
- (CGAffineTransform)trackedTransform;
- (CGPoint)anchorPoint;
- (CGPoint)trackedCenter;
- (CGRect)trackedBounds;
- (QLPinchRotationTracker)init;
- (_QLDismissGestureTrackingVelocity)trackedVelocity;
- (void)trackScale:(double)scale;
- (void)update;
@end

@implementation QLPinchRotationTracker

- (QLPinchRotationTracker)init
{
  v3.receiver = self;
  v3.super_class = QLPinchRotationTracker;
  result = [(QLPinchRotationTracker *)&v3 init];
  if (result)
  {
    result->_targetZoom = 0.35;
    result->_minimumZoomForDismissal = 0.95;
  }

  return result;
}

- (void)trackScale:(double)scale
{
  self->_previousScale = self->_trackedScale;
  self->_trackedScale = scale;
  [(QLPinchRotationTracker *)self update];
}

- (_QLDismissGestureTrackingVelocity)trackedVelocity
{
  trackedScale = self->_trackedScale;
  rotation = self->_rotation;
  v4 = 0.0;
  v5 = 0.0;
  result.var3 = rotation;
  result.var2 = trackedScale;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (CGRect)trackedBounds
{
  x = self->_initialBounds.origin.x;
  y = self->_initialBounds.origin.y;
  width = self->_initialBounds.size.width;
  height = self->_initialBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)update
{
  trackedScale = self->_trackedScale;
  self->_shouldFinishDismissal = trackedScale < self->_minimumZoomForDismissal;
  v4 = MEMORY[0x277CBF2C0];
  v5 = *MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&self->_trackedTransform.a = *MEMORY[0x277CBF2C0];
  *&self->_trackedTransform.c = v6;
  v7 = *(v4 + 32);
  *&self->_trackedTransform.tx = v7;
  *&v13.a = v5;
  *&v13.c = v6;
  *&v13.tx = v7;
  CGAffineTransformScale(&v14, &v13, trackedScale, trackedScale);
  v8 = *&v14.c;
  *&self->_trackedTransform.a = *&v14.a;
  *&self->_trackedTransform.c = v8;
  *&self->_trackedTransform.tx = *&v14.tx;
  rotation = self->_rotation;
  v10 = *&self->_trackedTransform.c;
  *&v13.a = *&self->_trackedTransform.a;
  *&v13.c = v10;
  *&v13.tx = *&self->_trackedTransform.tx;
  CGAffineTransformRotate(&v14, &v13, rotation);
  v11 = *&v14.c;
  *&self->_trackedTransform.a = *&v14.a;
  *&self->_trackedTransform.c = v11;
  *&self->_trackedTransform.tx = *&v14.tx;
  self->_trackedCenter = vaddq_f64(vaddq_f64(vsubq_f64(self->_location, self->_initialGestureLocation), self->_initialTrackingCenter), self->_anchorLocationOffset);
  v12 = 1.0;
  if ((1.0 - trackedScale) / (1.0 - self->_targetZoom) <= 1.0)
  {
    v12 = (1.0 - trackedScale) / (1.0 - self->_targetZoom);
  }

  self->_dismissalProgress = fmax(v12, 0.0);
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)trackedCenter
{
  x = self->_trackedCenter.x;
  y = self->_trackedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGAffineTransform)trackedTransform
{
  v3 = *&self[3].b;
  *&retstr->a = *&self[2].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].d;
  return self;
}

@end
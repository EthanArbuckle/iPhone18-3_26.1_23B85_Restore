@interface PKInkSmoothingDescriptor
- (PKInkSmoothingDescriptor)initWithStylusSmoothing:(double)smoothing touch:(double)touch velocity:(double)velocity angle:(double)angle radius:(double)radius;
- (id)mutableCopy;
@end

@implementation PKInkSmoothingDescriptor

- (PKInkSmoothingDescriptor)initWithStylusSmoothing:(double)smoothing touch:(double)touch velocity:(double)velocity angle:(double)angle radius:(double)radius
{
  v13.receiver = self;
  v13.super_class = PKInkSmoothingDescriptor;
  result = [(PKInkSmoothingDescriptor *)&v13 init];
  if (result)
  {
    result->_stylusSmoothing = smoothing;
    result->_touchSmoothing = touch;
    result->_velocitySmoothing = velocity;
    result->_angleSmoothing = angle;
    result->_radiusSmoothing = radius;
  }

  return result;
}

- (id)mutableCopy
{
  v3 = [PKInkSmoothingDescriptor alloc];
  stylusSmoothing = self->_stylusSmoothing;
  touchSmoothing = self->_touchSmoothing;
  velocitySmoothing = self->_velocitySmoothing;
  angleSmoothing = self->_angleSmoothing;
  radiusSmoothing = self->_radiusSmoothing;

  return [(PKInkSmoothingDescriptor *)v3 initWithStylusSmoothing:stylusSmoothing touch:touchSmoothing velocity:velocitySmoothing angle:angleSmoothing radius:radiusSmoothing];
}

@end
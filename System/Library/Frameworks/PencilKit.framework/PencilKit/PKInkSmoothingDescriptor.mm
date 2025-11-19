@interface PKInkSmoothingDescriptor
- (PKInkSmoothingDescriptor)initWithStylusSmoothing:(double)a3 touch:(double)a4 velocity:(double)a5 angle:(double)a6 radius:(double)a7;
- (id)mutableCopy;
@end

@implementation PKInkSmoothingDescriptor

- (PKInkSmoothingDescriptor)initWithStylusSmoothing:(double)a3 touch:(double)a4 velocity:(double)a5 angle:(double)a6 radius:(double)a7
{
  v13.receiver = self;
  v13.super_class = PKInkSmoothingDescriptor;
  result = [(PKInkSmoothingDescriptor *)&v13 init];
  if (result)
  {
    result->_stylusSmoothing = a3;
    result->_touchSmoothing = a4;
    result->_velocitySmoothing = a5;
    result->_angleSmoothing = a6;
    result->_radiusSmoothing = a7;
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
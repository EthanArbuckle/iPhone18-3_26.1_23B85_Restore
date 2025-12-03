@interface PKInkAnimationDescriptor
- (PKInkAnimationDescriptor)initWithDuration:(double)duration sizeDelta:(double)delta;
- (id)mutableCopy;
@end

@implementation PKInkAnimationDescriptor

- (PKInkAnimationDescriptor)initWithDuration:(double)duration sizeDelta:(double)delta
{
  v7.receiver = self;
  v7.super_class = PKInkAnimationDescriptor;
  result = [(PKInkAnimationDescriptor *)&v7 init];
  if (result)
  {
    result->_duration = duration;
    result->_sizeDelta = delta;
  }

  return result;
}

- (id)mutableCopy
{
  v3 = [PKInkAnimationDescriptor alloc];
  duration = self->_duration;
  sizeDelta = self->_sizeDelta;

  return [(PKInkAnimationDescriptor *)v3 initWithDuration:duration sizeDelta:sizeDelta];
}

@end
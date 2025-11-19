@interface PKInkAnimationDescriptor
- (PKInkAnimationDescriptor)initWithDuration:(double)a3 sizeDelta:(double)a4;
- (id)mutableCopy;
@end

@implementation PKInkAnimationDescriptor

- (PKInkAnimationDescriptor)initWithDuration:(double)a3 sizeDelta:(double)a4
{
  v7.receiver = self;
  v7.super_class = PKInkAnimationDescriptor;
  result = [(PKInkAnimationDescriptor *)&v7 init];
  if (result)
  {
    result->_duration = a3;
    result->_sizeDelta = a4;
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
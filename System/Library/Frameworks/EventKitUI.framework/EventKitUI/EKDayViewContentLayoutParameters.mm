@interface EKDayViewContentLayoutParameters
- (BOOL)isEqual:(id)equal;
- (CGSize)boundsSize;
- (EKDayViewContentLayoutParameters)initWithBoundsSize:(CGSize)size;
@end

@implementation EKDayViewContentLayoutParameters

- (EKDayViewContentLayoutParameters)initWithBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = EKDayViewContentLayoutParameters;
  result = [(EKDayViewContentLayoutParameters *)&v6 init];
  if (result)
  {
    result->_boundsSize.width = width;
    result->_boundsSize.height = height;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v6 = CGSizeNearlyEqualToSize();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (CGSize)boundsSize
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
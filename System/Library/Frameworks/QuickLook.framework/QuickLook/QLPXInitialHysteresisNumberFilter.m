@interface QLPXInitialHysteresisNumberFilter
- (double)outputDerivative;
- (double)updatedOutput;
@end

@implementation QLPXInitialHysteresisNumberFilter

- (double)updatedOutput
{
  [(QLPXNumberFilter *)self output];
  v4 = v3;
  [(QLPXNumberFilter *)self input];
  v6 = v5;
  if (!self->_didReachThreshold)
  {
    [(QLPXInitialHysteresisNumberFilter *)self hysteresis];
    if (v6 - v4 >= v7 || (v7 = -v7, v6 - v4 <= v7))
    {
      self->_offset = v7;
      self->_didReachThreshold = 1;
    }

    else if (!self->_didReachThreshold)
    {
      return v4;
    }
  }

  return v6 - self->_offset;
}

- (double)outputDerivative
{
  result = 0.0;
  if (self->_didReachThreshold)
  {
    return 1.0;
  }

  return result;
}

@end
@interface AVZoomRange
+ (AVZoomRange)zoomRangeWithMinZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor;
- (AVZoomRange)initWithMinZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation AVZoomRange

+ (AVZoomRange)zoomRangeWithMinZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinZoomFactor:factor maxZoomFactor:zoomFactor];

  return v4;
}

- (AVZoomRange)initWithMinZoomFactor:(double)factor maxZoomFactor:(double)zoomFactor
{
  v7.receiver = self;
  v7.super_class = AVZoomRange;
  result = [(AVZoomRange *)&v7 init];
  if (result)
  {
    result->_minZoomFactor = factor;
    result->_maxZoomFactor = zoomFactor;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %.2f - %.2f>", NSStringFromClass(v4), self, *&self->_minZoomFactor, *&self->_maxZoomFactor];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      minZoomFactor = self->_minZoomFactor;
      [equal minZoomFactor];
      if (minZoomFactor == v7)
      {
        maxZoomFactor = self->_maxZoomFactor;
        [equal maxZoomFactor];
        LOBYTE(v5) = maxZoomFactor == v9;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  return v5;
}

@end
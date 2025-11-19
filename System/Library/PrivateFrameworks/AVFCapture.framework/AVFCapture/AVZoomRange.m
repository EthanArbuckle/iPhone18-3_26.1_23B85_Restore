@interface AVZoomRange
+ (AVZoomRange)zoomRangeWithMinZoomFactor:(double)a3 maxZoomFactor:(double)a4;
- (AVZoomRange)initWithMinZoomFactor:(double)a3 maxZoomFactor:(double)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation AVZoomRange

+ (AVZoomRange)zoomRangeWithMinZoomFactor:(double)a3 maxZoomFactor:(double)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithMinZoomFactor:a3 maxZoomFactor:a4];

  return v4;
}

- (AVZoomRange)initWithMinZoomFactor:(double)a3 maxZoomFactor:(double)a4
{
  v7.receiver = self;
  v7.super_class = AVZoomRange;
  result = [(AVZoomRange *)&v7 init];
  if (result)
  {
    result->_minZoomFactor = a3;
    result->_maxZoomFactor = a4;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %.2f - %.2f>", NSStringFromClass(v4), self, *&self->_minZoomFactor, *&self->_maxZoomFactor];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      minZoomFactor = self->_minZoomFactor;
      [a3 minZoomFactor];
      if (minZoomFactor == v7)
      {
        maxZoomFactor = self->_maxZoomFactor;
        [a3 maxZoomFactor];
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
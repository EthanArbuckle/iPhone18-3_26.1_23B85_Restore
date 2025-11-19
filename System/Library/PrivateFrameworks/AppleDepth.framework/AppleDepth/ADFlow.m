@interface ADFlow
- (BOOL)shouldProcessMatch:(id)a3;
@end

@implementation ADFlow

- (BOOL)shouldProcessMatch:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_maximalFrameRate <= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [v4 matchedObjectsForStream:0];
      v7 = [v6 firstObject];
      [v7 timestamp];
      v9 = v8;

      if ((v9 - self->_lastFrameTimestamp) * self->_maximalFrameRate <= 0.97)
      {
        v10 = 0;
      }

      else
      {
        self->_lastFrameTimestamp = v9;
        v10 = 1;
      }

      v4 = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
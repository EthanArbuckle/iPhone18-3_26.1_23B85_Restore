@interface ADFlow
- (BOOL)shouldProcessMatch:(id)match;
@end

@implementation ADFlow

- (BOOL)shouldProcessMatch:(id)match
{
  matchCopy = match;
  if (matchCopy)
  {
    if (self->_maximalFrameRate <= 0.0)
    {
      v10 = 1;
    }

    else
    {
      v5 = matchCopy;
      v6 = [matchCopy matchedObjectsForStream:0];
      firstObject = [v6 firstObject];
      [firstObject timestamp];
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

      matchCopy = v5;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
@interface AXSDTimeStamp
- (AXSDTimeStamp)initWithResult:(id)result;
- (AXSDTimeStamp)initWithTime:(double)time andDuration:(double)duration;
@end

@implementation AXSDTimeStamp

- (AXSDTimeStamp)initWithTime:(double)time andDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = AXSDTimeStamp;
  result = [(AXSDTimeStamp *)&v7 init];
  if (result)
  {
    result->_duration = duration;
    result->_time = time;
  }

  return result;
}

- (AXSDTimeStamp)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = AXSDTimeStamp;
  v5 = [(AXSDTimeStamp *)&v9 init];
  if (v5)
  {
    if (resultCopy)
    {
      [resultCopy timeRange];
      v6 = 0 / 0;
      v7 = v6;
    }

    else
    {
      v6 = NAN;
      v7 = NAN;
    }

    v5->_duration = v7;
    v5->_time = v6;
  }

  return v5;
}

@end
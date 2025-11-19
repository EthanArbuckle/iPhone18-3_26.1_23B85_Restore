@interface CAUserAdjustment
- (CAUserAdjustment)initWithXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5;
- (CAUserAdjustment)initWithXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5 timestamp:(double)a6;
@end

@implementation CAUserAdjustment

- (CAUserAdjustment)initWithXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5 timestamp:(double)a6
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAUserAdjustment;
  result = [(CAUserAdjustment *)&v11 init];
  if (result)
  {
    result->_xDelta = a3;
    result->_yDelta = a4;
    result->_luminanceScale = a5;
    result->_timestamp = a6;
  }

  return result;
}

- (CAUserAdjustment)initWithXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5
{
  [objc_msgSend(MEMORY[0x1E695DF00] "now")];

  return [(CAUserAdjustment *)self initWithXDelta:a3 yDelta:a4 luminanceScale:a5 timestamp:v9];
}

@end
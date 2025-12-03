@interface CAUserAdjustment
- (CAUserAdjustment)initWithXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale;
- (CAUserAdjustment)initWithXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale timestamp:(double)timestamp;
@end

@implementation CAUserAdjustment

- (CAUserAdjustment)initWithXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale timestamp:(double)timestamp
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAUserAdjustment;
  result = [(CAUserAdjustment *)&v11 init];
  if (result)
  {
    result->_xDelta = delta;
    result->_yDelta = yDelta;
    result->_luminanceScale = scale;
    result->_timestamp = timestamp;
  }

  return result;
}

- (CAUserAdjustment)initWithXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale
{
  [objc_msgSend(MEMORY[0x1E695DF00] "now")];

  return [(CAUserAdjustment *)self initWithXDelta:delta yDelta:yDelta luminanceScale:scale timestamp:v9];
}

@end
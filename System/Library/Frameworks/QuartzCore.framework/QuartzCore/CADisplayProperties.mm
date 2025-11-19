@interface CADisplayProperties
- (CADisplayProperties)init;
- (CGSize)logicalScale;
- (void)dealloc;
@end

@implementation CADisplayProperties

- (CGSize)logicalScale
{
  width = self->_logicalScale.width;
  height = self->_logicalScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayProperties;
  [(CADisplayProperties *)&v3 dealloc];
}

- (CADisplayProperties)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CADisplayProperties;
  result = [(CADisplayProperties *)&v8 init];
  if (result)
  {
    result->_connectionSeed = 0;
    result->_currentMode = 0;
    result->_overscanAdjustment = 0;
    result->_dmrrEnabled = 0;
    __asm { FMOV            V0.2D, #1.0 }

    result->_logicalScale = _Q0;
    result->_pointScale = 1;
    result->_forceFixedRateLinks = 0;
    result->_mask = 0;
  }

  return result;
}

@end
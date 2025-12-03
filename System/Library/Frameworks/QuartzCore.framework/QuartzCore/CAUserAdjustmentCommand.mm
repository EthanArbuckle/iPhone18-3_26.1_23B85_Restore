@interface CAUserAdjustmentCommand
- (BOOL)transformWhitePointByXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale;
- (CAUserAdjustmentCommand)initWithUserAdjustment:(id)adjustment autoLuminanceBoost:(float)boost;
- (void)dealloc;
@end

@implementation CAUserAdjustmentCommand

- (BOOL)transformWhitePointByXDelta:(double)delta yDelta:(double)yDelta luminanceScale:(double)scale
{
  [(CAUserAdjustment *)self->_userAdjustment xDelta];
  v10 = v9 + delta;
  if (v10 >= self->_minXDelta + -0.000001 && v10 <= self->_maxXDelta + 0.000001 && ([(CAUserAdjustment *)self->_userAdjustment yDelta], v12 = v11 + yDelta, v12 >= self->_minYDelta + -0.000001) && v12 <= self->_maxYDelta + 0.000001 && ([(CAUserAdjustment *)self->_userAdjustment luminanceScale], v14 = v13 * scale, v14 <= self->_maxLuminanceScale + 0.000001))
  {
    v15 = [[CAUserAdjustment alloc] initWithXDelta:v10 yDelta:v12 luminanceScale:v14];
    if (v15)
    {
      v16 = v15;

      self->_userAdjustment = v16;
      LOBYTE(v15) = 1;
    }
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAUserAdjustmentCommand;
  [(CAUserAdjustmentCommand *)&v3 dealloc];
}

- (CAUserAdjustmentCommand)initWithUserAdjustment:(id)adjustment autoLuminanceBoost:(float)boost
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CAUserAdjustmentCommand;
  v6 = [(CAUserAdjustmentCommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_183E214D0;
    *(v6 + 24) = xmmword_183E214D0;
    *(v6 + 5) = 0x3FED70A3D70A3D71;
    v8 = 1.128 / boost;
    if ((1.128 / boost) > 1.08)
    {
      v8 = 1.08;
    }

    *(v6 + 6) = v8;
    if (adjustment)
    {
      adjustmentCopy = adjustment;
    }

    else
    {
      adjustmentCopy = [[CAUserAdjustment alloc] initWithXDelta:0.0 yDelta:0.0 luminanceScale:1.0];
    }

    v7->_userAdjustment = adjustmentCopy;
  }

  return v7;
}

@end
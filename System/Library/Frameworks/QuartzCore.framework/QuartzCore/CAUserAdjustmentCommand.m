@interface CAUserAdjustmentCommand
- (BOOL)transformWhitePointByXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5;
- (CAUserAdjustmentCommand)initWithUserAdjustment:(id)a3 autoLuminanceBoost:(float)a4;
- (void)dealloc;
@end

@implementation CAUserAdjustmentCommand

- (BOOL)transformWhitePointByXDelta:(double)a3 yDelta:(double)a4 luminanceScale:(double)a5
{
  [(CAUserAdjustment *)self->_userAdjustment xDelta];
  v10 = v9 + a3;
  if (v10 >= self->_minXDelta + -0.000001 && v10 <= self->_maxXDelta + 0.000001 && ([(CAUserAdjustment *)self->_userAdjustment yDelta], v12 = v11 + a4, v12 >= self->_minYDelta + -0.000001) && v12 <= self->_maxYDelta + 0.000001 && ([(CAUserAdjustment *)self->_userAdjustment luminanceScale], v14 = v13 * a5, v14 <= self->_maxLuminanceScale + 0.000001))
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

- (CAUserAdjustmentCommand)initWithUserAdjustment:(id)a3 autoLuminanceBoost:(float)a4
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
    v8 = 1.128 / a4;
    if ((1.128 / a4) > 1.08)
    {
      v8 = 1.08;
    }

    *(v6 + 6) = v8;
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = [[CAUserAdjustment alloc] initWithXDelta:0.0 yDelta:0.0 luminanceScale:1.0];
    }

    v7->_userAdjustment = v9;
  }

  return v7;
}

@end
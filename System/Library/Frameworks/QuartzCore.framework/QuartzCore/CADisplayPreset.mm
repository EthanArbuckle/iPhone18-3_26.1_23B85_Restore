@interface CADisplayPreset
- (CADisplayPreset)initWithIsReference:(BOOL)a3 userAdjustment:(id)a4 autoLuminanceBoost:(float)a5;
- (id)userAdjustmentCommand;
- (void)applyUserAdjustmentCommand:(id)a3;
- (void)dealloc;
@end

@implementation CADisplayPreset

- (void)applyUserAdjustmentCommand:(id)a3
{
  v5 = [a3 userAdjustment];

  self->_userAdjustment = [a3 userAdjustment];
}

- (id)userAdjustmentCommand
{
  if (!self->_isReference)
  {
    return 0;
  }

  v4 = [CAUserAdjustmentCommand alloc];
  *&v5 = self->_autoLuminanceBoost;
  v6 = [(CAUserAdjustmentCommand *)v4 initWithUserAdjustment:self->_userAdjustment autoLuminanceBoost:v5];

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayPreset;
  [(CADisplayPreset *)&v3 dealloc];
}

- (CADisplayPreset)initWithIsReference:(BOOL)a3 userAdjustment:(id)a4 autoLuminanceBoost:(float)a5
{
  v7 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CADisplayPreset;
  v8 = [(CADisplayPreset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_autoLuminanceBoost = a5;
    v10 = 100.0;
    v11 = 2.0;
    if (v7)
    {
      v11 = 100.0;
    }

    else
    {
      v10 = 600.0;
    }

    v8->_allowTrueTone = !v7;
    v8->_allowNightShift = !v7;
    v8->_allowAutoBrightness = !v7;
    v8->_minSliderBrightness = v11;
    v8->_maxSliderBrightness = v10;
    v8->_isReference = v7;
    v8->_userAdjustment = a4;
  }

  return v9;
}

@end
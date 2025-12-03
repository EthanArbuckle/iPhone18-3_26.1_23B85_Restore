@interface CADisplayPreset
- (CADisplayPreset)initWithIsReference:(BOOL)reference userAdjustment:(id)adjustment autoLuminanceBoost:(float)boost;
- (id)userAdjustmentCommand;
- (void)applyUserAdjustmentCommand:(id)command;
- (void)dealloc;
@end

@implementation CADisplayPreset

- (void)applyUserAdjustmentCommand:(id)command
{
  userAdjustment = [command userAdjustment];

  self->_userAdjustment = [command userAdjustment];
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

- (CADisplayPreset)initWithIsReference:(BOOL)reference userAdjustment:(id)adjustment autoLuminanceBoost:(float)boost
{
  referenceCopy = reference;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CADisplayPreset;
  v8 = [(CADisplayPreset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_autoLuminanceBoost = boost;
    v10 = 100.0;
    v11 = 2.0;
    if (referenceCopy)
    {
      v11 = 100.0;
    }

    else
    {
      v10 = 600.0;
    }

    v8->_allowTrueTone = !referenceCopy;
    v8->_allowNightShift = !referenceCopy;
    v8->_allowAutoBrightness = !referenceCopy;
    v8->_minSliderBrightness = v11;
    v8->_maxSliderBrightness = v10;
    v8->_isReference = referenceCopy;
    v8->_userAdjustment = adjustment;
  }

  return v9;
}

@end
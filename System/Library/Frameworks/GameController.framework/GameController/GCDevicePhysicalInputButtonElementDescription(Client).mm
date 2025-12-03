@interface GCDevicePhysicalInputButtonElementDescription(Client)
- (void)makeParameters;
@end

@implementation GCDevicePhysicalInputButtonElementDescription(Client)

- (void)makeParameters
{
  v17.receiver = self;
  v17.super_class = &off_1F4EAE758;
  v2 = objc_msgSendSuper2(&v17, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  sources = [self sources];
  v6 = [v3 setWithArray:sources];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 48);
  }

  isAnalog = [self isAnalog];
  if (v2)
  {
    *(v2 + 40) = isAnalog;
    [self pressedThreshold];
    *(v2 + 11) = v8;
    v2[9] = [self eventPressedValueField];
    v2[10] = [self eventAnalogPressValueField];
    v2[11] = [self eventTouchValueField];
    v2[12] = [self eventForceValueField];
  }

  else
  {
    [self pressedThreshold];
    [self eventPressedValueField];
    [self eventAnalogPressValueField];
    [self eventTouchValueField];
    [self eventForceValueField];
  }

  if ([self supportsTouch])
  {
    objc_opt_new();
    touchSources = [OUTLINED_FUNCTION_8_0() touchSources];
    if (touchSources)
    {
      v13 = MEMORY[0x1E695DFD8];
      touchSources2 = [self touchSources];
      v15 = [v13 setWithArray:touchSources2];
      [(_GCDevicePhysicalInputTouchInputParameters *)sources setSources:v15];
    }

    else
    {
      [(_GCDevicePhysicalInputTouchInputParameters *)sources setSources:?];
    }

    [self touchedThreshold];
    [(_GCDevicePhysicalInputTouchInputParameters *)sources setTouchedThreshold:v16];
    [(_GCDevicePhysicalInputButtonElementParameters *)v2 setTouch:sources];
  }

  if ([self supportsForce])
  {
    v10 = objc_opt_new();
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v9, v10, 64);
    }
  }

  return v2;
}

@end
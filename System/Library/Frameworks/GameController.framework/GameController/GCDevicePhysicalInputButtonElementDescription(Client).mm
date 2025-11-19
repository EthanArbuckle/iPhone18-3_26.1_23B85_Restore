@interface GCDevicePhysicalInputButtonElementDescription(Client)
- (void)makeParameters;
@end

@implementation GCDevicePhysicalInputButtonElementDescription(Client)

- (void)makeParameters
{
  v17.receiver = a1;
  v17.super_class = &off_1F4EAE758;
  v2 = objc_msgSendSuper2(&v17, sel_makeParameters);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a1 sources];
  v6 = [v3 setWithArray:v4];
  if (v2)
  {
    objc_setProperty_nonatomic_copy(v2, v5, v6, 48);
  }

  v7 = [a1 isAnalog];
  if (v2)
  {
    *(v2 + 40) = v7;
    [a1 pressedThreshold];
    *(v2 + 11) = v8;
    v2[9] = [a1 eventPressedValueField];
    v2[10] = [a1 eventAnalogPressValueField];
    v2[11] = [a1 eventTouchValueField];
    v2[12] = [a1 eventForceValueField];
  }

  else
  {
    [a1 pressedThreshold];
    [a1 eventPressedValueField];
    [a1 eventAnalogPressValueField];
    [a1 eventTouchValueField];
    [a1 eventForceValueField];
  }

  if ([a1 supportsTouch])
  {
    objc_opt_new();
    v12 = [OUTLINED_FUNCTION_8_0() touchSources];
    if (v12)
    {
      v13 = MEMORY[0x1E695DFD8];
      v14 = [a1 touchSources];
      v15 = [v13 setWithArray:v14];
      [(_GCDevicePhysicalInputTouchInputParameters *)v4 setSources:v15];
    }

    else
    {
      [(_GCDevicePhysicalInputTouchInputParameters *)v4 setSources:?];
    }

    [a1 touchedThreshold];
    [(_GCDevicePhysicalInputTouchInputParameters *)v4 setTouchedThreshold:v16];
    [(_GCDevicePhysicalInputButtonElementParameters *)v2 setTouch:v4];
  }

  if ([a1 supportsForce])
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
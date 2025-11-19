@interface _GCDevicePhysicalInputJoystickElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputJoystickElementParameters)init;
- (double)directionPressedThreshold;
- (id)copyWithZone:(_NSZone *)a3;
- (id)downSources;
- (id)leftSources;
- (id)rightSources;
- (id)upSources;
- (id)xSources;
- (id)xySources;
- (id)ySources;
- (uint64_t)eventPressValueField;
- (uint64_t)eventTouchValueField;
- (uint64_t)eventXValueField;
- (uint64_t)eventYValueField;
- (uint64_t)isAnalog;
- (uint64_t)press;
- (uint64_t)setAnalog:(uint64_t)result;
- (uint64_t)setDirectionPressedThreshold:(uint64_t)result;
- (uint64_t)setEventPressValueField:(uint64_t)result;
- (uint64_t)setEventTouchValueField:(uint64_t)result;
- (uint64_t)setEventXValueField:(uint64_t)result;
- (uint64_t)setEventYValueField:(uint64_t)result;
- (uint64_t)touch;
- (void)setDownSources:(uint64_t)a3;
- (void)setLeftSources:(uint64_t)a3;
- (void)setPress:(uint64_t)a1;
- (void)setRightSources:(uint64_t)a3;
- (void)setTouch:(uint64_t)a1;
- (void)setUpSources:(uint64_t)a3;
- (void)setXSources:(uint64_t)a3;
- (void)setXySources:(uint64_t)a3;
- (void)setYSources:(uint64_t)a3;
@end

@implementation _GCDevicePhysicalInputJoystickElementParameters

- (_GCDevicePhysicalInputJoystickElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputJoystickElementParameters;
  result = [(_GCDevicePhysicalInputJoystickElementParameters *)&v3 init];
  result->_eventXValueField = -1;
  result->_eventYValueField = -1;
  result->_eventPressValueField = -1;
  result->_eventTouchValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputJoystickElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v10 copyWithZone:a3];
  objc_storeStrong(v4 + 6, self->_xySources);
  objc_storeStrong(v4 + 7, self->_xSources);
  objc_storeStrong(v4 + 8, self->_ySources);
  objc_storeStrong(v4 + 9, self->_upSources);
  objc_storeStrong(v4 + 10, self->_leftSources);
  objc_storeStrong(v4 + 11, self->_downSources);
  objc_storeStrong(v4 + 12, self->_rightSources);
  *(v4 + 40) = self->_analog;
  *(v4 + 11) = LODWORD(self->_directionPressedThreshold);
  v4[15] = self->_eventXValueField;
  v4[16] = self->_eventYValueField;
  v4[17] = self->_eventPressValueField;
  v4[18] = self->_eventTouchValueField;
  v5 = [(_GCDevicePhysicalInputPressInputParameters *)self->_press copy];
  v6 = v4[13];
  v4[13] = v5;

  v7 = [(_GCDevicePhysicalInputTouchInputParameters *)self->_touch copy];
  v8 = v4[14];
  v4[14] = v7;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputJoystickElementParameters;
  if (![(_GCDevicePhysicalInputElementParameters *)&v16 isEqual:v4])
  {
    goto LABEL_26;
  }

  xySources = self->_xySources;
  if (xySources != v4[6] && ![(NSSet *)xySources isEqual:?])
  {
    goto LABEL_26;
  }

  if (((xSources = self->_xSources, xSources == v4[7]) || [(NSSet *)xSources isEqual:?]) && ((ySources = self->_ySources, ySources == v4[8]) || [(NSSet *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == v4[9]) || [(NSSet *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == v4[10]) || [(NSSet *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == v4[11]) || [(NSSet *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == v4[12]) || [(NSSet *)rightSources isEqual:?]) && self->_analog == *(v4 + 40) && self->_directionPressedThreshold == *(v4 + 11) && self->_eventXValueField == v4[15] && self->_eventYValueField == v4[16] && self->_eventPressValueField == v4[17] && self->_eventTouchValueField == v4[18] && ((press = self->_press, press == v4[13]) || [(_GCDevicePhysicalInputPressInputParameters *)press isEqual:?]))
  {
    touch = self->_touch;
    if (touch == v4[14])
    {
      v14 = 1;
    }

    else
    {
      v14 = [(_GCDevicePhysicalInputTouchInputParameters *)touch isEqual:?];
    }
  }

  else
  {
LABEL_26:
    v14 = 0;
  }

  return v14;
}

- (uint64_t)eventXValueField
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)eventYValueField
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)eventPressValueField
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)eventTouchValueField
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)isAnalog
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)directionPressedThreshold
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 44);
  return result;
}

- (id)xySources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[7];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)xSources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[7];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)ySources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[8];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)upSources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[9];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)downSources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[11];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)leftSources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[10];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (id)rightSources
{
  v5 = a1;
  if (a1)
  {
    v6 = a1[12];
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x1E69A06B8]);
      v8 = OUTLINED_FUNCTION_18();
      [(_GCDevicePhysicalInputElementParameters *)v8 aliases];
      objc_claimAutoreleasedReturnValue();
      v9 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v9 localizedName];
      objc_claimAutoreleasedReturnValue();
      v10 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v10 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() initWithElementAliases:? localizedName:? symbol:? direction:?];
      v5 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return v5;
}

- (uint64_t)press
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)touch
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (void)setPress:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    v14 = v6;
    v7 = [v6 copy];
    v8 = *(a1 + 104);
    *(a1 + 104) = v7;

    v9 = [(_GCDevicePhysicalInputPressInputParameters *)*(a1 + 104) sources];

    v6 = v14;
    if (!v9)
    {
      v10 = MEMORY[0x1E69A06B8];
      [(_GCDevicePhysicalInputElementParameters *)a1 aliases];
      objc_claimAutoreleasedReturnValue();
      v11 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v11 localizedName];
      objc_claimAutoreleasedReturnValue();
      v12 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v12 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() sourceWithElementAliases:? localizedName:? symbol:?];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
      [(_GCDevicePhysicalInputPressInputParameters *)*(a1 + 104) setSources:v13];

      v6 = v14;
    }
  }
}

- (void)setTouch:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    v14 = v6;
    v7 = [v6 copy];
    v8 = *(a1 + 112);
    *(a1 + 112) = v7;

    v9 = [(_GCDevicePhysicalInputTouchInputParameters *)*(a1 + 112) sources];

    v6 = v14;
    if (!v9)
    {
      v10 = MEMORY[0x1E69A06B8];
      [(_GCDevicePhysicalInputElementParameters *)a1 aliases];
      objc_claimAutoreleasedReturnValue();
      v11 = OUTLINED_FUNCTION_17();
      [(_GCDevicePhysicalInputElementParameters *)v11 localizedName];
      objc_claimAutoreleasedReturnValue();
      v12 = OUTLINED_FUNCTION_14_0();
      [(_GCDevicePhysicalInputElementParameters *)v12 symbol];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_0_7() sourceWithElementAliases:? localizedName:? symbol:?];
      objc_claimAutoreleasedReturnValue();
      v13 = [OUTLINED_FUNCTION_4_3() setWithObject:?];
      [(_GCDevicePhysicalInputTouchInputParameters *)*(a1 + 112) setSources:v13];

      v6 = v14;
    }
  }
}

- (void)setXySources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 48);
  }
}

- (void)setXSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 56);
  }
}

- (void)setYSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 64);
  }
}

- (void)setUpSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 72);
  }
}

- (void)setLeftSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 80);
  }
}

- (void)setDownSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 88);
  }
}

- (void)setRightSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 96);
  }
}

- (uint64_t)setAnalog:(uint64_t)result
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setDirectionPressedThreshold:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = a2;
  }

  return result;
}

- (uint64_t)setEventXValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)setEventYValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

- (uint64_t)setEventPressValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

- (uint64_t)setEventTouchValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

@end
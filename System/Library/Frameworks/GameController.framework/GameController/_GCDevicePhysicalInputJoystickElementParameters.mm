@interface _GCDevicePhysicalInputJoystickElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputJoystickElementParameters)init;
- (double)directionPressedThreshold;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setDownSources:(uint64_t)sources;
- (void)setLeftSources:(uint64_t)sources;
- (void)setPress:(uint64_t)press;
- (void)setRightSources:(uint64_t)sources;
- (void)setTouch:(uint64_t)touch;
- (void)setUpSources:(uint64_t)sources;
- (void)setXSources:(uint64_t)sources;
- (void)setXySources:(uint64_t)sources;
- (void)setYSources:(uint64_t)sources;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputJoystickElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v10 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputJoystickElementParameters;
  if (![(_GCDevicePhysicalInputElementParameters *)&v16 isEqual:equalCopy])
  {
    goto LABEL_26;
  }

  xySources = self->_xySources;
  if (xySources != equalCopy[6] && ![(NSSet *)xySources isEqual:?])
  {
    goto LABEL_26;
  }

  if (((xSources = self->_xSources, xSources == equalCopy[7]) || [(NSSet *)xSources isEqual:?]) && ((ySources = self->_ySources, ySources == equalCopy[8]) || [(NSSet *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == equalCopy[9]) || [(NSSet *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == equalCopy[10]) || [(NSSet *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == equalCopy[11]) || [(NSSet *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == equalCopy[12]) || [(NSSet *)rightSources isEqual:?]) && self->_analog == *(equalCopy + 40) && self->_directionPressedThreshold == *(equalCopy + 11) && self->_eventXValueField == equalCopy[15] && self->_eventYValueField == equalCopy[16] && self->_eventPressValueField == equalCopy[17] && self->_eventTouchValueField == equalCopy[18] && ((press = self->_press, press == equalCopy[13]) || [(_GCDevicePhysicalInputPressInputParameters *)press isEqual:?]))
  {
    touch = self->_touch;
    if (touch == equalCopy[14])
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
  if (self)
  {
    v1 = *(self + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (double)directionPressedThreshold
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 44);
  return result;
}

- (id)xySources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[7];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)xSources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[7];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)ySources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[8];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)upSources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[9];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)downSources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[11];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)leftSources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[10];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
}

- (id)rightSources
{
  selfCopy = self;
  if (self)
  {
    v6 = self[12];
    if (v6)
    {
      selfCopy = v6;
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
      selfCopy = [OUTLINED_FUNCTION_4_3() setWithObject:?];
    }
  }

  return selfCopy;
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

- (void)setPress:(uint64_t)press
{
  v6 = a2;
  if (press)
  {
    v14 = v6;
    v7 = [v6 copy];
    v8 = *(press + 104);
    *(press + 104) = v7;

    sources = [(_GCDevicePhysicalInputPressInputParameters *)*(press + 104) sources];

    v6 = v14;
    if (!sources)
    {
      v10 = MEMORY[0x1E69A06B8];
      [(_GCDevicePhysicalInputElementParameters *)press aliases];
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
      [(_GCDevicePhysicalInputPressInputParameters *)*(press + 104) setSources:v13];

      v6 = v14;
    }
  }
}

- (void)setTouch:(uint64_t)touch
{
  v6 = a2;
  if (touch)
  {
    v14 = v6;
    v7 = [v6 copy];
    v8 = *(touch + 112);
    *(touch + 112) = v7;

    sources = [(_GCDevicePhysicalInputTouchInputParameters *)*(touch + 112) sources];

    v6 = v14;
    if (!sources)
    {
      v10 = MEMORY[0x1E69A06B8];
      [(_GCDevicePhysicalInputElementParameters *)touch aliases];
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
      [(_GCDevicePhysicalInputTouchInputParameters *)*(touch + 112) setSources:v13];

      v6 = v14;
    }
  }
}

- (void)setXySources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 48);
  }
}

- (void)setXSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 56);
  }
}

- (void)setYSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 64);
  }
}

- (void)setUpSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 72);
  }
}

- (void)setLeftSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 80);
  }
}

- (void)setDownSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 88);
  }
}

- (void)setRightSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 96);
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
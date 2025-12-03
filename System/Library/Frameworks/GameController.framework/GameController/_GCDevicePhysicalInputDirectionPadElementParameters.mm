@interface _GCDevicePhysicalInputDirectionPadElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)downSources;
- (id)leftSources;
- (id)rightSources;
- (id)upSources;
- (id)xSources;
- (id)xySources;
- (id)ySources;
- (uint64_t)eventDownValueField;
- (uint64_t)eventLeftValueField;
- (uint64_t)eventRightValueField;
- (uint64_t)eventUpValueField;
- (uint64_t)isAnalog;
- (uint64_t)setAnalog:(uint64_t)result;
- (uint64_t)setEventDownValueField:(uint64_t)result;
- (uint64_t)setEventLeftValueField:(uint64_t)result;
- (uint64_t)setEventRightValueField:(uint64_t)result;
- (uint64_t)setEventUpValueField:(uint64_t)result;
- (void)setDownSources:(uint64_t)sources;
- (void)setLeftSources:(uint64_t)sources;
- (void)setRightSources:(uint64_t)sources;
- (void)setUpSources:(uint64_t)sources;
- (void)setXSources:(uint64_t)sources;
- (void)setXySources:(uint64_t)sources;
- (void)setYSources:(uint64_t)sources;
@end

@implementation _GCDevicePhysicalInputDirectionPadElementParameters

- (_GCDevicePhysicalInputDirectionPadElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputDirectionPadElementParameters;
  result = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v3 init];
  result->_eventUpValueField = -1;
  result->_eventDownValueField = -1;
  result->_eventLeftValueField = -1;
  result->_eventRightValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_xySources);
  objc_storeStrong(v4 + 7, self->_xSources);
  objc_storeStrong(v4 + 8, self->_ySources);
  objc_storeStrong(v4 + 9, self->_upSources);
  objc_storeStrong(v4 + 10, self->_leftSources);
  objc_storeStrong(v4 + 11, self->_downSources);
  objc_storeStrong(v4 + 12, self->_rightSources);
  *(v4 + 40) = self->_analog;
  v4[13] = self->_eventUpValueField;
  v4[14] = self->_eventDownValueField;
  v4[15] = self->_eventLeftValueField;
  v4[16] = self->_eventRightValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputDirectionPadElementParameters;
  v12 = [(_GCDevicePhysicalInputElementParameters *)&v14 isEqual:equalCopy]&& ((xySources = self->_xySources, xySources == equalCopy[6]) || [(NSSet *)xySources isEqual:?]) && ((xSources = self->_xSources, xSources == equalCopy[7]) || [(NSSet *)xSources isEqual:?]) && ((ySources = self->_ySources, ySources == equalCopy[8]) || [(NSSet *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == equalCopy[9]) || [(NSSet *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == equalCopy[10]) || [(NSSet *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == equalCopy[11]) || [(NSSet *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == equalCopy[12]) || [(NSSet *)rightSources isEqual:?]) && self->_analog == *(equalCopy + 40) && self->_eventUpValueField == equalCopy[13] && self->_eventDownValueField == equalCopy[14] && self->_eventLeftValueField == equalCopy[15] && self->_eventRightValueField == equalCopy[16];

  return v12;
}

- (uint64_t)eventUpValueField
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

- (uint64_t)eventDownValueField
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)eventLeftValueField
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)eventRightValueField
{
  if (result)
  {
    return *(result + 128);
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

- (uint64_t)setEventUpValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

- (uint64_t)setEventDownValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

- (uint64_t)setEventLeftValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)setEventRightValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

@end
@interface _GCDevicePhysicalInputDirectionPadElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)setDownSources:(uint64_t)a3;
- (void)setLeftSources:(uint64_t)a3;
- (void)setRightSources:(uint64_t)a3;
- (void)setUpSources:(uint64_t)a3;
- (void)setXSources:(uint64_t)a3;
- (void)setXySources:(uint64_t)a3;
- (void)setYSources:(uint64_t)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputDirectionPadElementParameters;
  v12 = [(_GCDevicePhysicalInputElementParameters *)&v14 isEqual:v4]&& ((xySources = self->_xySources, xySources == v4[6]) || [(NSSet *)xySources isEqual:?]) && ((xSources = self->_xSources, xSources == v4[7]) || [(NSSet *)xSources isEqual:?]) && ((ySources = self->_ySources, ySources == v4[8]) || [(NSSet *)ySources isEqual:?]) && ((upSources = self->_upSources, upSources == v4[9]) || [(NSSet *)upSources isEqual:?]) && ((leftSources = self->_leftSources, leftSources == v4[10]) || [(NSSet *)leftSources isEqual:?]) && ((downSources = self->_downSources, downSources == v4[11]) || [(NSSet *)downSources isEqual:?]) && ((rightSources = self->_rightSources, rightSources == v4[12]) || [(NSSet *)rightSources isEqual:?]) && self->_analog == *(v4 + 40) && self->_eventUpValueField == v4[13] && self->_eventDownValueField == v4[14] && self->_eventLeftValueField == v4[15] && self->_eventRightValueField == v4[16];

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
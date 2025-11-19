@interface _GCDevicePhysicalInputClickableDirectionPadElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputClickableDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)pressedSources;
- (uint64_t)eventPressedValueField;
- (uint64_t)setEventPressedValueField:(uint64_t)result;
- (void)setPressedSources:(void *)a1;
@end

@implementation _GCDevicePhysicalInputClickableDirectionPadElementParameters

- (_GCDevicePhysicalInputClickableDirectionPadElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputClickableDirectionPadElementParameters;
  result = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v3 init];
  result->_eventPressedValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputClickableDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 17, self->_pressedSources);
  v4[18] = self->_eventPressedValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputClickableDirectionPadElementParameters;
  v6 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v8 isEqual:v4]&& ((pressedSources = self->_pressedSources, pressedSources == v4[17]) || [(NSSet *)pressedSources isEqual:?]) && self->_eventPressedValueField == v4[18];

  return v6;
}

- (uint64_t)eventPressedValueField
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (id)pressedSources
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[17];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = MEMORY[0x1E695DFD8];
      v4 = objc_alloc(MEMORY[0x1E69A06B8]);
      v5 = [(_GCDevicePhysicalInputElementParameters *)v1 aliases];
      v6 = [(_GCDevicePhysicalInputElementParameters *)v1 localizedName];
      v7 = [(_GCDevicePhysicalInputElementParameters *)v1 symbol];
      v8 = [v4 initWithElementAliases:v5 localizedName:v6 symbol:v7 direction:0];
      v1 = [v3 setWithObject:v8];
    }
  }

  return v1;
}

- (void)setPressedSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 136);
  }
}

- (uint64_t)setEventPressedValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

@end
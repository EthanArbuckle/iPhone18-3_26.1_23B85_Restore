@interface _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)touchedSources;
- (uint64_t)eventTouchedValueField;
- (uint64_t)setEventTouchedValueField:(uint64_t)result;
- (void)setTouchedSources:(void *)a1;
@end

@implementation _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters

- (_GCDevicePhysicalInputCapacitiveDirectionPadElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters;
  result = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)&v3 init];
  result->_eventTouchedValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 19, self->_touchedSources);
  v4[20] = self->_eventTouchedValueField;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters;
  v6 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)&v8 isEqual:v4]&& ((touchedSources = self->_touchedSources, touchedSources == v4[19]) || [(NSSet *)touchedSources isEqual:?]) && self->_eventTouchedValueField == v4[20];

  return v6;
}

- (uint64_t)eventTouchedValueField
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (id)touchedSources
{
  v1 = a1;
  if (a1)
  {
    v2 = a1[19];
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

- (void)setTouchedSources:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 152);
  }
}

- (uint64_t)setEventTouchedValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

@end
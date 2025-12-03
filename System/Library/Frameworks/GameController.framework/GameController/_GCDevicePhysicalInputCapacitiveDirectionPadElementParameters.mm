@interface _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)touchedSources;
- (uint64_t)eventTouchedValueField;
- (uint64_t)setEventTouchedValueField:(uint64_t)result;
- (void)setTouchedSources:(void *)sources;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 19, self->_touchedSources);
  v4[20] = self->_eventTouchedValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElementParameters;
  v6 = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)&v8 isEqual:equalCopy]&& ((touchedSources = self->_touchedSources, touchedSources == equalCopy[19]) || [(NSSet *)touchedSources isEqual:?]) && self->_eventTouchedValueField == equalCopy[20];

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
  selfCopy = self;
  if (self)
  {
    v2 = self[19];
    if (v2)
    {
      selfCopy = v2;
    }

    else
    {
      v3 = MEMORY[0x1E695DFD8];
      v4 = objc_alloc(MEMORY[0x1E69A06B8]);
      aliases = [(_GCDevicePhysicalInputElementParameters *)selfCopy aliases];
      localizedName = [(_GCDevicePhysicalInputElementParameters *)selfCopy localizedName];
      symbol = [(_GCDevicePhysicalInputElementParameters *)selfCopy symbol];
      v8 = [v4 initWithElementAliases:aliases localizedName:localizedName symbol:symbol direction:0];
      selfCopy = [v3 setWithObject:v8];
    }
  }

  return selfCopy;
}

- (void)setTouchedSources:(void *)sources
{
  if (sources)
  {
    objc_setProperty_nonatomic_copy(sources, newValue, newValue, 152);
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
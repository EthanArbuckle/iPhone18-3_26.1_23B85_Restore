@interface _GCDevicePhysicalInputClickableDirectionPadElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputClickableDirectionPadElementParameters)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)pressedSources;
- (uint64_t)eventPressedValueField;
- (uint64_t)setEventPressedValueField:(uint64_t)result;
- (void)setPressedSources:(void *)sources;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _GCDevicePhysicalInputClickableDirectionPadElementParameters;
  v4 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 17, self->_pressedSources);
  v4[18] = self->_eventPressedValueField;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputClickableDirectionPadElementParameters;
  v6 = [(_GCDevicePhysicalInputDirectionPadElementParameters *)&v8 isEqual:equalCopy]&& ((pressedSources = self->_pressedSources, pressedSources == equalCopy[17]) || [(NSSet *)pressedSources isEqual:?]) && self->_eventPressedValueField == equalCopy[18];

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
  selfCopy = self;
  if (self)
  {
    v2 = self[17];
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

- (void)setPressedSources:(void *)sources
{
  if (sources)
  {
    objc_setProperty_nonatomic_copy(sources, newValue, newValue, 136);
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
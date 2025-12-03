@interface _GCDevicePhysicalInputButtonElementParameters
- (BOOL)isEqual:(id)equal;
- (_GCDevicePhysicalInputButtonElementParameters)init;
- (double)pressedThreshold;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sources;
- (uint64_t)eventAnalogPressValueField;
- (uint64_t)eventForceValueField;
- (uint64_t)eventPressedValueField;
- (uint64_t)eventTouchValueField;
- (uint64_t)force;
- (uint64_t)isAnalog;
- (uint64_t)setAnalog:(uint64_t)result;
- (uint64_t)setEventAnalogPressValueField:(uint64_t)result;
- (uint64_t)setEventForceValueField:(uint64_t)result;
- (uint64_t)setEventPressedValueField:(uint64_t)result;
- (uint64_t)setEventTouchValueField:(uint64_t)result;
- (uint64_t)setPressedThreshold:(uint64_t)result;
- (uint64_t)touch;
- (void)setForce:(uint64_t)force;
- (void)setSources:(uint64_t)sources;
- (void)setTouch:(void *)touch;
@end

@implementation _GCDevicePhysicalInputButtonElementParameters

- (_GCDevicePhysicalInputButtonElementParameters)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputButtonElementParameters;
  result = [(_GCDevicePhysicalInputButtonElementParameters *)&v3 init];
  result->_analog = 0;
  result->_pressedThreshold = 0.0;
  result->_eventPressedValueField = -1;
  result->_eventAnalogPressValueField = -1;
  result->_eventTouchValueField = -1;
  result->_eventForceValueField = -1;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputButtonElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v10 copyWithZone:zone];
  objc_storeStrong(v4 + 6, self->_sources);
  *(v4 + 40) = self->_analog;
  *(v4 + 11) = LODWORD(self->_pressedThreshold);
  v4[9] = self->_eventPressedValueField;
  v4[10] = self->_eventAnalogPressValueField;
  v4[11] = self->_eventTouchValueField;
  v4[12] = self->_eventForceValueField;
  v5 = [(_GCDevicePhysicalInputTouchInputParameters *)self->_touch copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(_GCDevicePhysicalInputSensorInputParameters *)self->_force copy];
  v8 = v4[8];
  v4[8] = v7;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputButtonElementParameters;
  if ([(_GCDevicePhysicalInputElementParameters *)&v10 isEqual:equalCopy]&& ((sources = self->_sources, sources == equalCopy[6]) || [(NSSet *)sources isEqual:?]) && self->_analog == *(equalCopy + 40) && self->_pressedThreshold == *(equalCopy + 11) && self->_eventPressedValueField == equalCopy[9] && self->_eventAnalogPressValueField == equalCopy[10] && self->_eventTouchValueField == equalCopy[11] && self->_eventForceValueField == equalCopy[12] && ((touch = self->_touch, touch == equalCopy[7]) || [(_GCDevicePhysicalInputTouchInputParameters *)touch isEqual:?]))
  {
    force = self->_force;
    if (force == equalCopy[8])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(_GCDevicePhysicalInputSensorInputParameters *)force isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sources
{
  selfCopy = self;
  if (self)
  {
    v2 = self[6];
    if (v2)
    {
      selfCopy = v2;
    }

    else
    {
      v3 = MEMORY[0x1E69A06B8];
      aliases = [(_GCDevicePhysicalInputElementParameters *)self aliases];
      localizedName = [(_GCDevicePhysicalInputElementParameters *)selfCopy localizedName];
      symbol = [(_GCDevicePhysicalInputElementParameters *)selfCopy symbol];
      [v3 sourceWithElementAliases:aliases localizedName:localizedName symbol:symbol];
      objc_claimAutoreleasedReturnValue();
      selfCopy = [OUTLINED_FUNCTION_8_0() setWithObject:v3];
    }
  }

  return selfCopy;
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

- (double)pressedThreshold
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 44);
  return result;
}

- (uint64_t)eventPressedValueField
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)eventAnalogPressValueField
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)eventTouchValueField
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)eventForceValueField
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)touch
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)force
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setTouch:(void *)touch
{
  v3 = a2;
  if (touch)
  {
    v8 = v3;
    v4 = [v3 copy];
    v5 = touch[7];
    touch[7] = v4;

    sources = [(_GCDevicePhysicalInputTouchInputParameters *)touch[7] sources];

    v3 = v8;
    if (!sources)
    {
      sources2 = [(_GCDevicePhysicalInputButtonElementParameters *)touch sources];
      [(_GCDevicePhysicalInputTouchInputParameters *)touch[7] setSources:sources2];

      v3 = v8;
    }
  }
}

- (void)setSources:(uint64_t)sources
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, sources, 48);
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

- (uint64_t)setPressedThreshold:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = a2;
  }

  return result;
}

- (void)setForce:(uint64_t)force
{
  if (self)
  {
    OUTLINED_FUNCTION_1_6(self, a2, force, 64);
  }
}

- (uint64_t)setEventPressedValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)setEventAnalogPressValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (uint64_t)setEventTouchValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

- (uint64_t)setEventForceValueField:(uint64_t)result
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

@end
@interface _GCDevicePhysicalInputButtonElementParameters
- (BOOL)isEqual:(id)a3;
- (_GCDevicePhysicalInputButtonElementParameters)init;
- (double)pressedThreshold;
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)setForce:(uint64_t)a3;
- (void)setSources:(uint64_t)a3;
- (void)setTouch:(void *)a1;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputButtonElementParameters;
  v4 = [(_GCDevicePhysicalInputElementParameters *)&v10 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputButtonElementParameters;
  if ([(_GCDevicePhysicalInputElementParameters *)&v10 isEqual:v4]&& ((sources = self->_sources, sources == v4[6]) || [(NSSet *)sources isEqual:?]) && self->_analog == *(v4 + 40) && self->_pressedThreshold == *(v4 + 11) && self->_eventPressedValueField == v4[9] && self->_eventAnalogPressValueField == v4[10] && self->_eventTouchValueField == v4[11] && self->_eventForceValueField == v4[12] && ((touch = self->_touch, touch == v4[7]) || [(_GCDevicePhysicalInputTouchInputParameters *)touch isEqual:?]))
  {
    force = self->_force;
    if (force == v4[8])
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
  v1 = a1;
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v3 = MEMORY[0x1E69A06B8];
      v4 = [(_GCDevicePhysicalInputElementParameters *)a1 aliases];
      v5 = [(_GCDevicePhysicalInputElementParameters *)v1 localizedName];
      v6 = [(_GCDevicePhysicalInputElementParameters *)v1 symbol];
      [v3 sourceWithElementAliases:v4 localizedName:v5 symbol:v6];
      objc_claimAutoreleasedReturnValue();
      v1 = [OUTLINED_FUNCTION_8_0() setWithObject:v3];
    }
  }

  return v1;
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

- (double)pressedThreshold
{
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 44);
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

- (void)setTouch:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [v3 copy];
    v5 = a1[7];
    a1[7] = v4;

    v6 = [(_GCDevicePhysicalInputTouchInputParameters *)a1[7] sources];

    v3 = v8;
    if (!v6)
    {
      v7 = [(_GCDevicePhysicalInputButtonElementParameters *)a1 sources];
      [(_GCDevicePhysicalInputTouchInputParameters *)a1[7] setSources:v7];

      v3 = v8;
    }
  }
}

- (void)setSources:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 48);
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

- (void)setForce:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2, a3, 64);
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
@interface GCSteeringWheelElement
+ (unsigned)updateContextSize;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (GCSteeringWheelElement)initWithParameters:(id)a3;
- (GCSteeringWheelElement)initWithTemplate:(id)a3 context:(id)a4;
- (NSSet)sources;
- (NSString)debugDescription;
- (NSString)description;
- (double)_delta;
- (double)_lastTimestamp;
- (double)_maximumDegreesOfRotation;
- (double)_value;
- (double)lastDeltaTimestamp;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (float)delta;
- (float)maximumDegreesOfRotation;
- (float)value;
- (id)deltaDidChangeHandler;
- (id)valueDidChangeHandler;
- (uint64_t)_deltaDidChangeHandler;
- (uint64_t)_rotationValueField;
- (uint64_t)_setDelta:(uint64_t)result;
- (uint64_t)_setDeltaDidChangeHandler:(uint64_t)result;
- (uint64_t)_setLastTimestamp:(uint64_t)result;
- (uint64_t)_setMaximumDegreesOfRotation:(uint64_t)result;
- (uint64_t)_setRotationValueField:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)_valueDidChangeHandler;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation GCSteeringWheelElement

- (GCSteeringWheelElement)initWithTemplate:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = GCSteeringWheelElement;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputElement *)&v10 initWithTemplate:v6 context:v5];
  v7->_sourcesSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:{v6[7], v10.receiver, v10.super_class}];
  v7->_maximumDegreesOfRotationSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[8]];
  v7->_rotationValueFieldSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[9]];
  v7->_valueChangedHandlerSlot = [v5 view:v7 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[10]];
  v7->_deltaChangedHandlerSlot = [v5 view:v7 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[11]];
  v7->_valueSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[12]];
  v7->_deltaSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[13]];
  v8 = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[14]];

  v7->_timestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___GCSteeringWheelElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v38.receiver = self;
  v38.super_class = GCSteeringWheelElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_7;
  if (MyUpdateContext_Offset_7 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_7 = v10;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v23 = [(GCSteeringWheelElement *)a5 _sources];
  v24 = [(GCSteeringWheelElement *)self _setSources:v23];
  *(a3 + v10) = *(a3 + v10) & 0xFE | v24;

  if (a5)
  {
    v25 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
    v26 = v25;
    if (self)
    {
      goto LABEL_26;
    }

LABEL_50:
    v27 = 0;
    v28 = 0;
    goto LABEL_29;
  }

  v26 = 0.0;
  if (!self)
  {
    goto LABEL_50;
  }

LABEL_26:
  v27 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_maximumDegreesOfRotationSlot forSlot:?];
  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

LABEL_29:
  *(a3 + v10) = *(a3 + v10) & 0xFD | v28;
  if (a5)
  {
    v29 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    if (self)
    {
      goto LABEL_31;
    }

LABEL_52:
    v30 = 0;
    v31 = 0;
    goto LABEL_34;
  }

  v29 = 0;
  if (!self)
  {
    goto LABEL_52;
  }

LABEL_31:
  v30 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v29 forSlot:&self->_rotationValueFieldSlot];
  if (v30)
  {
    v31 = 4;
  }

  else
  {
    v31 = 0;
  }

LABEL_34:
  *(a3 + v10) = *(a3 + v10) & 0xFB | v31;
  v9 |= v24 | v27 | v30;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return v9 & 1;
    }

LABEL_5:
    if (a5)
    {
      v11 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
      v12 = v11;
      if (self)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0.0;
      if (self)
      {
LABEL_7:
        v13 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
        if (v13)
        {
          v14 = 32;
        }

        else
        {
          v14 = 0;
        }

LABEL_10:
        *(a3 + v10) = *(a3 + v10) & 0xDF | v14;
        if (a5)
        {
          v15 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
          v16 = v15;
          if (self)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = 0.0;
          if (self)
          {
LABEL_12:
            v17 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_deltaSlot forSlot:?];
            if (v17)
            {
              v18 = 64;
            }

            else
            {
              v18 = 0;
            }

LABEL_15:
            *(a3 + v10) = *(a3 + v10) & 0xBF | v18;
            if (a5)
            {
              v19 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
            }

            else
            {
              v19 = 0;
            }

            if (self)
            {
              v20 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v19 forSlot:&self->_timestampSlot];
              if (v20)
              {
                v21 = 0x80;
              }

              else
              {
                v21 = 0;
              }
            }

            else
            {
              v20 = 0;
              v21 = 0;
            }

            *(a3 + v10) = *(a3 + v10) & 0x7F | v21;
            v9 |= v13 | v17 | v20;
            return v9 & 1;
          }
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_15;
      }
    }

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

LABEL_35:
  v32 = [(GCSteeringWheelElement *)a5 _valueDidChangeHandler];
  v33 = [(GCSteeringWheelElement *)self _setValueDidChangeHandler:v32];
  if (v33)
  {
    v34 = 8;
  }

  else
  {
    v34 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xF7 | v34;

  v35 = [(GCSteeringWheelElement *)a5 _deltaDidChangeHandler];
  v36 = [(GCSteeringWheelElement *)self _setDeltaDidChangeHandler:v35];
  if (v36)
  {
    v37 = 16;
  }

  else
  {
    v37 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xEF | v37;
  v9 |= v33 | v36;

  if ((v6 & 8) != 0)
  {
    goto LABEL_5;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = GCSteeringWheelElement;
  [(_GCDevicePhysicalInputElement *)&v8 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_7;
  if (MyUpdateContext_Offset_7 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_7 = v6;
  }

  v7 = *(a3 + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + v6) & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 8) == 0)
  {
LABEL_6:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 0x10) == 0)
  {
LABEL_7:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 0x20) == 0)
  {
LABEL_8:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 0x40) == 0)
  {
LABEL_9:
    if ((v7 & 0x80) == 0)
    {
      return;
    }

LABEL_17:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    return;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(a3 + v6) & 0x80) != 0)
  {
    goto LABEL_17;
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v9.receiver = self;
  v9.super_class = GCSteeringWheelElement;
  [(_GCDevicePhysicalInputElement *)&v9 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_7;
  if (MyUpdateContext_Offset_7 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_7 = v6;
  }

  v7 = a3 + v6;
  v8 = *v7;
  if (*v7)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x10) == 0)
  {
LABEL_7:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x20) == 0)
  {
LABEL_8:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_9:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_10:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x20) == 0)
  {
LABEL_11:
    if ((v8 & 0x40) == 0)
    {
      return;
    }

LABEL_21:
    [GCSteeringWheelElement postCommit:? sender:?];
    return;
  }

LABEL_20:
  [(GCSteeringWheelElement *)self postCommit:v7 sender:&v10];
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_21;
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GCSteeringWheelElement;
  if ([(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:v4])
  {
    [(GCSteeringWheelElement *)self isEqualToElement:v4, &v8];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  [(GCSteeringWheelElement *)self value];
  v6 = [v3 stringWithFormat:@"<Steering Wheel '%@' value = %f>", v4, v5];;

  return v6;
}

- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5
{
  v18.receiver = self;
  v18.super_class = GCSteeringWheelElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_7;
  if (MyUpdateContext_Offset_7 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_7 = v10;
    if (self)
    {
      goto LABEL_3;
    }

LABEL_9:
    [a4 floatValueForElement:0];
    if (v17 == 0.0)
    {
      return v9;
    }

    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_9;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  if (v11 != -1)
  {
    v12 = v11;
    v13 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    [a4 floatValueForElement:v12];
    if (v14 != v13)
    {
      v15 = v14 - v13;
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_deltaSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_timestampSlot forSlot:?];
LABEL_6:
      *(a3 + v10) |= 0xE0u;
      return 1;
    }
  }

  return v9;
}

- (GCSteeringWheelElement)initWithParameters:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GCSteeringWheelElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v10 initWithParameters:v4];
  v6 = [(_GCSteeringWheelElementParameters *)v4 sources];
  [(GCSteeringWheelElement *)v5 _setSources:v6];

  if (v4)
  {
    v7 = v4[10];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0.0;
  if (v5)
  {
LABEL_3:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:&v5->_maximumDegreesOfRotationSlot forSlot:?];
  }

LABEL_4:
  if (!v4)
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = *(v4 + 7);
  if (v5)
  {
LABEL_6:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:v8 forSlot:&v5->_rotationValueFieldSlot];
  }

LABEL_7:

  return v5;
}

- (uint64_t)_setSources:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__setSources_ object:v3 file:@"GCSteeringWheelElement.m" lineNumber:217 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    return [(_GCDevicePhysicalInputView *)v3 _testAndSetObjectValue:a2 forSlot:v3 + 56 policy:771];
  }

  return result;
}

- (uint64_t)_setMaximumDegreesOfRotation:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 64);
  }

  return result;
}

- (uint64_t)_setRotationValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 72);
  }

  return result;
}

- (uint64_t)_sources
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (double)_maximumDegreesOfRotation
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (uint64_t)_rotationValueField
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (uint64_t)_valueDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setValueDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(80);

    return v3;
  }

  return result;
}

- (uint64_t)_deltaDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setDeltaDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(88);

    return v3;
  }

  return result;
}

- (double)_value
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (uint64_t)_setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 96);
  }

  return result;
}

- (double)_delta
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (uint64_t)_setDelta:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 104);
  }

  return result;
}

- (double)_lastTimestamp
{
  if (a1)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)_setLastTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 112);
  }

  return result;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [(_GCDevicePhysicalInputElement *)self localizedName];
  v6 = [(_GCDevicePhysicalInputElement *)self sfSymbolsName];
  if (self)
  {
    v7 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  }

  else
  {
    v7 = 0;
  }

  [(GCSteeringWheelElement *)self value];
  v9 = v8;
  [(GCSteeringWheelElement *)self delta];
  v11 = [v3 stringWithFormat:@"<Steering Wheel %p '%@' name = '%@', symbol = '%@', source = %zi, value = %f (%f)>", self, v4, v5, v6, v7, *&v9, v10];;

  return v11;
}

- (float)maximumDegreesOfRotation
{
  if (!self)
  {
    return 0.0;
  }

  v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  return OUTLINED_FUNCTION_3_3(v2);
}

- (id)valueDidChangeHandler
{
  v2 = [(GCSteeringWheelElement *)self _valueDidChangeHandler];

  return v2;
}

- (float)value
{
  if (!self)
  {
    return 0.0;
  }

  v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  return OUTLINED_FUNCTION_3_3(v2);
}

- (double)lastValueTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (double)lastValueLatency
{
  if (!dword_1EC736054)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_2);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_2 / dword_1EC736054) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  v2 = [(GCSteeringWheelElement *)self _sources];

  return v2;
}

- (id)deltaDidChangeHandler
{
  v2 = [(GCSteeringWheelElement *)self _deltaDidChangeHandler];

  return v2;
}

- (float)delta
{
  if (!self)
  {
    return 0.0;
  }

  v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  return OUTLINED_FUNCTION_3_3(v2);
}

- (double)lastDeltaTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (void)postCommit:(_BYTE *)a3 sender:.cold.1(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = [(GCSteeringWheelElement *)a1 _valueDidChangeHandler];
  if (v6)
  {
    if (a1)
    {
      v8 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
      v7.n128_f32[0] = OUTLINED_FUNCTION_3_3(v8);
    }

    else
    {
      v7.n128_u64[0] = 0;
    }

    v6[2](v6, a1, a1, v7);
  }

  *a3 = *a2;
}

- (void)postCommit:(uint64_t)a1 sender:.cold.2(uint64_t a1)
{
  v2 = [(GCSteeringWheelElement *)a1 _deltaDidChangeHandler];
  if (v2)
  {
    if (a1)
    {
      v4 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
      v3.n128_f32[0] = OUTLINED_FUNCTION_3_3(v4);
    }

    else
    {
      v3.n128_u64[0] = 0;
    }

    v2[2](v2, a1, a1, v3);
  }
}

- (void)isEqualToElement:(BOOL *)a3 .cold.1(uint64_t a1, void *a2, BOOL *a3)
{
  v7 = a1;
  v8 = [(GCSteeringWheelElement *)a1 _sources];
  v9 = [(GCSteeringWheelElement *)a2 _sources];
  if (v8 != v9)
  {
    v3 = [(GCSteeringWheelElement *)v7 _sources];
    v4 = [a2 sources];
    if (([v3 isEqual:v4] & 1) == 0)
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }
  }

  v10 = 0.0;
  v11 = 0.0;
  if (v7)
  {
    v11 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v7 _primitiveValueForSlot:?]);
  }

  if (a2)
  {
    v10 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]);
  }

  if (v11 == v10)
  {
    if (v7)
    {
      v7 = [(_GCDevicePhysicalInputView *)v7 _primitiveValueForSlot:?];
    }

    if (a2)
    {
      v12 = [(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?];
    }

    else
    {
      v12 = 0;
    }

    v13 = v7 == v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 != v9)
  {
    goto LABEL_14;
  }

LABEL_15:
  *a3 = v13;
}

@end
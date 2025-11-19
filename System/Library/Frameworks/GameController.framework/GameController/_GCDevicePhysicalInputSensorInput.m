@interface _GCDevicePhysicalInputSensorInput
+ (unsigned)updateContextSize;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (NSString)description;
- (_GCDevicePhysicalInputSensorInput)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputSensorInput)initWithTemplate:(id)a3 context:(id)a4;
- (double)_lastValueTimestamp;
- (double)_maximumValue;
- (double)_minimumValue;
- (double)_value;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (double)maximumValue;
- (double)minimumValue;
- (float)value;
- (id)valueDidChangeHandler;
- (uint64_t)__setLastValueTimestamp:(uint64_t)result;
- (uint64_t)__setValue:(uint64_t)result;
- (uint64_t)_setLastValueTimestamp:(uint64_t)result;
- (uint64_t)_setMaximumValue:(uint64_t)result;
- (uint64_t)_setMinimumValue:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_valueDidChangeHandler;
- (uint64_t)isEqualToInput:(uint64_t)result;
- (uint64_t)update:(uint64_t)result withValue:(uint64_t)a2 timestamp:(double)a3;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputSensorInput

- (_GCDevicePhysicalInputSensorInput)initWithTemplate:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputSensorInput;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:v6 context:v5];
  v7->_minimumSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:{v6[3], v10.receiver, v10.super_class}];
  v7->_maximumSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[4]];
  v7->_valueChangedHandlerSlot = [v5 view:v7 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[5]];
  v7->_valueSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[6]];
  v8 = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[7]];

  v7->_valueTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputSensorInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = _GCDevicePhysicalInputSensorInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_8;
  if (MyUpdateContext_Offset_8 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_8 = v10;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (a5)
  {
    v18 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    if (self)
    {
LABEL_20:
      v19 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v18 forSlot:&self->_minimumSlot];
      goto LABEL_21;
    }
  }

  else
  {
    v18 = 0;
    if (self)
    {
      goto LABEL_20;
    }
  }

  v19 = 0;
LABEL_21:
  *(a3 + v10) = *(a3 + v10) & 0xFE | v19;
  if (a5)
  {
    v20 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
    if (self)
    {
      goto LABEL_23;
    }

LABEL_39:
    v21 = 0;
    v22 = 0;
    goto LABEL_26;
  }

  v20 = 0;
  if (!self)
  {
    goto LABEL_39;
  }

LABEL_23:
  v21 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v20 forSlot:&self->_maximumSlot];
  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

LABEL_26:
  *(a3 + v10) = *(a3 + v10) & 0xFD | v22;
  v9 |= v19 | v21;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) != 0)
    {
      goto LABEL_5;
    }

    return v9 & 1;
  }

LABEL_27:
  v23 = [(_GCDevicePhysicalInputSensorInput *)a5 _valueDidChangeHandler];
  v24 = [(_GCDevicePhysicalInputSensorInput *)self _setValueDidChangeHandler:v23];
  if (v24)
  {
    v25 = 4;
  }

  else
  {
    v25 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFB | v25;
  v9 |= v24;

  if ((v6 & 8) != 0)
  {
LABEL_5:
    if (a5)
    {
      v11 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
      if (self)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
      if (self)
      {
LABEL_7:
        v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_valueSlot];
        if (v12)
        {
          v13 = 8;
        }

        else
        {
          v13 = 0;
        }

LABEL_10:
        *(a3 + v10) = *(a3 + v10) & 0xF7 | v13;
        if (a5)
        {
          v14 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
          if (self)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = 0;
          if (self)
          {
LABEL_12:
            v15 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v14 forSlot:&self->_valueTimestampSlot];
            if (v15)
            {
              v16 = 16;
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_15;
          }
        }

        v15 = 0;
        v16 = 0;
LABEL_15:
        *(a3 + v10) = *(a3 + v10) & 0xEF | v16;
        v9 |= v12 | v15;
        return v9 & 1;
      }
    }

    v12 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputSensorInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_8;
  if (MyUpdateContext_Offset_8 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_8 = v6;
  }

  v7 = *(a3 + v6);
  if (v7 & 2) != 0 || (*(a3 + v6))
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + v6) & 4) == 0)
  {
    goto LABEL_6;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_12:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(a3 + v6) & 0x10) == 0)
  {
    return;
  }

LABEL_8:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputSensorInput;
  [_GCDevicePhysicalInputView postCommit:sel_postCommit_sender_ sender:?];
  v7 = MyUpdateContext_Offset_8;
  if (MyUpdateContext_Offset_8 == -1)
  {
    v7 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_8 = v7;
  }

  v8 = *(a3 + v7);
  if (v8 & 2) != 0 || (*(a3 + v7))
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(a3 + v7);
    if ((v8 & 4) == 0)
    {
LABEL_6:
      if ((v8 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + v7) & 4) == 0)
  {
    goto LABEL_6;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_12:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 8) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(a3 + v7) & 8) == 0)
  {
    return;
  }

LABEL_14:
  v9 = [(_GCDevicePhysicalInputSensorInput *)self valueDidChangeHandler];
  if (v9)
  {
    [(_GCDevicePhysicalInputSensorInput *)self value];
    (v9)[2](v9, a4, self);
  }
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  [(_GCDevicePhysicalInputSensorInput *)self value];
  return [v2 stringWithFormat:@"<SensorInput; value = %f>", v3];
}

- (_GCDevicePhysicalInputSensorInput)initWithParameters:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputSensorInput;
  v5 = [(_GCDevicePhysicalInputView *)&v16 initWithParameters:v4];
  v6 = v5;
  if (v4)
  {
    v7 = v4[2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    v8 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v8 _testAndSetPrimitiveValue:v9 forSlot:v10];
  }

LABEL_4:
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = v4[3];
  if (v6)
  {
LABEL_6:
    v12 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v12 _testAndSetPrimitiveValue:v13 forSlot:v14];
  }

LABEL_7:

  return v6;
}

- (uint64_t)_setMinimumValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 24);
  }

  return result;
}

- (uint64_t)_setMaximumValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 32);
  }

  return result;
}

- (double)_minimumValue
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

- (double)_maximumValue
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
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:v2 + 40 policy:771];

    return v4;
  }

  return result;
}

- (double)_value
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

- (uint64_t)_setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 48);
  }

  return result;
}

- (double)_lastValueTimestamp
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

- (uint64_t)_setLastValueTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 56);
  }

  return result;
}

- (uint64_t)isEqualToInput:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:sel_isEqualToInput_ object:v3 file:@"_GCDevicePhysicalInputSensorInput.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputSensorInput.class]"}];

    return 0;
  }

  v4 = objc_opt_class();
  result = [v4 isEqual:objc_opt_class()];
  if (!result)
  {
    return result;
  }

  v5 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v3 _primitiveValueForSlot:?]);
  if (a2)
  {
    v6 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]);
  }

  else
  {
    v6 = 0.0;
  }

  if (v6 != v5)
  {
    return 0;
  }

  v7 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v3 _primitiveValueForSlot:?]);
  if (a2)
  {
    v8 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]);
  }

  else
  {
    v8 = 0.0;
  }

  return v8 == v7;
}

- (uint64_t)__setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 48);
  }

  return result;
}

- (uint64_t)__setLastValueTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 56);
  }

  return result;
}

- (id)valueDidChangeHandler
{
  v2 = [(_GCDevicePhysicalInputSensorInput *)self _valueDidChangeHandler];

  return v2;
}

- (float)value
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
  if (!dword_1EC73605C)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_3);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_3 / dword_1EC73605C) / 1000000000.0 - v3;
}

- (double)minimumValue
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

- (double)maximumValue
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

- (uint64_t)update:(uint64_t)result withValue:(uint64_t)a2 timestamp:(double)a3
{
  if (result)
  {
    v5 = result;
    v6 = MyUpdateContext_Offset_8;
    if (MyUpdateContext_Offset_8 == -1)
    {
      v6 = +[_GCDevicePhysicalInputView updateContextSize];
      MyUpdateContext_Offset_8 = v6;
    }

    if (COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v5 _primitiveValueForSlot:?]) == a3)
    {
      return 0;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v7 _setPrimitiveValue:v8 forSlot:v9];
      v10 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v10 _setPrimitiveValue:v11 forSlot:v12];
      *(a2 + v6) |= 0x18u;
      return 1;
    }
  }

  return result;
}

@end
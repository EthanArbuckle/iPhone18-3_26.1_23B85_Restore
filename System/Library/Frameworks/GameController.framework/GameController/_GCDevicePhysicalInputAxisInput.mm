@interface _GCDevicePhysicalInputAxisInput
+ (unsigned)updateContextSize;
- (BOOL)_canWrap;
- (BOOL)_isAnalog;
- (BOOL)canWrap;
- (BOOL)isAnalog;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (NSSet)sources;
- (_GCDevicePhysicalInputAxisInput)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputAxisInput)initWithTemplate:(id)a3 context:(id)a4;
- (double)_lastValueTimestamp;
- (double)_value;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (float)value;
- (id)valueDidChangeHandler;
- (uint64_t)__setLastValueTimestamp:(uint64_t)result;
- (uint64_t)__setValue:(uint64_t)result;
- (uint64_t)_setAnalog:(uint64_t)result;
- (uint64_t)_setCanWrap:(uint64_t)result;
- (uint64_t)_setLastValueTimestamp:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)_valueDidChangeHandler;
- (uint64_t)isEqualToInput:(uint64_t)a1;
- (uint64_t)update:(uint64_t)result withValue:(uint64_t)a2 timestamp:(float)a3;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputAxisInput

- (_GCDevicePhysicalInputAxisInput)initWithTemplate:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputAxisInput;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:v6 context:v5];
  v7->_sourcesSlot = [v5 view:v7 allocateObjectSlot:1 withCopyOfValueFromView:v6 slot:{v6[3], v10.receiver, v10.super_class}];
  v7->_isAnalogSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[4]];
  v7->_canWrapSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[5]];
  v7->_valueChangedHandlerSlot = [v5 view:v7 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[6]];
  v7->_valueSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[7]];
  v8 = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[8]];

  v7->_valueTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputAxisInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v30.receiver = self;
  v30.super_class = _GCDevicePhysicalInputAxisInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_5;
  if (MyUpdateContext_Offset_5 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_5 = v10;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v19 = [(_GCDevicePhysicalInputAxisInput *)a5 _sources];
  v20 = [(_GCDevicePhysicalInputAxisInput *)self _setSources:v19];
  *(a3 + v10) = *(a3 + v10) & 0xFE | v20;

  if (a5)
  {
    v21 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_20;
    }

LABEL_39:
    v22 = 0;
    v23 = 0;
    goto LABEL_23;
  }

  v21 = 0;
  if (!self)
  {
    goto LABEL_39;
  }

LABEL_20:
  v22 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v21 forSlot:&self->_isAnalogSlot];
  if (v22)
  {
    v23 = 2;
  }

  else
  {
    v23 = 0;
  }

LABEL_23:
  *(a3 + v10) = *(a3 + v10) & 0xFD | v23;
  if (a5)
  {
    v24 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_25;
    }

LABEL_41:
    v25 = 0;
    v26 = 0;
    goto LABEL_28;
  }

  v24 = 0;
  if (!self)
  {
    goto LABEL_41;
  }

LABEL_25:
  v25 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v24 forSlot:&self->_canWrapSlot];
  if (v25)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

LABEL_28:
  *(a3 + v10) = *(a3 + v10) & 0xFB | v26;
  v9 |= v20 | v22 | v25;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) != 0)
    {
      goto LABEL_5;
    }

    return v9 & 1;
  }

LABEL_29:
  v27 = [(_GCDevicePhysicalInputAxisInput *)a5 _valueDidChangeHandler];
  v28 = [(_GCDevicePhysicalInputAxisInput *)self _setValueDidChangeHandler:v27];
  if (v28)
  {
    v29 = 8;
  }

  else
  {
    v29 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xF7 | v29;
  v9 |= v28;

  if ((v6 & 8) != 0)
  {
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
          v14 = 16;
        }

        else
        {
          v14 = 0;
        }

LABEL_10:
        *(a3 + v10) = *(a3 + v10) & 0xEF | v14;
        if (a5)
        {
          v15 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
          if (self)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v15 = 0;
          if (self)
          {
LABEL_12:
            v16 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v15 forSlot:&self->_valueTimestampSlot];
            if (v16)
            {
              v17 = 32;
            }

            else
            {
              v17 = 0;
            }

            goto LABEL_15;
          }
        }

        v16 = 0;
        v17 = 0;
LABEL_15:
        *(a3 + v10) = *(a3 + v10) & 0xDF | v17;
        v9 |= v13 | v16;
        return v9 & 1;
      }
    }

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputAxisInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_5;
  if (MyUpdateContext_Offset_5 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_5 = v6;
  }

  v7 = *(a3 + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
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
  if ((v7 & 4) == 0)
  {
LABEL_6:
    if ((v7 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 8) == 0)
  {
LABEL_7:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 0x10) == 0)
  {
LABEL_8:
    if ((v7 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_15:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(a3 + v6) & 0x20) == 0)
  {
    return;
  }

LABEL_9:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputAxisInput;
  [_GCDevicePhysicalInputView preCommit:sel_preCommit_sender_ sender:?];
  v7 = MyUpdateContext_Offset_5;
  if (MyUpdateContext_Offset_5 == -1)
  {
    v7 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_5 = v7;
  }

  v8 = *(a3 + v7);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(a3 + v7);
    if ((v8 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a3 + v7) & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 4) == 0)
  {
LABEL_6:
    if ((v8 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 8) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 0x10) == 0)
  {
LABEL_8:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 0x20) == 0)
  {
LABEL_9:
    if ((v8 & 0x10) == 0)
    {
      return;
    }

LABEL_17:
    [_GCDevicePhysicalInputAxisInput postCommit:a4 sender:?];
    return;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(a3 + v7) & 0x10) != 0)
  {
    goto LABEL_17;
  }
}

- (_GCDevicePhysicalInputAxisInput)initWithParameters:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputAxisInput;
  v5 = [(_GCDevicePhysicalInputView *)&v16 initWithParameters:v4];
  v6 = v5;
  if (v4)
  {
    [(_GCDevicePhysicalInputAxisInput *)v5 _setSources:?];
    v7 = *(v4 + 8);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputAxisInput *)v5 _setSources:?];
  if (v6)
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

  v11 = *(v4 + 9);
  if (v6)
  {
LABEL_6:
    v12 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v12 _testAndSetPrimitiveValue:v13 forSlot:v14];
  }

LABEL_7:

  return v6;
}

- (uint64_t)_setSources:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputAxisInput.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    v4 = OUTLINED_FUNCTION_2_3();

    return [(_GCDevicePhysicalInputView *)v4 _testAndSetObjectValue:a2 forSlot:v5 policy:771];
  }

  return result;
}

- (uint64_t)_setAnalog:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 32);
  }

  return result;
}

- (uint64_t)_setCanWrap:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 40);
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

- (BOOL)_isAnalog
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
    return OUTLINED_FUNCTION_5_5(v1);
  }

  return result;
}

- (BOOL)_canWrap
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
    return OUTLINED_FUNCTION_5_5(v1);
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
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:v2 + 48 policy:771];

    return v4;
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
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 56);
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
    return OUTLINED_FUNCTION_0_6(result, *&a2, 64);
  }

  return result;
}

- (uint64_t)isEqualToInput:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_isEqualToInput_ object:v2 file:@"_GCDevicePhysicalInputAxisInput.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputAxisInput.class]"}];
      v2 = 0;
      goto LABEL_12;
    }

    v4 = objc_opt_class();
    if ([v4 isEqual:objc_opt_class()])
    {
      v5 = OUTLINED_FUNCTION_4_2();
      v7 = [(_GCDevicePhysicalInputView *)v5 _objectValueForSlot:v6];
      v8 = [a2 sources];
      if ([v7 isEqual:v8])
      {
        v9 = OUTLINED_FUNCTION_4_2();
        v11 = [(_GCDevicePhysicalInputView *)v9 _primitiveValueForSlot:v10];
        if (a2)
        {
          if ((v11 != 0) != ([(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]!= 0))
          {
            goto LABEL_7;
          }

          v12 = OUTLINED_FUNCTION_4_2();
          v14 = [(_GCDevicePhysicalInputView *)v12 _primitiveValueForSlot:v13];
          v15 = [(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]!= 0;
        }

        else
        {
          if (v11)
          {
            goto LABEL_7;
          }

          v17 = OUTLINED_FUNCTION_4_2();
          v14 = [(_GCDevicePhysicalInputView *)v17 _primitiveValueForSlot:v18];
          v15 = 0;
        }

        v2 = (v14 == 0) ^ v15;
        goto LABEL_11;
      }

LABEL_7:
      v2 = 0;
LABEL_11:

LABEL_12:
      return v2;
    }

    return 0;
  }

  return v2;
}

- (uint64_t)__setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, COERCE__INT64(a2), 56);
  }

  return result;
}

- (uint64_t)__setLastValueTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 64);
  }

  return result;
}

- (id)valueDidChangeHandler
{
  v2 = [(_GCDevicePhysicalInputAxisInput *)self _valueDidChangeHandler];

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

- (BOOL)isAnalog
{
  if (self)
  {
    v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    LOBYTE(self) = OUTLINED_FUNCTION_5_5(v2);
  }

  return self;
}

- (BOOL)canWrap
{
  if (self)
  {
    v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    LOBYTE(self) = OUTLINED_FUNCTION_5_5(v2);
  }

  return self;
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
  if (!dword_1EC735F90)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_0);
    if (self)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0.0;
    return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_0 / dword_1EC735F90) / 1000000000.0 - v3;
  }

  if (!self)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_0 / dword_1EC735F90) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  v2 = [(_GCDevicePhysicalInputAxisInput *)self _sources];

  return v2;
}

- (uint64_t)update:(uint64_t)result withValue:(uint64_t)a2 timestamp:(float)a3
{
  if (result)
  {
    v5 = MyUpdateContext_Offset_5;
    if (MyUpdateContext_Offset_5 == -1)
    {
      v5 = +[_GCDevicePhysicalInputView updateContextSize];
      MyUpdateContext_Offset_5 = v5;
    }

    v6 = OUTLINED_FUNCTION_4_2();
    v8 = [(_GCDevicePhysicalInputView *)v6 _primitiveValueForSlot:v7];
    if (OUTLINED_FUNCTION_3_3(v8) == a3)
    {
      return 0;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v9 _setPrimitiveValue:v10 forSlot:v11];
      v12 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v12 _setPrimitiveValue:v13 forSlot:v14];
      *(a2 + v5) |= 0x30u;
      return 1;
    }
  }

  return result;
}

- (void)postCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputAxisInput *)a1 _valueDidChangeHandler];
  if (v4)
  {
    if (a1)
    {
      v6 = OUTLINED_FUNCTION_4_2();
      v8 = [(_GCDevicePhysicalInputView *)v6 _primitiveValueForSlot:v7];
      v5.n128_f32[0] = OUTLINED_FUNCTION_3_3(v8);
    }

    else
    {
      v5.n128_u64[0] = 0;
    }

    v4[2](v4, a2, a1, v5);
  }
}

@end
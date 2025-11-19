@interface _GCDevicePhysicalInputTouchInput
+ (unsigned)updateContextSize;
- (BOOL)_setTouchedDidChangeHandler:(id)a3;
- (BOOL)isEqualToInput:(_BOOL8)a1;
- (BOOL)isTouched;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (NSSet)sources;
- (NSString)description;
- (_GCDevicePhysicalInputTouchInput)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputTouchInput)initWithTemplate:(id)a3 context:(id)a4;
- (double)_lastTouchedTimestamp;
- (double)_touchedThreshold;
- (double)_value;
- (double)lastTouchedStateLatency;
- (double)lastTouchedStateTimestamp;
- (uint64_t)__setLastTouchedTimestamp:(uint64_t)result;
- (uint64_t)__setValue:(uint64_t)result;
- (uint64_t)_setLastTouchedTimestamp:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setTouchedThreshold:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)update:(uint64_t)a1 withValue:(uint64_t)a2 timestamp:(float)a3;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputTouchInput

- (_GCDevicePhysicalInputTouchInput)initWithTemplate:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputTouchInput;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:v6 context:v5];
  v7->_sourcesSlot = [v5 view:v7 allocateObjectSlot:1 withCopyOfValueFromView:v6 slot:{v6[3], v10.receiver, v10.super_class}];
  v7->_touchedThresholdSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[4]];
  v7->_touchedChangedHandlerSlot = [v5 view:v7 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[5]];
  v7->_valueSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[6]];
  v8 = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[7]];

  v7->_touchedTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputTouchInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v31.receiver = self;
  v31.super_class = _GCDevicePhysicalInputTouchInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v10;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = [(_GCDevicePhysicalInputTouchInput *)a5 _sources];
  v12 = [(_GCDevicePhysicalInputTouchInput *)self _setSources:v11];
  *(a3 + v10) = *(a3 + v10) & 0xFE | v12;

  if (a5)
  {
    v13 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
    v14 = v13;
    if (self)
    {
      goto LABEL_9;
    }

LABEL_37:
    v15 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v14 = 0.0;
  if (!self)
  {
    goto LABEL_37;
  }

LABEL_9:
  v15 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_touchedThresholdSlot forSlot:?];
  if (v15)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

LABEL_12:
  *(a3 + v10) = *(a3 + v10) & 0xFD | v16;
  v9 |= v12 | v15;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return v9 & 1;
    }

LABEL_17:
    v20 = [(_GCDevicePhysicalInputTouchInput *)self isTouched];
    if (a5)
    {
      v21 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?]);
      v22 = v21;
      if (self)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = 0.0;
      if (self)
      {
LABEL_19:
        v23 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
        if (v23)
        {
          v24 = 8;
        }

        else
        {
          v24 = 0;
        }

        goto LABEL_22;
      }
    }

    v23 = 0;
    v24 = 0;
LABEL_22:
    *(a3 + v10) = *(a3 + v10) & 0xF7 | v24;
    v25 = v20 ^ [(_GCDevicePhysicalInputTouchInput *)self isTouched];
    if (v25)
    {
      v26 = 16;
    }

    else
    {
      v26 = 0;
    }

    *(a3 + v10) = *(a3 + v10) & 0xEF | v26;
    if (a5)
    {
      v27 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
      if (self)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v27 = 0;
      if (self)
      {
LABEL_27:
        v28 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v27 forSlot:&self->_touchedTimestampSlot];
        if (v28)
        {
          v29 = 32;
        }

        else
        {
          v29 = 0;
        }

        goto LABEL_30;
      }
    }

    v28 = 0;
    v29 = 0;
LABEL_30:
    *(a3 + v10) = *(a3 + v10) & 0xDF | v29;
    v9 |= v25 | v23 | v28;
    return v9 & 1;
  }

LABEL_13:
  v17 = [a5 _touchedDidChangeHandler];
  v18 = [(_GCDevicePhysicalInputTouchInput *)self _setTouchedDidChangeHandler:v17];
  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFB | v19;
  v9 |= v18;

  if ((v6 & 8) != 0)
  {
    goto LABEL_17;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputTouchInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v6;
  }

  v7 = *(a3 + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(a3 + v6);
    if ((v7 & 4) == 0)
    {
LABEL_5:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + v6) & 4) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(a3 + v6);
  if ((v7 & 0x10) == 0)
  {
LABEL_6:
    if ((v7 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_11:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(a3 + v6) & 0x20) == 0)
  {
    return;
  }

LABEL_7:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputTouchInput;
  [_GCDevicePhysicalInputView postCommit:sel_postCommit_sender_ sender:?];
  v7 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v7 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v7;
  }

  v8 = *(a3 + v7);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(a3 + v7);
    if ((v8 & 4) == 0)
    {
LABEL_5:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a3 + v7) & 4) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(a3 + v7);
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_12:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(a3 + v7) & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  v9 = [(_GCDevicePhysicalInputTouchInput *)self touchedDidChangeHandler];
  if (v9)
  {
    (v9)[2](v9, a4, self, [(_GCDevicePhysicalInputTouchInput *)self isTouched]);
  }
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(_GCDevicePhysicalInputTouchInput *)self isTouched];
  v4 = &stru_1F4E3B4E0;
  if (v3)
  {
    v4 = @" (touched)";
  }

  return [v2 stringWithFormat:@"<TouchedStateInput; %@>", v4];
}

- (BOOL)_setTouchedDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v4 forSlot:&self->_touchedChangedHandlerSlot policy:771];

  return self;
}

- (_GCDevicePhysicalInputTouchInput)initWithParameters:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _GCDevicePhysicalInputTouchInput;
  v5 = [(_GCDevicePhysicalInputView *)&v12 initWithParameters:v4];
  v6 = v5;
  if (!v4)
  {
    [(_GCDevicePhysicalInputTouchInput *)v5 _setSources:?];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputTouchInput *)v5 _setSources:?];
  v7 = v4[2];
  if (v6)
  {
LABEL_3:
    v8 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v8 _testAndSetPrimitiveValue:v9 forSlot:v10];
  }

LABEL_4:

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
      [v6 handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputTouchInput.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    v4 = OUTLINED_FUNCTION_2_3();

    return [(_GCDevicePhysicalInputView *)v4 _testAndSetObjectValue:a2 forSlot:v5 policy:771];
  }

  return result;
}

- (uint64_t)_setTouchedThreshold:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 32);
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

- (double)_touchedThreshold
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
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
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 48);
  }

  return result;
}

- (double)_lastTouchedTimestamp
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

- (uint64_t)_setLastTouchedTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 56);
  }

  return result;
}

- (BOOL)isEqualToInput:(_BOOL8)a1
{
  v2 = a1;
  if (a1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:sel_isEqualToInput_ object:v2 file:@"_GCDevicePhysicalInputTouchInput.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputTouchInput.class]"}];
      v2 = 0;
LABEL_11:

      return v2;
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
        v11 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v9 _primitiveValueForSlot:v10]);
        if (a2)
        {
          v12 = [(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?];
          v13 = OUTLINED_FUNCTION_3_3(v12);
        }

        else
        {
          v13 = 0.0;
        }

        v2 = v13 == v11;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_11;
    }

    return 0;
  }

  return v2;
}

- (uint64_t)__setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, COERCE__INT64(a2), 48);
  }

  return result;
}

- (uint64_t)__setLastTouchedTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 56);
  }

  return result;
}

- (BOOL)isTouched
{
  if (self)
  {
    v2 = self;
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    v4 = [(_GCDevicePhysicalInputView *)v2 _primitiveValueForSlot:?];
    LOBYTE(self) = (v3 - OUTLINED_FUNCTION_3_3(v4)) > 0.00000011921;
  }

  return self;
}

- (double)lastTouchedStateTimestamp
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

- (double)lastTouchedStateLatency
{
  if (!dword_1EC735EDC)
  {
    mach_timebase_info(&lastTouchedStateLatency_sTimebaseInfo);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  return (mach_absolute_time() * lastTouchedStateLatency_sTimebaseInfo / dword_1EC735EDC) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  v2 = [(_GCDevicePhysicalInputTouchInput *)self _sources];

  return v2;
}

- (uint64_t)update:(uint64_t)a1 withValue:(uint64_t)a2 timestamp:(float)a3
{
  if (!a1)
  {
    return 0;
  }

  v5 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v5 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v5;
  }

  v6 = OUTLINED_FUNCTION_4_2();
  v8 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v6 _primitiveValueForSlot:v7]);
  v9 = OUTLINED_FUNCTION_4_2();
  v11 = [(_GCDevicePhysicalInputView *)v9 _primitiveValueForSlot:v10];
  v12 = OUTLINED_FUNCTION_3_3(v11);
  v13 = v8 - v12;
  v14 = a3 - v12;
  v15 = v8 != a3;
  if (v8 != a3)
  {
    v16 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v16 _setPrimitiveValue:v17 forSlot:v18];
    *(a2 + v5) |= 8u;
  }

  if (v14 > 0.00000011921 != v13 > 0.00000011921)
  {
    v19 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v19 _setPrimitiveValue:v20 forSlot:v21];
    *(a2 + v5) |= 0x30u;
    return 1;
  }

  return v15;
}

@end
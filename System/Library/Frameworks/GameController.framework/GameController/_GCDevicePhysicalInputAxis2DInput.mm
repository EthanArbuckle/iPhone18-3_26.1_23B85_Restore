@interface _GCDevicePhysicalInputAxis2DInput
+ (unsigned)updateContextSize;
- (BOOL)_canWrap;
- (BOOL)_isAnalog;
- (BOOL)canWrap;
- (BOOL)isAnalog;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCPoint2)value;
- (NSSet)sources;
- (_GCDevicePhysicalInputAxis2DInput)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputAxis2DInput)initWithTemplate:(id)template context:(id)context;
- (double)_lastValueTimestamp;
- (double)_value;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (id)valueDidChangeHandler;
- (uint64_t)__setLastValueTimestamp:(uint64_t)result;
- (uint64_t)__setValue:(float)value;
- (uint64_t)_setAnalog:(uint64_t)result;
- (uint64_t)_setCanWrap:(uint64_t)result;
- (uint64_t)_setLastValueTimestamp:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setValue:(float)value;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)_valueDidChangeHandler;
- (uint64_t)isEqualToInput:(uint64_t)input;
- (uint64_t)update:(float)update withValue:(float)value timestamp:;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputAxis2DInput

- (_GCDevicePhysicalInputAxis2DInput)initWithTemplate:(id)template context:(id)context
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputAxis2DInput;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:templateCopy context:contextCopy];
  v7->_sourcesSlot = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[3], v10.receiver, v10.super_class}];
  v7->_isAnalogSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[4]];
  v7->_canWrapSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[5]];
  v7->_valueChangedHandlerSlot = [contextCopy view:v7 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[6]];
  v7->_valueSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[7]];
  v8 = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];

  v7->_valueTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputAxis2DInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v31.receiver = self;
  v31.super_class = _GCDevicePhysicalInputAxis2DInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_6;
  if (MyUpdateContext_Offset_6 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_6 = v10;
    if ((usagesCopy & 2) == 0)
    {
LABEL_3:
      if ((usagesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((usagesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  _sources = [(_GCDevicePhysicalInputAxis2DInput *)with _sources];
  v21 = [(_GCDevicePhysicalInputAxis2DInput *)self _setSources:_sources];
  *(update + v10) = *(update + v10) & 0xFE | v21;

  if (with)
  {
    v22 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_20;
    }

LABEL_39:
    v23 = 0;
    v24 = 0;
    goto LABEL_23;
  }

  v22 = 0;
  if (!self)
  {
    goto LABEL_39;
  }

LABEL_20:
  v23 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v22 forSlot:&self->_isAnalogSlot];
  if (v23)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

LABEL_23:
  *(update + v10) = *(update + v10) & 0xFD | v24;
  if (with)
  {
    v25 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_25;
    }

LABEL_41:
    v26 = 0;
    v27 = 0;
    goto LABEL_28;
  }

  v25 = 0;
  if (!self)
  {
    goto LABEL_41;
  }

LABEL_25:
  v26 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v25 forSlot:&self->_canWrapSlot];
  if (v26)
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

LABEL_28:
  *(update + v10) = *(update + v10) & 0xFB | v27;
  v9 |= v21 | v23 | v26;
  if ((usagesCopy & 4) == 0)
  {
LABEL_4:
    if ((usagesCopy & 8) != 0)
    {
      goto LABEL_5;
    }

    return v9 & 1;
  }

LABEL_29:
  _valueDidChangeHandler = [(_GCDevicePhysicalInputAxis2DInput *)with _valueDidChangeHandler];
  v29 = [(_GCDevicePhysicalInputAxis2DInput *)self _setValueDidChangeHandler:_valueDidChangeHandler];
  if (v29)
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  *(update + v10) = *(update + v10) & 0xF7 | v30;
  v9 |= v29;

  if ((usagesCopy & 8) != 0)
  {
LABEL_5:
    if (with)
    {
      v11 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
      v12 = v11 & 0xFFFFFFFF00000000;
      v13 = v11;
      if (self)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
      if (self)
      {
LABEL_7:
        v14 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
        if (v14)
        {
          v15 = 16;
        }

        else
        {
          v15 = 0;
        }

LABEL_10:
        *(update + v10) = *(update + v10) & 0xEF | v15;
        if (with)
        {
          v16 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
          if (self)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = 0;
          if (self)
          {
LABEL_12:
            v17 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v16 forSlot:&self->_valueTimestampSlot];
            if (v17)
            {
              v18 = 32;
            }

            else
            {
              v18 = 0;
            }

            goto LABEL_15;
          }
        }

        v17 = 0;
        v18 = 0;
LABEL_15:
        *(update + v10) = *(update + v10) & 0xDF | v18;
        v9 |= v14 | v17;
        return v9 & 1;
      }
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputAxis2DInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_6;
  if (MyUpdateContext_Offset_6 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_6 = v6;
  }

  v7 = *(commit + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
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

  else if ((*(commit + v6) & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
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
  v7 = *(commit + v6);
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
  v7 = *(commit + v6);
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
  if ((*(commit + v6) & 0x20) == 0)
  {
    return;
  }

LABEL_9:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputAxis2DInput;
  [_GCDevicePhysicalInputView preCommit:sel_preCommit_sender_ sender:?];
  v7 = MyUpdateContext_Offset_6;
  if (MyUpdateContext_Offset_6 == -1)
  {
    v7 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_6 = v7;
  }

  v8 = *(commit + v7);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(commit + v7);
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

  else if ((*(commit + v7) & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
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
  v8 = *(commit + v7);
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
  v8 = *(commit + v7);
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
  v8 = *(commit + v7);
  if ((v8 & 0x20) == 0)
  {
LABEL_9:
    if ((v8 & 0x10) == 0)
    {
      return;
    }

LABEL_17:
    [_GCDevicePhysicalInputAxis2DInput postCommit:sender sender:?];
    return;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(commit + v7) & 0x10) != 0)
  {
    goto LABEL_17;
  }
}

- (_GCDevicePhysicalInputAxis2DInput)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputAxis2DInput;
  v5 = [(_GCDevicePhysicalInputView *)&v16 initWithParameters:parametersCopy];
  v6 = v5;
  if (parametersCopy)
  {
    [(_GCDevicePhysicalInputAxis2DInput *)v5 _setSources:?];
    v7 = *(parametersCopy + 8);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputAxis2DInput *)v5 _setSources:?];
  if (v6)
  {
LABEL_3:
    v8 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v8 _testAndSetPrimitiveValue:v9 forSlot:v10];
  }

LABEL_4:
  if (!parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = *(parametersCopy + 9);
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputAxis2DInput.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
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
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_1_14(v1);
  return result;
}

- (uint64_t)_setValue:(float)value
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, LODWORD(a2) | (LODWORD(value) << 32), 56);
  }

  return result;
}

- (double)_lastValueTimestamp
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

- (uint64_t)_setLastValueTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 64);
  }

  return result;
}

- (uint64_t)isEqualToInput:(uint64_t)input
{
  inputCopy = input;
  if (input)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_isEqualToInput_ object:inputCopy file:@"_GCDevicePhysicalInputAxis2DInput.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputAxis2DInput.class]"}];
      inputCopy = 0;
      goto LABEL_12;
    }

    v4 = objc_opt_class();
    if ([v4 isEqual:objc_opt_class()])
    {
      v5 = OUTLINED_FUNCTION_4_2();
      currentHandler = [(_GCDevicePhysicalInputView *)v5 _objectValueForSlot:v6];
      sources = [a2 sources];
      if ([currentHandler isEqual:sources])
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

        inputCopy = (v14 == 0) ^ v15;
        goto LABEL_11;
      }

LABEL_7:
      inputCopy = 0;
LABEL_11:

LABEL_12:
      return inputCopy;
    }

    return 0;
  }

  return inputCopy;
}

- (uint64_t)__setValue:(float)value
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, LODWORD(a2) | (LODWORD(value) << 32), 56);
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
  _valueDidChangeHandler = [(_GCDevicePhysicalInputAxis2DInput *)self _valueDidChangeHandler];

  return _valueDidChangeHandler;
}

- (GCPoint2)value
{
  if (self)
  {
    v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    v3 = OUTLINED_FUNCTION_1_14(v2);
  }

  else
  {
    v4 = 0.0;
    v3 = 0.0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
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
  if (!dword_1EC73603C)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_1);
    if (self)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0.0;
    return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_1 / dword_1EC73603C) / 1000000000.0 - v3;
  }

  if (!self)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  return (mach_absolute_time() * lastValueLatency_sTimebaseInfo_1 / dword_1EC73603C) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  _sources = [(_GCDevicePhysicalInputAxis2DInput *)self _sources];

  return _sources;
}

- (uint64_t)update:(float)update withValue:(float)value timestamp:
{
  if (result)
  {
    v7 = MyUpdateContext_Offset_6;
    if (MyUpdateContext_Offset_6 == -1)
    {
      v7 = +[_GCDevicePhysicalInputView updateContextSize];
      MyUpdateContext_Offset_6 = v7;
    }

    v8 = OUTLINED_FUNCTION_4_2();
    v10 = [(_GCDevicePhysicalInputView *)v8 _primitiveValueForSlot:v9];
    if (update == OUTLINED_FUNCTION_1_14(v10) && value == v11)
    {
      return 0;
    }

    else
    {
      v13 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v13 _setPrimitiveValue:v14 forSlot:v15];
      v16 = OUTLINED_FUNCTION_2_3();
      [(_GCDevicePhysicalInputView *)v16 _setPrimitiveValue:v17 forSlot:v18];
      *(a2 + v7) |= 0x30u;
      return 1;
    }
  }

  return result;
}

- (void)postCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputAxis2DInput *)a1 _valueDidChangeHandler];
  if (v4)
  {
    if (a1)
    {
      v6 = OUTLINED_FUNCTION_4_2();
      v8 = [(_GCDevicePhysicalInputView *)v6 _primitiveValueForSlot:v7];
      v5.n128_f32[0] = OUTLINED_FUNCTION_1_14(v8);
    }

    else
    {
      v5.n128_u64[0] = 0;
    }

    v4[2](v4, a2, a1, v5);
  }
}

@end
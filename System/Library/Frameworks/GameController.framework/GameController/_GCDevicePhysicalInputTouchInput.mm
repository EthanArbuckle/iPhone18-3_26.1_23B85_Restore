@interface _GCDevicePhysicalInputTouchInput
+ (unsigned)updateContextSize;
- (BOOL)_setTouchedDidChangeHandler:(id)handler;
- (BOOL)isEqualToInput:(_BOOL8)input;
- (BOOL)isTouched;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (NSSet)sources;
- (NSString)description;
- (_GCDevicePhysicalInputTouchInput)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputTouchInput)initWithTemplate:(id)template context:(id)context;
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
- (uint64_t)update:(uint64_t)update withValue:(uint64_t)value timestamp:(float)timestamp;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputTouchInput

- (_GCDevicePhysicalInputTouchInput)initWithTemplate:(id)template context:(id)context
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputTouchInput;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:templateCopy context:contextCopy];
  v7->_sourcesSlot = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[3], v10.receiver, v10.super_class}];
  v7->_touchedThresholdSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[4]];
  v7->_touchedChangedHandlerSlot = [contextCopy view:v7 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[5]];
  v7->_valueSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[6]];
  v8 = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[7]];

  v7->_touchedTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputTouchInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v31.receiver = self;
  v31.super_class = _GCDevicePhysicalInputTouchInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v10;
    if ((usagesCopy & 2) == 0)
    {
LABEL_3:
      if ((usagesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((usagesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  _sources = [(_GCDevicePhysicalInputTouchInput *)with _sources];
  v12 = [(_GCDevicePhysicalInputTouchInput *)self _setSources:_sources];
  *(update + v10) = *(update + v10) & 0xFE | v12;

  if (with)
  {
    v13 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]);
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
  *(update + v10) = *(update + v10) & 0xFD | v16;
  v9 |= v12 | v15;
  if ((usagesCopy & 4) == 0)
  {
LABEL_4:
    if ((usagesCopy & 8) == 0)
    {
      return v9 & 1;
    }

LABEL_17:
    isTouched = [(_GCDevicePhysicalInputTouchInput *)self isTouched];
    if (with)
    {
      v21 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]);
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
    *(update + v10) = *(update + v10) & 0xF7 | v24;
    v25 = isTouched ^ [(_GCDevicePhysicalInputTouchInput *)self isTouched];
    if (v25)
    {
      v26 = 16;
    }

    else
    {
      v26 = 0;
    }

    *(update + v10) = *(update + v10) & 0xEF | v26;
    if (with)
    {
      v27 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
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
    *(update + v10) = *(update + v10) & 0xDF | v29;
    v9 |= v25 | v23 | v28;
    return v9 & 1;
  }

LABEL_13:
  _touchedDidChangeHandler = [with _touchedDidChangeHandler];
  v18 = [(_GCDevicePhysicalInputTouchInput *)self _setTouchedDidChangeHandler:_touchedDidChangeHandler];
  if (v18)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFB | v19;
  v9 |= v18;

  if ((usagesCopy & 8) != 0)
  {
    goto LABEL_17;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputTouchInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_1;
  if (MyUpdateContext_Offset_1 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_1 = v6;
  }

  v7 = *(commit + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
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

  else if ((*(commit + v6) & 4) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
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
  if ((*(commit + v6) & 0x20) == 0)
  {
    return;
  }

LABEL_7:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)commit sender:(id)sender
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

  v8 = *(commit + v7);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(commit + v7);
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

  else if ((*(commit + v7) & 4) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
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
  v8 = *(commit + v7);
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
  if ((*(commit + v7) & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  touchedDidChangeHandler = [(_GCDevicePhysicalInputTouchInput *)self touchedDidChangeHandler];
  if (touchedDidChangeHandler)
  {
    (touchedDidChangeHandler)[2](touchedDidChangeHandler, sender, self, [(_GCDevicePhysicalInputTouchInput *)self isTouched]);
  }
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  isTouched = [(_GCDevicePhysicalInputTouchInput *)self isTouched];
  v4 = &stru_1F4E3B4E0;
  if (isTouched)
  {
    v4 = @" (touched)";
  }

  return [v2 stringWithFormat:@"<TouchedStateInput; %@>", v4];
}

- (BOOL)_setTouchedDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v4 forSlot:&self->_touchedChangedHandlerSlot policy:771];

  return self;
}

- (_GCDevicePhysicalInputTouchInput)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = _GCDevicePhysicalInputTouchInput;
  v5 = [(_GCDevicePhysicalInputView *)&v12 initWithParameters:parametersCopy];
  v6 = v5;
  if (!parametersCopy)
  {
    [(_GCDevicePhysicalInputTouchInput *)v5 _setSources:?];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputTouchInput *)v5 _setSources:?];
  v7 = parametersCopy[2];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputTouchInput.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
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
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (double)_value
{
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
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
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
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

- (BOOL)isEqualToInput:(_BOOL8)input
{
  inputCopy = input;
  if (input)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_isEqualToInput_ object:inputCopy file:@"_GCDevicePhysicalInputTouchInput.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputTouchInput.class]"}];
      inputCopy = 0;
LABEL_11:

      return inputCopy;
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

        inputCopy = v13 == v11;
      }

      else
      {
        inputCopy = 0;
      }

      goto LABEL_11;
    }

    return 0;
  }

  return inputCopy;
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
    selfCopy = self;
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    v4 = [(_GCDevicePhysicalInputView *)selfCopy _primitiveValueForSlot:?];
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
  _sources = [(_GCDevicePhysicalInputTouchInput *)self _sources];

  return _sources;
}

- (uint64_t)update:(uint64_t)update withValue:(uint64_t)value timestamp:(float)timestamp
{
  if (!update)
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
  v14 = timestamp - v12;
  v15 = v8 != timestamp;
  if (v8 != timestamp)
  {
    v16 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v16 _setPrimitiveValue:v17 forSlot:v18];
    *(value + v5) |= 8u;
  }

  if (v14 > 0.00000011921 != v13 > 0.00000011921)
  {
    v19 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v19 _setPrimitiveValue:v20 forSlot:v21];
    *(value + v5) |= 0x30u;
    return 1;
  }

  return v15;
}

@end
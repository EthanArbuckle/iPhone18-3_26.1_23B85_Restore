@interface _GCDevicePhysicalInputPressInput
+ (unsigned)updateContextSize;
- (BOOL)_isAnalog;
- (BOOL)_setPressedDidChangeHandler:(id)handler;
- (BOOL)isAnalog;
- (BOOL)isEqualToInput:(_BOOL8)input;
- (BOOL)isPressed;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (NSSet)sources;
- (NSString)description;
- (_GCDevicePhysicalInputPressInput)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputPressInput)initWithTemplate:(id)template context:(id)context;
- (double)_lastPressedTimestamp;
- (double)_lastValueTimestamp;
- (double)_pressedThreshold;
- (double)_value;
- (double)lastPressedStateLatency;
- (double)lastPressedStateTimestamp;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (float)value;
- (id)valueDidChangeHandler;
- (uint64_t)__setLastPressedTimestamp:(uint64_t)result;
- (uint64_t)__setLastValueTimestamp:(uint64_t)result;
- (uint64_t)__setValue:(uint64_t)result;
- (uint64_t)_setAnalog:(uint64_t)result;
- (uint64_t)_setLastPressedTimestamp:(uint64_t)result;
- (uint64_t)_setLastValueTimestamp:(uint64_t)result;
- (uint64_t)_setPressedThreshold:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)_valueDidChangeHandler;
- (uint64_t)update:(uint64_t)update withValue:(uint64_t)value timestamp:(float)timestamp;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputPressInput

- (_GCDevicePhysicalInputPressInput)initWithTemplate:(id)template context:(id)context
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputPressInput;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputView *)&v10 initWithTemplate:templateCopy context:contextCopy];
  v7->_sourcesSlot = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[3], v10.receiver, v10.super_class}];
  v7->_isAnalogSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[4]];
  v7->_pressedThresholdSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[5]];
  v7->_valueChangedHandlerSlot = [contextCopy view:v7 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[6]];
  v7->_pressedChangedHandlerSlot = [contextCopy view:v7 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[7]];
  v7->_valueSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  v7->_valueTimestampSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];
  v8 = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];

  v7->_pressedTimestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputPressInput;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 2;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v37.receiver = self;
  v37.super_class = _GCDevicePhysicalInputPressInput;
  v9 = [_GCDevicePhysicalInputView update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_0;
  if (MyUpdateContext_Offset_0 == -1)
  {
    v10 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_0 = v10;
    if ((usagesCopy & 2) == 0)
    {
LABEL_3:
      if ((usagesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((usagesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  _sources = [(_GCDevicePhysicalInputPressInput *)with _sources];
  v23 = [(_GCDevicePhysicalInputPressInput *)self _setSources:_sources];
  *(update + v10) = *(update + v10) & 0xFFFE | v23;

  if (with)
  {
    v24 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_26;
    }

LABEL_50:
    v25 = 0;
    v26 = 0;
    goto LABEL_29;
  }

  v24 = 0;
  if (!self)
  {
    goto LABEL_50;
  }

LABEL_26:
  v25 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v24 forSlot:&self->_isAnalogSlot];
  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v26 = 0;
  }

LABEL_29:
  *(update + v10) = *(update + v10) & 0xFFFD | v26;
  if (with)
  {
    v27 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]);
    v28 = v27;
    if (self)
    {
      goto LABEL_31;
    }

LABEL_52:
    v29 = 0;
    v30 = 0;
    goto LABEL_34;
  }

  v28 = 0.0;
  if (!self)
  {
    goto LABEL_52;
  }

LABEL_31:
  v29 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_pressedThresholdSlot forSlot:?];
  if (v29)
  {
    v30 = 4;
  }

  else
  {
    v30 = 0;
  }

LABEL_34:
  *(update + v10) = *(update + v10) & 0xFFFB | v30;
  v9 |= v23 | v25 | v29;
  if ((usagesCopy & 4) == 0)
  {
LABEL_4:
    if ((usagesCopy & 8) == 0)
    {
      return v9 & 1;
    }

LABEL_5:
    if (with)
    {
      v11 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]);
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
        *(update + v10) = *(update + v10) & 0xFFDF | v14;
        if (with)
        {
          v15 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
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
              v17 = 64;
            }

            else
            {
              v17 = 0;
            }

LABEL_15:
            *(update + v10) = *(update + v10) & 0xFFBF | v17;
            if (with)
            {
              v18 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
            }

            else
            {
              v18 = 0;
            }

            if (self)
            {
              v19 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v18 forSlot:&self->_pressedTimestampSlot];
              if (v19)
              {
                v20 = 256;
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v19 = 0;
              v20 = 0;
            }

            *(update + v10) = *(update + v10) & 0xFEFF | v20;
            v9 |= v13 | v16 | v19;
            return v9 & 1;
          }
        }

        v16 = 0;
        v17 = 0;
        goto LABEL_15;
      }
    }

    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

LABEL_35:
  _valueDidChangeHandler = [(_GCDevicePhysicalInputPressInput *)with _valueDidChangeHandler];
  v32 = [(_GCDevicePhysicalInputPressInput *)self _setValueDidChangeHandler:_valueDidChangeHandler];
  if (v32)
  {
    v33 = 8;
  }

  else
  {
    v33 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFF7 | v33;

  pressedDidChangeHandler = [with pressedDidChangeHandler];
  v35 = [(_GCDevicePhysicalInputPressInput *)self _setPressedDidChangeHandler:pressedDidChangeHandler];
  if (v35)
  {
    v36 = 16;
  }

  else
  {
    v36 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFEF | v36;
  v9 |= v32 | v35;

  if ((usagesCopy & 8) != 0)
  {
    goto LABEL_5;
  }

  return v9 & 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputPressInput;
  [(_GCDevicePhysicalInputView *)&v8 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_0;
  if (MyUpdateContext_Offset_0 == -1)
  {
    v6 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_0 = v6;
  }

  v7 = *(commit + v6);
  if (v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 8) == 0)
  {
LABEL_6:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x10) == 0)
  {
LABEL_7:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x20) == 0)
  {
LABEL_8:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x40) == 0)
  {
LABEL_9:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x80) == 0)
  {
LABEL_10:
    if ((v7 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(commit + v6) & 0x100) == 0)
  {
    return;
  }

LABEL_11:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputPressInput;
  [_GCDevicePhysicalInputView postCommit:sel_postCommit_sender_ sender:?];
  v7 = MyUpdateContext_Offset_0;
  if (MyUpdateContext_Offset_0 == -1)
  {
    v7 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_0 = v7;
  }

  v8 = *(commit + v7);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(commit + v7);
    if ((v8 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 8) == 0)
  {
LABEL_6:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x10) == 0)
  {
LABEL_7:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x20) == 0)
  {
LABEL_8:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x40) == 0)
  {
LABEL_9:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x80) == 0)
  {
LABEL_10:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x100) == 0)
  {
LABEL_11:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v7);
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_22:
  valueDidChangeHandler = [(_GCDevicePhysicalInputPressInput *)self valueDidChangeHandler];
  if (valueDidChangeHandler)
  {
    [(_GCDevicePhysicalInputPressInput *)self value];
    (valueDidChangeHandler)[2](valueDidChangeHandler, sender, self);
  }

  if ((*(commit + v7) & 0x80) != 0)
  {
LABEL_25:
    pressedDidChangeHandler = [(_GCDevicePhysicalInputPressInput *)self pressedDidChangeHandler];
    if (pressedDidChangeHandler)
    {
      (pressedDidChangeHandler)[2](pressedDidChangeHandler, sender, self, [(_GCDevicePhysicalInputPressInput *)self isPressed]);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(_GCDevicePhysicalInputPressInput *)self value];
  v5 = v4;
  isPressed = [(_GCDevicePhysicalInputPressInput *)self isPressed];
  v7 = &stru_1F4E3B4E0;
  if (isPressed)
  {
    v7 = @" (pressed)";
  }

  return [v3 stringWithFormat:@"<PressInput; value = %f%@>", *&v5, v7];
}

- (BOOL)_setPressedDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v4 forSlot:&self->_pressedChangedHandlerSlot policy:771];

  return self;
}

- (_GCDevicePhysicalInputPressInput)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputPressInput;
  v5 = [(_GCDevicePhysicalInputView *)&v16 initWithParameters:parametersCopy];
  v6 = v5;
  if (parametersCopy)
  {
    [(_GCDevicePhysicalInputPressInput *)v5 _setSources:?];
    v7 = *(parametersCopy + 8);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputPressInput *)v5 _setSources:?];
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

  v11 = parametersCopy[3];
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
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputPressInput.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
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

- (uint64_t)_setPressedThreshold:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 40);
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
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?]!= 0;
  }

  return result;
}

- (double)_pressedThreshold
{
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
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
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (uint64_t)_setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 64);
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
    return OUTLINED_FUNCTION_0_6(result, *&a2, 72);
  }

  return result;
}

- (double)_lastPressedTimestamp
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

- (uint64_t)_setLastPressedTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 80);
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
      [currentHandler handleFailureInMethod:sel_isEqualToInput_ object:inputCopy file:@"_GCDevicePhysicalInputPressInput.m" lineNumber:196 description:{@"Invalid parameter not satisfying: %s", "[otherElement isKindOfClass:_GCDevicePhysicalInputPressInput.class]"}];
      inputCopy = 0;
LABEL_15:

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
        v11 = [(_GCDevicePhysicalInputView *)v9 _primitiveValueForSlot:v10];
        if (a2)
        {
          if ((v11 != 0) == ([(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?]!= 0))
          {
LABEL_7:
            v12 = OUTLINED_FUNCTION_4_2();
            v14 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)v12 _primitiveValueForSlot:v13]);
            if (a2)
            {
              v15 = [(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?];
              v16 = OUTLINED_FUNCTION_3_3(v15);
            }

            else
            {
              v16 = 0.0;
            }

            inputCopy = v16 == v14;
            goto LABEL_14;
          }
        }

        else if (!v11)
        {
          goto LABEL_7;
        }
      }

      inputCopy = 0;
LABEL_14:

      goto LABEL_15;
    }

    return 0;
  }

  return inputCopy;
}

- (uint64_t)__setValue:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, COERCE__INT64(a2), 64);
  }

  return result;
}

- (uint64_t)__setLastValueTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 72);
  }

  return result;
}

- (uint64_t)__setLastPressedTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_5(result, *&a2, 80);
  }

  return result;
}

- (id)valueDidChangeHandler
{
  _valueDidChangeHandler = [(_GCDevicePhysicalInputPressInput *)self _valueDidChangeHandler];

  return _valueDidChangeHandler;
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
    LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]!= 0;
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
  if (!dword_1EC735ECC)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = mach_absolute_time();
  return OUTLINED_FUNCTION_5_3(v4, &lastValueLatency_sTimebaseInfo) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  _sources = [(_GCDevicePhysicalInputPressInput *)self _sources];

  return _sources;
}

- (BOOL)isPressed
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

- (double)lastPressedStateTimestamp
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

- (double)lastPressedStateLatency
{
  if (!dword_1EC735ED4)
  {
    mach_timebase_info(&lastPressedStateLatency_sTimebaseInfo);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = mach_absolute_time();
  return OUTLINED_FUNCTION_5_3(v4, &lastPressedStateLatency_sTimebaseInfo) / 1000000000.0 - v3;
}

- (uint64_t)update:(uint64_t)update withValue:(uint64_t)value timestamp:(float)timestamp
{
  if (!update)
  {
    return 0;
  }

  v5 = MyUpdateContext_Offset_0;
  if (MyUpdateContext_Offset_0 == -1)
  {
    v5 = +[_GCDevicePhysicalInputView updateContextSize];
    MyUpdateContext_Offset_0 = v5;
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
    v19 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v19 _setPrimitiveValue:v20 forSlot:v21];
    *(value + v5) |= 0x60u;
  }

  if (v14 > 0.00000011921 != v13 > 0.00000011921)
  {
    v22 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v22 _setPrimitiveValue:v23 forSlot:v24];
    *(value + v5) |= 0x180u;
    return 1;
  }

  return v15;
}

@end
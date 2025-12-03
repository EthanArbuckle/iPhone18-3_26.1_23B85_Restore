@interface _GCDevicePhysicalInputSwitchElement
+ (unsigned)updateContextSize;
- (BOOL)_canWrap;
- (BOOL)_isSequential;
- (BOOL)canWrap;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)isSequential;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (NSSet)sources;
- (NSString)description;
- (_GCDevicePhysicalInputSwitchElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputSwitchElement)initWithTemplate:(id)template context:(id)context;
- (_NSRange)positionRange;
- (double)_lastPositionTimestamp;
- (double)lastPositionLatency;
- (double)lastPositionTimestamp;
- (id)positionDidChangeHandler;
- (int64_t)position;
- (uint64_t)_position;
- (uint64_t)_positionDidChangeHandler;
- (uint64_t)_positionField;
- (uint64_t)_positionMax;
- (uint64_t)_positionMin;
- (uint64_t)_setCanWrap:(uint64_t)result;
- (uint64_t)_setLastPositionTimestamp:(uint64_t)result;
- (uint64_t)_setPosition:(uint64_t)result;
- (uint64_t)_setPositionDidChangeHandler:(uint64_t)result;
- (uint64_t)_setPositionField:(uint64_t)result;
- (uint64_t)_setPositionMax:(uint64_t)result;
- (uint64_t)_setPositionMin:(uint64_t)result;
- (uint64_t)_setSequential:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_sources;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputSwitchElement

- (_GCDevicePhysicalInputSwitchElement)initWithTemplate:(id)template context:(id)context
{
  v10.receiver = self;
  v10.super_class = _GCDevicePhysicalInputSwitchElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputElement *)&v10 initWithTemplate:templateCopy context:contextCopy];
  v7->_sourcesSlot = [contextCopy view:v7 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[7], v10.receiver, v10.super_class}];
  v7->_canWrapSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  v7->_isSequentialSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];
  v7->_positionMinSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
  v7->_positionMaxSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[11]];
  v7->_positionFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[12]];
  v7->_positionChangedHandlerSlot = [contextCopy view:v7 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[13]];
  v7->_positionSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[14]];
  v8 = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[15]];

  v7->_timestampSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS____GCDevicePhysicalInputSwitchElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 2;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v41.receiver = self;
  v41.super_class = _GCDevicePhysicalInputSwitchElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_3;
  if (MyUpdateContext_Offset_3 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_3 = v10;
    if ((usagesCopy & 2) == 0)
    {
LABEL_3:
      if ((usagesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }
  }

  else if ((usagesCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  _sources = [(_GCDevicePhysicalInputSwitchElement *)with _sources];
  v40 = [(_GCDevicePhysicalInputSwitchElement *)self _setSources:_sources];
  *(update + v10) = *(update + v10) & 0xFFFE | v40;

  if (with)
  {
    v19 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_20;
    }

LABEL_56:
    v20 = 0;
    v21 = 0;
    goto LABEL_23;
  }

  v19 = 0;
  if (!self)
  {
    goto LABEL_56;
  }

LABEL_20:
  v20 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v19 forSlot:&self->_canWrapSlot];
  if (v20)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

LABEL_23:
  *(update + v10) = *(update + v10) & 0xFFFD | v21;
  if (with)
  {
    v22 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]!= 0;
    if (self)
    {
      goto LABEL_25;
    }

LABEL_58:
    v23 = 0;
    v24 = 0;
    goto LABEL_28;
  }

  v22 = 0;
  if (!self)
  {
    goto LABEL_58;
  }

LABEL_25:
  v23 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v22 forSlot:&self->_isSequentialSlot];
  if (v23)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

LABEL_28:
  *(update + v10) = *(update + v10) & 0xFFFB | v24;
  if (with)
  {
    v25 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    if (self)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v25 = 0;
    if (self)
    {
LABEL_30:
      v26 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v25 forSlot:&self->_positionMinSlot];
      if (v26)
      {
        v27 = 8;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_33;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_33:
  *(update + v10) = *(update + v10) & 0xFFF7 | v27;
  if (with)
  {
    v28 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
  }

  else
  {
    v28 = 0;
  }

  v29 = v20 | v23;
  if (self)
  {
    v30 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v28 forSlot:&self->_positionMaxSlot];
    if (v30)
    {
      v31 = 16;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = v29 | v26;
  *(update + v10) = *(update + v10) & 0xFFEF | v31;
  if (with)
  {
    v33 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 | v30;
  if (self)
  {
    v35 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v33 forSlot:&self->_positionFieldSlot];
    if (v35)
    {
      v36 = 32;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFDF | v36;
  v9 |= v40 | v35 | v34;
  if ((usagesCopy & 4) == 0)
  {
LABEL_4:
    if ((usagesCopy & 8) != 0)
    {
      goto LABEL_5;
    }

    return v9 & 1;
  }

LABEL_46:
  _positionDidChangeHandler = [(_GCDevicePhysicalInputSwitchElement *)with _positionDidChangeHandler];
  v38 = [(_GCDevicePhysicalInputSwitchElement *)self _setPositionDidChangeHandler:_positionDidChangeHandler];
  if (v38)
  {
    v39 = 64;
  }

  else
  {
    v39 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFBF | v39;
  v9 |= v38;

  if ((usagesCopy & 8) != 0)
  {
LABEL_5:
    if (with)
    {
      v11 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
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
        v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_positionSlot];
        if (v12)
        {
          v13 = 128;
        }

        else
        {
          v13 = 0;
        }

LABEL_10:
        *(update + v10) = *(update + v10) & 0xFF7F | v13;
        if (with)
        {
          v14 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
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
            v15 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v14 forSlot:&self->_timestampSlot];
            if (v15)
            {
              v16 = 256;
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
        *(update + v10) = *(update + v10) & 0xFEFF | v16;
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

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputSwitchElement;
  [(_GCDevicePhysicalInputElement *)&v8 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_3;
  if (MyUpdateContext_Offset_3 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_3 = v6;
  }

  v7 = *(commit + v6);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
LABEL_6:
  if ((v7 & 0x18) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 0x40) == 0)
    {
LABEL_8:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x80) == 0)
  {
LABEL_9:
    if ((v7 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  if ((*(commit + v6) & 0x100) == 0)
  {
    return;
  }

LABEL_10:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInputSwitchElement;
  [(_GCDevicePhysicalInputElement *)&v8 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_3;
  if (MyUpdateContext_Offset_3 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_3 = v6;
  }

  v7 = *(commit + v6);
  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v7 = *(commit + v6);
LABEL_6:
  if ((v7 & 0x18) != 0)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 0x40) == 0)
    {
LABEL_8:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x80) == 0)
  {
LABEL_9:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v7 = *(commit + v6);
  if ((v7 & 0x100) == 0)
  {
LABEL_10:
    if ((v7 & 0x80) == 0)
    {
      return;
    }

LABEL_19:
    [_GCDevicePhysicalInputSwitchElement postCommit:? sender:?];
    return;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(commit + v6) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

- (BOOL)isEqualToElement:(id)element
{
  elementCopy = element;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputSwitchElement;
  if ([(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:elementCopy])
  {
    [(_GCDevicePhysicalInputSwitchElement *)self isEqualToElement:elementCopy, &v8];
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
  identifier = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [v3 stringWithFormat:@"<Switch '%@' position = %zd>", identifier, -[_GCDevicePhysicalInputSwitchElement position](self, "position")];;

  return v5;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v17.receiver = self;
  v17.super_class = _GCDevicePhysicalInputSwitchElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_3;
  if (MyUpdateContext_Offset_3 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_3 = v10;
    if (self)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  if (!self)
  {
    goto LABEL_11;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  if (v11 == -1)
  {
    return v9;
  }

  v12 = v11;
  v13 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
LABEL_5:
  [event floatValueForElement:v12];
  v15 = rintf(v14);
  if (v13 != v15)
  {
    if (self)
    {
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v15 forSlot:&self->_positionSlot];
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_timestampSlot forSlot:?];
    }

    *(update + v10) |= 0x180u;
    return 1;
  }

  return v9;
}

- (_GCDevicePhysicalInputSwitchElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v26.receiver = self;
  v26.super_class = _GCDevicePhysicalInputSwitchElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v26 initWithParameters:parametersCopy];
  sources = [(_GCDevicePhysicalInputSwitchElementParameters *)parametersCopy sources];
  [(_GCDevicePhysicalInputSwitchElement *)v5 _setSources:sources];

  if (parametersCopy)
  {
    v7 = *(parametersCopy + 41);
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
  if (parametersCopy)
  {
    v11 = *(parametersCopy + 40);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v12 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v12 _testAndSetPrimitiveValue:v13 forSlot:v14];
  }

LABEL_7:
  if (parametersCopy)
  {
    v15 = parametersCopy[8];
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v5)
  {
LABEL_9:
    v16 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v16 _testAndSetPrimitiveValue:v17 forSlot:v18];
  }

LABEL_10:
  if (parametersCopy)
  {
    v19 = parametersCopy[8];
    v20 = parametersCopy[9];
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = 0;
  v20 = 0;
  if (v5)
  {
LABEL_12:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:&v5->_positionMaxSlot forSlot:?];
  }

LABEL_13:
  if (!parametersCopy)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v21 = parametersCopy[7];
  if (v5)
  {
LABEL_15:
    v22 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v22 _testAndSetPrimitiveValue:v23 forSlot:v24];
  }

LABEL_16:

  return v5;
}

- (uint64_t)_setSources:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputSwitchElement.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    v4 = OUTLINED_FUNCTION_2_3();

    return [(_GCDevicePhysicalInputView *)v4 _testAndSetObjectValue:a2 forSlot:v5 policy:771];
  }

  return result;
}

- (uint64_t)_setCanWrap:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 64);
  }

  return result;
}

- (uint64_t)_setSequential:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 72);
  }

  return result;
}

- (uint64_t)_setPositionMin:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 80);
  }

  return result;
}

- (uint64_t)_setPositionMax:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 88);
  }

  return result;
}

- (uint64_t)_setPositionField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 96);
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

- (BOOL)_canWrap
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
    return OUTLINED_FUNCTION_5_5(v1);
  }

  return result;
}

- (BOOL)_isSequential
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
    return OUTLINED_FUNCTION_5_5(v1);
  }

  return result;
}

- (uint64_t)_positionMin
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 80);
  }

  return result;
}

- (uint64_t)_positionMax
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 88);
  }

  return result;
}

- (uint64_t)_positionField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 96);
  }

  return result;
}

- (uint64_t)_positionDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setPositionDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:v2 + 104 policy:771];

    return v4;
  }

  return result;
}

- (uint64_t)_position
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 112);
  }

  return result;
}

- (uint64_t)_setPosition:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 112);
  }

  return result;
}

- (double)_lastPositionTimestamp
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

- (uint64_t)_setLastPositionTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 120);
  }

  return result;
}

- (id)positionDidChangeHandler
{
  _positionDidChangeHandler = [(_GCDevicePhysicalInputSwitchElement *)self _positionDidChangeHandler];

  return _positionDidChangeHandler;
}

- (int64_t)position
{
  if (self)
  {
    return OUTLINED_FUNCTION_3_4(self, 112);
  }

  return self;
}

- (_NSRange)positionRange
{
  if (self)
  {
    selfCopy = self;
    v3 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    self = [(_GCDevicePhysicalInputView *)selfCopy _primitiveValueForSlot:?];
  }

  else
  {
    v3 = 0;
  }

  v4 = self - v3;
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (BOOL)isSequential
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

- (double)lastPositionTimestamp
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

- (double)lastPositionLatency
{
  if (!dword_1EC735F64)
  {
    mach_timebase_info(&lastPositionLatency_sTimebaseInfo_0);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  return (mach_absolute_time() * lastPositionLatency_sTimebaseInfo_0 / dword_1EC735F64) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  _sources = [(_GCDevicePhysicalInputSwitchElement *)self _sources];

  return _sources;
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  v2 = [(_GCDevicePhysicalInputSwitchElement *)a1 _positionDidChangeHandler];
  if (v2)
  {
    if (a1)
    {
      v3 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
    }

    else
    {
      v3 = 0;
    }

    v2[2](v2, a1, a1, v3);
  }
}

- (void)isEqualToElement:(BOOL *)a3 .cold.1(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = [(_GCDevicePhysicalInputSwitchElement *)a1 _sources];
  v9 = [(_GCDevicePhysicalInputSwitchElement *)a2 _sources];
  if (v8 != v9)
  {
    v3 = [(_GCDevicePhysicalInputSwitchElement *)a1 _sources];
    v4 = [a2 sources];
    if (([v3 isEqual:v4] & 1) == 0)
    {
      v18 = 0;
LABEL_21:

      v17 = v18;
      goto LABEL_22;
    }
  }

  if (!a1)
  {
    if (a2)
    {
      v11 = 0;
      goto LABEL_4;
    }

    v15 = 0;
LABEL_28:
    v16 = 0;
    goto LABEL_13;
  }

  v10 = OUTLINED_FUNCTION_2_4(64);
  v11 = v10 != 0;
  if (!a2)
  {
    if (v10 || OUTLINED_FUNCTION_2_4(72) || OUTLINED_FUNCTION_2_4(80) || OUTLINED_FUNCTION_2_4(88))
    {
      goto LABEL_19;
    }

    v15 = OUTLINED_FUNCTION_2_4(96);
    goto LABEL_28;
  }

LABEL_4:
  if (v11 == (OUTLINED_FUNCTION_4_4(64) != 0))
  {
    v12 = a1 && OUTLINED_FUNCTION_2_4(72) != 0;
    if (((v12 ^ (OUTLINED_FUNCTION_4_4(72) != 0)) & 1) == 0)
    {
      if (a1)
      {
        v13 = OUTLINED_FUNCTION_2_4(80);
        if (v13 == OUTLINED_FUNCTION_4_4(80))
        {
          v14 = OUTLINED_FUNCTION_2_4(88);
          if (v14 == OUTLINED_FUNCTION_4_4(88))
          {
            v15 = OUTLINED_FUNCTION_2_4(96);
LABEL_12:
            v16 = OUTLINED_FUNCTION_4_4(96);
LABEL_13:
            v17 = v15 == v16;
            v18 = v15 == v16;
            goto LABEL_20;
          }
        }
      }

      else if (!OUTLINED_FUNCTION_4_4(80) && !OUTLINED_FUNCTION_4_4(88))
      {
        v15 = 0;
        goto LABEL_12;
      }
    }
  }

LABEL_19:
  v17 = 0;
  v18 = 0;
LABEL_20:
  if (v8 != v9)
  {
    goto LABEL_21;
  }

LABEL_22:
  *a3 = v17;
}

@end
@interface _GCDevicePhysicalInputClickableDirectionPadElement
+ (unsigned)updateContextSize;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCPressedStateInput)pressedInput;
- (NSString)description;
- (_GCDevicePhysicalInputClickableDirectionPadElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputClickableDirectionPadElement)initWithTemplate:(id)template context:(id)context;
- (uint64_t)_pressedInput;
- (uint64_t)_pressedValueField;
- (uint64_t)_setPressedValueField:(uint64_t)result;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputClickableDirectionPadElement

- (_GCDevicePhysicalInputClickableDirectionPadElement)initWithTemplate:(id)template context:(id)context
{
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputDirectionPadElement *)&v11 initWithTemplate:templateCopy context:contextCopy];
  v7->_pressedValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[18], v11.receiver, v11.super_class}];
  _pressedInput = [(_GCDevicePhysicalInputClickableDirectionPadElement *)templateCopy _pressedInput];

  v9 = [contextCopy view:v7 makeReferenceToView:_pressedInput];
  v7->_pressedInputSlot = v9;

  return v7;
}

+ (unsigned)updateContextSize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____GCDevicePhysicalInputClickableDirectionPadElement;
  v2 = objc_msgSendSuper2(&v4, sel_updateContextSize);
  return v2 + +[_GCDevicePhysicalInputPressInput updateContextSize]+ 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  [(_GCDevicePhysicalInputDirectionPadElement *)&v7 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 == -1)
  {
    v6 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_4 = v6;
  }

  if ((*(commit + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputClickableDirectionPadElement preCommit:? sender:?];
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  [(_GCDevicePhysicalInputDirectionPadElement *)&v7 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 == -1)
  {
    v6 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_4 = v6;
  }

  if ((*(commit + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputClickableDirectionPadElement postCommit:? sender:?];
  }
}

- (BOOL)isEqualToElement:(id)element
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputDirectionPadElement *)&v7 isEqualToElement:?];
  if (v5)
  {
    [(_GCDevicePhysicalInputClickableDirectionPadElement *)self isEqualToElement:element, &v8];
    LOBYTE(v5) = v8;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [(_GCDevicePhysicalInputDirectionPadElement *)self up];
  [v5 value];
  v7 = v6;
  down = [(_GCDevicePhysicalInputDirectionPadElement *)self down];
  [down value];
  v10 = v9;
  left = [(_GCDevicePhysicalInputDirectionPadElement *)self left];
  [left value];
  v13 = v12;
  right = [(_GCDevicePhysicalInputDirectionPadElement *)self right];
  [right value];
  v16 = v15;
  pressedInput = [(_GCDevicePhysicalInputClickableDirectionPadElement *)self pressedInput];
  [pressedInput value];
  v19 = [v3 stringWithFormat:@"<Direction Pad '%@' up = %f, down = %f, left = %f, right = %f, pressed = %f>", identifier, *&v7, *&v10, *&v13, *&v16, v18];;

  return v19;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v20.receiver = self;
  v20.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  v8 = [_GCDevicePhysicalInputDirectionPadElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v9 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 == -1)
  {
    v9 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_4 = v9;
    if (self)
    {
      goto LABEL_3;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_6;
  }

  if (!self)
  {
    goto LABEL_15;
  }

LABEL_3:
  v10 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  if (v10 == -1)
  {
    return v8;
  }

  v12 = v10;
LABEL_6:
  [event floatValueForElement:v12];
  v14 = v13;
  _pressedInput = [(_GCDevicePhysicalInputClickableDirectionPadElement *)self _pressedInput];
  if ((pressedInputUpdateContext_Offset & 1) == 0)
  {
    pressedInputUpdateContext_Offset = 1;
  }

  v16 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 == -1)
  {
    v16 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_4 = v16;
    v17 = 0xFFFFFFFFLL;
    if (pressedInputUpdateContext_Offset)
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = [_GCDevicePhysicalInputPressInput update:_pressedInput withValue:update + v16 + v17 timestamp:v14];
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(update + v9) = *(update + v9) & 0xFD | v19;
  v8 |= v18;

  return v8;
}

- (_GCDevicePhysicalInputClickableDirectionPadElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputDirectionPadElement *)&v12 initWithParameters:parametersCopy];
  v6 = v5;
  if (!parametersCopy)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = parametersCopy[18];
  if (v5)
  {
LABEL_3:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:v7 forSlot:&v5->_pressedValueFieldSlot];
  }

LABEL_4:
  v8 = objc_opt_new();
  [(_GCDevicePhysicalInputPressInputParameters *)v8 setAnalog:?];
  [(_GCDevicePhysicalInputPressInputParameters *)v8 setPressedThreshold:?];
  pressedSources = [(_GCDevicePhysicalInputClickableDirectionPadElementParameters *)parametersCopy pressedSources];
  [(_GCDevicePhysicalInputPressInputParameters *)v8 setSources:pressedSources];

  v10 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v8];
  v6->_pressedInputSlot = [(_GCDevicePhysicalInputView *)v6 view:v6 makeReferenceToView:v10];

  return v6;
}

- (uint64_t)_setPressedValueField:(uint64_t)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:result + 144];
  }

  return result;
}

- (uint64_t)_pressedInput
{
  if (result)
  {
    [-[_GCDevicePhysicalInputView dataSource](result) view:result viewForSlot:result + 152];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  v21.receiver = self;
  v21.super_class = _GCDevicePhysicalInputClickableDirectionPadElement;
  v9 = [_GCDevicePhysicalInputDirectionPadElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 != -1)
  {
    if ((usages & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_3:
    if (with)
    {
      v11 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
      if (self)
      {
LABEL_5:
        v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_pressedValueFieldSlot];
LABEL_6:
        *(update + v10) = *(update + v10) & 0xFE | v12;
        v9 |= v12;
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
      if (self)
      {
        goto LABEL_5;
      }
    }

    v12 = 0;
    goto LABEL_6;
  }

  v10 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
  MyUpdateContext_Offset_4 = v10;
  if ((usages & 2) != 0)
  {
    goto LABEL_3;
  }

LABEL_7:
  _pressedInput = [(_GCDevicePhysicalInputClickableDirectionPadElement *)self _pressedInput];
  if ((pressedInputUpdateContext_Offset & 1) == 0)
  {
    pressedInputUpdateContext_Offset = 1;
  }

  v14 = MyUpdateContext_Offset_4;
  if (MyUpdateContext_Offset_4 == -1)
  {
    v14 = +[_GCDevicePhysicalInputDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_4 = v14;
    if (pressedInputUpdateContext_Offset)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = update + v14;
  _pressedInput2 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)with _pressedInput];
  v18 = [_pressedInput update:&v16[v15] forUsages:usages with:_pressedInput2];
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFD | v19;

  return v9 | v18;
}

- (uint64_t)_pressedValueField
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (GCPressedStateInput)pressedInput
{
  _pressedInput = [(_GCDevicePhysicalInputClickableDirectionPadElement *)self _pressedInput];

  return _pressedInput;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)a1 _pressedInput];
  OUTLINED_FUNCTION_0_10();
  if (!v3)
  {
    *(v2 + 3944) = 1;
  }

  if (MyUpdateContext_Offset_4 == -1)
  {
    OUTLINED_FUNCTION_1_8(+[_GCDevicePhysicalInputDirectionPadElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_2_5() preCommit:? sender:?];
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)a1 _pressedInput];
  OUTLINED_FUNCTION_0_10();
  if (!v3)
  {
    *(v2 + 3944) = 1;
  }

  if (MyUpdateContext_Offset_4 == -1)
  {
    OUTLINED_FUNCTION_1_8(+[_GCDevicePhysicalInputDirectionPadElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_2_5() postCommit:? sender:?];
}

- (void)isEqualToElement:(BOOL *)a3 .cold.1(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (a1)
  {
    v6 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
    if (a2)
    {
LABEL_3:
      v7 = [(_GCDevicePhysicalInputView *)a2 _primitiveValueForSlot:?];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (v6 == v7)
  {
    v9 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)a1 _pressedInput];
    v10 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)a2 _pressedInput];
    v8 = [(_GCDevicePhysicalInputPressInput *)v9 isEqualToInput:v10];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

@end
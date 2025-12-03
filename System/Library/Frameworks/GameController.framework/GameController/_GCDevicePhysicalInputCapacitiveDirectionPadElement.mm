@interface _GCDevicePhysicalInputCapacitiveDirectionPadElement
+ (unsigned)updateContextSize;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithTemplate:(id)template context:(id)context;
- (id)description;
- (id)touchedInput;
- (uint64_t)_setTouchedValueField:(uint64_t)result;
- (uint64_t)_touchedInput;
- (uint64_t)_touchedValueField;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputCapacitiveDirectionPadElement

- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithTemplate:(id)template context:(id)context
{
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v11 initWithTemplate:templateCopy context:contextCopy];
  v7->_touchedValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[20], v11.receiver, v11.super_class}];
  _touchedInput = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)templateCopy _touchedInput];

  v9 = [contextCopy view:v7 makeReferenceToView:_touchedInput];
  v7->_touchedInputSlot = v9;

  return v7;
}

+ (unsigned)updateContextSize
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS____GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v2 = objc_msgSendSuper2(&v4, sel_updateContextSize);
  return v2 + +[_GCDevicePhysicalInputTouchInput updateContextSize]+ 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v6 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v6;
  }

  if ((*(commit + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputCapacitiveDirectionPadElement preCommit:? sender:?];
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v6 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v6;
  }

  if ((*(commit + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputCapacitiveDirectionPadElement postCommit:? sender:?];
  }
}

- (BOOL)isEqualToElement:(id)element
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 isEqualToElement:?];
  if (v5)
  {
    [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self isEqualToElement:element, &v8];
    LOBYTE(v5) = v8;
  }

  return v5;
}

- (id)description
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
  v19 = v18;
  touchedInput = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self touchedInput];
  v21 = [v3 stringWithFormat:@"<Direction Pad '%@' up = %f, down = %f, left = %f, right = %f, pressed = %f, touched = %i>", identifier, *&v7, *&v10, *&v13, *&v16, *&v19, objc_msgSend(touchedInput, "isTouched")];;

  return v21;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v20.receiver = self;
  v20.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v8 = [_GCDevicePhysicalInputClickableDirectionPadElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v9 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v9 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v9;
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
  _touchedInput = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];
  if ((touchedInputUpdateContext_Offset & 1) == 0)
  {
    touchedInputUpdateContext_Offset = 1;
  }

  v16 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v16 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v16;
    v17 = 0xFFFFFFFFLL;
    if (touchedInputUpdateContext_Offset)
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  v18 = [_GCDevicePhysicalInputTouchInput update:_touchedInput withValue:update + v16 + v17 timestamp:v14];
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

- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v12 initWithParameters:parametersCopy];
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

  v7 = parametersCopy[20];
  if (v5)
  {
LABEL_3:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:v7 forSlot:&v5->_touchedValueFieldSlot];
  }

LABEL_4:
  v8 = objc_opt_new();
  touchedSources = [(_GCDevicePhysicalInputCapacitiveDirectionPadElementParameters *)parametersCopy touchedSources];
  [(_GCDevicePhysicalInputTouchInputParameters *)v8 setSources:touchedSources];

  v10 = [[_GCDevicePhysicalInputTouchInput alloc] initWithParameters:v8];
  v6->_touchedInputSlot = [(_GCDevicePhysicalInputView *)v6 view:v6 makeReferenceToView:v10];

  return v6;
}

- (uint64_t)_setTouchedValueField:(uint64_t)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:result + 160];
  }

  return result;
}

- (uint64_t)_touchedInput
{
  if (result)
  {
    [-[_GCDevicePhysicalInputView dataSource](result) view:result viewForSlot:result + 168];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  v21.receiver = self;
  v21.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v9 = [_GCDevicePhysicalInputClickableDirectionPadElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 != -1)
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
        v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_touchedValueFieldSlot];
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

  v10 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
  MyUpdateContext_Offset_10 = v10;
  if ((usages & 2) != 0)
  {
    goto LABEL_3;
  }

LABEL_7:
  _touchedInput = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];
  if ((touchedInputUpdateContext_Offset & 1) == 0)
  {
    touchedInputUpdateContext_Offset = 1;
  }

  v14 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v14 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v14;
    if (touchedInputUpdateContext_Offset)
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
  _touchedInput2 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)with _touchedInput];
  v18 = [_touchedInput update:&v16[v15] forUsages:usages with:_touchedInput2];
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

- (uint64_t)_touchedValueField
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (id)touchedInput
{
  _touchedInput = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];

  return _touchedInput;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)a1 _touchedInput];
  OUTLINED_FUNCTION_1_16();
  if (!v3)
  {
    *(v2 + 168) = 1;
  }

  if (MyUpdateContext_Offset_10 == -1)
  {
    OUTLINED_FUNCTION_2_11(+[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_2_5() preCommit:? sender:?];
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)a1 _touchedInput];
  OUTLINED_FUNCTION_1_16();
  if (!v3)
  {
    *(v2 + 168) = 1;
  }

  if (MyUpdateContext_Offset_10 == -1)
  {
    OUTLINED_FUNCTION_2_11(+[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize]);
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
    v9 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)a1 _touchedInput];
    v10 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)a2 _touchedInput];
    v8 = [(_GCDevicePhysicalInputTouchInput *)v9 isEqualToInput:v10];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
}

@end
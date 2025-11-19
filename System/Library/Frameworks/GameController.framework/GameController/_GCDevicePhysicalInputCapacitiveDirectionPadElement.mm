@interface _GCDevicePhysicalInputCapacitiveDirectionPadElement
+ (unsigned)updateContextSize;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithTemplate:(id)a3 context:(id)a4;
- (id)description;
- (id)touchedInput;
- (uint64_t)_setTouchedValueField:(uint64_t)result;
- (uint64_t)_touchedInput;
- (uint64_t)_touchedValueField;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputCapacitiveDirectionPadElement

- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithTemplate:(id)a3 context:(id)a4
{
  v11.receiver = self;
  v11.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v11 initWithTemplate:v6 context:v5];
  v7->_touchedValueFieldSlot = [v5 view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:{v6[20], v11.receiver, v11.super_class}];
  v8 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)v6 _touchedInput];

  v9 = [v5 view:v7 makeReferenceToView:v8];
  v7->_touchedInputSlot = v9;

  return v7;
}

+ (unsigned)updateContextSize
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS____GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v2 = objc_msgSendSuper2(&v4, sel_updateContextSize);
  return v2 + +[_GCDevicePhysicalInputTouchInput updateContextSize]+ 1;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v6 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v6;
  }

  if ((*(a3 + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputCapacitiveDirectionPadElement preCommit:? sender:?];
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 postCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 == -1)
  {
    v6 = +[_GCDevicePhysicalInputClickableDirectionPadElement updateContextSize];
    MyUpdateContext_Offset_10 = v6;
  }

  if ((*(a3 + v6) & 2) != 0)
  {
    [_GCDevicePhysicalInputCapacitiveDirectionPadElement postCommit:? sender:?];
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v7 isEqualToElement:?];
  if (v5)
  {
    [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self isEqualToElement:a3, &v8];
    LOBYTE(v5) = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [(_GCDevicePhysicalInputDirectionPadElement *)self up];
  [v5 value];
  v7 = v6;
  v8 = [(_GCDevicePhysicalInputDirectionPadElement *)self down];
  [v8 value];
  v10 = v9;
  v11 = [(_GCDevicePhysicalInputDirectionPadElement *)self left];
  [v11 value];
  v13 = v12;
  v14 = [(_GCDevicePhysicalInputDirectionPadElement *)self right];
  [v14 value];
  v16 = v15;
  v17 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)self pressedInput];
  [v17 value];
  v19 = v18;
  v20 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self touchedInput];
  v21 = [v3 stringWithFormat:@"<Direction Pad '%@' up = %f, down = %f, left = %f, right = %f, pressed = %f, touched = %i>", v4, *&v7, *&v10, *&v13, *&v16, *&v19, objc_msgSend(v20, "isTouched")];;

  return v21;
}

- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5
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
  [a4 floatValueForElement:v12];
  v14 = v13;
  v15 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];
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

  v18 = [_GCDevicePhysicalInputTouchInput update:v15 withValue:a3 + v16 + v17 timestamp:v14];
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(a3 + v9) = *(a3 + v9) & 0xFD | v19;
  v8 |= v18;

  return v8;
}

- (_GCDevicePhysicalInputCapacitiveDirectionPadElement)initWithParameters:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputClickableDirectionPadElement *)&v12 initWithParameters:v4];
  v6 = v5;
  if (!v4)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v4[20];
  if (v5)
  {
LABEL_3:
    [(_GCDevicePhysicalInputView *)v5 _testAndSetPrimitiveValue:v7 forSlot:&v5->_touchedValueFieldSlot];
  }

LABEL_4:
  v8 = objc_opt_new();
  v9 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElementParameters *)v4 touchedSources];
  [(_GCDevicePhysicalInputTouchInputParameters *)v8 setSources:v9];

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

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v21.receiver = self;
  v21.super_class = _GCDevicePhysicalInputCapacitiveDirectionPadElement;
  v9 = [_GCDevicePhysicalInputClickableDirectionPadElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_10;
  if (MyUpdateContext_Offset_10 != -1)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_3:
    if (a5)
    {
      v11 = [(_GCDevicePhysicalInputView *)a5 _primitiveValueForSlot:?];
      if (self)
      {
LABEL_5:
        v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_touchedValueFieldSlot];
LABEL_6:
        *(a3 + v10) = *(a3 + v10) & 0xFE | v12;
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
  if ((a4 & 2) != 0)
  {
    goto LABEL_3;
  }

LABEL_7:
  v13 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];
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

  v16 = a3 + v14;
  v17 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)a5 _touchedInput];
  v18 = [v13 update:&v16[v15] forUsages:a4 with:v17];
  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFD | v19;

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
  v2 = [(_GCDevicePhysicalInputCapacitiveDirectionPadElement *)self _touchedInput];

  return v2;
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
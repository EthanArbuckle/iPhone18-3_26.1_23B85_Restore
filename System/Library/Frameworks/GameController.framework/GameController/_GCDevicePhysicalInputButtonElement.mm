@interface _GCDevicePhysicalInputButtonElement
+ (unsigned)updateContextSize;
- (BOOL)_isAnalog;
- (BOOL)isAnalog;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)isPressed;
- (BOOL)update:(void *)a3 forCollectionEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (GCLinearInput)forceInput;
- (GCTouchedStateInput)touchedInput;
- (NSSet)sources;
- (NSString)debugDescription;
- (NSString)description;
- (_GCDevicePhysicalInputButtonElement)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputButtonElement)initWithTemplate:(id)a3 context:(id)a4;
- (double)_lastPressedTimestamp;
- (double)_lastValueTimestamp;
- (double)_pressed;
- (double)_pressedThreshold;
- (double)_value;
- (double)lastPressedStateLatency;
- (double)lastPressedStateTimestamp;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (float)value;
- (id)pressedDidChangeHandler;
- (id)valueDidChangeHandler;
- (uint64_t)_analogPressValueField;
- (uint64_t)_force;
- (uint64_t)_forceValueField;
- (uint64_t)_pressedDidChangeHandler;
- (uint64_t)_pressedValueField;
- (uint64_t)_setAnalog:(uint64_t)result;
- (uint64_t)_setAnalogPressValueField:(uint64_t)result;
- (uint64_t)_setForceValueField:(uint64_t)result;
- (uint64_t)_setLastPressedTimestamp:(uint64_t)result;
- (uint64_t)_setLastValueTimestamp:(uint64_t)result;
- (uint64_t)_setPressed:(uint64_t)result;
- (uint64_t)_setPressedDidChangeHandler:(uint64_t)result;
- (uint64_t)_setPressedThreshold:(uint64_t)result;
- (uint64_t)_setPressedValueField:(uint64_t)result;
- (uint64_t)_setSources:(uint64_t)result;
- (uint64_t)_setTouchValueField:(uint64_t)result;
- (uint64_t)_setValue:(uint64_t)result;
- (uint64_t)_setValueDidChangeHandler:(uint64_t)result;
- (uint64_t)_sources;
- (uint64_t)_touch;
- (uint64_t)_touchValueField;
- (uint64_t)_valueDidChangeHandler;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputButtonElement

- (_GCDevicePhysicalInputButtonElement)initWithTemplate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputButtonElement;
  v8 = [(_GCDevicePhysicalInputElement *)&v14 initWithTemplate:v6 context:v7];
  v8->_sourcesSlot = [v7 view:v8 allocateObjectSlot:1 withCopyOfValueFromView:v6 slot:v6[7]];
  v8->_isAnalogSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[8]];
  v8->_pressedThresholdSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[9]];
  v8->_pressedValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[10]];
  v8->_analogPressValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[11]];
  v8->_touchValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[12]];
  v8->_forceValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[13]];
  v8->_valueChangedHandlerSlot = [v7 view:v8 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[14]];
  v8->_pressedChangedHandlerSlot = [v7 view:v8 allocateObjectSlot:2 withCopyOfValueFromView:v6 slot:v6[15]];
  v8->_valueSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[16]];
  v8->_valueTimestampSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[17]];
  v8->_pressedSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[18]];
  v8->_pressedTimestampSlot = [v7 view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[19]];
  v9 = [(_GCDevicePhysicalInputButtonElement *)v6 _touch];

  if (v9)
  {
    v10 = [(_GCDevicePhysicalInputButtonElement *)v6 _touch];
    v8->_touchInputSlot = [v7 view:v8 makeReferenceToView:v10];
  }

  v11 = [(_GCDevicePhysicalInputButtonElement *)v6 _force];

  if (v11)
  {
    v13 = [(_GCDevicePhysicalInputButtonElement *)v6 _force];
    v8->_forceInputSlot = [v7 view:v8 makeReferenceToView:v13];
  }

  return v8;
}

+ (unsigned)updateContextSize
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____GCDevicePhysicalInputButtonElement;
  v2 = objc_msgSendSuper2(&v5, sel_updateContextSize);
  v3 = v2 + +[_GCDevicePhysicalInputTouchInput updateContextSize];
  return v3 + +[_GCDevicePhysicalInputSensorInput updateContextSize]+ 2;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputButtonElement;
  [(_GCDevicePhysicalInputElement *)&v9 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v6;
  }

  v7 = (a3 + v6);
  v8 = *v7;
  if (*v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 0x80) == 0)
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

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_6:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_7:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_11:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x2000) == 0)
  {
LABEL_12:
    if ((v8 & 0x4000) == 0)
    {
      return;
    }

LABEL_23:
    [_GCDevicePhysicalInputButtonElement preCommit:a3 sender:?];
    return;
  }

LABEL_22:
  [_GCDevicePhysicalInputButtonElement preCommit:? sender:?];
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_23;
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputButtonElement;
  [(_GCDevicePhysicalInputElement *)&v9 postCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v6;
  }

  v7 = (a3 + v6);
  v8 = *v7;
  if (*v7)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_6:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_7:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_11:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_12:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  v8 = v10;
  if ((v10 & 0x800) == 0)
  {
LABEL_13:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  v8 = v10;
  if ((v10 & 0x2000) == 0)
  {
LABEL_14:
    if ((v8 & 0x4000) == 0)
    {
      return;
    }

LABEL_27:
    [_GCDevicePhysicalInputButtonElement postCommit:a3 sender:?];
    return;
  }

LABEL_26:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_27;
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputButtonElement;
  if ([(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:v4])
  {
    [(_GCDevicePhysicalInputButtonElement *)self isEqualToElement:v4, &v8];
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
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  [(_GCDevicePhysicalInputButtonElement *)self value];
  v6 = v5;
  v7 = [(_GCDevicePhysicalInputButtonElement *)self isPressed];
  v8 = &stru_1F4E3B4E0;
  if (v7)
  {
    v8 = @" (pressed)";
  }

  v9 = [v3 stringWithFormat:@"<Button '%@' value = %f%@>", v4, *&v6, v8];;

  return v9;
}

- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5
{
  v37.receiver = self;
  v37.super_class = _GCDevicePhysicalInputButtonElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 != -1)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_30:
    [a4 floatValueForElement:0];
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if (v35 <= 0.00000011921)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v10 = +[_GCDevicePhysicalInputElement updateContextSize];
  MyUpdateContext_Offset_12 = v10;
  if (!self)
  {
    goto LABEL_30;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v12 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v13 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v14 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  if (v12 == -1)
  {
    v12 = v11;
  }

  if (v11 != -1)
  {
    v15 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    [a4 floatValueForElement:v11];
    v17 = v16;
    v18 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    if ((v17 - v18) > 0.00000011921 != (v15 - v18) > 0.00000011921)
    {
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_pressedSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_pressedTimestampSlot forSlot:?];
LABEL_8:
      *(a3 + v10) |= 0x1800u;
      v9 = 1;
    }
  }

  if (v12 == -1)
  {
    goto LABEL_14;
  }

  if (self)
  {
    v19 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    [a4 floatValueForElement:v12];
    if (v20 == v19)
    {
      goto LABEL_14;
    }

    [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
    [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueTimestampSlot forSlot:?];
    goto LABEL_13;
  }

LABEL_31:
  [a4 floatValueForElement:v12];
  if (v36 != 0.0)
  {
LABEL_13:
    *(a3 + v10) |= 0x600u;
    v9 = 1;
  }

LABEL_14:
  if (v13 != -1)
  {
    [a4 floatValueForElement:v13];
    v23 = v22;
    v24 = [(_GCDevicePhysicalInputButtonElement *)self _touch];
    if ((touchUpdateContext_Offset_0 & 1) == 0)
    {
      touchUpdateContext_Offset_0 = 1;
    }

    v25 = MyUpdateContext_Offset_12;
    if (MyUpdateContext_Offset_12 == -1)
    {
      v25 = +[_GCDevicePhysicalInputElement updateContextSize];
      MyUpdateContext_Offset_12 = v25;
      v26 = 0xFFFFFFFFLL;
      if (touchUpdateContext_Offset_0)
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 2;
    }

    v27 = [_GCDevicePhysicalInputTouchInput update:v24 withValue:a3 + v25 + v26 timestamp:v23];
    if (v27)
    {
      v28 = 0x2000;
    }

    else
    {
      v28 = 0;
    }

    *(a3 + v10) = *(a3 + v10) & 0xDFFF | v28;
    v9 |= v27;
  }

  if (v14 != -1)
  {
    [a4 floatValueForElement:v14];
    v30 = v29;
    v31 = [(_GCDevicePhysicalInputButtonElement *)self _force];
    updated = forceUpdateContext(a3);
    v33 = [_GCDevicePhysicalInputSensorInput update:v31 withValue:updated timestamp:v30];
    if (v33)
    {
      v34 = 0x4000;
    }

    else
    {
      v34 = 0;
    }

    *(a3 + v10) = *(a3 + v10) & 0xBFFF | v34;
    v9 |= v33;
  }

  return v9;
}

- (BOOL)update:(void *)a3 forCollectionEvent:(id)a4 withTimestamp:(double)a5
{
  v37.receiver = self;
  v37.super_class = _GCDevicePhysicalInputButtonElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forCollectionEvent_withTimestamp_ forCollectionEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 != -1)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_30:
    [a4 floatValueForKey:0];
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if (v35 <= 0.00000011921)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v10 = +[_GCDevicePhysicalInputElement updateContextSize];
  MyUpdateContext_Offset_12 = v10;
  if (!self)
  {
    goto LABEL_30;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v12 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v13 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  v14 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  if (v12 == -1)
  {
    v12 = v11;
  }

  if (v11 != -1)
  {
    v15 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    [a4 floatValueForKey:v11];
    v17 = v16;
    v18 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    if ((v17 - v18) > 0.00000011921 != (v15 - v18) > 0.00000011921)
    {
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_pressedSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_pressedTimestampSlot forSlot:?];
LABEL_8:
      *(a3 + v10) |= 0x1800u;
      v9 = 1;
    }
  }

  if (v12 == -1)
  {
    goto LABEL_14;
  }

  if (self)
  {
    v19 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    [a4 floatValueForKey:v12];
    if (v20 == v19)
    {
      goto LABEL_14;
    }

    [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
    [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:&self->_valueTimestampSlot forSlot:?];
    goto LABEL_13;
  }

LABEL_31:
  [a4 floatValueForKey:v12];
  if (v36 != 0.0)
  {
LABEL_13:
    *(a3 + v10) |= 0x600u;
    v9 = 1;
  }

LABEL_14:
  if (v13 != -1)
  {
    [a4 floatValueForKey:v13];
    v23 = v22;
    v24 = [(_GCDevicePhysicalInputButtonElement *)self _touch];
    if ((touchUpdateContext_Offset_0 & 1) == 0)
    {
      touchUpdateContext_Offset_0 = 1;
    }

    v25 = MyUpdateContext_Offset_12;
    if (MyUpdateContext_Offset_12 == -1)
    {
      v25 = +[_GCDevicePhysicalInputElement updateContextSize];
      MyUpdateContext_Offset_12 = v25;
      v26 = 0xFFFFFFFFLL;
      if (touchUpdateContext_Offset_0)
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 2;
    }

    v27 = [_GCDevicePhysicalInputTouchInput update:v24 withValue:a3 + v25 + v26 timestamp:v23];
    if (v27)
    {
      v28 = 0x2000;
    }

    else
    {
      v28 = 0;
    }

    *(a3 + v10) = *(a3 + v10) & 0xDFFF | v28;
    v9 |= v27;
  }

  if (v14 != -1)
  {
    [a4 floatValueForKey:v14];
    v30 = v29;
    v31 = [(_GCDevicePhysicalInputButtonElement *)self _force];
    updated = forceUpdateContext(a3);
    v33 = [_GCDevicePhysicalInputSensorInput update:v31 withValue:updated timestamp:v30];
    if (v33)
    {
      v34 = 0x4000;
    }

    else
    {
      v34 = 0;
    }

    *(a3 + v10) = *(a3 + v10) & 0xBFFF | v34;
    v9 |= v33;
  }

  return v9;
}

- (_GCDevicePhysicalInputButtonElement)initWithParameters:(id)a3
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = _GCDevicePhysicalInputButtonElement;
  v6 = [(_GCDevicePhysicalInputElement *)&v33 initWithParameters:v5];
  [(_GCDevicePhysicalInputButtonElementParameters *)v5 sources];
  objc_claimAutoreleasedReturnValue();
  v7 = OUTLINED_FUNCTION_8_0();
  [(_GCDevicePhysicalInputButtonElement *)v7 _setSources:v3];

  if (v5)
  {
    v8 = *(v5 + 40);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v9 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v9 _testAndSetPrimitiveValue:v10 forSlot:v11];
  }

LABEL_4:
  if (v5)
  {
    v12 = v5[11];
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:
    v13 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v13 _testAndSetPrimitiveValue:v14 forSlot:v15];
  }

LABEL_7:
  if (v5)
  {
    v16 = *(v5 + 9);
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    v17 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v17 _testAndSetPrimitiveValue:v18 forSlot:v19];
  }

LABEL_10:
  if (v5)
  {
    v20 = *(v5 + 10);
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    v21 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v21 _testAndSetPrimitiveValue:v22 forSlot:v23];
  }

LABEL_13:
  if (v5)
  {
    v24 = *(v5 + 11);
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v6)
  {
LABEL_15:
    v25 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v25 _testAndSetPrimitiveValue:v26 forSlot:v27];
  }

LABEL_16:
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v28 = *(v5 + 12);
  if (v6)
  {
LABEL_18:
    v29 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v29 _testAndSetPrimitiveValue:v30 forSlot:v31];
  }

LABEL_19:
  if (v5 && *(v5 + 7))
  {
    [[_GCDevicePhysicalInputTouchInput alloc] initWithParameters:*(v5 + 7)];
    v6->_touchInputSlot = [OUTLINED_FUNCTION_8_0() view:v6 makeReferenceToView:&OBJC_IVAR___GCController__motionConfigurableSensors];
  }

  if (v5 && *(v5 + 8))
  {
    [[_GCDevicePhysicalInputSensorInput alloc] initWithParameters:*(v5 + 8)];
    v6->_forceInputSlot = [OUTLINED_FUNCTION_8_0() view:v6 makeReferenceToView:&OBJC_IVAR___GCController__motionConfigurableSensors];
  }

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
      [v6 handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputButtonElement.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
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
    return OUTLINED_FUNCTION_0_6(result, a2, 64);
  }

  return result;
}

- (uint64_t)_setPressedThreshold:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 72);
  }

  return result;
}

- (uint64_t)_setPressedValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 80);
  }

  return result;
}

- (uint64_t)_setAnalogPressValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 88);
  }

  return result;
}

- (uint64_t)_setTouchValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 96);
  }

  return result;
}

- (uint64_t)_setForceValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 104);
  }

  return result;
}

- (uint64_t)_touch
{
  if (result)
  {
    v1 = result;
    v2 = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 160))
    {
      [v2 view:v1 viewForSlot:v1 + 160];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_force
{
  if (result)
  {
    v1 = result;
    v2 = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 168))
    {
      [v2 view:v1 viewForSlot:v1 + 168];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v86.receiver = self;
  v86.super_class = _GCDevicePhysicalInputButtonElement;
  v10 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  p_inst_meths = &OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface.inst_meths;
  v12 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v12 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v12;
    if ((a4 & 2) == 0)
    {
LABEL_3:
      if ((a4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_41:
      [(_GCDevicePhysicalInputButtonElement *)a5 _valueDidChangeHandler];
      v43 = OUTLINED_FUNCTION_8_7();
      v45 = [(_GCDevicePhysicalInputButtonElement *)v43 _setValueDidChangeHandler:v44];
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_18_0(v46 & 0xFF7F);

      [(_GCDevicePhysicalInputButtonElement *)a5 _pressedDidChangeHandler];
      v47 = OUTLINED_FUNCTION_8_7();
      [(_GCDevicePhysicalInputButtonElement *)v47 _setPressedDidChangeHandler:v48];
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_18_0(v49 & 0xFEFF);
      v10 |= v45 | v50;

      if ((a4 & 8) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_42;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputButtonElement *)a5 _sources];
  v13 = OUTLINED_FUNCTION_8_7();
  v84 = [(_GCDevicePhysicalInputButtonElement *)v13 _setSources:v14];
  *(a3 + v12) = *(a3 + v12) & 0xFFFE | v84;

  if (a5)
  {
    v15 = OUTLINED_FUNCTION_49(64) != 0;
    if (self)
    {
      goto LABEL_9;
    }

LABEL_73:
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (!self)
  {
    goto LABEL_73;
  }

LABEL_9:
  v16 = OUTLINED_FUNCTION_6_9(v15, 64);
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:
  v18 = *(a3 + v12) & 0xFFFD;
  OUTLINED_FUNCTION_2_20(v17);
  if (a5)
  {
    v19 = OUTLINED_FUNCTION_49(72);
    v20 = OUTLINED_FUNCTION_3_3(v19);
    if (self)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v20 = 0.0;
    if (self)
    {
LABEL_14:
      v21 = OUTLINED_FUNCTION_6_9(*&v20, 72);
      if (v21)
      {
        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_17;
    }
  }

  v21 = 0;
  v22 = 0;
LABEL_17:
  v23 = *(a3 + v12) & 0xFFFB;
  OUTLINED_FUNCTION_2_20(v22);
  if (a5)
  {
    v24 = OUTLINED_FUNCTION_49(80);
  }

  else
  {
    v24 = 0;
  }

  v85 = v10;
  if (self)
  {
    v25 = OUTLINED_FUNCTION_6_9(v24, 80);
    if (v25)
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = *(a3 + v12) & 0xFFF7;
  OUTLINED_FUNCTION_2_20(v26);
  if (a5)
  {
    v28 = OUTLINED_FUNCTION_49(88);
    if (self)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v28 = 0;
    if (self)
    {
LABEL_25:
      v29 = OUTLINED_FUNCTION_6_9(v28, 88);
      if (v29)
      {
        v30 = 16;
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_28;
    }
  }

  v29 = 0;
  v30 = 0;
LABEL_28:
  v31 = v16 | v21;
  v32 = *(a3 + v12) & 0xFFEF;
  OUTLINED_FUNCTION_2_20(v30);
  if (a5)
  {
    v33 = OUTLINED_FUNCTION_49(96);
  }

  else
  {
    v33 = 0;
  }

  v34 = v31 | v25;
  if (self)
  {
    v35 = OUTLINED_FUNCTION_6_9(v33, 96);
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

  v37 = v34 | v29;
  v38 = *(a3 + v12) & 0xFFDF;
  OUTLINED_FUNCTION_2_20(v36);
  if (a5)
  {
    v39 = OUTLINED_FUNCTION_49(104);
  }

  else
  {
    v39 = 0;
  }

  p_inst_meths = (&OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface + 24);
  v5 = (v37 | v35);
  if (self)
  {
    if (OUTLINED_FUNCTION_6_9(v39, 104))
    {
      v40 = 64;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v41 = *(a3 + v12) & 0xFFBF;
  OUTLINED_FUNCTION_2_20(v40);
  v10 = v85 | v84 | v42 | v5;
  if ((a4 & 4) != 0)
  {
    goto LABEL_41;
  }

LABEL_4:
  if ((a4 & 8) == 0)
  {
    goto LABEL_64;
  }

LABEL_42:
  if (a5)
  {
    v51 = OUTLINED_FUNCTION_49(128);
    v52 = OUTLINED_FUNCTION_3_3(v51);
    if (self)
    {
      goto LABEL_44;
    }

LABEL_85:
    v53 = 0;
    v54 = 0;
    goto LABEL_47;
  }

  v52 = 0.0;
  if (!self)
  {
    goto LABEL_85;
  }

LABEL_44:
  v53 = OUTLINED_FUNCTION_6_9(*&v52, 128);
  if (v53)
  {
    v54 = 512;
  }

  else
  {
    v54 = 0;
  }

LABEL_47:
  v55 = *(a3 + v12) & 0xFDFF;
  OUTLINED_FUNCTION_2_20(v54);
  if (a5)
  {
    v56 = OUTLINED_FUNCTION_49(136);
    if (self)
    {
      goto LABEL_49;
    }

LABEL_87:
    v57 = 0;
    v58 = 0;
    goto LABEL_52;
  }

  v56 = 0;
  if (!self)
  {
    goto LABEL_87;
  }

LABEL_49:
  v57 = OUTLINED_FUNCTION_6_9(v56, 136);
  if (v57)
  {
    v58 = 1024;
  }

  else
  {
    v58 = 0;
  }

LABEL_52:
  v59 = *(a3 + v12) & 0xFBFF;
  OUTLINED_FUNCTION_2_20(v58);
  if (a5)
  {
    v60 = OUTLINED_FUNCTION_49(128);
    v61 = OUTLINED_FUNCTION_3_3(v60);
    if (self)
    {
      goto LABEL_54;
    }

LABEL_89:
    v62 = 0;
    v63 = 0;
    goto LABEL_57;
  }

  v61 = 0.0;
  if (!self)
  {
    goto LABEL_89;
  }

LABEL_54:
  v62 = OUTLINED_FUNCTION_6_9(*&v61, 144);
  if (v62)
  {
    v63 = 2048;
  }

  else
  {
    v63 = 0;
  }

LABEL_57:
  v64 = v53 | v57;
  v65 = *(a3 + v12) & 0xF7FF;
  OUTLINED_FUNCTION_2_20(v63);
  if (a5)
  {
    v66 = OUTLINED_FUNCTION_49(152);
  }

  else
  {
    v66 = 0;
  }

  v67 = v64 | v62;
  if (self)
  {
    if (OUTLINED_FUNCTION_6_9(v66, 152))
    {
      v68 = 4096;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  p_inst_meths = &OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface.inst_meths;
  v69 = *(a3 + v12) & 0xEFFF;
  OUTLINED_FUNCTION_2_20(v68);
  v10 |= v67 | v70;
LABEL_64:
  v71 = [(_GCDevicePhysicalInputButtonElement *)self _touch];
  if ((touchUpdateContext_Offset_0 & 1) == 0)
  {
    touchUpdateContext_Offset_0 = 1;
  }

  v72 = *(p_inst_meths + 140);
  if (v72 == -1)
  {
    v72 = +[_GCDevicePhysicalInputElement updateContextSize];
    *(p_inst_meths + 140) = v72;
    if (touchUpdateContext_Offset_0)
    {
      v73 = 2;
    }

    else
    {
      v73 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v73 = 2;
  }

  v74 = a3 + v72;
  v75 = [(_GCDevicePhysicalInputButtonElement *)a5 _touch];
  LOBYTE(v74) = [v71 update:&v74[v73] forUsages:a4 with:v75];
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_0(v76 & 0xDFFF);

  v77 = [(_GCDevicePhysicalInputButtonElement *)self _force];
  updated = forceUpdateContext(a3);
  v79 = [(_GCDevicePhysicalInputButtonElement *)a5 _force];
  [v77 update:updated forUsages:a4 with:v79];
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_0(v80 & 0xBFFF);
  v82 = v10 | v81 | v74;

  return v82 & 1;
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
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (uint64_t)_pressedValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 80);
  }

  return result;
}

- (uint64_t)_analogPressValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 88);
  }

  return result;
}

- (uint64_t)_touchValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 96);
  }

  return result;
}

- (uint64_t)_forceValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 104);
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
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(112);

    return v3;
  }

  return result;
}

- (uint64_t)_pressedDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_setPressedDidChangeHandler:(uint64_t)result
{
  if (result)
  {
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(120);

    return v3;
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
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 128);
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
    return OUTLINED_FUNCTION_0_6(result, *&a2, 136);
  }

  return result;
}

- (uint64_t)_setPressed:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 144);
  }

  return result;
}

- (double)_lastPressedTimestamp
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

- (uint64_t)_setLastPressedTimestamp:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 152);
  }

  return result;
}

- (GCTouchedStateInput)touchedInput
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)self _touch];

  return v2;
}

- (GCLinearInput)forceInput
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)self _force];

  return v2;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [(_GCDevicePhysicalInputElement *)self localizedName];
  v6 = [(_GCDevicePhysicalInputElement *)self sfSymbolsName];
  v7 = [(_GCDevicePhysicalInputButtonElement *)self isAnalog];
  if (self)
  {
    v8 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [(_GCDevicePhysicalInputButtonElement *)self value];
  v11 = v10;
  v12 = [(_GCDevicePhysicalInputButtonElement *)self isPressed];
  v13 = &stru_1F4E3B4E0;
  if (v12)
  {
    v13 = @" (pressed)";
  }

  v14 = [v3 stringWithFormat:@"<Button %p '%@' name = '%@', symbol = '%@', analog = %s, source = %zi, value = %f%@>", self, v4, v5, v6, v9, v8, *&v11, v13];;

  return v14;
}

- (double)_pressed
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (id)valueDidChangeHandler
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)self _valueDidChangeHandler];

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
  if (!dword_1EC7361F4)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_4);
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
  return OUTLINED_FUNCTION_5_3(v4, &lastValueLatency_sTimebaseInfo_4) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)self _sources];

  return v2;
}

- (id)pressedDidChangeHandler
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)self _pressedDidChangeHandler];

  return v2;
}

- (BOOL)isPressed
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
  if (!dword_1EC7361FC)
  {
    mach_timebase_info(&lastPressedStateLatency_sTimebaseInfo_0);
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
  return OUTLINED_FUNCTION_5_3(v4, &lastPressedStateLatency_sTimebaseInfo_0) / 1000000000.0 - v3;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_20_0(a1);
  OUTLINED_FUNCTION_13_2();
  if (!v3)
  {
    *(v2 + 512) = 1;
  }

  if (MyUpdateContext_Offset_12 == -1)
  {
    OUTLINED_FUNCTION_14_2(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() preCommit:? sender:?];

  OUTLINED_FUNCTION_15_3();
}

- (void)preCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
  [v4 preCommit:forceUpdateContext(a2) sender:a1];
}

- (void)postCommit:(void *)a1 sender:.cold.1(void *a1)
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)a1 _valueDidChangeHandler];
  if (v2)
  {
    [a1 value];
    v3 = OUTLINED_FUNCTION_10_8();
    v4(v3);
  }

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(void *)a1 sender:.cold.2(void *a1)
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)a1 _pressedDidChangeHandler];
  if (v2)
  {
    [a1 isPressed];
    v3 = OUTLINED_FUNCTION_10_8();
    v4(v3);
  }

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(uint64_t)a1 sender:.cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_20_0(a1);
  OUTLINED_FUNCTION_13_2();
  if (!v3)
  {
    *(v2 + 512) = 1;
  }

  if (MyUpdateContext_Offset_12 == -1)
  {
    OUTLINED_FUNCTION_14_2(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() postCommit:? sender:?];

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
  [v4 postCommit:forceUpdateContext(a2) sender:a1];
}

- (void)isEqualToElement:(char *)a3 .cold.1(uint64_t a1, void *a2, char *a3)
{
  v8 = [(_GCDevicePhysicalInputButtonElement *)a1 _sources];
  v9 = [(_GCDevicePhysicalInputButtonElement *)a2 _sources];
  if (v8 != v9)
  {
    v3 = [(_GCDevicePhysicalInputButtonElement *)a1 _sources];
    v4 = [a2 sources];
    if (([v3 isEqual:v4] & 1) == 0)
    {
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (a1)
  {
    v10 = OUTLINED_FUNCTION_4_4(64);
    v11 = v10 != 0;
    if (!a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }

      v12 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    v11 = 0;
  }

  if (v11 != (OUTLINED_FUNCTION_2_4(64) != 0))
  {
LABEL_15:
    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  if (!a1)
  {
    v13 = 0.0;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_7:
  v13 = COERCE_DOUBLE(OUTLINED_FUNCTION_4_4(72));
  if (v12)
  {
    if (v13 != 0.0 || OUTLINED_FUNCTION_4_4(80) || OUTLINED_FUNCTION_4_4(88))
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_4_4(96);
    v18 = 0;
    goto LABEL_14;
  }

LABEL_8:
  v14 = OUTLINED_FUNCTION_2_4(72);
  if (v13 != OUTLINED_FUNCTION_3_3(v14))
  {
    goto LABEL_15;
  }

  if (a1)
  {
    v15 = OUTLINED_FUNCTION_4_4(80);
    if (v15 != OUTLINED_FUNCTION_2_4(80))
    {
      goto LABEL_15;
    }

    v16 = OUTLINED_FUNCTION_4_4(88);
    if (v16 != OUTLINED_FUNCTION_2_4(88))
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_4_4(96);
  }

  else
  {
    if (OUTLINED_FUNCTION_2_4(80) || OUTLINED_FUNCTION_2_4(88))
    {
      goto LABEL_15;
    }

    v17 = 0;
  }

  v18 = OUTLINED_FUNCTION_2_4(96);
LABEL_14:
  if (v17 != v18)
  {
    goto LABEL_15;
  }

LABEL_23:
  v21 = [(_GCDevicePhysicalInputButtonElement *)a1 _touch];
  v22 = [(_GCDevicePhysicalInputButtonElement *)a2 _touch];
  if (v21 == v22)
  {
    goto LABEL_24;
  }

  v26 = [(_GCDevicePhysicalInputButtonElement *)a1 _touch];
  v31 = [(_GCDevicePhysicalInputButtonElement *)a2 _touch];
  if ([(_GCDevicePhysicalInputTouchInput *)v26 isEqualToInput:v31])
  {
    v29 = v26;
LABEL_24:
    v30 = v21;
    v23 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
    v24 = [(_GCDevicePhysicalInputButtonElement *)a2 _force];
    v25 = v24;
    if (v23 == v24)
    {

      v19 = 1;
    }

    else
    {
      v28 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
      v27 = [(_GCDevicePhysicalInputButtonElement *)a2 _force];
      v19 = [(_GCDevicePhysicalInputSensorInput *)v28 isEqualToInput:v27];
    }

    v26 = v29;
    v21 = v30;
    if (v30 == v22)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = 0;
LABEL_30:

LABEL_31:
  v20 = v19;
LABEL_16:
  if (v8 != v9)
  {
LABEL_17:

    v19 = v20;
  }

  *a3 = v19;
}

@end
@interface _GCDevicePhysicalInputJoystickElement
+ (unsigned)updateContextSize;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqualToElement:(id)a3;
- (BOOL)update:(void *)a3 forCollectionEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (GCAxis2DInput)xyAxes;
- (GCAxisInput)xAxis;
- (GCAxisInput)yAxis;
- (GCLinearInput)down;
- (GCLinearInput)left;
- (GCLinearInput)right;
- (GCLinearInput)up;
- (GCPressedStateInput)pressedInput;
- (GCTouchedStateInput)touchedInput;
- (NSString)description;
- (_GCDevicePhysicalInputJoystickElement)initWithParameters:(id)a3;
- (_GCDevicePhysicalInputJoystickElement)initWithTemplate:(id)a3 context:(id)a4;
- (uint64_t)_down;
- (uint64_t)_left;
- (uint64_t)_press;
- (uint64_t)_pressValueField;
- (uint64_t)_right;
- (uint64_t)_setPressValueField:(uint64_t)result;
- (uint64_t)_setTouchValueField:(uint64_t)result;
- (uint64_t)_setXValueField:(uint64_t)result;
- (uint64_t)_setYValueField:(uint64_t)result;
- (uint64_t)_touch;
- (uint64_t)_touchValueField;
- (uint64_t)_up;
- (uint64_t)_x;
- (uint64_t)_xValueField;
- (uint64_t)_xy;
- (uint64_t)_y;
- (uint64_t)_yValueField;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation _GCDevicePhysicalInputJoystickElement

- (_GCDevicePhysicalInputJoystickElement)initWithTemplate:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = _GCDevicePhysicalInputJoystickElement;
  v8 = [(_GCDevicePhysicalInputElement *)&v21 initWithTemplate:v6 context:v7];
  v8->_xValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[7]];
  v8->_yValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[8]];
  v8->_pressValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[9]];
  v8->_touchValueFieldSlot = [v7 view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:v6 slot:v6[10]];
  v9 = [v6 xyAxes];
  v8->_xyAxesSlot = [v7 view:v8 makeReferenceToView:v9];

  v10 = [v6 xAxis];
  v8->_xAxisSlot = [v7 view:v8 makeReferenceToView:v10];

  v11 = [v6 yAxis];
  v8->_yAxisSlot = [v7 view:v8 makeReferenceToView:v11];

  v12 = [v6 up];
  v8->_upInputSlot = [v7 view:v8 makeReferenceToView:v12];

  v13 = [v6 down];
  v8->_downInputSlot = [v7 view:v8 makeReferenceToView:v13];

  v14 = [v6 left];
  v8->_leftInputSlot = [v7 view:v8 makeReferenceToView:v14];

  v15 = [v6 right];
  v8->_rightInputSlot = [v7 view:v8 makeReferenceToView:v15];

  v16 = [(_GCDevicePhysicalInputJoystickElement *)v6 _press];
  if (v16)
  {
    v17 = [(_GCDevicePhysicalInputJoystickElement *)v6 _press];
    v8->_pressInputSlot = [v7 view:v8 makeReferenceToView:v17];
  }

  v18 = [(_GCDevicePhysicalInputJoystickElement *)v6 _touch];

  if (v18)
  {
    v20 = [(_GCDevicePhysicalInputJoystickElement *)v6 _touch];
    v8->_touchInputSlot = [v7 view:v8 makeReferenceToView:v20];
  }

  return v8;
}

+ (unsigned)updateContextSize
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS____GCDevicePhysicalInputJoystickElement;
  v2 = objc_msgSendSuper2(&v12, sel_updateContextSize);
  v3 = v2 + +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  v4 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  v5 = v3 + v4 + +[_GCDevicePhysicalInputAxisInput updateContextSize];
  v6 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  v7 = v6 + +[_GCDevicePhysicalInputPressInput updateContextSize];
  v8 = v5 + v7 + +[_GCDevicePhysicalInputPressInput updateContextSize];
  v9 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  v10 = v9 + +[_GCDevicePhysicalInputPressInput updateContextSize];
  return v8 + v10 + +[_GCDevicePhysicalInputTouchInput updateContextSize]+ 2;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputJoystickElement;
  [(_GCDevicePhysicalInputElement *)&v16 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v6;
  }

  v7 = (a3 + v6);
  v8 = *v7;
  if ((*v7 & 0x10) != 0)
  {
    [_GCDevicePhysicalInputJoystickElement preCommit:? sender:?];
    v8 = v17;
    if ((v17 & 0x20) == 0)
    {
LABEL_5:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v9 = [(_GCDevicePhysicalInputJoystickElement *)self _x];
  [v9 preCommit:xAxisUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_6:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [(_GCDevicePhysicalInputJoystickElement *)self _y];
  [v10 preCommit:yAxisUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_7:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [(_GCDevicePhysicalInputJoystickElement *)self _up];
  [v11 preCommit:upButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [(_GCDevicePhysicalInputJoystickElement *)self _down];
  [v12 preCommit:downButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [(_GCDevicePhysicalInputJoystickElement *)self _left];
  [v13 preCommit:leftButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [(_GCDevicePhysicalInputJoystickElement *)self _right];
  [v14 preCommit:rightButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_11:
    if ((v8 & 0x1000) == 0)
    {
      return;
    }

LABEL_21:
    [_GCDevicePhysicalInputJoystickElement preCommit:? sender:?];
    return;
  }

LABEL_20:
  v15 = [(_GCDevicePhysicalInputJoystickElement *)self _press];
  [v15 preCommit:pressUpdateContext(a3) sender:self];

  if ((*v7 & 0x1000) != 0)
  {
    goto LABEL_21;
  }
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v16.receiver = self;
  v16.super_class = _GCDevicePhysicalInputJoystickElement;
  [(_GCDevicePhysicalInputElement *)&v16 postCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v6;
  }

  v7 = (a3 + v6);
  v8 = *v7;
  if ((*v7 & 0x10) != 0)
  {
    [_GCDevicePhysicalInputJoystickElement postCommit:? sender:?];
    v8 = v17;
    if ((v17 & 0x20) == 0)
    {
LABEL_5:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v9 = [(_GCDevicePhysicalInputJoystickElement *)self _x];
  [v9 postCommit:xAxisUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_6:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [(_GCDevicePhysicalInputJoystickElement *)self _y];
  [v10 postCommit:yAxisUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_7:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [(_GCDevicePhysicalInputJoystickElement *)self _up];
  [v11 postCommit:upButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = [(_GCDevicePhysicalInputJoystickElement *)self _down];
  [v12 postCommit:downButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = [(_GCDevicePhysicalInputJoystickElement *)self _left];
  [v13 postCommit:leftButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v14 = [(_GCDevicePhysicalInputJoystickElement *)self _right];
  [v14 postCommit:rightButtonUpdateContext(a3) sender:self];

  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_11:
    if ((v8 & 0x1000) == 0)
    {
      return;
    }

LABEL_21:
    [_GCDevicePhysicalInputJoystickElement postCommit:? sender:?];
    return;
  }

LABEL_20:
  v15 = [(_GCDevicePhysicalInputJoystickElement *)self _press];
  [v15 postCommit:pressUpdateContext(a3) sender:self];

  if ((*v7 & 0x1000) != 0)
  {
    goto LABEL_21;
  }
}

- (BOOL)isEqualToElement:(id)a3
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputJoystickElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:?];
  if (v5)
  {
    [(_GCDevicePhysicalInputJoystickElement *)self isEqualToElement:a3, &v8];
    LOBYTE(v5) = v8;
  }

  return v5;
}

- (BOOL)conformsToProtocol:(id)a3
{
  if (&unk_1F4E96F80 == a3)
  {
    v5 = [(_GCDevicePhysicalInputJoystickElement *)self _press];
    v3 = v5 != 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _GCDevicePhysicalInputJoystickElement;
    return [(_GCDevicePhysicalInputJoystickElement *)&v6 conformsToProtocol:?];
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_GCDevicePhysicalInputElement *)self identifier];
  v5 = [(_GCDevicePhysicalInputJoystickElement *)self up];
  [v5 value];
  v7 = v6;
  v8 = [(_GCDevicePhysicalInputJoystickElement *)self down];
  [v8 value];
  v10 = v9;
  v11 = [(_GCDevicePhysicalInputJoystickElement *)self left];
  [v11 value];
  v13 = v12;
  v14 = [(_GCDevicePhysicalInputJoystickElement *)self right];
  [v14 value];
  v16 = [v3 stringWithFormat:@"<Joystick '%@' up = %f, down = %f, left = %f, right = %f>", v4, *&v7, *&v10, *&v13, v15];;

  return v16;
}

- (_GCDevicePhysicalInputJoystickElement)initWithParameters:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = _GCDevicePhysicalInputJoystickElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v53 initWithParameters:v4];
  v6 = v5;
  if (v4)
  {
    v7 = v4[15];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (v5)
  {
LABEL_3:
    OUTLINED_FUNCTION_52(v7, 56);
  }

LABEL_4:
  if (v4)
  {
    v8 = v4[16];
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  if (v6)
  {
LABEL_6:
    OUTLINED_FUNCTION_52(v8, 64);
  }

LABEL_7:
  if (v4)
  {
    v9 = v4[17];
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 0;
  if (v6)
  {
LABEL_9:
    OUTLINED_FUNCTION_52(v9, 72);
  }

LABEL_10:
  if (v4)
  {
    v10 = v4[18];
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = 0;
  if (v6)
  {
LABEL_12:
    OUTLINED_FUNCTION_52(v10, 80);
  }

LABEL_13:
  v11 = objc_opt_new();
  v12 = v11;
  if (v4)
  {
    v13 = *(v4 + 40);
  }

  else
  {
    v13 = 0;
  }

  [(_GCDevicePhysicalInputAxis2DInputParameters *)v11 setAnalog:?];
  [(_GCDevicePhysicalInputAxis2DInputParameters *)v12 setCanWrap:?];
  v14 = objc_opt_new();
  v15 = v14;
  if (v4)
  {
    v16 = *(v4 + 40);
  }

  else
  {
    v16 = 0;
  }

  [(_GCDevicePhysicalInputAxisInputParameters *)v14 setAnalog:?];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setCanWrap:?];
  v17 = objc_opt_new();
  v18 = v17;
  if (v4)
  {
    [(_GCDevicePhysicalInputPressInputParameters *)v17 setAnalog:?];
    v19 = *(v4 + 11);
  }

  else
  {
    [(_GCDevicePhysicalInputPressInputParameters *)v17 setAnalog:?];
    v19 = 0.0;
  }

  [(_GCDevicePhysicalInputPressInputParameters *)v18 setPressedThreshold:v19];
  v20 = [(_GCDevicePhysicalInputJoystickElementParameters *)v4 xySources];
  [(_GCDevicePhysicalInputAxis2DInputParameters *)v12 setSources:v20];

  [[_GCDevicePhysicalInputAxis2DInput alloc] initWithParameters:v12];
  v21 = OUTLINED_FUNCTION_21();
  v52 = v22;
  v23 = OUTLINED_FUNCTION_29([v21 view:? makeReferenceToView:?], 88);
  v24 = [(_GCDevicePhysicalInputJoystickElementParameters *)v23 xSources];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setSources:v24];

  [[_GCDevicePhysicalInputAxisInput alloc] initWithParameters:v15];
  v25 = OUTLINED_FUNCTION_21();
  v51 = v26;
  v27 = OUTLINED_FUNCTION_29([v25 view:? makeReferenceToView:?], 96);
  v28 = [(_GCDevicePhysicalInputJoystickElementParameters *)v27 ySources];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setSources:v28];

  [[_GCDevicePhysicalInputAxisInput alloc] initWithParameters:v15];
  v29 = OUTLINED_FUNCTION_21();
  v50 = v30;
  v31 = OUTLINED_FUNCTION_29([v29 view:? makeReferenceToView:?], 104);
  [(_GCDevicePhysicalInputJoystickElementParameters *)v31 upSources];
  objc_claimAutoreleasedReturnValue();
  v32 = OUTLINED_FUNCTION_33();
  [(_GCDevicePhysicalInputPressInputParameters *)v32 setSources:v28];

  [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v33 = OUTLINED_FUNCTION_21();
  v49 = v34;
  v35 = OUTLINED_FUNCTION_29([v33 view:? makeReferenceToView:?], 112);
  [(_GCDevicePhysicalInputJoystickElementParameters *)v35 downSources];
  objc_claimAutoreleasedReturnValue();
  v36 = OUTLINED_FUNCTION_33();
  [(_GCDevicePhysicalInputPressInputParameters *)v36 setSources:v28];

  v37 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v38 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v39 = OUTLINED_FUNCTION_29(v38, 120);
  [(_GCDevicePhysicalInputJoystickElementParameters *)v39 leftSources];
  objc_claimAutoreleasedReturnValue();
  v40 = OUTLINED_FUNCTION_33();
  [(_GCDevicePhysicalInputPressInputParameters *)v40 setSources:v28];

  v41 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v42 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v43 = OUTLINED_FUNCTION_29(v42, 128);
  v44 = [(_GCDevicePhysicalInputJoystickElementParameters *)v43 rightSources];
  [(_GCDevicePhysicalInputPressInputParameters *)v18 setSources:v44];

  v45 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v6->_rightInputSlot = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  if (v4 && v4[13])
  {
    v46 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v4[13]];
    v6->_pressInputSlot = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  }

  if (v4 && v4[14])
  {
    v47 = [[_GCDevicePhysicalInputTouchInput alloc] initWithParameters:v4[14]];
    v6->_touchInputSlot = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  }

  return v6;
}

- (uint64_t)_setXValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 56);
  }

  return result;
}

- (uint64_t)_setYValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 64);
  }

  return result;
}

- (uint64_t)_setPressValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 72);
  }

  return result;
}

- (uint64_t)_setTouchValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 80);
  }

  return result;
}

- (uint64_t)_press
{
  if (result)
  {
    v1 = result;
    v2 = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 144))
    {
      OUTLINED_FUNCTION_19();
      [v3 view:? viewForSlot:?];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_touch
{
  if (result)
  {
    v1 = result;
    v2 = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 152))
    {
      OUTLINED_FUNCTION_19();
      [v3 view:? viewForSlot:?];
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
  v73.receiver = self;
  v73.super_class = _GCDevicePhysicalInputJoystickElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v10;
    if ((a4 & 2) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_24;
  }

  if (a5)
  {
    v11 = OUTLINED_FUNCTION_49(56);
    if (self)
    {
LABEL_5:
      v12 = OUTLINED_FUNCTION_54(v11, 56);
      goto LABEL_6;
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
LABEL_6:
  v70 = v12;
  *(a3 + v10) = *(a3 + v10) & 0xFFFE | v12;
  if (a5)
  {
    v13 = OUTLINED_FUNCTION_49(64);
    if (self)
    {
      goto LABEL_8;
    }

LABEL_37:
    v14 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  if (!self)
  {
    goto LABEL_37;
  }

LABEL_8:
  v14 = OUTLINED_FUNCTION_54(v13, 64);
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  *(a3 + v10) = *(a3 + v10) & 0xFFFD | v15;
  if (a5)
  {
    v16 = OUTLINED_FUNCTION_49(72);
  }

  else
  {
    v16 = 0;
  }

  if (self)
  {
    v17 = OUTLINED_FUNCTION_54(v16, 72);
    if (v17)
    {
      v18 = 4;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFFFB | v18;
  if (a5)
  {
    v19 = OUTLINED_FUNCTION_49(80);
  }

  else
  {
    v19 = 0;
  }

  v20 = v14 | v17;
  if (self)
  {
    v21 = OUTLINED_FUNCTION_54(v19, 80);
    if (v21)
    {
      v22 = 8;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFFF7 | v22;
  v9 = v9 | v70 | v21 | v20;
LABEL_24:
  v23 = [(_GCDevicePhysicalInputJoystickElement *)self _xy];
  if ((xyAxesUpdateContext_Offset & 1) == 0)
  {
    xyAxesUpdateContext_Offset = 1;
  }

  v24 = MyUpdateContext_Offset_2;
  if (MyUpdateContext_Offset_2 == -1)
  {
    v24 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_2 = v24;
    if (xyAxesUpdateContext_Offset)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v25 = 2;
  }

  v26 = a3 + v24;
  v27 = [(_GCDevicePhysicalInputJoystickElement *)a5 _xy];
  v71 = [v23 update:&v26[v25] forUsages:a4 with:v27];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v28 & 0xFFEF);

  [(_GCDevicePhysicalInputJoystickElement *)self _x];
  v29 = OUTLINED_FUNCTION_35();
  updated = xAxisUpdateContext(v29);
  v31 = [(_GCDevicePhysicalInputJoystickElement *)a5 _x];
  [v23 update:updated forUsages:a4 with:v31];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v32 & 0xFFDF);
  v34 = v9 | v33;

  [(_GCDevicePhysicalInputJoystickElement *)self _y];
  v35 = OUTLINED_FUNCTION_13_0();
  yAxisUpdateContext(v35);
  [(_GCDevicePhysicalInputJoystickElement *)a5 _y];
  v36 = a4;
  [OUTLINED_FUNCTION_30() update:? forUsages:? with:?];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v37 & 0xFFBF);
  v39 = v34 | v38;

  [(_GCDevicePhysicalInputJoystickElement *)self _up];
  v40 = OUTLINED_FUNCTION_13_0();
  v41 = upButtonUpdateContext(v40);
  [(_GCDevicePhysicalInputJoystickElement *)a5 _up];
  [OUTLINED_FUNCTION_30() update:? forUsages:? with:?];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v42 & 0xFF7F);
  v72 = v39 | v43 | v71;

  [(_GCDevicePhysicalInputJoystickElement *)self _down];
  v44 = OUTLINED_FUNCTION_13_0();
  downButtonUpdateContext(v44);
  v45 = [(_GCDevicePhysicalInputJoystickElement *)a5 _down];
  v46 = OUTLINED_FUNCTION_20(v45);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v47 & 0xFEFF);

  [(_GCDevicePhysicalInputJoystickElement *)self _left];
  v48 = OUTLINED_FUNCTION_13_0();
  v49 = leftButtonUpdateContext(v48);
  [(_GCDevicePhysicalInputJoystickElement *)a5 _left];
  [OUTLINED_FUNCTION_30() update:? forUsages:? with:?];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v50 & 0xFDFF);
  v52 = v46 | v51;

  [(_GCDevicePhysicalInputJoystickElement *)self _right];
  v53 = OUTLINED_FUNCTION_13_0();
  rightButtonUpdateContext(v53);
  v54 = [(_GCDevicePhysicalInputJoystickElement *)a5 _right];
  OUTLINED_FUNCTION_20(v54);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v55 & 0xFBFF);
  v57 = v52 | v56;

  [(_GCDevicePhysicalInputJoystickElement *)self _press];
  v58 = OUTLINED_FUNCTION_13_0();
  pressUpdateContext(v58);
  v59 = [(_GCDevicePhysicalInputJoystickElement *)a5 _press];
  OUTLINED_FUNCTION_20(v59);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v60 & 0xF7FF);
  v62 = v57 | v61;

  [(_GCDevicePhysicalInputJoystickElement *)self _touch];
  v63 = OUTLINED_FUNCTION_14_0();
  v64 = touchUpdateContext(v63);
  v65 = [(_GCDevicePhysicalInputJoystickElement *)a5 _touch];
  [(_GCDevicePhysicalInputJoystickElement *)self update:v64 forUsages:v36 with:v65];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_16(v66 & 0xEFFF);
  v68 = v72 | v62 | v67;

  return v68 & 1;
}

- (uint64_t)_xValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 56);
  }

  return result;
}

- (uint64_t)_yValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 64);
  }

  return result;
}

- (uint64_t)_pressValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 72);
  }

  return result;
}

- (uint64_t)_touchValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 80);
  }

  return result;
}

- (uint64_t)_xy
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_x
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_y
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_up
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_down
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_left
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (uint64_t)_right
{
  if (result)
  {
    v1 = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (GCAxis2DInput)xyAxes
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _xy];

  return v2;
}

- (GCAxisInput)xAxis
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _x];

  return v2;
}

- (GCAxisInput)yAxis
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _y];

  return v2;
}

- (GCLinearInput)up
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _up];

  return v2;
}

- (GCLinearInput)down
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _down];

  return v2;
}

- (GCLinearInput)left
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _left];

  return v2;
}

- (GCLinearInput)right
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _right];

  return v2;
}

- (GCPressedStateInput)pressedInput
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _press];

  return v2;
}

- (GCTouchedStateInput)touchedInput
{
  v2 = [(_GCDevicePhysicalInputJoystickElement *)self _touch];

  return v2;
}

- (BOOL)update:(void *)a3 forGamepadEvent:(id)a4 withTimestamp:(double)a5
{
  OUTLINED_FUNCTION_56();
  v67 = v14;
  v68 = v15;
  OUTLINED_FUNCTION_45();
  v66.receiver = v16;
  v66.super_class = _GCDevicePhysicalInputJoystickElement;
  [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  OUTLINED_FUNCTION_34();
  if (v18)
  {
    v13[350] = [v17 + 2960 updateContextSize];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    v12 = OUTLINED_FUNCTION_32(56);
    v11 = OUTLINED_FUNCTION_32(64);
    v10 = OUTLINED_FUNCTION_32(72);
    v8 = OUTLINED_FUNCTION_32(80);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_44();
LABEL_4:
  v18 = v12 == -1 || v11 + 1 == 0;
  if (v18)
  {
    if (v12 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [OUTLINED_FUNCTION_37() floatValueForElement:?];
    [OUTLINED_FUNCTION_38() floatValueForElement:?];
    [(_GCDevicePhysicalInputJoystickElement *)v6 _xy];
    if ((xyAxesUpdateContext_Offset & 1) == 0)
    {
      xyAxesUpdateContext_Offset = 1;
    }

    v20 = v13[350];
    if (v20 == -1)
    {
      v20 = OUTLINED_FUNCTION_28(+[_GCDevicePhysicalInputElement updateContextSize]);
      if (!v18)
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 2;
    }

    OUTLINED_FUNCTION_27(v20, v21);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v22 & 0xFFEF);
  }

  [OUTLINED_FUNCTION_37() floatValueForElement:?];
  OUTLINED_FUNCTION_9_3(v23);
  [(_GCDevicePhysicalInputJoystickElement *)v6 _x];
  v24 = OUTLINED_FUNCTION_42();
  xAxisUpdateContext(v24);
  v25 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53(v25, v26);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v27 & 0xFFDF);
  v29 = v9 | v28;

  [(_GCDevicePhysicalInputJoystickElement *)v6 _left];
  v30 = OUTLINED_FUNCTION_13_0();
  updated = leftButtonUpdateContext(v30);
  OUTLINED_FUNCTION_15_0(updated);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v32 & 0xFDFF);
  v34 = v29 | v33;

  [(_GCDevicePhysicalInputJoystickElement *)v6 _right];
  v35 = OUTLINED_FUNCTION_42();
  rightButtonUpdateContext(v35);
  OUTLINED_FUNCTION_46();
  v36 = OUTLINED_FUNCTION_25();
  [_GCDevicePhysicalInputPressInput update:v37 withValue:v38 timestamp:v36];
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v39 & 0xFBFF);
  v9 = (v34 | v40);

LABEL_10:
  if (v11 != -1)
  {
    [OUTLINED_FUNCTION_38() floatValueForElement:?];
    OUTLINED_FUNCTION_9_3(v41);
    [(_GCDevicePhysicalInputJoystickElement *)v6 _y];
    v42 = OUTLINED_FUNCTION_35();
    yAxisUpdateContext(v42);
    v43 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_53(v43, v44);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v45 & 0xFFBF);

    [(_GCDevicePhysicalInputJoystickElement *)v6 _down];
    v46 = OUTLINED_FUNCTION_13_0();
    v47 = downButtonUpdateContext(v46);
    OUTLINED_FUNCTION_15_0(v47);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v48 & 0xFEFF);

    [(_GCDevicePhysicalInputJoystickElement *)v6 _up];
    v49 = OUTLINED_FUNCTION_35();
    upButtonUpdateContext(v49);
    OUTLINED_FUNCTION_47();
    v50 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v51 withValue:v52 timestamp:v50];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v53 & 0xFF7F);
  }

  if (v10 != -1)
  {
    [v7 floatValueForElement:v10];
    v54 = OUTLINED_FUNCTION_39();
    v55 = [(_GCDevicePhysicalInputJoystickElement *)v54 _press];
    pressUpdateContext(v5);
    v56 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v57 withValue:v58 timestamp:v56];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v59 & 0xF7FF);
  }

  if (v8 != -1)
  {
    [v7 floatValueForElement:v8];
    v60 = OUTLINED_FUNCTION_39();
    v61 = [(_GCDevicePhysicalInputJoystickElement *)v60 _touch];
    touchUpdateContext(v5);
    v62 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputTouchInput update:v63 withValue:v64 timestamp:v62];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v65 & 0xEFFF);
  }

  OUTLINED_FUNCTION_55();
  return result;
}

- (BOOL)update:(void *)a3 forCollectionEvent:(id)a4 withTimestamp:(double)a5
{
  OUTLINED_FUNCTION_56();
  v67 = v14;
  v68 = v15;
  OUTLINED_FUNCTION_45();
  v66.receiver = v16;
  v66.super_class = _GCDevicePhysicalInputJoystickElement;
  [_GCDevicePhysicalInputElement update:sel_update_forCollectionEvent_withTimestamp_ forCollectionEvent:? withTimestamp:?];
  OUTLINED_FUNCTION_34();
  if (v18)
  {
    v13[350] = [v17 + 2960 updateContextSize];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
LABEL_3:
    v12 = OUTLINED_FUNCTION_32(56);
    v11 = OUTLINED_FUNCTION_32(64);
    v10 = OUTLINED_FUNCTION_32(72);
    v8 = OUTLINED_FUNCTION_32(80);
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_44();
LABEL_4:
  v18 = v12 == -1 || v11 + 1 == 0;
  if (v18)
  {
    if (v12 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    [OUTLINED_FUNCTION_37() floatValueForKey:?];
    [OUTLINED_FUNCTION_38() floatValueForKey:?];
    [(_GCDevicePhysicalInputJoystickElement *)v6 _xy];
    if ((xyAxesUpdateContext_Offset & 1) == 0)
    {
      xyAxesUpdateContext_Offset = 1;
    }

    v20 = v13[350];
    if (v20 == -1)
    {
      v20 = OUTLINED_FUNCTION_28(+[_GCDevicePhysicalInputElement updateContextSize]);
      if (!v18)
      {
        v21 = 2;
      }
    }

    else
    {
      v21 = 2;
    }

    OUTLINED_FUNCTION_27(v20, v21);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v22 & 0xFFEF);
  }

  [OUTLINED_FUNCTION_37() floatValueForKey:?];
  OUTLINED_FUNCTION_9_3(v23);
  [(_GCDevicePhysicalInputJoystickElement *)v6 _x];
  v24 = OUTLINED_FUNCTION_42();
  xAxisUpdateContext(v24);
  v25 = OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_53(v25, v26);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v27 & 0xFFDF);
  v29 = v9 | v28;

  [(_GCDevicePhysicalInputJoystickElement *)v6 _left];
  v30 = OUTLINED_FUNCTION_13_0();
  updated = leftButtonUpdateContext(v30);
  OUTLINED_FUNCTION_15_0(updated);
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v32 & 0xFDFF);
  v34 = v29 | v33;

  [(_GCDevicePhysicalInputJoystickElement *)v6 _right];
  v35 = OUTLINED_FUNCTION_42();
  rightButtonUpdateContext(v35);
  OUTLINED_FUNCTION_46();
  v36 = OUTLINED_FUNCTION_25();
  [_GCDevicePhysicalInputPressInput update:v37 withValue:v38 timestamp:v36];
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_10_3(v39 & 0xFBFF);
  v9 = (v34 | v40);

LABEL_10:
  if (v11 != -1)
  {
    [OUTLINED_FUNCTION_38() floatValueForKey:?];
    OUTLINED_FUNCTION_9_3(v41);
    [(_GCDevicePhysicalInputJoystickElement *)v6 _y];
    v42 = OUTLINED_FUNCTION_35();
    yAxisUpdateContext(v42);
    v43 = OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_53(v43, v44);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v45 & 0xFFBF);

    [(_GCDevicePhysicalInputJoystickElement *)v6 _down];
    v46 = OUTLINED_FUNCTION_13_0();
    v47 = downButtonUpdateContext(v46);
    OUTLINED_FUNCTION_15_0(v47);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v48 & 0xFEFF);

    [(_GCDevicePhysicalInputJoystickElement *)v6 _up];
    v49 = OUTLINED_FUNCTION_35();
    upButtonUpdateContext(v49);
    OUTLINED_FUNCTION_47();
    v50 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v51 withValue:v52 timestamp:v50];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_10_3(v53 & 0xFF7F);
  }

  if (v10 != -1)
  {
    [v7 floatValueForKey:v10];
    v54 = OUTLINED_FUNCTION_39();
    v55 = [(_GCDevicePhysicalInputJoystickElement *)v54 _press];
    pressUpdateContext(v5);
    v56 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v57 withValue:v58 timestamp:v56];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v59 & 0xF7FF);
  }

  if (v8 != -1)
  {
    [v7 floatValueForKey:v8];
    v60 = OUTLINED_FUNCTION_39();
    v61 = [(_GCDevicePhysicalInputJoystickElement *)v60 _touch];
    touchUpdateContext(v5);
    v62 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputTouchInput update:v63 withValue:v64 timestamp:v62];
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_7_3(v65 & 0xEFFF);
  }

  OUTLINED_FUNCTION_55();
  return result;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_48(a1);
  OUTLINED_FUNCTION_40();
  if (!v5)
  {
    *(v4 + 3904) = 1;
  }

  if (MyUpdateContext_Offset_2 == -1)
  {
    OUTLINED_FUNCTION_41(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() preCommit:? sender:?];

  *v1 = *v2;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.2(uint64_t a1)
{
  [(_GCDevicePhysicalInputJoystickElement *)a1 _touch];
  v3 = OUTLINED_FUNCTION_18();
  [v1 preCommit:touchUpdateContext(v3) sender:a1];
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_48(a1);
  OUTLINED_FUNCTION_40();
  if (!v5)
  {
    *(v4 + 3904) = 1;
  }

  if (MyUpdateContext_Offset_2 == -1)
  {
    OUTLINED_FUNCTION_41(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() postCommit:? sender:?];

  *v1 = *v2;
}

- (void)postCommit:(uint64_t)a1 sender:.cold.2(uint64_t a1)
{
  [(_GCDevicePhysicalInputJoystickElement *)a1 _touch];
  v3 = OUTLINED_FUNCTION_18();
  [v1 postCommit:touchUpdateContext(v3) sender:a1];
}

- (void)isEqualToElement:(BOOL *)a3 .cold.1(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (a1)
  {
    v6 = OUTLINED_FUNCTION_51(56);
    if (a2)
    {
LABEL_3:
      v7 = OUTLINED_FUNCTION_50(56);
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
  if (v6 != v7)
  {
    goto LABEL_17;
  }

  if (a1)
  {
    v8 = OUTLINED_FUNCTION_51(64);
    if (a2)
    {
LABEL_7:
      v9 = OUTLINED_FUNCTION_50(64);
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (a2)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_8:
  if (v8 != v9)
  {
    goto LABEL_17;
  }

  if (a1)
  {
    v10 = OUTLINED_FUNCTION_51(72);
    if (a2)
    {
LABEL_11:
      v11 = OUTLINED_FUNCTION_50(72);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  if (v10 == v11)
  {
    if (a1)
    {
      v12 = OUTLINED_FUNCTION_51(80);
      if (a2)
      {
LABEL_15:
        v13 = OUTLINED_FUNCTION_50(80);
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
      if (a2)
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
LABEL_16:
    if (v12 != v13)
    {
      goto LABEL_17;
    }

    v15 = [(_GCDevicePhysicalInputJoystickElement *)a1 _xy];
    v16 = [(_GCDevicePhysicalInputJoystickElement *)a2 _xy];
    if (![(_GCDevicePhysicalInputAxis2DInput *)v15 isEqualToInput:v16])
    {
      v14 = 0;
LABEL_21:

      goto LABEL_18;
    }

    v17 = [(_GCDevicePhysicalInputJoystickElement *)a1 _x];
    v18 = [(_GCDevicePhysicalInputJoystickElement *)a2 _x];
    if (![(_GCDevicePhysicalInputAxisInput *)v17 isEqualToInput:v18])
    {
      v14 = 0;
LABEL_24:

      goto LABEL_21;
    }

    v19 = [(_GCDevicePhysicalInputJoystickElement *)a1 _y];
    v20 = [(_GCDevicePhysicalInputJoystickElement *)a2 _y];
    if (![(_GCDevicePhysicalInputAxisInput *)v19 isEqualToInput:v20])
    {
      v14 = 0;
LABEL_27:

      goto LABEL_24;
    }

    v21 = [(_GCDevicePhysicalInputJoystickElement *)a1 _up];
    v22 = [(_GCDevicePhysicalInputJoystickElement *)a2 _up];
    v39 = v21;
    v23 = v21;
    v24 = v22;
    if (![(_GCDevicePhysicalInputPressInput *)v23 isEqualToInput:v22])
    {
      v14 = 0;
LABEL_30:

      goto LABEL_27;
    }

    v38 = [(_GCDevicePhysicalInputJoystickElement *)a1 _down];
    v37 = [(_GCDevicePhysicalInputJoystickElement *)a2 _down];
    if (![(_GCDevicePhysicalInputPressInput *)v38 isEqualToInput:v37])
    {
      v14 = 0;
LABEL_41:

      goto LABEL_30;
    }

    v36 = [(_GCDevicePhysicalInputJoystickElement *)a1 _left];
    v35 = [(_GCDevicePhysicalInputJoystickElement *)a2 _left];
    if (![(_GCDevicePhysicalInputPressInput *)v36 isEqualToInput:v35])
    {
      v14 = 0;
LABEL_44:

      goto LABEL_41;
    }

    v34 = [(_GCDevicePhysicalInputJoystickElement *)a1 _right];
    v33 = [(_GCDevicePhysicalInputJoystickElement *)a2 _right];
    if (![(_GCDevicePhysicalInputPressInput *)v34 isEqualToInput:v33])
    {
      v14 = 0;
LABEL_47:

      goto LABEL_44;
    }

    v32 = [(_GCDevicePhysicalInputJoystickElement *)a1 _press];
    v31 = [(_GCDevicePhysicalInputJoystickElement *)a2 _press];
    if (v32 == v31 || (v30 = [(_GCDevicePhysicalInputJoystickElement *)a1 _press], v28 = [(_GCDevicePhysicalInputJoystickElement *)a2 _press], [(_GCDevicePhysicalInputPressInput *)v30 isEqualToInput:v28]))
    {
      v29 = [(_GCDevicePhysicalInputJoystickElement *)a1 _touch];
      v27 = [(_GCDevicePhysicalInputJoystickElement *)a2 _touch];
      if (v29 == v27)
      {

        v14 = 1;
      }

      else
      {
        v26 = [(_GCDevicePhysicalInputJoystickElement *)a1 _touch];
        v25 = [(_GCDevicePhysicalInputJoystickElement *)a2 _touch];
        v14 = [(_GCDevicePhysicalInputTouchInput *)v26 isEqualToInput:v25];
      }

      if (v32 == v31)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_56:
    goto LABEL_47;
  }

LABEL_17:
  v14 = 0;
LABEL_18:
  *a3 = v14;
}

@end
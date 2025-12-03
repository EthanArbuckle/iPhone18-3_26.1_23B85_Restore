@interface _GCDevicePhysicalInputDirectionPadElement
+ (unsigned)updateContextSize;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCAxis2DInput)xyAxes;
- (GCAxisInput)xAxis;
- (GCAxisInput)yAxis;
- (GCLinearInput)down;
- (GCLinearInput)left;
- (GCLinearInput)right;
- (GCLinearInput)up;
- (NSString)description;
- (_GCDevicePhysicalInputDirectionPadElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputDirectionPadElement)initWithTemplate:(id)template context:(id)context;
- (uint64_t)_down;
- (uint64_t)_downValueField;
- (uint64_t)_left;
- (uint64_t)_leftValueField;
- (uint64_t)_right;
- (uint64_t)_rightValueField;
- (uint64_t)_setDownValueField:(uint64_t)result;
- (uint64_t)_setLeftValueField:(uint64_t)result;
- (uint64_t)_setRightValueField:(uint64_t)result;
- (uint64_t)_setUpValueField:(uint64_t)result;
- (uint64_t)_up;
- (uint64_t)_upValueField;
- (uint64_t)_x;
- (uint64_t)_xy;
- (uint64_t)_y;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputDirectionPadElement

- (_GCDevicePhysicalInputDirectionPadElement)initWithTemplate:(id)template context:(id)context
{
  v17.receiver = self;
  v17.super_class = _GCDevicePhysicalInputDirectionPadElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputElement *)&v17 initWithTemplate:templateCopy context:contextCopy];
  v7->_upValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:{templateCopy[7], v17.receiver, v17.super_class}];
  v7->_downValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  v7->_leftValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];
  v7->_rightValueFieldSlot = [contextCopy view:v7 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
  xyAxes = [templateCopy xyAxes];
  v7->_xyAxesSlot = [contextCopy view:v7 makeReferenceToView:xyAxes];

  xAxis = [templateCopy xAxis];
  v7->_xAxisSlot = [contextCopy view:v7 makeReferenceToView:xAxis];

  yAxis = [templateCopy yAxis];
  v7->_yAxisSlot = [contextCopy view:v7 makeReferenceToView:yAxis];

  v11 = [templateCopy up];
  v7->_upInputSlot = [contextCopy view:v7 makeReferenceToView:v11];

  down = [templateCopy down];
  v7->_downInputSlot = [contextCopy view:v7 makeReferenceToView:down];

  left = [templateCopy left];
  v7->_leftInputSlot = [contextCopy view:v7 makeReferenceToView:left];

  right = [templateCopy right];

  v15 = [contextCopy view:v7 makeReferenceToView:right];
  v7->_rightInputSlot = v15;

  return v7;
}

+ (unsigned)updateContextSize
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____GCDevicePhysicalInputDirectionPadElement;
  v2 = objc_msgSendSuper2(&v10, sel_updateContextSize);
  v3 = v2 + +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  v4 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  v5 = v3 + v4 + +[_GCDevicePhysicalInputAxisInput updateContextSize];
  v6 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  v7 = v6 + +[_GCDevicePhysicalInputPressInput updateContextSize];
  v8 = v5 + v7 + +[_GCDevicePhysicalInputPressInput updateContextSize];
  return v8 + +[_GCDevicePhysicalInputPressInput updateContextSize]+ 2;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  v67.receiver = self;
  v67.super_class = _GCDevicePhysicalInputDirectionPadElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v10;
    if ((usages & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((usages & 2) == 0)
  {
    goto LABEL_23;
  }

  if (with)
  {
    v11 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    if (self)
    {
LABEL_5:
      v12 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v11 forSlot:&self->_upValueFieldSlot];
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
  *(update + v10) = *(update + v10) & 0xFFFE | v12;
  if (with)
  {
    v13 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    if (self)
    {
      goto LABEL_8;
    }

LABEL_57:
    v14 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  if (!self)
  {
    goto LABEL_57;
  }

LABEL_8:
  v14 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v13 forSlot:&self->_downValueFieldSlot];
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:
  *(update + v10) = *(update + v10) & 0xFFFD | v15;
  if (with)
  {
    v16 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    if (self)
    {
      goto LABEL_13;
    }

LABEL_59:
    v17 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v16 = 0;
  if (!self)
  {
    goto LABEL_59;
  }

LABEL_13:
  v17 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v16 forSlot:&self->_leftValueFieldSlot];
  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 0;
  }

LABEL_16:
  *(update + v10) = *(update + v10) & 0xFFFB | v18;
  if (with)
  {
    v19 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
  }

  else
  {
    v19 = 0;
  }

  v20 = v14 | v17;
  if (self)
  {
    v21 = [(_GCDevicePhysicalInputView *)self _testAndSetPrimitiveValue:v19 forSlot:&self->_rightValueFieldSlot];
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

  *(update + v10) = *(update + v10) & 0xFFF7 | v22;
  v9 |= v12 | v21 | v20;
LABEL_23:
  v23 = [(_GCDevicePhysicalInputDirectionPadElement *)self _xy];
  if ((xyAxesUpdateContext_Offset_0 & 1) == 0)
  {
    xyAxesUpdateContext_Offset_0 = 1;
  }

  v24 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v24 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v24;
    if (xyAxesUpdateContext_Offset_0)
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

  v26 = update + v24;
  v27 = [(_GCDevicePhysicalInputDirectionPadElement *)with _xy];
  v65 = [v23 update:&v26[v25] forUsages:usages with:v27];
  if (v65)
  {
    v28 = 16;
  }

  else
  {
    v28 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFEF | v28;

  v29 = [(_GCDevicePhysicalInputDirectionPadElement *)self _x];
  updated = xAxisUpdateContext_0(update);
  v31 = [(_GCDevicePhysicalInputDirectionPadElement *)with _x];
  v32 = [v29 update:updated forUsages:usages with:v31];
  if (v32)
  {
    v33 = 32;
  }

  else
  {
    v33 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFDF | v33;
  v34 = v9 | v32;

  v35 = [(_GCDevicePhysicalInputDirectionPadElement *)self _y];
  v36 = yAxisUpdateContext_0(update);
  v37 = [(_GCDevicePhysicalInputDirectionPadElement *)with _y];
  usagesCopy = usages;
  v39 = [v35 update:v36 forUsages:usages with:v37];
  if (v39)
  {
    v40 = 64;
  }

  else
  {
    v40 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFFBF | v40;
  v41 = v34 | v39;

  v42 = [(_GCDevicePhysicalInputDirectionPadElement *)self _up];
  v43 = upButtonUpdateContext_0(update);
  v44 = [(_GCDevicePhysicalInputDirectionPadElement *)with _up];
  v45 = [v42 update:v43 forUsages:usagesCopy with:v44];
  if (v45)
  {
    v46 = 128;
  }

  else
  {
    v46 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFF7F | v46;
  v66 = v41 | v45 | v65;

  _down = [(_GCDevicePhysicalInputDirectionPadElement *)self _down];
  v48 = downButtonUpdateContext_0(update);
  _down2 = [(_GCDevicePhysicalInputDirectionPadElement *)with _down];
  v50 = [_down update:v48 forUsages:usagesCopy with:_down2];
  if (v50)
  {
    v51 = 256;
  }

  else
  {
    v51 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFEFF | v51;

  _left = [(_GCDevicePhysicalInputDirectionPadElement *)self _left];
  v53 = leftButtonUpdateContext_0(update);
  _left2 = [(_GCDevicePhysicalInputDirectionPadElement *)with _left];
  v55 = [_left update:v53 forUsages:usagesCopy with:_left2];
  if (v55)
  {
    v56 = 512;
  }

  else
  {
    v56 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFDFF | v56;
  v57 = v50 | v55;

  _right = [(_GCDevicePhysicalInputDirectionPadElement *)self _right];
  v59 = rightButtonUpdateContext_0(update);
  _right2 = [(_GCDevicePhysicalInputDirectionPadElement *)with _right];
  v61 = [_right update:v59 forUsages:usagesCopy with:_right2];
  if (v61)
  {
    v62 = 1024;
  }

  else
  {
    v62 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFBFF | v62;
  v63 = v66 | v57 | v61;

  return v63 & 1;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputDirectionPadElement;
  [(_GCDevicePhysicalInputElement *)&v14 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v6;
  }

  v7 = (commit + v6);
  v8 = *v7;
  if ((*v7 & 0x10) != 0)
  {
    [_GCDevicePhysicalInputDirectionPadElement preCommit:? sender:?];
    v8 = v15;
    if ((v15 & 0x20) == 0)
    {
LABEL_5:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v9 = [(_GCDevicePhysicalInputDirectionPadElement *)self _x];
  [v9 preCommit:xAxisUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_6:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = [(_GCDevicePhysicalInputDirectionPadElement *)self _y];
  [v10 preCommit:yAxisUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_7:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = [(_GCDevicePhysicalInputDirectionPadElement *)self _up];
  [v11 preCommit:upButtonUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  _down = [(_GCDevicePhysicalInputDirectionPadElement *)self _down];
  [_down preCommit:downButtonUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      return;
    }

LABEL_17:
    [_GCDevicePhysicalInputDirectionPadElement preCommit:? sender:?];
    return;
  }

LABEL_16:
  _left = [(_GCDevicePhysicalInputDirectionPadElement *)self _left];
  [_left preCommit:leftButtonUpdateContext_0(commit) sender:self];

  if ((*v7 & 0x400) != 0)
  {
    goto LABEL_17;
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputDirectionPadElement;
  [(_GCDevicePhysicalInputElement *)&v14 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v6;
  }

  v7 = (commit + v6);
  v8 = *v7;
  if ((*v7 & 0x10) != 0)
  {
    [_GCDevicePhysicalInputDirectionPadElement postCommit:? sender:?];
    v8 = v15;
    if ((v15 & 0x20) == 0)
    {
LABEL_5:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v9 = [(_GCDevicePhysicalInputDirectionPadElement *)self _x];
  [v9 postCommit:xAxisUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x40) == 0)
  {
LABEL_6:
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = [(_GCDevicePhysicalInputDirectionPadElement *)self _y];
  [v10 postCommit:yAxisUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_7:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = [(_GCDevicePhysicalInputDirectionPadElement *)self _up];
  [v11 postCommit:upButtonUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_8:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  _down = [(_GCDevicePhysicalInputDirectionPadElement *)self _down];
  [_down postCommit:downButtonUpdateContext_0(commit) sender:self];

  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      return;
    }

LABEL_17:
    [_GCDevicePhysicalInputDirectionPadElement postCommit:? sender:?];
    return;
  }

LABEL_16:
  _left = [(_GCDevicePhysicalInputDirectionPadElement *)self _left];
  [_left postCommit:leftButtonUpdateContext_0(commit) sender:self];

  if ((*v7 & 0x400) != 0)
  {
    goto LABEL_17;
  }
}

- (BOOL)isEqualToElement:(id)element
{
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:?];
  if (v5)
  {
    [(_GCDevicePhysicalInputDirectionPadElement *)self isEqualToElement:element, &v8];
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
  v16 = [v3 stringWithFormat:@"<Direction Pad '%@' up = %f, down = %f, left = %f, right = %f>", identifier, *&v7, *&v10, *&v13, v15];;

  return v16;
}

- (_GCDevicePhysicalInputDirectionPadElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v47.receiver = self;
  v47.super_class = _GCDevicePhysicalInputDirectionPadElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v47 initWithParameters:parametersCopy];
  v6 = v5;
  if (parametersCopy)
  {
    v7 = parametersCopy[13];
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
  if (parametersCopy)
  {
    v8 = parametersCopy[14];
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
  if (parametersCopy)
  {
    v9 = parametersCopy[15];
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
  if (parametersCopy)
  {
    v10 = parametersCopy[16];
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
  if (parametersCopy)
  {
    v13 = *(parametersCopy + 40);
  }

  else
  {
    v13 = 0;
  }

  [(_GCDevicePhysicalInputAxis2DInputParameters *)v11 setAnalog:?];
  [(_GCDevicePhysicalInputAxis2DInputParameters *)v12 setCanWrap:?];
  v14 = objc_opt_new();
  v15 = v14;
  if (parametersCopy)
  {
    v16 = *(parametersCopy + 40);
  }

  else
  {
    v16 = 0;
  }

  [(_GCDevicePhysicalInputAxisInputParameters *)v14 setAnalog:?];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setCanWrap:?];
  v17 = objc_opt_new();
  v18 = v17;
  if (parametersCopy)
  {
    v19 = *(parametersCopy + 40);
  }

  else
  {
    v19 = 0;
  }

  [(_GCDevicePhysicalInputPressInputParameters *)v17 setAnalog:?];
  [(_GCDevicePhysicalInputPressInputParameters *)v18 setPressedThreshold:?];
  xySources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)parametersCopy xySources];
  [(_GCDevicePhysicalInputAxis2DInputParameters *)v12 setSources:xySources];

  v46 = [[_GCDevicePhysicalInputAxis2DInput alloc] initWithParameters:v12];
  v21 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v22 = OUTLINED_FUNCTION_29(v21, 88);
  xSources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v22 xSources];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setSources:xSources];

  v45 = [[_GCDevicePhysicalInputAxisInput alloc] initWithParameters:v15];
  v24 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v25 = OUTLINED_FUNCTION_29(v24, 96);
  ySources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v25 ySources];
  [(_GCDevicePhysicalInputAxisInputParameters *)v15 setSources:ySources];

  v44 = [[_GCDevicePhysicalInputAxisInput alloc] initWithParameters:v15];
  v27 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v28 = OUTLINED_FUNCTION_29(v27, 104);
  upSources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v28 upSources];
  OUTLINED_FUNCTION_22_0(upSources);

  v30 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v31 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v32 = OUTLINED_FUNCTION_29(v31, 112);
  downSources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v32 downSources];
  OUTLINED_FUNCTION_22_0(downSources);

  v34 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v35 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v36 = OUTLINED_FUNCTION_29(v35, 120);
  leftSources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v36 leftSources];
  OUTLINED_FUNCTION_22_0(leftSources);

  v38 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v39 = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];
  v40 = OUTLINED_FUNCTION_29(v39, 128);
  rightSources = [(_GCDevicePhysicalInputDirectionPadElementParameters *)v40 rightSources];
  [(_GCDevicePhysicalInputPressInputParameters *)v18 setSources:rightSources];

  v42 = [[_GCDevicePhysicalInputPressInput alloc] initWithParameters:v18];
  v6->_rightInputSlot = [OUTLINED_FUNCTION_21() view:? makeReferenceToView:?];

  return v6;
}

- (uint64_t)_setUpValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 56);
  }

  return result;
}

- (uint64_t)_setDownValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 64);
  }

  return result;
}

- (uint64_t)_setLeftValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 72);
  }

  return result;
}

- (uint64_t)_setRightValueField:(uint64_t)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 80);
  }

  return result;
}

- (uint64_t)_upValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 56);
  }

  return result;
}

- (uint64_t)_downValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 64);
  }

  return result;
}

- (uint64_t)_leftValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 72);
  }

  return result;
}

- (uint64_t)_rightValueField
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
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
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
    OUTLINED_FUNCTION_19();
    [v2 view:? viewForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (GCAxis2DInput)xyAxes
{
  v2 = [(_GCDevicePhysicalInputDirectionPadElement *)self _xy];

  return v2;
}

- (GCAxisInput)xAxis
{
  v2 = [(_GCDevicePhysicalInputDirectionPadElement *)self _x];

  return v2;
}

- (GCAxisInput)yAxis
{
  v2 = [(_GCDevicePhysicalInputDirectionPadElement *)self _y];

  return v2;
}

- (GCLinearInput)up
{
  v2 = [(_GCDevicePhysicalInputDirectionPadElement *)self _up];

  return v2;
}

- (GCLinearInput)down
{
  _down = [(_GCDevicePhysicalInputDirectionPadElement *)self _down];

  return _down;
}

- (GCLinearInput)left
{
  _left = [(_GCDevicePhysicalInputDirectionPadElement *)self _left];

  return _left;
}

- (GCLinearInput)right
{
  _right = [(_GCDevicePhysicalInputDirectionPadElement *)self _right];

  return _right;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v73.receiver = self;
  v73.super_class = _GCDevicePhysicalInputDirectionPadElement;
  v7 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v8 = MyUpdateContext_Offset_9;
  if (MyUpdateContext_Offset_9 == -1)
  {
    v8 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_9 = v8;
    if (self)
    {
      goto LABEL_3;
    }
  }

  else if (self)
  {
LABEL_3:
    v9 = OUTLINED_FUNCTION_49(56);
    v10 = OUTLINED_FUNCTION_49(64);
    v11 = OUTLINED_FUNCTION_49(72);
    v12 = OUTLINED_FUNCTION_49(80);
    goto LABEL_4;
  }

  v11 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
LABEL_4:
  v13 = v9 == -1 || v10 == -1;
  v14 = !v13;
  if (v14 == 1 && v11 != -1 && v12 != -1)
  {
    v71 = v7;
    [event floatValueForElement:v12];
    v20 = v19;
    [event floatValueForElement:v11];
    v22 = v21;
    [event floatValueForElement:v9];
    v24 = v23;
    [event floatValueForElement:v10];
    v26 = v25;
    v27 = [(_GCDevicePhysicalInputDirectionPadElement *)self _xy];
    if ((xyAxesUpdateContext_Offset_0 & 1) == 0)
    {
      xyAxesUpdateContext_Offset_0 = 1;
    }

    v28 = v20 - v22;
    v29 = v24 - v26;
    v30 = MyUpdateContext_Offset_9;
    if (MyUpdateContext_Offset_9 == -1)
    {
      v70 = v27;
      v30 = +[_GCDevicePhysicalInputElement updateContextSize];
      v27 = v70;
      v29 = v24 - v26;
      v28 = v20 - v22;
      MyUpdateContext_Offset_9 = v30;
      v31 = 0xFFFFFFFFLL;
      if (xyAxesUpdateContext_Offset_0)
      {
        v31 = 2;
      }
    }

    else
    {
      v31 = 2;
    }

    v7 = v71;
    v32 = v27;
    [(_GCDevicePhysicalInputAxis2DInput *)v27 update:v28 withValue:v29 timestamp:?];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6_6(v33 & 0xFFEF);
  }

  if (v11 == -1 || v12 == -1)
  {
    if (v14)
    {
      goto LABEL_38;
    }

LABEL_24:
    if (v9 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  [event floatValueForElement:v12];
  [event floatValueForElement:v11];
  [(_GCDevicePhysicalInputDirectionPadElement *)self _x];
  v34 = OUTLINED_FUNCTION_14_0();
  xAxisUpdateContext_0(v34);
  v35 = OUTLINED_FUNCTION_25();
  [_GCDevicePhysicalInputAxisInput update:v36 withValue:v37 timestamp:v35];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_6(v38 & 0xFFDF);

  if (!v14)
  {
    goto LABEL_24;
  }

LABEL_38:
  [event floatValueForElement:v9];
  [event floatValueForElement:v10];
  v39 = [(_GCDevicePhysicalInputDirectionPadElement *)self _y];
  yAxisUpdateContext_0(update);
  v40 = OUTLINED_FUNCTION_25();
  [_GCDevicePhysicalInputAxisInput update:v41 withValue:v42 timestamp:v40];
  OUTLINED_FUNCTION_24();
  if (v13)
  {
    v45 = 0;
  }

  else
  {
    v45 = 64;
  }

  *(update + v8) = v44 & 0xFFBF | v45;
  LOBYTE(v7) = v7 | v43;

LABEL_42:
  [event floatValueForElement:v9];
  v46 = OUTLINED_FUNCTION_25_0();
  v47 = [(_GCDevicePhysicalInputDirectionPadElement *)v46 _up];
  upButtonUpdateContext_0(update);
  v48 = OUTLINED_FUNCTION_25();
  [_GCDevicePhysicalInputPressInput update:v49 withValue:v50 timestamp:v48];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_6_6(v51 & 0xFF7F);

LABEL_25:
  if (v10 != -1)
  {
    [event floatValueForElement:v10];
    v52 = OUTLINED_FUNCTION_25_0();
    _down = [(_GCDevicePhysicalInputDirectionPadElement *)v52 _down];
    downButtonUpdateContext_0(update);
    v54 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v55 withValue:v56 timestamp:v54];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6_6(v57 & 0xFEFF);
  }

  if (v11 != -1)
  {
    [event floatValueForElement:v11];
    v58 = OUTLINED_FUNCTION_25_0();
    _left = [(_GCDevicePhysicalInputDirectionPadElement *)v58 _left];
    leftButtonUpdateContext_0(update);
    v60 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v61 withValue:v62 timestamp:v60];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6_6(v63 & 0xFDFF);
  }

  if (v12 != -1)
  {
    [event floatValueForElement:v12];
    v64 = OUTLINED_FUNCTION_25_0();
    [(_GCDevicePhysicalInputDirectionPadElement *)v64 _right];
    v65 = OUTLINED_FUNCTION_18();
    rightButtonUpdateContext_0(v65);
    v66 = OUTLINED_FUNCTION_25();
    [_GCDevicePhysicalInputPressInput update:v67 withValue:v68 timestamp:v66];
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_6_6(v69 & 0xFBFF);
  }

  return v7;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0(a1);
  OUTLINED_FUNCTION_24_0();
  if (!v5)
  {
    *(v4 + 96) = 1;
  }

  if (MyUpdateContext_Offset_9 == -1)
  {
    OUTLINED_FUNCTION_26_0(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() preCommit:? sender:?];

  *v1 = *v2;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.2(uint64_t a1)
{
  [(_GCDevicePhysicalInputDirectionPadElement *)a1 _right];
  v3 = OUTLINED_FUNCTION_18();
  [v1 preCommit:rightButtonUpdateContext_0(v3) sender:a1];
}

- (void)postCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_27_0(a1);
  OUTLINED_FUNCTION_24_0();
  if (!v5)
  {
    *(v4 + 96) = 1;
  }

  if (MyUpdateContext_Offset_9 == -1)
  {
    OUTLINED_FUNCTION_26_0(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() postCommit:? sender:?];

  *v1 = *v2;
}

- (void)postCommit:(uint64_t)a1 sender:.cold.2(uint64_t a1)
{
  [(_GCDevicePhysicalInputDirectionPadElement *)a1 _right];
  v3 = OUTLINED_FUNCTION_18();
  [v1 postCommit:rightButtonUpdateContext_0(v3) sender:a1];
}

- (void)isEqualToElement:(BOOL *)a3 .cold.1(uint64_t a1, uint64_t a2, BOOL *a3)
{
  if (a1)
  {
    v6 = OUTLINED_FUNCTION_49(56);
    if (a2)
    {
LABEL_3:
      v7 = OUTLINED_FUNCTION_32(56);
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
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (a1)
  {
    v8 = OUTLINED_FUNCTION_49(64);
    if (a2)
    {
LABEL_7:
      v9 = OUTLINED_FUNCTION_32(64);
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
    v10 = OUTLINED_FUNCTION_49(72);
    if (a2)
    {
LABEL_11:
      v11 = OUTLINED_FUNCTION_32(72);
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
  if (v10 != v11)
  {
    goto LABEL_17;
  }

  if (a1)
  {
    v12 = OUTLINED_FUNCTION_49(80);
    if (a2)
    {
LABEL_15:
      v13 = OUTLINED_FUNCTION_32(80);
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

  v15 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _xy];
  v16 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _xy];
  if ([(_GCDevicePhysicalInputAxis2DInput *)v15 isEqualToInput:v16])
  {
    v17 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _x];
    v18 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _x];
    if ([(_GCDevicePhysicalInputAxisInput *)v17 isEqualToInput:v18])
    {
      v19 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _y];
      v20 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _y];
      if ([(_GCDevicePhysicalInputAxisInput *)v19 isEqualToInput:v20])
      {
        v21 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _up];
        v22 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _up];
        v31 = v21;
        v23 = v21;
        v24 = v22;
        if ([(_GCDevicePhysicalInputPressInput *)v23 isEqualToInput:v22])
        {
          v30 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _down];
          v29 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _down];
          if ([(_GCDevicePhysicalInputPressInput *)v30 isEqualToInput:v29])
          {
            v28 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _left];
            v27 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _left];
            if ([(_GCDevicePhysicalInputPressInput *)v28 isEqualToInput:v27])
            {
              v26 = [(_GCDevicePhysicalInputDirectionPadElement *)a1 _right];
              v25 = [(_GCDevicePhysicalInputDirectionPadElement *)a2 _right];
              v14 = [(_GCDevicePhysicalInputPressInput *)v26 isEqualToInput:v25];
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  *a3 = v14;
}

@end
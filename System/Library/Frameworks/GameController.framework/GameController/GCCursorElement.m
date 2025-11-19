@interface GCCursorElement
+ (unsigned)updateContextSize;
- (BOOL)_setPositionDidChangeHandler:(id)a3;
- (BOOL)update:(void *)a3 forMouseEvent:(id *)a4 withTimestamp:(double)a5;
- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5;
- (GCCursorElement)initWithTemplate:(id)a3 context:(id)a4;
- (double)_positionDelta;
- (id)_positionDidChangeHandler;
- (uint64_t)_setPositionDelta:(double)a3;
- (void)postCommit:(const void *)a3 sender:(id)a4;
- (void)preCommit:(const void *)a3 sender:(id)a4;
@end

@implementation GCCursorElement

- (GCCursorElement)initWithTemplate:(id)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = GCCursorElement;
  v5 = a4;
  v6 = a3;
  v7 = [(_GCDevicePhysicalInputElement *)&v10 initWithTemplate:v6 context:v5];
  v7->_positionChangedHandlerSlot = [v5 view:v7 allocatePrimitiveSlot:2 withCopyOfValueFromView:v6 slot:{v6[7], v10.receiver, v10.super_class}];
  v7->_xDeltaSlot = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[8]];
  v8 = [v5 view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:v6 slot:v6[9]];

  v7->_yDeltaSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___GCCursorElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)a3 forUsages:(unint64_t)a4 with:(id)a5
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = GCCursorElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v10;
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        return v9;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  v12 = [(GCCursorElement *)a5 _positionDidChangeHandler];
  v13 = [(GCCursorElement *)self _setPositionDidChangeHandler:v12];
  *(a3 + v10) = *(a3 + v10) & 0xFE | v13;
  v9 |= v13;

  if ((v6 & 8) == 0)
  {
    return v9;
  }

LABEL_7:
  v14 = [(GCCursorElement *)a5 _positionDelta];
  v16 = [(GCCursorElement *)self _setPositionDelta:v14, v15];
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  *(a3 + v10) = *(a3 + v10) & 0xFD | v17;
  v9 |= v16;
  return v9;
}

- (void)preCommit:(const void *)a3 sender:(id)a4
{
  v7.receiver = self;
  v7.super_class = GCCursorElement;
  [(_GCDevicePhysicalInputElement *)&v7 preCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v6;
  }

  if (*(a3 + v6))
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    if ((*(a3 + v6) & 2) == 0)
    {
      return;
    }
  }

  else if ((*(a3 + v6) & 2) == 0)
  {
    return;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)a3 sender:(id)a4
{
  v7.receiver = self;
  v7.super_class = GCCursorElement;
  [(_GCDevicePhysicalInputElement *)&v7 postCommit:a3 sender:a4];
  v6 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v6;
  }

  if (*(a3 + v6))
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    if ((*(a3 + v6) & 2) == 0)
    {
      return;
    }
  }

  else if ((*(a3 + v6) & 2) == 0)
  {
    return;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(a3 + v6) & 2) != 0)
  {
    [GCCursorElement postCommit:? sender:?];
  }
}

- (BOOL)_setPositionDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v4 forSlot:&self->_positionChangedHandlerSlot policy:771];

  return self;
}

- (BOOL)update:(void *)a3 forMouseEvent:(id *)a4 withTimestamp:(double)a5
{
  v12.receiver = self;
  v12.super_class = GCCursorElement;
  v11 = *a4;
  v8 = [(_GCDevicePhysicalInputElement *)&v12 update:a3 forMouseEvent:&v11 withTimestamp:a5];
  v9 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v9 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v9;
  }

  if (a4->var1 == 1 && [(GCCursorElement *)self _setPositionDelta:a4->var2.var0.var1])
  {
    *(a3 + v9) |= 2u;
    return 1;
  }

  return v8;
}

- (id)_positionDidChangeHandler
{
  if (a1)
  {
    a1 = [(_GCDevicePhysicalInputView *)a1 _objectValueForSlot:?];
    v1 = vars8;
  }

  return a1;
}

- (double)_positionDelta
{
  if (a1)
  {
    v2 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
    [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
  }

  else
  {
    v2 = 0;
  }

  return *&v2;
}

- (uint64_t)_setPositionDelta:(double)a3
{
  if (result)
  {
    v4 = result;
    if (([(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:result + 64 forSlot:?]& 1) != 0)
    {
      return 1;
    }

    else
    {

      return [(_GCDevicePhysicalInputView *)v4 _testAndSetPrimitiveValue:v4 + 72 forSlot:?];
    }
  }

  return result;
}

- (void)postCommit:(void *)a1 sender:.cold.1(void *a1)
{
  v2 = [(GCCursorElement *)a1 _positionDidChangeHandler];
  if (v2)
  {
    v3 = [(GCCursorElement *)a1 _positionDelta];
    (v2)[2](v2, a1, a1, v3);
  }
}

@end
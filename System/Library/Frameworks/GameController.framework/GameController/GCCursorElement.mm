@interface GCCursorElement
+ (unsigned)updateContextSize;
- (BOOL)_setPositionDidChangeHandler:(id)handler;
- (BOOL)update:(void *)update forMouseEvent:(id *)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCCursorElement)initWithTemplate:(id)template context:(id)context;
- (double)_positionDelta;
- (id)_positionDidChangeHandler;
- (uint64_t)_setPositionDelta:(double)delta;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation GCCursorElement

- (GCCursorElement)initWithTemplate:(id)template context:(id)context
{
  v10.receiver = self;
  v10.super_class = GCCursorElement;
  contextCopy = context;
  templateCopy = template;
  v7 = [(_GCDevicePhysicalInputElement *)&v10 initWithTemplate:templateCopy context:contextCopy];
  v7->_positionChangedHandlerSlot = [contextCopy view:v7 allocatePrimitiveSlot:2 withCopyOfValueFromView:templateCopy slot:{templateCopy[7], v10.receiver, v10.super_class}];
  v7->_xDeltaSlot = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  v8 = [contextCopy view:v7 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];

  v7->_yDeltaSlot = v8;
  return v7;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___GCCursorElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 1;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v18.receiver = self;
  v18.super_class = GCCursorElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  v10 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v10;
    if ((usagesCopy & 4) == 0)
    {
LABEL_3:
      if ((usagesCopy & 8) == 0)
      {
        return v9;
      }

      goto LABEL_7;
    }
  }

  else if ((usagesCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  _positionDidChangeHandler = [(GCCursorElement *)with _positionDidChangeHandler];
  v13 = [(GCCursorElement *)self _setPositionDidChangeHandler:_positionDidChangeHandler];
  *(update + v10) = *(update + v10) & 0xFE | v13;
  v9 |= v13;

  if ((usagesCopy & 8) == 0)
  {
    return v9;
  }

LABEL_7:
  _positionDelta = [(GCCursorElement *)with _positionDelta];
  v16 = [(GCCursorElement *)self _setPositionDelta:_positionDelta, v15];
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  *(update + v10) = *(update + v10) & 0xFD | v17;
  v9 |= v16;
  return v9;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = GCCursorElement;
  [(_GCDevicePhysicalInputElement *)&v7 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v6;
  }

  if (*(commit + v6))
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    if ((*(commit + v6) & 2) == 0)
    {
      return;
    }
  }

  else if ((*(commit + v6) & 2) == 0)
  {
    return;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v7.receiver = self;
  v7.super_class = GCCursorElement;
  [(_GCDevicePhysicalInputElement *)&v7 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v6;
  }

  if (*(commit + v6))
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    if ((*(commit + v6) & 2) == 0)
    {
      return;
    }
  }

  else if ((*(commit + v6) & 2) == 0)
  {
    return;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  if ((*(commit + v6) & 2) != 0)
  {
    [GCCursorElement postCommit:? sender:?];
  }
}

- (BOOL)_setPositionDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  LOBYTE(self) = [(_GCDevicePhysicalInputView *)self _testAndSetObjectValue:v4 forSlot:&self->_positionChangedHandlerSlot policy:771];

  return self;
}

- (BOOL)update:(void *)update forMouseEvent:(id *)event withTimestamp:(double)timestamp
{
  v12.receiver = self;
  v12.super_class = GCCursorElement;
  v11 = *event;
  v8 = [(_GCDevicePhysicalInputElement *)&v12 update:update forMouseEvent:&v11 withTimestamp:timestamp];
  v9 = MyUpdateContext_Offset_13;
  if (MyUpdateContext_Offset_13 == -1)
  {
    v9 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_13 = v9;
  }

  if (event->var1 == 1 && [(GCCursorElement *)self _setPositionDelta:event->var2.var0.var1])
  {
    *(update + v9) |= 2u;
    return 1;
  }

  return v8;
}

- (id)_positionDidChangeHandler
{
  if (self)
  {
    self = [(_GCDevicePhysicalInputView *)self _objectValueForSlot:?];
    v1 = vars8;
  }

  return self;
}

- (double)_positionDelta
{
  if (self)
  {
    v2 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
    [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  }

  else
  {
    v2 = 0;
  }

  return *&v2;
}

- (uint64_t)_setPositionDelta:(double)delta
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
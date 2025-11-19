@interface _GCDevicePhysicalInputMutableStateTable
- (_WORD)initWithMagic:(void *)a1;
- (id)allocatePrimitiveSlot;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)allocateObjectSlot;
- (void)dealloc;
@end

@implementation _GCDevicePhysicalInputMutableStateTable

- (void)dealloc
{
  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount])
  {
    v3 = 0;
    do
    {
      [(_GCDevicePhysicalInputMutableStateTable *)self setObjectValue:0 atIndex:v3 policy:0];
      v3 = (v3 + 1);
    }

    while (v3 < [(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]);
  }

  v4.receiver = self;
  v4.super_class = _GCDevicePhysicalInputMutableStateTable;
  [(_GCDevicePhysicalInputMutableStateTable *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_GCDevicePhysicalInputStateTable stateTableWithMagic:[(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount] primitiveSlotCount:[(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount] objectSlotCount:?];
  if ([(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount])
  {
    v5 = 0;
    do
    {
      [v4 setPrimitiveValue:-[_GCDevicePhysicalInputMutableStateTable primitiveValueAtIndex:](self atIndex:{"primitiveValueAtIndex:", v5), v5}];
      v5 = (v5 + 1);
    }

    while (v5 < [(_GCDevicePhysicalInputMutableStateTable *)self primitiveSlotCount]);
  }

  if ([(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount])
  {
    v6 = 0;
    do
    {
      [v4 setObjectValue:-[_GCDevicePhysicalInputMutableStateTable objectValueAtIndex:](self atIndex:"objectValueAtIndex:" policy:{v6), v6, -[NSPointerArray pointerAtIndex:](self->_objectPolicyState, "pointerAtIndex:", v6)}];
      ++v6;
    }

    while (v6 < [(_GCDevicePhysicalInputMutableStateTable *)self objectSlotCount]);
  }

  return v4;
}

- (uint64_t)allocateObjectSlot
{
  [*(a1 + 32) addPointer:0];
  v2 = *(a1 + 24);

  return [v2 addPointer:0];
}

- (_WORD)initWithMagic:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = _GCDevicePhysicalInputMutableStateTable;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  v3[4] = a2;
  *(v3 + 2) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  *(v3 + 3) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  *(v3 + 4) = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
  return v3;
}

- (id)allocatePrimitiveSlot
{
  if (result)
  {
    v1 = result;
    v2 = [result primitiveSlotCount];
    [v1[2] addPointer:0];
    return v2;
  }

  return result;
}

@end
@interface _GCDevicePhysicalInputStateTable
+ (_DWORD)stateTableWithCopyOfStateTable:(uint64_t)a1;
+ (_DWORD)stateTableWithMagic:(unsigned int)a3 primitiveSlotCount:(unsigned int)a4 objectSlotCount:;
- (BOOL)testAndSetObjectValue:(id)a3 atIndex:(unsigned int)a4 policy:(unint64_t)a5 compareObjects:(BOOL)a6 previous:(id *)a7;
- (BOOL)testAndSetPrimitiveValue:(unint64_t)a3 atIndex:(unsigned int)a4 previous:(unint64_t *)a5;
- (_GCDevicePhysicalInputStateTable)init;
- (id)objectValueAtIndex:(unsigned int)a3;
- (uint64_t)generation;
- (unint64_t)primitiveValueAtIndex:(unsigned int)a3;
- (void)dealloc;
- (void)setObjectValue:(id)a3 atIndex:(unsigned int)a4 policy:(unint64_t)a5;
- (void)setPrimitiveValue:(unint64_t)a3 atIndex:(unsigned int)a4;
- (void)updateStateTableWithContentsOf:(uint64_t)a1;
@end

@implementation _GCDevicePhysicalInputStateTable

+ (_DWORD)stateTableWithMagic:(unsigned int)a3 primitiveSlotCount:(unsigned int)a4 objectSlotCount:
{
  objc_opt_self();
  v7 = objc_opt_class();
  Instance = class_createInstance(v7, 16 * a4 + 8 * a3);
  Instance[2] = 0;
  *(Instance + 6) = a2;
  *(Instance + 2) = 1;
  Instance[8] = a3;
  *(Instance + 5) = object_getIndexedIvars(Instance);
  *(Instance + 3) = 1;
  Instance[9] = a4;
  *(Instance + 6) = object_getIndexedIvars(Instance) + 8 * a3;

  return Instance;
}

+ (_DWORD)stateTableWithCopyOfStateTable:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (!a2)
  {
    [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:v3];
  }

  v4 = [_GCDevicePhysicalInputStateTable stateTableWithMagic:*(a2 + 32) primitiveSlotCount:*(a2 + 36) objectSlotCount:?];
  [(_GCDevicePhysicalInputStateTable *)v4 updateStateTableWithContentsOf:a2];
  return v4;
}

- (_GCDevicePhysicalInputStateTable)init
{
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputStateTable;
  result = [(_GCDevicePhysicalInputStateTable *)&v3 init];
  result->_stateLock._os_unfair_lock_opaque = 0;
  result->_magic = -1;
  return result;
}

- (void)dealloc
{
  objectSlotCount = self->_objectSlotCount;
  if (objectSlotCount)
  {
    v4 = 0;
    for (i = 0; i < objectSlotCount; ++i)
    {
      v6 = &self->_objectState[v4];
      if (v6->var0)
      {

        objectSlotCount = self->_objectSlotCount;
      }

      v6->var1 = 0;
      ++v4;
    }
  }

  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputStateTable;
  [(_GCDevicePhysicalInputStateTable *)&v7 dealloc];
}

- (unint64_t)primitiveValueAtIndex:(unsigned int)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_primitiveSlotCount <= a3)
  {
    [_GCDevicePhysicalInputStateTable primitiveValueAtIndex:];
  }

  var0 = self->_primitiveState[a3].var0;
  os_unfair_lock_unlock(&self->_stateLock);
  return var0;
}

- (void)setPrimitiveValue:(unint64_t)a3 atIndex:(unsigned int)a4
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_primitiveSlotCount <= a4)
  {
    [_GCDevicePhysicalInputStateTable setPrimitiveValue:atIndex:];
  }

  self->_primitiveState[a4].var0 = a3;
  ++self->_primitiveStateGeneration;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)testAndSetPrimitiveValue:(unint64_t)a3 atIndex:(unsigned int)a4 previous:(unint64_t *)a5
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_primitiveSlotCount <= a4)
  {
    [_GCDevicePhysicalInputStateTable testAndSetPrimitiveValue:atIndex:previous:];
  }

  primitiveState = self->_primitiveState;
  var0 = primitiveState[a4].var0;
  if (var0 != a3)
  {
    if (a5)
    {
      *a5 = var0;
    }

    primitiveState[a4].var0 = a3;
    ++self->_primitiveStateGeneration;
  }

  v11 = var0 != a3;
  os_unfair_lock_unlock(&self->_stateLock);
  return v11;
}

- (id)objectValueAtIndex:(unsigned int)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_objectSlotCount <= a3)
  {
    [_GCDevicePhysicalInputStateTable objectValueAtIndex:];
  }

  v5 = self->_objectState[a3].var1;
  os_unfair_lock_unlock(&self->_stateLock);

  return v5;
}

- (void)setObjectValue:(id)a3 atIndex:(unsigned int)a4 policy:(unint64_t)a5
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_objectSlotCount <= a4)
  {
    [_GCDevicePhysicalInputStateTable setObjectValue:atIndex:policy:];
  }

  objectState = self->_objectState;
  v10 = a4;
  v11 = &objectState[a4];
  if (v11->var0)
  {

    objectState = self->_objectState;
  }

  v11->var1 = 0;
  if (a5 <= 2)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (a5 != 3 && a5 != 771)
  {
LABEL_9:
    v12 = a3;
    goto LABEL_10;
  }

  v12 = [a3 copyWithZone:0];
LABEL_10:
  a3 = v12;
LABEL_11:
  objectState[v10].var1 = a3;
  self->_objectState[v10].var0 = a5;
  ++self->_objectStateGeneration;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)testAndSetObjectValue:(id)a3 atIndex:(unsigned int)a4 policy:(unint64_t)a5 compareObjects:(BOOL)a6 previous:(id *)a7
{
  v8 = a6;
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_objectSlotCount <= a4)
  {
    [_GCDevicePhysicalInputStateTable testAndSetObjectValue:atIndex:policy:compareObjects:previous:];
  }

  v13 = &self->_objectState[a4];
  var1 = v13->var1;
  if (v8)
  {
    if (var1 == a3 || ([a3 isEqual:v13->var1] & 1) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    if (a7)
    {
      *a7 = var1;
    }

    objectState = self->_objectState;
    v17 = &objectState[a4];
    if (v17->var0)
    {

      objectState = self->_objectState;
    }

    v17->var1 = 0;
    if (a5 <= 2)
    {
      if (!a5)
      {
LABEL_18:
        objectState[a4].var1 = a3;
        self->_objectState[a4].var0 = a5;
        ++self->_objectStateGeneration;
        v15 = 1;
        goto LABEL_19;
      }
    }

    else if (a5 == 3 || a5 == 771)
    {
      v18 = [a3 copyWithZone:0];
LABEL_17:
      a3 = v18;
      goto LABEL_18;
    }

    v18 = a3;
    goto LABEL_17;
  }

  if (var1 != a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = 0;
LABEL_19:
  os_unfair_lock_unlock(&self->_stateLock);
  return v15;
}

- (void)updateStateTableWithContentsOf:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_15();
    [v18 handleFailureInMethod:a1 object:a2 file:? lineNumber:? description:?];
  }

  os_unfair_lock_lock_with_options();
  os_unfair_lock_lock_with_options();
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_15();
    [v19 handleFailureInMethod:a1 object:a2 file:? lineNumber:? description:?];
    v4 = *(a2 + 16);
    v5 = *(a1 + 16);
  }

  if (v4 > v5)
  {
    v6 = *(a1 + 32);
    if (v6 != *(a2 + 32))
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_15();
      [v21 handleFailureInMethod:a1 object:a2 file:? lineNumber:? description:?];
      v6 = *(a1 + 32);
    }

    memcpy(*(a1 + 40), *(a2 + 40), 8 * v6);
    *(a1 + 16) = *(a2 + 16);
  }

  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  if (v7 < v8)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    OUTLINED_FUNCTION_0_15();
    [v20 handleFailureInMethod:a1 object:a2 file:? lineNumber:? description:?];
    v7 = *(a2 + 24);
    v8 = *(a1 + 24);
  }

  if (v7 > v8)
  {
    v9 = *(a1 + 36);
    if (v9 == *(a2 + 36))
    {
      if (*(a1 + 36))
      {
        goto LABEL_15;
      }
    }

    else
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_15();
      [v22 handleFailureInMethod:a1 object:a2 file:? lineNumber:? description:?];
      v9 = *(a1 + 36);
      if (*(a1 + 36))
      {
LABEL_15:
        v10 = 0;
        v11 = 0;
        v12 = *(a1 + 48);
        v13 = *(a2 + 48);
        do
        {
          v14 = v12 + v10;
          v16 = *(v12 + v10);
          v15 = *(v12 + v10 + 8);
          if (v15 != *(v13 + v10 + 8) || v16 != *(v13 + v10))
          {
            if (v16)
            {

              v13 = *(a2 + 48);
            }

            *(v14 + 8) = 0;
            if (*(v13 + v10))
            {
              v17 = *(v13 + v10 + 8);
              v12 = *(a1 + 48);
              *(v12 + v10 + 8) = v17;
              v13 = *(a2 + 48);
            }

            else
            {
              v12 = *(a1 + 48);
              *(v12 + v10 + 8) = *(v13 + v10 + 8);
            }

            *(v12 + v10) = *(v13 + v10);
            v9 = *(a1 + 36);
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }
    }

    *(a1 + 24) = *(a2 + 24);
  }

  os_unfair_lock_unlock((a2 + 8));

  os_unfair_lock_unlock((a1 + 8));
}

- (uint64_t)generation
{
  if (result)
  {
    if (*(result + 16) <= *(result + 24))
    {
      return *(result + 24);
    }

    else
    {
      return *(result + 16);
    }
  }

  return result;
}

- (void)primitiveValueAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

- (void)setPrimitiveValue:atIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

- (void)testAndSetPrimitiveValue:atIndex:previous:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

- (void)objectValueAtIndex:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

- (void)setObjectValue:atIndex:policy:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

- (void)testAndSetObjectValue:atIndex:policy:compareObjects:previous:.cold.1()
{
  OUTLINED_FUNCTION_0_5();
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")], v0, *v3);
  __break(1u);
}

@end
@interface _GCDevicePhysicalInputTransaction
+ (uint64_t)transactionWithImplementation:(uint64_t)a3 configuration:(uint64_t)a4 state:;
- (_GCDevicePhysicalInputChangedElementsEnumerator)changedElements;
- (id)description;
- (id)physicalInput;
- (uint64_t)invalidateAllUpdateContexts;
- (uint64_t)mutableUpdateContextForElementAtIndex:(uint64_t)a3 withHandler:;
- (uint64_t)setLastEventHostTimestamp:(uint64_t)result;
- (uint64_t)updateContextForElementAtIndex:(void *)a3 size:(int)a4 onlyIfChanged:;
- (uint64_t)updateContextIsValidForElementAtIndex:(uint64_t)a1;
- (void)dealloc;
- (void)detach;
@end

@implementation _GCDevicePhysicalInputTransaction

+ (uint64_t)transactionWithImplementation:(uint64_t)a3 configuration:(uint64_t)a4 state:
{
  v7 = objc_opt_self();
  v8 = [_GCDevicePhysicalInputInitializationContext alloc];
  v9 = [(_GCDevicePhysicalInputBase *)a2 viewProperties];
  v10 = [(_GCDevicePhysicalInputInitializationContext *)v8 initWithViewConfiguration:a3 viewProperties:v9 viewState:a4];
  v11 = [(_GCDevicePhysicalInputBase *)a2 elements];
  v12 = malloc_type_calloc([v11 count], 8uLL, 0x100004000313F17uLL);
  if ([v11 count])
  {
    v13 = 0;
    v14 = 0;
    v15 = v12 + 7;
    while (1)
    {
      [v11 objectAtIndexedSubscript:v13];
      result = [objc_opt_class() updateContextSize];
      if (result >= 8)
      {
        *v15 |= 0x80u;
        *(v15 - 7) = v14;
        v14 += result;
        if (HIDWORD(v14))
        {
          break;
        }
      }

      ++v13;
      v15 += 8;
      if (v13 >= [v11 count])
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = 0;
LABEL_8:
    Instance = class_createInstance(v7, v14 + 8 * [v11 count]);
    v18 = [(_GCDevicePhysicalInputBase *)a2 facade];
    v19 = [Instance _initWithFacadeTemplate:v18 elementsTemplates:v11 attributes:-[_GCDevicePhysicalInputBase attributes](a2) context:v10];
    [(_GCDevicePhysicalInputBase *)v19 setDevice:[(_GCDevicePhysicalInputBase *)a2 device]];
    v19->_physicalInput = a2;
    v19->_lastEventHostTimestamp = [(_GCDevicePhysicalInputBase *)a2 lastEventHostTimestamp];
    v20 = [_GCDevicePhysicalInputChangedElementsEnumerator alloc];
    v19->_changedElements = v20;
    v20->_implementation = v19;
    IndexedIvars = object_getIndexedIvars(v19);
    memcpy(IndexedIvars, v12, 8 * [v11 count]);
    free(v12);

    return v19;
  }

  return result;
}

- (void)dealloc
{
  self->_physicalInput = 0;
  changedElements = self->_changedElements;
  if (_objc_rootRetainCount() != 1)
  {
    [_GCDevicePhysicalInputTransaction dealloc];
  }

  v4 = self->_changedElements;
  _objc_rootRelease();
  self->_changedElements = 0;
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInputTransaction;
  [(_GCDevicePhysicalInputBase *)&v5 dealloc];
}

- (id)physicalInput
{
  objc_sync_enter(self);
  v3 = self->_physicalInput;
  objc_sync_exit(self);
  return v3;
}

- (id)description
{
  if ([(_GCDevicePhysicalInputTransaction *)self retainCount]<= 1)
  {
    v3 = &stru_1F4E3B4E0;
  }

  else
  {
    v3 = @" (captured)";
  }

  if (self->_physicalInput)
  {
    v4 = &stru_1F4E3B4E0;
  }

  else
  {
    v4 = @" (detached)";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@ %p;%@%@>", NSStringFromClass(v6), self, v3, v4];
}

- (uint64_t)updateContextForElementAtIndex:(void *)a3 size:(int)a4 onlyIfChanged:
{
  if (!a1)
  {
    return 0;
  }

  if ([-[_GCDevicePhysicalInputBase elements](a1) count] <= a2)
  {
    [_GCDevicePhysicalInputTransaction updateContextForElementAtIndex:a1 size:a2 onlyIfChanged:?];
  }

  IndexedIvars = object_getIndexedIvars(a1);
  v9 = &IndexedIvars[8 * a2];
  v10 = v9[7];
  if (a4)
  {
    if ((v9[7] & 0x40) == 0)
    {
      return 0;
    }
  }

  if (v9[7] < 0)
  {
    v11 = [-[_GCDevicePhysicalInputBase elements](a1) count];
    if (a3)
    {
      *a3 = *(v9 + 2);
    }

    return &IndexedIvars[8 * v11 + *v9];
  }

  else if (a3)
  {
    *a3 = 7;
  }

  return v9;
}

- (uint64_t)mutableUpdateContextForElementAtIndex:(uint64_t)a3 withHandler:
{
  if (result)
  {
    v5 = result;
    if ([-[_GCDevicePhysicalInputBase elements](result) count] <= a2)
    {
      [_GCDevicePhysicalInputTransaction mutableUpdateContextForElementAtIndex:v5 withHandler:a2];
    }

    return [(_GCDevicePhysicalInputTransaction *)v5 mutableUpdateContextForElementAtIndex:a2 withHandler:a3];
  }

  return result;
}

- (void)detach
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(result);
    v1[14] = 0;

    return objc_sync_exit(v1);
  }

  return result;
}

- (_GCDevicePhysicalInputChangedElementsEnumerator)changedElements
{
  if (result)
  {
    v1 = result;
    if (LOBYTE(result[5]._currentIndex))
    {
      implementation = result[5]._implementation;
      if (_objc_rootRetainCount() == 1)
      {
        v1[5]._implementation->super._dataSource = 0;
        return v1[5]._implementation;
      }

      else
      {
        v3 = [_GCDevicePhysicalInputChangedElementsEnumerator alloc];
        v3->_implementation = v1;

        return v3;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)updateContextIsValidForElementAtIndex:(uint64_t)a1
{
  if (a1)
  {
    v1 = *(a1 + 136);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)invalidateAllUpdateContexts
{
  if (result)
  {
    *(result + 136) = 0;
  }

  return result;
}

- (uint64_t)setLastEventHostTimestamp:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)mutableUpdateContextForElementAtIndex:(uint64_t)a3 withHandler:.cold.2(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  IndexedIvars = object_getIndexedIvars(a1);
  v7 = &IndexedIvars[8 * a2];
  if (v7[7] < 0)
  {
    v11 = IndexedIvars;
    v12 = [-[_GCDevicePhysicalInputBase elements](a1) count];
    result = (*(a3 + 16))(a3, &v11[8 * v12 + *v7], *(v7 + 2));
    if (result)
    {
      v13 = 64;
    }

    else
    {
      v13 = 0;
    }

    v10 = v7[7] & 0xBF | v13;
  }

  else
  {
    *(v14 + 3) = 0;
    v14[0] = 0;
    result = (*(a3 + 16))(a3, v14, 7);
    if (result)
    {
      v9 = v14[0];
      *(v7 + 3) = *(v14 + 3);
      *v7 = v9;
      v10 = v7[7] | 0x40;
    }

    else
    {
      *(v7 + 3) = 0;
      *v7 = 0;
      v10 = v7[7] & 0xBF;
    }
  }

  v7[7] = v10;
  a1[136] = 1;
  return result;
}

@end
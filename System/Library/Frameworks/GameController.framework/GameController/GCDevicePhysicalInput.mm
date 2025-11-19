@interface GCDevicePhysicalInput
@end

@implementation GCDevicePhysicalInput

uint64_t __60___GCDevicePhysicalInput_EventHandling__handleGamepadEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  obj = [(_GCDevicePhysicalInputBase *)a2 elements];
  v4 = [*(a1 + 32) timestamp];
  v16 = v4;
  if (GCCurrentProcessLinkedOnAfter(0x7E90100FFFFFFFFuLL))
  {
    v5 = GCNSTimeIntervalFromMachAbsoluteTime(v4);
  }

  else
  {
    v5 = v4;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v8 = v11 + 1;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60___GCDevicePhysicalInput_EventHandling__handleGamepadEvent___block_invoke_2;
        v18[3] = &unk_1E841AE58;
        v13 = *(a1 + 32);
        v18[4] = v12;
        v18[5] = v13;
        *&v18[6] = v5;
        [(_GCDevicePhysicalInputTransaction *)a2 mutableUpdateContextForElementAtIndex:v11 withHandler:v18];
        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __58___GCDevicePhysicalInput_EventHandling__handleMouseEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  obj = [(_GCDevicePhysicalInputBase *)a2 elements];
  v6 = *(a1 + 32);
  v4 = (a1 + 32);
  v5 = v6;
  v17 = v6;
  if (GCCurrentProcessLinkedOnAfter(0x7E90100FFFFFFFFuLL))
  {
    v7 = GCNSTimeIntervalFromMachAbsoluteTime(v5);
  }

  else
  {
    v7 = v5;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v12);
        v10 = v13 + 1;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __58___GCDevicePhysicalInput_EventHandling__handleMouseEvent___block_invoke_2;
        v19[3] = &unk_1E841AEA8;
        v19[4] = v14;
        v20 = *v4;
        v21 = *(v4 + 2);
        v22 = v7;
        [(_GCDevicePhysicalInputTransaction *)a2 mutableUpdateContextForElementAtIndex:v13 withHandler:v19];
        ++v12;
        ++v13;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __58___GCDevicePhysicalInput_EventHandling__handleMouseEvent___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return [v2 update:a2 forMouseEvent:&v5 withTimestamp:v3];
}

uint64_t __63___GCDevicePhysicalInput_EventHandling__handleCollectionEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  obj = [(_GCDevicePhysicalInputBase *)a2 elements];
  v4 = [*(a1 + 32) timestamp];
  v16 = v4;
  if (GCCurrentProcessLinkedOnAfter(0x7E90100FFFFFFFFuLL))
  {
    v5 = GCNSTimeIntervalFromMachAbsoluteTime(v4);
  }

  else
  {
    v5 = v4;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v20;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v8 = v11 + 1;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __63___GCDevicePhysicalInput_EventHandling__handleCollectionEvent___block_invoke_2;
        v18[3] = &unk_1E841AE58;
        v13 = *(a1 + 32);
        v18[4] = v12;
        v18[5] = v13;
        *&v18[6] = v5;
        [(_GCDevicePhysicalInputTransaction *)a2 mutableUpdateContextForElementAtIndex:v11 withHandler:v18];
        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v16;
}

@end
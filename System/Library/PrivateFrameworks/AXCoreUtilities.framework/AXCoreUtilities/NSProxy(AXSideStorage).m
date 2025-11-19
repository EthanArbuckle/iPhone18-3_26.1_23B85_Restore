@interface NSProxy(AXSideStorage)
- (id)_accessibilityValueForKey:()AXSideStorage;
- (id)_axDictionaryQueue;
- (uint64_t)_accessibilityBoolValueForKey:()AXSideStorage;
- (uint64_t)_accessibilityIntegerValueForKey:()AXSideStorage;
- (uint64_t)_accessibilityUnsignedIntegerValueForKey:()AXSideStorage;
- (void)_accessibilitySetAssignedValue:()AXSideStorage forKey:;
- (void)_accessibilitySetBoolValue:()AXSideStorage forKey:;
- (void)_accessibilitySetIntegerValue:()AXSideStorage forKey:;
- (void)_accessibilitySetUnsignedIntegerValue:()AXSideStorage forKey:;
- (void)_accessibilitySetValue:()AXSideStorage forKey:storageMode:;
@end

@implementation NSProxy(AXSideStorage)

- (id)_axDictionaryQueue
{
  if (_axDictionaryQueue_onceToken != -1)
  {
    [NSProxy(AXSideStorage) _axDictionaryQueue];
  }

  v1 = _axDictionaryQueue__sDictionaryQueue;

  return v1;
}

- (id)_accessibilityValueForKey:()AXSideStorage
{
  v4 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v18 = 0;
    v5 = [a1 _axDictionaryQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__NSProxy_AXSideStorage___accessibilityValueForKey___block_invoke;
    v12[3] = &unk_1E735B758;
    v12[4] = a1;
    v12[5] = &v13;
    dispatch_sync(v5, v12);

    v6 = v14[5];
    objc_sync_enter(v6);
    v7 = [v14[5] objectForKey:v4];
    objc_sync_exit(v6);

    if ([v7 _axIsWrappedPointer])
    {
      v8 = [v7 nonretainedObjectValue];
    }

    else
    {
      v8 = v7;
    }

    v10 = v8;

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v9 = AXLogValidations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NSProxy(AXSideStorage) *)a1 _accessibilityValueForKey:v9];
    }

    v10 = 0;
  }

  return v10;
}

- (uint64_t)_accessibilityBoolValueForKey:()AXSideStorage
{
  v1 = [a1 _accessibilityValueForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (uint64_t)_accessibilityIntegerValueForKey:()AXSideStorage
{
  v1 = [a1 _accessibilityValueForKey:?];
  v2 = [v1 integerValue];

  return v2;
}

- (uint64_t)_accessibilityUnsignedIntegerValueForKey:()AXSideStorage
{
  v1 = [a1 _accessibilityValueForKey:?];
  v2 = [v1 unsignedIntegerValue];

  return v2;
}

- (void)_accessibilitySetValue:()AXSideStorage forKey:storageMode:
{
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v27 = 0;
    v10 = [a1 _axDictionaryQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NSProxy_AXSideStorage___accessibilitySetValue_forKey_storageMode___block_invoke;
    block[3] = &unk_1E735B780;
    v21 = &v22;
    block[4] = a1;
    v11 = v8;
    v20 = v11;
    dispatch_sync(v10, block);

    v12 = v23[5];
    if (v11)
    {
      v13 = v12;
      objc_sync_enter(v13);
      switch(a5)
      {
        case 0:
LABEL_8:
          [v23[5] setObject:v11 forKeyedSubscript:v9];
          break;
        case 1:
          v18 = [v11 copy];
          [v23[5] setObject:v18 forKeyedSubscript:v9];

          break;
        case 2:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            _AXAssert(0, "/Library/Caches/com.apple.xbs/Sources/AccessibilityLibraries/Source/AXCoreUtilities/source/Swizzling/AXSideStorage_Implementation.m", 0x6F, "[NSProxy(AXSideStorage) _accessibilitySetValue:forKey:storageMode:]", @"value is not a wrapper class: %@", v14, v15, v16, v11);
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (!v12)
      {
LABEL_16:

        _Block_object_dispose(&v22, 8);
        goto LABEL_17;
      }

      v13 = v12;
      objc_sync_enter(v13);
      [v23[5] removeObjectForKey:v9];
    }

    objc_sync_exit(v13);

    goto LABEL_16;
  }

  v17 = AXLogValidations();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [NSProxy(AXSideStorage) _accessibilitySetValue:v8 forKey:a1 storageMode:v17];
  }

LABEL_17:
}

- (void)_accessibilitySetBoolValue:()AXSideStorage forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:a3];
  [a1 _accessibilitySetRetainedValue:v8 forKey:v7];
}

- (void)_accessibilitySetIntegerValue:()AXSideStorage forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [[v6 alloc] initWithInteger:a3];
  [a1 _accessibilitySetRetainedValue:v8 forKey:v7];
}

- (void)_accessibilitySetUnsignedIntegerValue:()AXSideStorage forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [[v6 alloc] initWithUnsignedInteger:a3];
  [a1 _accessibilitySetRetainedValue:v8 forKey:v7];
}

- (void)_accessibilitySetAssignedValue:()AXSideStorage forKey:
{
  v6 = MEMORY[0x1E696B098];
  v7 = a4;
  v8 = [v6 valueWithNonretainedObject:a3];
  [v8 _axSetIsWrappedPointer:1];
  [a1 _accessibilitySetValue:v8 forKey:v7 storageMode:2];
}

- (void)_accessibilityValueForKey:()AXSideStorage .cold.1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_19159B000, a2, OS_LOG_TYPE_ERROR, "AX Storage Error: Attempting to access a value with a nil key. Self:%{public}@.\nBacktrace:\n%{public}@.", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_accessibilitySetValue:()AXSideStorage forKey:storageMode:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AF00] callStackSymbols];
  v8 = 134218498;
  v9 = a1;
  v10 = 2114;
  v11 = a2;
  v12 = 2114;
  v13 = v6;
  _os_log_error_impl(&dword_19159B000, a3, OS_LOG_TYPE_ERROR, "AX Storage Error: Attempting to store a value with a nil key. Value:%p.\nSelf:%{public}@.\nBacktrace:\n%{public}@.", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end
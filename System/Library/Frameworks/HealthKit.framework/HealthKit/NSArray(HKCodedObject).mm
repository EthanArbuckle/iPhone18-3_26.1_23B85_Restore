@interface NSArray(HKCodedObject)
+ (uint64_t)indexableKeyPathsWithPrefix:()HKCodedObject;
- (BOOL)applyConcepts:()HKCodedObject forKeyPath:error:;
- (id)codingsForKeyPath:()HKCodedObject error:;
@end

@implementation NSArray(HKCodedObject)

+ (uint64_t)indexableKeyPathsWithPrefix:()HKCodedObject
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+HKCodedObject.m" lineNumber:20 description:@"Indexing by key-path is not supported for NSArray"];

  return MEMORY[0x1E695E0F0];
}

- (id)codingsForKeyPath:()HKCodedObject error:
{
  v7 = a3;
  if (!v7)
  {
    [NSArray(HKCodedObject) codingsForKeyPath:a2 error:self];
  }

  if ([self count] <= 0x7F)
  {
    v9 = &unk_1F068B830;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__41;
    v27 = __Block_byref_object_dispose__41;
    v28 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__NSArray_HKCodedObject__codingsForKeyPath_error___block_invoke;
    v18[3] = &unk_1E73818F8;
    v11 = v9;
    v19 = v11;
    v22 = &v23;
    v20 = v7;
    v12 = v10;
    v21 = v12;
    [self enumerateObjectsUsingBlock:v18];
    v13 = v24[5];
    if (v13)
    {
      v14 = v13;
      v15 = v14;
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }

      v8 = 0;
    }

    else
    {
      v8 = [v12 copy];
    }

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Unable to generate concept index for array of length %lu for key-path %@", objc_msgSend(self, "count"), v7}];
    v8 = 0;
  }

  return v8;
}

- (BOOL)applyConcepts:()HKCodedObject forKeyPath:error:
{
  v8 = a3;
  v9 = a4;
  v10 = +[HKIndexableObject indexableObjectsByApplyingOutermostIndex:expectedCount:error:](HKIndexableObject, "indexableObjectsByApplyingOutermostIndex:expectedCount:error:", v8, [self count], a5);
  v11 = v10;
  if (v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__41;
    v26 = __Block_byref_object_dispose__41;
    v27 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__NSArray_HKCodedObject__applyConcepts_forKeyPath_error___block_invoke;
    v18[3] = &unk_1E7381920;
    v21 = &v22;
    v19 = v10;
    v20 = v9;
    [self enumerateObjectsUsingBlock:v18];
    v12 = v23[5];
    v13 = v12 == 0;
    if (v12)
    {
      v14 = v12;
      v15 = v14;
      if (a5)
      {
        v16 = v14;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)codingsForKeyPath:()HKCodedObject error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSArray+HKCodedObject.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
}

@end
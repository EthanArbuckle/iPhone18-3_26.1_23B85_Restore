@interface HKConceptIndexUtilities
+ (BOOL)applyConcepts:(id)a3 toIndexableObject:(id)a4 keyPath:(id)a5 error:(id *)a6;
+ (BOOL)assignError:(id *)a3 forInvalidKeyPath:(id)a4 inClass:(Class)a5;
+ (id)conceptsForIndexedConcepts:(id)a3 expectedCount:(int64_t)a4 context:(id)a5 error:(id *)a6;
+ (id)firstComponentForKeyPath:(id)a3 error:(id *)a4;
+ (id)indexedCodingsForCodingCollections:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)keyPathRemovingFirstComponentFromKeyPath:(id)a3 error:(id *)a4;
+ (id)keyPaths:(id)a3 prefix:(id)a4;
+ (id)medicalCodingCollectionForIndexableObject:(id)a3 keyPath:(id)a4 error:(id *)a5;
- (HKConceptIndexUtilities)init;
@end

@implementation HKConceptIndexUtilities

- (HKConceptIndexUtilities)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)keyPathRemovingFirstComponentFromKeyPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    +[HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:error:];
  }

  v6 = [v5 rangeOfString:@"."];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:@"No remaining key-path"];
    v8 = 0;
  }

  else
  {
    v8 = [v5 substringFromIndex:v6 + v7];
  }

  return v8;
}

+ (id)firstComponentForKeyPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    +[HKConceptIndexUtilities firstComponentForKeyPath:error:];
  }

  if ([v5 length])
  {
    v6 = [v5 rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v5 substringToIndex:v6];
    }

    v8 = v7;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:@"Unable to get first component for empty key-path"];
    v8 = 0;
  }

  return v8;
}

+ (id)keyPaths:(id)a3 prefix:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__HKConceptIndexUtilities_keyPaths_prefix___block_invoke;
    v9[3] = &unk_1E737F808;
    v10 = v5;
    v7 = [a3 hk_map:v9];
  }

  else
  {
    v7 = [a3 copy];
  }

  return v7;
}

+ (id)indexedCodingsForCodingCollections:(id)a3 context:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[HKConceptIndexUtilities indexedCodingsForCodingCollections:context:error:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  +[HKConceptIndexUtilities indexedCodingsForCodingCollections:context:error:];
LABEL_3:
  if ([v7 count] <= 0x7F)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 1;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__27;
    v25 = __Block_byref_object_dispose__27;
    v26 = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__HKConceptIndexUtilities_indexedCodingsForCodingCollections_context_error___block_invoke;
    v17[3] = &unk_1E737F830;
    v19 = &v21;
    v20 = &v27;
    v12 = v11;
    v18 = v12;
    [v7 enumerateObjectsUsingBlock:v17];
    if (v28[3])
    {
      v10 = [v12 copy];
    }

    else
    {
      v13 = v22[5];
      v14 = v13;
      if (v13)
      {
        if (a5)
        {
          v15 = v13;
          *a5 = v14;
        }

        else
        {
          _HKLogDroppedError(v13);
        }
      }

      v10 = 0;
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"Unable to generate concept index for array of length %lu for context %@", objc_msgSend(v7, "count"), v9}];
    v10 = 0;
  }

  return v10;
}

void __76__HKConceptIndexUtilities_indexedCodingsForCodingCollections_context_error___block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [HKIndexableObject indexableObjectWithObject:a2 index:a3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

+ (id)conceptsForIndexedConcepts:(id)a3 expectedCount:(int64_t)a4 context:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = [HKIndexableObject indexableObjectsByApplyingOutermostIndex:v9 expectedCount:a4 error:a6];
  if (v11)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 1;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__27;
    v27 = __Block_byref_object_dispose__27;
    v28 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __82__HKConceptIndexUtilities_conceptsForIndexedConcepts_expectedCount_context_error___block_invoke;
    v19[3] = &unk_1E737F858;
    v20 = v10;
    v21 = &v23;
    v22 = &v29;
    v12 = [v11 hk_map:v19];
    v13 = v12;
    if (v30[3])
    {
      v14 = v12;
    }

    else
    {
      v15 = v24[5];
      v16 = v15;
      if (v15)
      {
        if (a6)
        {
          v17 = v15;
          *a6 = v16;
        }

        else
        {
          _HKLogDroppedError(v15);
        }
      }

      v14 = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id __82__HKConceptIndexUtilities_conceptsForIndexedConcepts_expectedCount_context_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = a1[4];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = HKIndexableObjectCheckCardinalityForIndexRestore(v4, 1, v5, &obj);
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = [v3 firstObject];
    v9 = [v8 object];
  }

  else
  {
    v9 = 0;
    *(*(a1[6] + 8) + 24) = 0;
  }

  return v9;
}

+ (id)medicalCodingCollectionForIndexableObject:(id)a3 keyPath:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      v9 = [v7 codingsForKeyPath:v8 error:a5];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:@"No remaining key-path"];
    v9 = 0;
  }

  return v9;
}

+ (BOOL)applyConcepts:(id)a3 toIndexableObject:(id)a4 keyPath:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v10)
    {
      v12 = [v10 applyConcepts:v9 forKeyPath:v11 error:a6];
    }

    else
    {
      v12 = HKIndexableObjectCheckCardinalityForIndexRestore([v9 count], 0, v11, a6);
    }

    v13 = v12;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a6 code:3 format:@"No remaining key-path"];
    v13 = 0;
  }

  return v13;
}

+ (BOOL)assignError:(id *)a3 forInvalidKeyPath:(id)a4 inClass:(Class)a5
{
  v7 = MEMORY[0x1E696ABC0];
  v8 = a4;
  v9 = NSStringFromClass(a5);
  LOBYTE(a3) = [v7 hk_assignError:a3 code:3 format:{@"%@ does not support codings for key path %@", v9, v8}];

  return a3;
}

+ (void)keyPathRemovingFirstComponentFromKeyPath:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"keyPath" object:? file:? lineNumber:? description:?];
}

+ (void)firstComponentForKeyPath:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"keyPath" object:? file:? lineNumber:? description:?];
}

+ (void)indexedCodingsForCodingCollections:context:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"codingCollections" object:? file:? lineNumber:? description:?];
}

+ (void)indexedCodingsForCodingCollections:context:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"context" object:? file:? lineNumber:? description:?];
}

@end
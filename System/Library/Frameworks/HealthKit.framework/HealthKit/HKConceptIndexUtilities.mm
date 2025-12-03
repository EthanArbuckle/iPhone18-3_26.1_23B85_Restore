@interface HKConceptIndexUtilities
+ (BOOL)applyConcepts:(id)concepts toIndexableObject:(id)object keyPath:(id)path error:(id *)error;
+ (BOOL)assignError:(id *)error forInvalidKeyPath:(id)path inClass:(Class)class;
+ (id)conceptsForIndexedConcepts:(id)concepts expectedCount:(int64_t)count context:(id)context error:(id *)error;
+ (id)firstComponentForKeyPath:(id)path error:(id *)error;
+ (id)indexedCodingsForCodingCollections:(id)collections context:(id)context error:(id *)error;
+ (id)keyPathRemovingFirstComponentFromKeyPath:(id)path error:(id *)error;
+ (id)keyPaths:(id)paths prefix:(id)prefix;
+ (id)medicalCodingCollectionForIndexableObject:(id)object keyPath:(id)path error:(id *)error;
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

+ (id)keyPathRemovingFirstComponentFromKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    +[HKConceptIndexUtilities keyPathRemovingFirstComponentFromKeyPath:error:];
  }

  v6 = [pathCopy rangeOfString:@"."];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"No remaining key-path"];
    v8 = 0;
  }

  else
  {
    v8 = [pathCopy substringFromIndex:v6 + v7];
  }

  return v8;
}

+ (id)firstComponentForKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  if (!pathCopy)
  {
    +[HKConceptIndexUtilities firstComponentForKeyPath:error:];
  }

  if ([pathCopy length])
  {
    v6 = [pathCopy rangeOfString:@"."];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = pathCopy;
    }

    else
    {
      v7 = [pathCopy substringToIndex:v6];
    }

    v8 = v7;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"Unable to get first component for empty key-path"];
    v8 = 0;
  }

  return v8;
}

+ (id)keyPaths:(id)paths prefix:(id)prefix
{
  prefixCopy = prefix;
  v6 = prefixCopy;
  if (prefixCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__HKConceptIndexUtilities_keyPaths_prefix___block_invoke;
    v9[3] = &unk_1E737F808;
    v10 = prefixCopy;
    v7 = [paths hk_map:v9];
  }

  else
  {
    v7 = [paths copy];
  }

  return v7;
}

+ (id)indexedCodingsForCodingCollections:(id)collections context:(id)context error:(id *)error
{
  collectionsCopy = collections;
  contextCopy = context;
  v9 = contextCopy;
  if (collectionsCopy)
  {
    if (contextCopy)
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
  if ([collectionsCopy count] <= 0x7F)
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
    [collectionsCopy enumerateObjectsUsingBlock:v17];
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
        if (error)
        {
          v15 = v13;
          *error = v14;
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
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Unable to generate concept index for array of length %lu for context %@", objc_msgSend(collectionsCopy, "count"), v9}];
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

+ (id)conceptsForIndexedConcepts:(id)concepts expectedCount:(int64_t)count context:(id)context error:(id *)error
{
  conceptsCopy = concepts;
  contextCopy = context;
  v11 = [HKIndexableObject indexableObjectsByApplyingOutermostIndex:conceptsCopy expectedCount:count error:error];
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
    v20 = contextCopy;
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
        if (error)
        {
          v17 = v15;
          *error = v16;
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

+ (id)medicalCodingCollectionForIndexableObject:(id)object keyPath:(id)path error:(id *)error
{
  objectCopy = object;
  pathCopy = path;
  if (pathCopy)
  {
    if (objectCopy)
    {
      v9 = [objectCopy codingsForKeyPath:pathCopy error:error];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"No remaining key-path"];
    v9 = 0;
  }

  return v9;
}

+ (BOOL)applyConcepts:(id)concepts toIndexableObject:(id)object keyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  objectCopy = object;
  pathCopy = path;
  if (pathCopy)
  {
    if (objectCopy)
    {
      v12 = [objectCopy applyConcepts:conceptsCopy forKeyPath:pathCopy error:error];
    }

    else
    {
      v12 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], 0, pathCopy, error);
    }

    v13 = v12;
  }

  else
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:@"No remaining key-path"];
    v13 = 0;
  }

  return v13;
}

+ (BOOL)assignError:(id *)error forInvalidKeyPath:(id)path inClass:(Class)class
{
  v7 = MEMORY[0x1E696ABC0];
  pathCopy = path;
  v9 = NSStringFromClass(class);
  LOBYTE(error) = [v7 hk_assignError:error code:3 format:{@"%@ does not support codings for key path %@", v9, pathCopy}];

  return error;
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
@interface EKObject(Shared)
+ (BOOL)_compareIdentityKeysForObject:()Shared againstObject:propertiesToIgnore:;
+ (BOOL)_compareMultiValueRelationshipKeys:()Shared forObject:againstObject:propertiesToIgnore:;
+ (BOOL)_compareNonIdentityKeys:()Shared forObject:againstObject:compareImmutableKeys:propertiesToIgnore:;
+ (BOOL)_compareSingleValueRelationshipKeys:()Shared forObject:againstObject:propertiesToIgnore:;
- (NSDictionary)cachedMeltedObjects;
- (void)setCachedMeltedObjects:()Shared;
@end

@implementation EKObject(Shared)

- (NSDictionary)cachedMeltedObjects
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__EKObject_Shared__cachedMeltedObjects__block_invoke;
  v4[3] = &unk_1E77FD530;
  v4[4] = self;
  v4[5] = &v5;
  [(EKObject *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setCachedMeltedObjects:()Shared
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__EKObject_Shared__setCachedMeltedObjects___block_invoke;
  v6[3] = &unk_1E77FD580;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(EKObject *)self _performWithLock:v6];
}

+ (BOOL)_compareMultiValueRelationshipKeys:()Shared forObject:againstObject:propertiesToIgnore:
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![a1 _compareMultiValueRelationshipKey:*(*(&v22 + 1) + 8 * i) forObject:v11 againstObject:v12 propertiesToIgnore:{v13, v22}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)_compareNonIdentityKeys:()Shared forObject:againstObject:compareImmutableKeys:propertiesToIgnore:
{
  v11 = a3;
  v37 = a4;
  v12 = a5;
  v13 = a7;
  v14 = MEMORY[0x1E695DFA8];
  v15 = [a1 knownRelationshipMultiValueKeys];
  v16 = [v14 setWithArray:v15];

  v17 = MEMORY[0x1E695DFA8];
  v18 = [a1 knownRelationshipSingleValueKeys];
  v19 = [v17 setWithArray:v18];

  v20 = MEMORY[0x1E695DFA8];
  v21 = [a1 knownSingleValueKeysForComparison];
  v22 = [v20 setWithArray:v21];

  v23 = MEMORY[0x1E695DFA8];
  v24 = [a1 knownImmutableKeys];
  v25 = [v23 setWithArray:v24];

  v38 = v16;
  if (v11)
  {
    [v16 intersectSet:v11];
    [v19 intersectSet:v11];
    [v22 intersectSet:v11];
    [v25 intersectSet:v11];
  }

  else if (!a6)
  {

    v25 = 0;
  }

  v26 = [v19 allObjects];
  v27 = v37;
  v28 = [a1 _compareSingleValueRelationshipKeys:v26 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

  if (!v28 || ([v38 allObjects], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(a1, "_compareMultiValueRelationshipKeys:forObject:againstObject:propertiesToIgnore:", v29, v37, v12, v13), v29, !v30))
  {
    v34 = 0;
    goto LABEL_11;
  }

  v31 = [v22 allObjects];
  v32 = [a1 _compareNonRelationshipKeys:v31 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

  if (!v32)
  {
    v34 = 0;
LABEL_14:
    v27 = v37;
    goto LABEL_11;
  }

  if (!v25)
  {
    v34 = 1;
    goto LABEL_14;
  }

  v33 = [v25 allObjects];
  v27 = v37;
  v34 = [a1 _compareNonRelationshipKeys:v33 forObject:v37 againstObject:v12 propertiesToIgnore:v13];

LABEL_11:
  return v34 & 1;
}

+ (BOOL)_compareSingleValueRelationshipKeys:()Shared forObject:againstObject:propertiesToIgnore:
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (![a1 _compareSingleValueRelationshipKey:*(*(&v22 + 1) + 8 * i) forObject:v11 againstObject:v12 propertiesToIgnore:v13 ignoreIdentityKeys:{0, v22}])
        {
          v19 = 0;
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)_compareIdentityKeysForObject:()Shared againstObject:propertiesToIgnore:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 knownIdentityKeysForComparison];
  LOBYTE(a1) = [a1 _compareNonRelationshipKeys:v11 forObject:v10 againstObject:v9 propertiesToIgnore:v8];

  return a1;
}

- (void)validate:()Shared .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 privacyDescription];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Reached maximum depth while validating root object %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)singleChangedValueForKey:()Shared .cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v11 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_3() backingObject];
  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)meltedAndCachedSingleRelationObjectForKey:()Shared .cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = v1;
  v3 = [OUTLINED_FUNCTION_4_3() eventStore];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end
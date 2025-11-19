@interface EKDiff
+ (id)_addChangeStarIfChangedKey:(id)a3 onObject:(id)a4;
+ (id)_keysToIgnoreForComputingDiff;
+ (id)_keysToIgnoreForComputingUIDiff;
+ (id)diffBetweenObject:(id)a3 andObject:(id)a4 compareUIVisiblePropertiesOnly:(BOOL)a5;
+ (id)diffBetweenObject:(id)a3 andObject:(id)a4 fetchKeysToIgnoreBlock:(id)a5;
+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)a3 andObject:(id)a4;
+ (void)_addObject:(id)a3 forKey:(id)a4 toDiff:(id)a5;
+ (void)_addPaddedHeaderToMutableString:(id)a3 forKey:(id)a4 withDepth:(int64_t)a5;
+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forRelationshipMultiValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7;
+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forRelationshipSingleValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7;
+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forSingleValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7;
+ (void)_populateIdentityKeysForDiff:(id)a3 keysToIgnore:(id)a4;
+ (void)_populateImmutableKeysForDiff:(id)a3 keysToIgnore:(id)a4;
+ (void)_populateMultiValueRelationshipKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5;
+ (void)_populateSingleValueKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5;
+ (void)_populateSingleValueRelationshipKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5;
- (EKDiff)initWithFirstObject:(id)a3 secondObject:(id)a4;
- (id)_multiValueModifiedObjectsForKey:(id)a3;
- (id)_nonNilObject;
- (id)changeSetForDiff;
- (id)copyOfObject:(id)a3 alreadyCopiedObjects:(id)a4 madeNewCopy:(BOOL *)a5;
- (id)differentKeys;
- (id)summaryDictionary;
- (id)summaryString;
- (void)_summarizeDiffsBetweenFirstObject:(id)a3 secondObject:(id)a4 mutableString:(id)a5 depth:(int64_t)a6;
@end

@implementation EKDiff

- (EKDiff)initWithFirstObject:(id)a3 secondObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = EKDiff;
  v8 = [(EKDiff *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EKDiff *)v8 setFirstObject:v6];
    [(EKDiff *)v9 setSecondObject:v7];
  }

  return v9;
}

- (id)_nonNilObject
{
  v3 = [(EKDiff *)self firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(EKDiff *)self secondObject];
  }

  v6 = v5;

  return v6;
}

+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)a3 andObject:(id)a4
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  v7 = v6;
  v8 = a4;
  v9 = a3;
  v10 = [objc_opt_class() knownIdentityKeysForComparison];
  v11 = objc_opt_class();

  v12 = [v11 knownSingleValueKeysToSkipForUIComparison];
  v13 = [v10 arrayByAddingObjectsFromArray:v12];

  return v13;
}

+ (id)diffBetweenObject:(id)a3 andObject:(id)a4 compareUIVisiblePropertiesOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__EKDiff_diffBetweenObject_andObject_compareUIVisiblePropertiesOnly___block_invoke;
    aBlock[3] = &__block_descriptor_40_e40___NSArray_24__0__EKObject_8__EKObject_16l;
    aBlock[4] = a1;
    v10 = _Block_copy(aBlock);
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 diffBetweenObject:v8 andObject:v9 fetchKeysToIgnoreBlock:v10];

  return v11;
}

+ (id)diffBetweenObject:(id)a3 andObject:(id)a4 fetchKeysToIgnoreBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff diffBetweenObject:v8 andObject:v9 fetchKeysToIgnoreBlock:v11];
  }

  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = [[EKDiff alloc] initWithFirstObject:v8 secondObject:v9];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 && v13)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:1];
    goto LABEL_39;
  }

  v15 = [a1 _keysToIgnoreForComputingDiff];
  if (v10)
  {
    v16 = v10[2](v10, v8, v9);
    if (v16)
    {
      v17 = [v15 setByAddingObjectsFromArray:v16];

      v15 = v17;
    }
  }

  [a1 _populateSingleValueKeysForDiff:v14 keysToIgnore:v15 fetchKeysToIgnoreBlock:v10];
  [a1 _populateImmutableKeysForDiff:v14 keysToIgnore:v15];
  [a1 _populateSingleValueRelationshipKeysForDiff:v14 keysToIgnore:v15 fetchKeysToIgnoreBlock:v10];
  [a1 _populateMultiValueRelationshipKeysForDiff:v14 keysToIgnore:v15 fetchKeysToIgnoreBlock:v10];
  v18 = [(EKDiff *)v14 differentSingleValueKeys];
  if ([v18 count])
  {

    if (!v13)
    {
      goto LABEL_28;
    }

LABEL_25:
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:3];
    goto LABEL_28;
  }

  v19 = [(EKDiff *)v14 differentRelationshipSingleValueKeys];
  if (![v19 count])
  {
    v27 = [(EKDiff *)v14 differentRelationshipMultiValueKeys];
    if (![v27 count])
    {
      v25 = [(EKDiff *)v14 differentImmutableKeys];
      if ([v25 count])
      {
        v24 = v13;
      }

      else
      {
        v24 = 0;
      }

      v26 = v24;

      if ((v26 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  if (v13)
  {
    goto LABEL_25;
  }

LABEL_28:
  [a1 _populateIdentityKeysForDiff:v14 keysToIgnore:v15];
  v20 = [(EKDiff *)v14 differentIdentityKeys];
  v21 = [v20 count];

  v22 = v13 ^ 1;
  if (!v21)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:2];
  }

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKDiff diffBetweenObject:andObject:fetchKeysToIgnoreBlock:];
    }

    [(EKDiff *)v14 setResult:4];
  }

LABEL_39:

  return v14;
}

+ (id)_keysToIgnoreForComputingDiff
{
  if (_keysToIgnoreForComputingDiff_onceToken != -1)
  {
    +[EKDiff _keysToIgnoreForComputingDiff];
  }

  v3 = _keysToIgnoreForComputingDiff_keysToIgnore;

  return v3;
}

void __39__EKDiff__keysToIgnoreForComputingDiff__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E6992598];
  v7[0] = *MEMORY[0x1E6992588];
  v7[1] = v1;
  v2 = *MEMORY[0x1E6992918];
  v7[2] = *MEMORY[0x1E6992630];
  v7[3] = v2;
  v7[4] = *MEMORY[0x1E6992AA0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = _keysToIgnoreForComputingDiff_keysToIgnore;
  _keysToIgnoreForComputingDiff_keysToIgnore = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)_keysToIgnoreForComputingUIDiff
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKDiff__keysToIgnoreForComputingUIDiff__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_keysToIgnoreForComputingUIDiff_onceToken != -1)
  {
    dispatch_once(&_keysToIgnoreForComputingUIDiff_onceToken, block);
  }

  v2 = _keysToIgnoreForComputingUIDiff_keysToIgnore;

  return v2;
}

void __41__EKDiff__keysToIgnoreForComputingUIDiff__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1B6B170];
  v3 = _keysToIgnoreForComputingUIDiff_keysToIgnore;
  _keysToIgnoreForComputingUIDiff_keysToIgnore = v2;

  v6 = [*(a1 + 32) _keysToIgnoreForComputingDiff];
  v4 = [v6 setByAddingObjectsFromSet:_keysToIgnoreForComputingUIDiff_keysToIgnore];
  v5 = _keysToIgnoreForComputingUIDiff_keysToIgnore;
  _keysToIgnoreForComputingUIDiff_keysToIgnore = v4;
}

+ (void)_populateSingleValueKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  v11 = [v8 _nonNilObject];
  v12 = [objc_opt_class() knownSingleValueKeysForComparison];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__EKDiff__populateSingleValueKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v23 = &unk_1E77FDBF0;
  v13 = v8;
  v24 = v13;
  v14 = v10;
  v26 = v14;
  v15 = v9;
  v25 = v15;
  v27 = a1;
  v16 = [v12 indexesOfObjectsPassingTest:&v20];
  v17 = [v12 objectsAtIndexes:{v16, v20, v21, v22, v23}];

  v18 = [MEMORY[0x1E695DFD8] setWithArray:v17];
  [v13 setDifferentSingleValueKeys:v18];

  v19 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateSingleValueKeysForDiff:v19 keysToIgnore:? fetchKeysToIgnoreBlock:?];
  }
}

uint64_t __78__EKDiff__populateSingleValueKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _nonNilObject];
  v5 = [objc_opt_class() specialComparisonBlocks];
  v6 = [v5 objectForKeyedSubscript:v3];

  if (*(a1 + 48) && v6)
  {
    v7 = [*(a1 + 32) firstObject];
    v8 = [*(a1 + 32) secondObject];
    v9 = (v6)[2](v6, v7, v8) ^ 1;

LABEL_7:
    goto LABEL_8;
  }

  if (([*(a1 + 40) containsObject:v3] & 1) == 0)
  {
    v7 = [*(a1 + 32) _nonNilObject];
    v10 = objc_opt_class();
    v17[0] = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v12 = [*(a1 + 32) firstObject];
    v13 = [*(a1 + 32) secondObject];
    v14 = [*(a1 + 56) _keysToIgnoreForComputingDiff];
    v9 = [v10 _compareNonRelationshipKeys:v11 forObject:v12 againstObject:v13 propertiesToIgnore:v14] ^ 1;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)_populateSingleValueRelationshipKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v38 = a4;
  v40 = a5;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  v8 = [v7 _nonNilObject];
  v9 = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];

  v39 = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  v11 = v38;
  if (v10)
  {
    v12 = v10;
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        if (([v11 containsObject:v15] & 1) == 0)
        {
          v16 = [v7 firstObject];
          if ([v16 isPropertyUnavailable:v15])
          {
            v17 = [v7 secondObject];
            v18 = [v17 isPropertyUnavailable:v15];

            if (v18)
            {
              continue;
            }
          }

          else
          {
          }

          v19 = [v7 firstObject];
          v20 = [v19 valueForKey:v15];

          v21 = [v7 secondObject];
          v22 = [v21 valueForKey:v15];

          if (v20 | v22)
          {
            if (v20 && v22)
            {
              v23 = [a1 _keysToIgnoreForComputingDiff];
              if (v40)
              {
                v24 = v40[2]();
                if (v24)
                {
                  v25 = [v23 setByAddingObjectsFromArray:v24];

                  v23 = v25;
                }
              }

              v26 = [v7 _nonNilObject];
              v27 = [objc_opt_class() _compareRelationshipObject1:v20 againstRelationshipObject2:v22 propertiesToIgnore:v23 relationshipObjectKey:v15];

              if ((v27 & 1) == 0)
              {
                v28 = [EKDiff diffBetweenObject:v20 andObject:v22 fetchKeysToIgnoreBlock:v40];
                v29 = [v28 differentKeys];
                v36 = [v29 count];

                if (v36)
                {
                  [v39 setObject:v28 forKeyedSubscript:v15];
                }
              }

              v11 = v38;
            }

            else
            {
              v23 = [MEMORY[0x1E695DFB0] null];
              [v39 setObject:v23 forKeyedSubscript:v15];
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }

  [MEMORY[0x1E695DF20] dictionaryWithDictionary:v39];
  v31 = v30 = v11;
  [v7 setRelationshipSingleValueModifies:v31];

  v32 = MEMORY[0x1E695DFD8];
  v33 = [v39 allKeys];
  v34 = [v32 setWithArray:v33];
  [v7 setDifferentRelationshipSingleValueKeys:v34];

  v35 = *MEMORY[0x1E69E9840];
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(id)a3 keysToIgnore:(id)a4 fetchKeysToIgnoreBlock:(id)a5
{
  v104 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v76 = a5;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateMultiValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  v10 = [v8 _nonNilObject];
  v11 = [objc_opt_class() knownRelationshipMultiValueKeys];

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __89__EKDiff__populateMultiValueRelationshipKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v96[3] = &unk_1E77FDC18;
  v63 = v9;
  v97 = v63;
  v12 = v8;
  v98 = v12;
  v99 = a1;
  v13 = [v11 indexesOfObjectsPassingTest:v96];
  v64 = v11;
  v14 = [v11 objectsAtIndexes:v13];

  v62 = v14;
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  [v12 setDifferentRelationshipMultiValueKeys:v15];

  v16 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateMultiValueRelationshipKeysForDiff:v16 keysToIgnore:? fetchKeysToIgnoreBlock:?];
  }

  v17 = 0x1E695D000uLL;
  v70 = [MEMORY[0x1E695DF90] dictionary];
  v69 = [MEMORY[0x1E695DF90] dictionary];
  v68 = [MEMORY[0x1E695DF90] dictionary];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = [v12 differentRelationshipMultiValueKeys];
  v73 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
  if (v73)
  {
    v71 = *v93;
    v72 = v12;
    v65 = a1;
    do
    {
      v18 = 0;
      do
      {
        if (*v93 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v74 = v18;
        v19 = *(*(&v92 + 1) + 8 * v18);
        v78 = [MEMORY[0x1E695DFA8] set];
        v79 = [MEMORY[0x1E695DFA8] set];
        v77 = [*(v17 + 3984) dictionary];
        v20 = *(v17 + 3984);
        v21 = objc_opt_new();
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v22 = [v12 firstObject];
        v75 = v19;
        v23 = [v22 valueForKey:v19];

        v24 = [v23 countByEnumeratingWithState:&v88 objects:v102 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v89;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v89 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v88 + 1) + 8 * i);
              v29 = [v28 uniqueIdentifier];
              if ([v29 length])
              {
                [v21 setObject:v28 forKeyedSubscript:v29];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v88 objects:v102 count:16];
          }

          while (v25);
        }

        v30 = *(v17 + 3984);
        v31 = objc_opt_new();
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v32 = [v12 secondObject];
        v33 = [v32 valueForKey:v75];

        v34 = [v33 countByEnumeratingWithState:&v84 objects:v101 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v85;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v85 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = *(*(&v84 + 1) + 8 * j);
              v39 = [v38 uniqueIdentifier];
              if ([v39 length])
              {
                [v31 setObject:v38 forKeyedSubscript:v39];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v84 objects:v101 count:16];
          }

          while (v35);
        }

        v40 = MEMORY[0x1E695DFD8];
        v41 = [v21 allKeys];
        v42 = [v40 setWithArray:v41];
        v43 = [v31 allKeys];
        v44 = [v42 setByAddingObjectsFromArray:v43];

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v45 = v44;
        v46 = [v45 countByEnumeratingWithState:&v80 objects:v100 count:16];
        v47 = v78;
        if (v46)
        {
          v48 = v46;
          v49 = *v81;
          do
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v81 != v49)
              {
                objc_enumerationMutation(v45);
              }

              v51 = *(*(&v80 + 1) + 8 * k);
              v52 = [v21 objectForKeyedSubscript:v51];
              v53 = [v31 objectForKeyedSubscript:v51];
              v54 = v53;
              if (!(v52 | v53))
              {
                [EKDiff _populateMultiValueRelationshipKeysForDiff:a2 keysToIgnore:v65 fetchKeysToIgnoreBlock:?];
LABEL_40:
                v56 = v47;
                v57 = v54;
LABEL_41:
                [v56 addObject:v57];
                goto LABEL_42;
              }

              if (!v52)
              {
                goto LABEL_40;
              }

              if (!v53)
              {
                v56 = v79;
                v57 = v52;
                goto LABEL_41;
              }

              if (([v52 isEqual:v53 ignoringProperties:0] & 1) == 0)
              {
                v55 = [EKDiff diffBetweenObject:v52 andObject:v54 fetchKeysToIgnoreBlock:v76];
                [v77 setObject:v55 forKeyedSubscript:v51];

                v47 = v78;
              }

LABEL_42:
            }

            v48 = [v45 countByEnumeratingWithState:&v80 objects:v100 count:16];
          }

          while (v48);
        }

        if ([v47 count])
        {
          [v70 setObject:v47 forKeyedSubscript:v75];
        }

        if ([v79 count])
        {
          [v69 setObject:v79 forKeyedSubscript:v75];
        }

        if ([v77 count])
        {
          [v68 setObject:v77 forKeyedSubscript:v75];
        }

        v18 = v74 + 1;
        v12 = v72;
        v17 = 0x1E695D000;
      }

      while (v74 + 1 != v73);
      v73 = [obj countByEnumeratingWithState:&v92 objects:v103 count:16];
    }

    while (v73);
  }

  if ([v70 count])
  {
    v58 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v70];
    [v12 setRelationshipMultiValueAdds:v58];
  }

  if ([v69 count])
  {
    v59 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v69];
    [v12 setRelationshipMultiValueRemoves:v59];
  }

  if ([v68 count])
  {
    v60 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v68];
    [v12 setRelationshipMultiValueModifies:v60];
  }

  v61 = *MEMORY[0x1E69E9840];
}

uint64_t __89__EKDiff__populateMultiValueRelationshipKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v7 = [a1[5] firstObject];
    v8 = [a1[5] secondObject];
    v9 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareMultiValueRelationshipKey:v3 forObject:v7 againstObject:v8 propertiesToIgnore:v9] ^ 1;
  }

  return v4;
}

+ (void)_populateIdentityKeysForDiff:(id)a3 keysToIgnore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateIdentityKeysForDiff:keysToIgnore:];
  }

  v8 = [v6 _nonNilObject];
  v9 = [objc_opt_class() knownIdentityKeysForComparison];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EKDiff__populateIdentityKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = v7;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v19 = a1;
  v12 = [v9 indexesOfObjectsPassingTest:v16];
  v13 = [v9 objectsAtIndexes:v12];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
  [v11 setDifferentIdentityKeys:v14];

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateIdentityKeysForDiff:v15 keysToIgnore:?];
  }
}

uint64_t __52__EKDiff__populateIdentityKeysForDiff_keysToIgnore___block_invoke(id *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v13[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [a1[5] firstObject];
    v9 = [a1[5] secondObject];
    v10 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareNonRelationshipKeys:v7 forObject:v8 againstObject:v9 propertiesToIgnore:v10] ^ 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)_populateImmutableKeysForDiff:(id)a3 keysToIgnore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateImmutableKeysForDiff:keysToIgnore:];
  }

  v8 = [v6 _nonNilObject];
  v9 = [objc_opt_class() knownImmutableKeys];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__EKDiff__populateImmutableKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = v7;
  v17 = v10;
  v11 = v6;
  v18 = v11;
  v19 = a1;
  v12 = [v9 indexesOfObjectsPassingTest:v16];
  v13 = [v9 objectsAtIndexes:v12];

  v14 = [MEMORY[0x1E695DFD8] setWithArray:v13];
  [v11 setDifferentImmutableKeys:v14];

  v15 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateImmutableKeysForDiff:v15 keysToIgnore:?];
  }
}

uint64_t __53__EKDiff__populateImmutableKeysForDiff_keysToIgnore___block_invoke(id *a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1[5] _nonNilObject];
    v6 = objc_opt_class();
    v13[0] = v3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [a1[5] firstObject];
    v9 = [a1[5] secondObject];
    v10 = [a1[6] _keysToIgnoreForComputingDiff];
    v4 = [v6 _compareNonRelationshipKeys:v7 forObject:v8 againstObject:v9 propertiesToIgnore:v10] ^ 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)_multiValueModifiedObjectsForKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKDiff *)self relationshipMultiValueModifies];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 allValues];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) secondObject];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)differentKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(EKDiff *)self differentIdentityKeys];
  [v3 unionSet:v4];

  v5 = [(EKDiff *)self differentImmutableKeys];
  [v3 unionSet:v5];

  v6 = [(EKDiff *)self differentSingleValueKeys];
  [v3 unionSet:v6];

  v7 = [(EKDiff *)self differentRelationshipSingleValueKeys];
  [v3 unionSet:v7];

  v8 = [(EKDiff *)self differentRelationshipMultiValueKeys];
  [v3 unionSet:v8];

  v9 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v9;
}

- (id)summaryDictionary
{
  v147 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v4 = [(EKDiff *)self differentSingleValueKeys];
  v5 = [v4 countByEnumeratingWithState:&v134 objects:v146 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v135;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v135 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v134 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFB0] null];
        [v3 setObject:v10 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v134 objects:v146 count:16];
    }

    while (v6);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v11 = [(EKDiff *)self differentIdentityKeys];
  v12 = [v11 countByEnumeratingWithState:&v130 objects:v145 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v131;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v131 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v130 + 1) + 8 * j);
        v17 = [MEMORY[0x1E695DFB0] null];
        [v3 setObject:v17 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v130 objects:v145 count:16];
    }

    while (v13);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v18 = [(EKDiff *)self differentImmutableKeys];
  v19 = [v18 countByEnumeratingWithState:&v126 objects:v144 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v127;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v127 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v126 + 1) + 8 * k);
        v24 = [MEMORY[0x1E695DFB0] null];
        [v3 setObject:v24 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v126 objects:v144 count:16];
    }

    while (v20);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = [(EKDiff *)self differentRelationshipSingleValueKeys];
  v25 = [obj countByEnumeratingWithState:&v122 objects:v143 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v123;
    v88 = *v123;
    do
    {
      v28 = 0;
      v89 = v26;
      do
      {
        if (*v123 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v122 + 1) + 8 * v28);
        v30 = [(EKDiff *)self firstObject];
        v31 = [v30 valueForKey:v29];

        v32 = [(EKDiff *)self secondObject];
        v33 = [v32 valueForKey:v29];

        v34 = v33;
        if (v31)
        {
          v35 = v33 == 0;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          v36 = [MEMORY[0x1E695DFB0] null];
          [v3 setObject:v36 forKeyedSubscript:v29];
        }

        else
        {
          v93 = v28;
          v94 = v29;
          v37 = [objc_msgSend(objc_opt_class() "meltedClass")];
          v38 = [objc_msgSend(objc_opt_class() "meltedClass")];
          v92 = v37;
          [MEMORY[0x1E695DF70] arrayWithArray:v37];
          v39 = v96 = v33;
          v91 = v38;
          [v39 addObjectsFromArray:v38];
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v40 = v39;
          v34 = v33;
          v100 = v40;
          v41 = [v40 countByEnumeratingWithState:&v118 objects:v142 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v119;
            do
            {
              v44 = 0;
              v98 = v42;
              do
              {
                if (*v119 != v43)
                {
                  objc_enumerationMutation(v100);
                }

                v45 = *(*(&v118 + 1) + 8 * v44);
                v46 = [v31 valueForKey:v45];
                v47 = [v34 valueForKey:v45];
                v48 = v47;
                if (v46)
                {
                  v49 = v47 == 0;
                }

                else
                {
                  v49 = 1;
                }

                if (v49)
                {
                  if (!(v46 | v47))
                  {
                    goto LABEL_45;
                  }

LABEL_44:
                  v50 = [objc_opt_class() summaryKeyForChangedProperty:v94 subProperty:v45];
                  [MEMORY[0x1E695DFB0] null];
                  v51 = self;
                  v52 = v43;
                  v54 = v53 = v31;
                  v34 = v96;
                  [v3 setObject:v54 forKeyedSubscript:v94];

                  v55 = [MEMORY[0x1E695DFB0] null];
                  [v3 setObject:v55 forKeyedSubscript:v50];

                  v31 = v53;
                  v43 = v52;
                  self = v51;
                  v42 = v98;

                  goto LABEL_45;
                }

                v56 = [v46 isEqual:v47];
                if ((v56 & 1) == 0)
                {
                  goto LABEL_44;
                }

LABEL_45:

                ++v44;
              }

              while (v42 != v44);
              v57 = [v100 countByEnumeratingWithState:&v118 objects:v142 count:16];
              v42 = v57;
            }

            while (v57);
          }

          v27 = v88;
          v26 = v89;
          v36 = v92;
          v28 = v93;
        }

        ++v28;
      }

      while (v28 != v26);
      v26 = [obj countByEnumeratingWithState:&v122 objects:v143 count:16];
    }

    while (v26);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v95 = [(EKDiff *)self differentRelationshipMultiValueKeys];
  v99 = [v95 countByEnumeratingWithState:&v114 objects:v141 count:16];
  if (v99)
  {
    v97 = *v115;
    do
    {
      v58 = 0;
      do
      {
        if (*v115 != v97)
        {
          objc_enumerationMutation(v95);
        }

        v101 = v58;
        v59 = *(*(&v114 + 1) + 8 * v58);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v60 = [(EKDiff *)self relationshipMultiValueAdds];
        v61 = [v60 objectForKeyedSubscript:v59];

        v62 = [v61 countByEnumeratingWithState:&v110 objects:v140 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v111;
          do
          {
            for (m = 0; m != v63; ++m)
            {
              if (*v111 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = *(*(&v110 + 1) + 8 * m);
              v67 = objc_opt_class();
              v68 = [objc_opt_class() summaryKeyForMultiValueAddOfPropertyKey:v59];
              [v67 _addObject:v66 forKey:v68 toDiff:v3];
            }

            v63 = [v61 countByEnumeratingWithState:&v110 objects:v140 count:16];
          }

          while (v63);
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v69 = [(EKDiff *)self relationshipMultiValueRemoves];
        v70 = [v69 objectForKeyedSubscript:v59];

        v71 = [v70 countByEnumeratingWithState:&v106 objects:v139 count:16];
        if (v71)
        {
          v72 = v71;
          v73 = *v107;
          do
          {
            for (n = 0; n != v72; ++n)
            {
              if (*v107 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v75 = *(*(&v106 + 1) + 8 * n);
              v76 = objc_opt_class();
              v77 = [objc_opt_class() summaryKeyForMultiValueRemoveOfPropertyKey:v59];
              [v76 _addObject:v75 forKey:v77 toDiff:v3];
            }

            v72 = [v70 countByEnumeratingWithState:&v106 objects:v139 count:16];
          }

          while (v72);
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v78 = [(EKDiff *)self _multiValueModifiedObjectsForKey:v59];
        v79 = [v78 countByEnumeratingWithState:&v102 objects:v138 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v103;
          do
          {
            for (ii = 0; ii != v80; ++ii)
            {
              if (*v103 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = *(*(&v102 + 1) + 8 * ii);
              v84 = objc_opt_class();
              v85 = [objc_opt_class() summaryKeyForMultiValueModifyOfPropertyKey:v59];
              [v84 _addObject:v83 forKey:v85 toDiff:v3];
            }

            v80 = [v78 countByEnumeratingWithState:&v102 objects:v138 count:16];
          }

          while (v80);
        }

        v58 = v101 + 1;
      }

      while (v101 + 1 != v99);
      v99 = [v95 countByEnumeratingWithState:&v114 objects:v141 count:16];
    }

    while (v99);
  }

  v86 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (void)_addObject:(id)a3 forKey:(id)a4 toDiff:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    v10 = [v8 objectForKey:v7];
    [v10 addObject:v11];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:v11];
    [v8 setObject:v10 forKey:v7];
  }
}

- (id)summaryString
{
  v3 = [(EKDiff *)self firstObject];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AD60] string];
    v5 = [(EKDiff *)self firstObject];
    v6 = [(EKDiff *)self secondObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:v5 secondObject:v6 mutableString:v4 depth:0];

    [v4 appendString:@"\n-------------------------\n"];
    v7 = [(EKDiff *)self secondObject];
    v8 = [(EKDiff *)self firstObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:v7 secondObject:v8 mutableString:v4 depth:0];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v7 = [(EKDiff *)self secondObject];
    v4 = [v9 stringWithFormat:@"No object for comparison, %@ is entirely different", v7];
  }

  return v4;
}

- (void)_summarizeDiffsBetweenFirstObject:(id)a3 secondObject:(id)a4 mutableString:(id)a5 depth:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v12 _basicSummaryWithDepth:a6];
  [v10 appendString:v13];

  v14 = objc_opt_class();
  v15 = [(EKDiff *)self differentSingleValueKeys];
  v16 = [v15 allObjects];
  [v14 _addSummaryWithDepth:a6 toMutableString:v10 forSingleValueKeys:v16 firstObject:v12 secondObject:v11];

  v17 = objc_opt_class();
  v18 = [(EKDiff *)self differentIdentityKeys];
  v19 = [v18 allObjects];
  [v17 _addSummaryWithDepth:a6 toMutableString:v10 forSingleValueKeys:v19 firstObject:v12 secondObject:v11];

  v20 = objc_opt_class();
  v21 = [(EKDiff *)self differentImmutableKeys];
  v22 = [v21 allObjects];
  [v20 _addSummaryWithDepth:a6 toMutableString:v10 forSingleValueKeys:v22 firstObject:v12 secondObject:v11];

  v23 = objc_opt_class();
  v24 = [(EKDiff *)self differentRelationshipSingleValueKeys];
  v25 = [v24 allObjects];
  [v23 _addSummaryWithDepth:a6 toMutableString:v10 forRelationshipSingleValueKeys:v25 firstObject:v12 secondObject:v11];

  v26 = objc_opt_class();
  v28 = [(EKDiff *)self differentRelationshipMultiValueKeys];
  v27 = [v28 allObjects];
  [v26 _addSummaryWithDepth:a6 toMutableString:v10 forRelationshipMultiValueKeys:v27 firstObject:v12 secondObject:v11];
}

+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forSingleValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v12 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = v12;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          [v11 appendString:@"\n"];
          v19 = [objc_opt_class() _addChangeStarIfChangedKey:v18 onObject:v13];
          [a1 _addPaddedHeaderToMutableString:v11 forKey:v19 withDepth:a3];
          v20 = [v13 valueForKey:v18];
          [v11 appendFormat:@"%@", v20];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v12 = v22;
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forRelationshipSingleValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v11;
  v28 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v28)
  {
    v26 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        [v10 appendString:@"\n"];
        [a1 _addPaddedHeaderToMutableString:v10 forKey:v15 withDepth:a3];
        v16 = [v12 valueForKey:v15];
        v17 = [v13 valueForKey:v15];
        v18 = [v12 eventStore];
        v19 = [v16 meltedObjectInStore:v18];

        v20 = [v13 eventStore];
        v21 = [v17 meltedObjectInStore:v20];

        if (!v16)
        {
          [v10 appendString:@"(null)"];
          goto LABEL_13;
        }

        if ([objc_msgSend(objc_opt_class() "meltedClass")])
        {
          v22 = [v16 uniqueIdentifier];
          [v10 appendFormat:@"<weak relation: %@>", v22];
LABEL_12:

          goto LABEL_13;
        }

        if (v13)
        {
          v22 = [v19 diffWithObject:v21];
          [v22 _summarizeDiffsBetweenFirstObject:v19 secondObject:v21 mutableString:v10 depth:a3 + 4];
          goto LABEL_12;
        }

        [v19 _addSummaryWithDepth:a3 + 4 toMutableString:v10 indentFirstLine:0];
LABEL_13:

        ++v14;
      }

      while (v28 != v14);
      v23 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v28 = v23;
    }

    while (v23);
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (void)_addSummaryWithDepth:(int64_t)a3 toMutableString:(id)a4 forRelationshipMultiValueKeys:(id)a5 firstObject:(id)a6 secondObject:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v13;
  v15 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    v32 = a1;
    v33 = a7;
    v31 = *v42;
    do
    {
      v18 = 0;
      v34 = v16;
      do
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * v18);
        [v12 appendString:@"\n"];
        [a1 _addPaddedHeaderToMutableString:v12 forKey:v19 withDepth:a3];
        v36 = v18;
        if (a7)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There is a difference for the multi-valued key: %@", v19];
          [v12 appendString:v20];
        }

        else
        {
          v21 = [v14 valueForKey:v19];
          v22 = v21;
          if (!v21 || ![v21 count])
          {
            [v12 appendString:@"(null)"];
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v20 = v22;
          v23 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v38;
            do
            {
              v26 = 0;
              do
              {
                if (*v38 != v25)
                {
                  objc_enumerationMutation(v20);
                }

                v27 = *(*(&v37 + 1) + 8 * v26);
                v28 = [v14 eventStore];
                v29 = [v27 meltedObjectInStore:v28];

                [v12 appendString:@"\n"];
                if (v27)
                {
                  [v29 _addSummaryWithDepth:a3 + 8 toMutableString:v12 indentFirstLine:1];
                }

                else
                {
                  [v12 appendString:@"(null)"];
                }

                ++v26;
              }

              while (v24 != v26);
              v24 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v24);
          }

          a1 = v32;
          a7 = v33;
          v17 = v31;
          v16 = v34;
        }

        v18 = v36 + 1;
      }

      while (v36 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v16);
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (void)_addPaddedHeaderToMutableString:(id)a3 forKey:(id)a4 withDepth:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 _indentStringAtDepth:a5 + 4];
  [v9 appendString:v10];

  v11 = [v8 stringByPaddingToLength:20 withString:@" " startingAtIndex:0];

  [v9 appendFormat:@"%@: ", v11];
}

+ (id)_addChangeStarIfChangedKey:(id)a3 onObject:(id)a4
{
  v5 = a3;
  v6 = [a4 changeSet];
  v7 = [v6 hasUnsavedChangeForKey:v5];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"* %@", v5];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

- (id)copyOfObject:(id)a3 alreadyCopiedObjects:(id)a4 madeNewCopy:(BOOL *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectID];
  v10 = [v8 objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    if (a5)
    {
      *a5 = 0;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 1;
    }

    v11 = [v7 copy];
    [v8 setObject:v11 forKeyedSubscript:v9];
  }

  return v11;
}

- (id)changeSetForDiff
{
  v93 = *MEMORY[0x1E69E9840];
  v71 = [MEMORY[0x1E695DF90] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v3 = [(EKDiff *)self differentSingleValueKeys];
  v4 = [v3 countByEnumeratingWithState:&v85 objects:v92 count:16];
  v5 = 0x1E695D000uLL;
  if (v4)
  {
    v6 = v4;
    v7 = *v86;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v86 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v85 + 1) + 8 * i);
        v10 = [(EKDiff *)self secondObject];
        v11 = [v10 valueForKey:v9];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = [MEMORY[0x1E695DFB0] null];
        }

        v14 = v13;

        [v71 setObject:v14 forKeyedSubscript:v9];
      }

      v6 = [v3 countByEnumeratingWithState:&v85 objects:v92 count:16];
    }

    while (v6);
  }

  v15 = objc_opt_new();
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = [(EKDiff *)self differentRelationshipSingleValueKeys];
  v69 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
  if (v69)
  {
    v16 = *v82;
    v65 = *v82;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v82 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v81 + 1) + 8 * j);
        v19 = [(EKDiff *)self relationshipSingleValueModifies];
        v20 = [v19 objectForKeyedSubscript:v18];

        v21 = [*(v5 + 4016) null];
        v22 = [v20 isEqual:v21];

        if (v22)
        {
          v23 = [(EKDiff *)self secondObject];
          v24 = [v23 valueForKey:v18];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = [*(v5 + 4016) null];
          }

          v35 = v26;

          [v71 setObject:v35 forKeyedSubscript:v18];
        }

        else
        {
          v27 = v5;
          v80 = 0;
          v28 = [(EKDiff *)self secondObject];
          v29 = [v28 valueForKey:v18];

          v30 = [(EKDiff *)self secondObject];
          v31 = [v30 eventStore];
          v32 = [v29 meltedObjectInStore:v31];

          v33 = [(EKDiff *)self copyOfObject:v32 alreadyCopiedObjects:v15 madeNewCopy:&v80];
          if (v80 == 1)
          {
            v34 = [v20 changeSetForDiff];
            [v33 addChanges:v34];
          }

          [v71 setObject:v33 forKeyedSubscript:v18];

          v5 = v27;
          v16 = v65;
        }
      }

      v69 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v69);
  }

  v36 = MEMORY[0x1E695DF90];
  v37 = [(EKDiff *)self relationshipMultiValueAdds];
  v38 = [v36 dictionaryWithDictionary:v37];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v61 = [(EKDiff *)self relationshipMultiValueModifies];
  v64 = [v61 countByEnumeratingWithState:&v76 objects:v90 count:16];
  if (v64)
  {
    v62 = *v77;
    v63 = v38;
    do
    {
      v39 = 0;
      do
      {
        if (*v77 != v62)
        {
          objc_enumerationMutation(v61);
        }

        v70 = v39;
        v40 = *(*(&v76 + 1) + 8 * v39);
        v41 = [v38 objectForKeyedSubscript:v40];
        v42 = v41;
        if (v41)
        {
          v43 = v41;
        }

        else
        {
          v43 = [MEMORY[0x1E695DFA8] set];
        }

        v44 = v43;

        v45 = [(EKDiff *)self relationshipMultiValueModifies];
        obja = v40;
        v46 = [v45 objectForKeyedSubscript:v40];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v66 = v46;
        v47 = [v46 allValues];
        v48 = [v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v73;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v73 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v72 + 1) + 8 * k);
              v80 = 0;
              v53 = [v52 secondObject];
              v54 = [(EKDiff *)self copyOfObject:v53 alreadyCopiedObjects:v15 madeNewCopy:&v80];

              if (v80 == 1)
              {
                v55 = [v52 changeSetForDiff];
                [v54 addChanges:v55];
              }

              [v44 addObject:v54];
            }

            v49 = [v47 countByEnumeratingWithState:&v72 objects:v89 count:16];
          }

          while (v49);
        }

        v38 = v63;
        [v63 setObject:v44 forKeyedSubscript:obja];

        v39 = v70 + 1;
      }

      while (v70 + 1 != v64);
      v64 = [v61 countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v64);
  }

  v56 = [EKChangeSet alloc];
  v57 = [(EKDiff *)self relationshipMultiValueRemoves];
  v58 = [(EKChangeSet *)v56 initWithSingleValueChanges:v71 multiValueAdditions:v38 multiValueRemovals:v57];

  v59 = *MEMORY[0x1E69E9840];

  return v58;
}

+ (void)diffBetweenObject:(uint64_t)a1 andObject:(uint64_t)a2 fetchKeysToIgnoreBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1A805E000, log, OS_LOG_TYPE_DEBUG, "Computing diff between %@ and %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

+ (void)_populateSingleValueKeysForDiff:(void *)a1 keysToIgnore:fetchKeysToIgnoreBlock:.cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentSingleValueKeys];
  [v3 count];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 8u);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(void *)a1 keysToIgnore:fetchKeysToIgnoreBlock:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentRelationshipMultiValueKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentRelationshipMultiValueKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(uint64_t)a1 keysToIgnore:(uint64_t)a2 fetchKeysToIgnoreBlock:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKDiff.m" lineNumber:296 description:@"One of these has to be non-nil"];
}

+ (void)_populateIdentityKeysForDiff:(void *)a1 keysToIgnore:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentIdentityKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentIdentityKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

+ (void)_populateImmutableKeysForDiff:(void *)a1 keysToIgnore:.cold.2(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5_0() differentImmutableKeys];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_4() differentImmutableKeys];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);

  v10 = *MEMORY[0x1E69E9840];
}

@end
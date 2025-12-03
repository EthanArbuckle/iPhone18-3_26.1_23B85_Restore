@interface EKDiff
+ (id)_addChangeStarIfChangedKey:(id)key onObject:(id)object;
+ (id)_keysToIgnoreForComputingDiff;
+ (id)_keysToIgnoreForComputingUIDiff;
+ (id)diffBetweenObject:(id)object andObject:(id)andObject compareUIVisiblePropertiesOnly:(BOOL)only;
+ (id)diffBetweenObject:(id)object andObject:(id)andObject fetchKeysToIgnoreBlock:(id)block;
+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)object andObject:(id)andObject;
+ (void)_addObject:(id)object forKey:(id)key toDiff:(id)diff;
+ (void)_addPaddedHeaderToMutableString:(id)string forKey:(id)key withDepth:(int64_t)depth;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipMultiValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject;
+ (void)_populateIdentityKeysForDiff:(id)diff keysToIgnore:(id)ignore;
+ (void)_populateImmutableKeysForDiff:(id)diff keysToIgnore:(id)ignore;
+ (void)_populateMultiValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
+ (void)_populateSingleValueKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
+ (void)_populateSingleValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block;
- (EKDiff)initWithFirstObject:(id)object secondObject:(id)secondObject;
- (id)_multiValueModifiedObjectsForKey:(id)key;
- (id)_nonNilObject;
- (id)changeSetForDiff;
- (id)copyOfObject:(id)object alreadyCopiedObjects:(id)objects madeNewCopy:(BOOL *)copy;
- (id)differentKeys;
- (id)summaryDictionary;
- (id)summaryString;
- (void)_summarizeDiffsBetweenFirstObject:(id)object secondObject:(id)secondObject mutableString:(id)string depth:(int64_t)depth;
@end

@implementation EKDiff

- (EKDiff)initWithFirstObject:(id)object secondObject:(id)secondObject
{
  objectCopy = object;
  secondObjectCopy = secondObject;
  v11.receiver = self;
  v11.super_class = EKDiff;
  v8 = [(EKDiff *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(EKDiff *)v8 setFirstObject:objectCopy];
    [(EKDiff *)v9 setSecondObject:secondObjectCopy];
  }

  return v9;
}

- (id)_nonNilObject
{
  firstObject = [(EKDiff *)self firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    secondObject = firstObject;
  }

  else
  {
    secondObject = [(EKDiff *)self secondObject];
  }

  v6 = secondObject;

  return v6;
}

+ (id)keysToIgnoreForComparingUIVisiblePropertiesOfObject:(id)object andObject:(id)andObject
{
  if (object)
  {
    andObjectCopy = object;
  }

  else
  {
    andObjectCopy = andObject;
  }

  v7 = andObjectCopy;
  andObjectCopy2 = andObject;
  objectCopy2 = object;
  knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];
  v11 = objc_opt_class();

  knownSingleValueKeysToSkipForUIComparison = [v11 knownSingleValueKeysToSkipForUIComparison];
  v13 = [knownIdentityKeysForComparison arrayByAddingObjectsFromArray:knownSingleValueKeysToSkipForUIComparison];

  return v13;
}

+ (id)diffBetweenObject:(id)object andObject:(id)andObject compareUIVisiblePropertiesOnly:(BOOL)only
{
  onlyCopy = only;
  objectCopy = object;
  andObjectCopy = andObject;
  if (onlyCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __69__EKDiff_diffBetweenObject_andObject_compareUIVisiblePropertiesOnly___block_invoke;
    aBlock[3] = &__block_descriptor_40_e40___NSArray_24__0__EKObject_8__EKObject_16l;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);
  }

  else
  {
    v10 = 0;
  }

  v11 = [self diffBetweenObject:objectCopy andObject:andObjectCopy fetchKeysToIgnoreBlock:v10];

  return v11;
}

+ (id)diffBetweenObject:(id)object andObject:(id)andObject fetchKeysToIgnoreBlock:(id)block
{
  objectCopy = object;
  andObjectCopy = andObject;
  blockCopy = block;
  v11 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff diffBetweenObject:objectCopy andObject:andObjectCopy fetchKeysToIgnoreBlock:v11];
  }

  if (objectCopy)
  {
    v12 = andObjectCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  v14 = [[EKDiff alloc] initWithFirstObject:objectCopy secondObject:andObjectCopy];
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

  _keysToIgnoreForComputingDiff = [self _keysToIgnoreForComputingDiff];
  if (blockCopy)
  {
    v16 = blockCopy[2](blockCopy, objectCopy, andObjectCopy);
    if (v16)
    {
      v17 = [_keysToIgnoreForComputingDiff setByAddingObjectsFromArray:v16];

      _keysToIgnoreForComputingDiff = v17;
    }
  }

  [self _populateSingleValueKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  [self _populateImmutableKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff];
  [self _populateSingleValueRelationshipKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  [self _populateMultiValueRelationshipKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff fetchKeysToIgnoreBlock:blockCopy];
  differentSingleValueKeys = [(EKDiff *)v14 differentSingleValueKeys];
  if ([differentSingleValueKeys count])
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

  differentRelationshipSingleValueKeys = [(EKDiff *)v14 differentRelationshipSingleValueKeys];
  if (![differentRelationshipSingleValueKeys count])
  {
    differentRelationshipMultiValueKeys = [(EKDiff *)v14 differentRelationshipMultiValueKeys];
    if (![differentRelationshipMultiValueKeys count])
    {
      differentImmutableKeys = [(EKDiff *)v14 differentImmutableKeys];
      if ([differentImmutableKeys count])
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
  [self _populateIdentityKeysForDiff:v14 keysToIgnore:_keysToIgnoreForComputingDiff];
  differentIdentityKeys = [(EKDiff *)v14 differentIdentityKeys];
  v21 = [differentIdentityKeys count];

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
  block[4] = self;
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

+ (void)_populateSingleValueKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownSingleValueKeysForComparison = [objc_opt_class() knownSingleValueKeysForComparison];

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __78__EKDiff__populateSingleValueKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v23 = &unk_1E77FDBF0;
  v13 = diffCopy;
  v24 = v13;
  v14 = blockCopy;
  v26 = v14;
  v15 = ignoreCopy;
  v25 = v15;
  selfCopy = self;
  v16 = [knownSingleValueKeysForComparison indexesOfObjectsPassingTest:&v20];
  v17 = [knownSingleValueKeysForComparison objectsAtIndexes:{v16, v20, v21, v22, v23}];

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

+ (void)_populateSingleValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateSingleValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownDerivedAndSingleValueRelationshipKeys = [objc_opt_class() knownDerivedAndSingleValueRelationshipKeys];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = knownDerivedAndSingleValueRelationshipKeys;
  v10 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  v11 = ignoreCopy;
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
          firstObject = [diffCopy firstObject];
          if ([firstObject isPropertyUnavailable:v15])
          {
            secondObject = [diffCopy secondObject];
            v18 = [secondObject isPropertyUnavailable:v15];

            if (v18)
            {
              continue;
            }
          }

          else
          {
          }

          firstObject2 = [diffCopy firstObject];
          v20 = [firstObject2 valueForKey:v15];

          secondObject2 = [diffCopy secondObject];
          v22 = [secondObject2 valueForKey:v15];

          if (v20 | v22)
          {
            if (v20 && v22)
            {
              _keysToIgnoreForComputingDiff = [self _keysToIgnoreForComputingDiff];
              if (blockCopy)
              {
                v24 = blockCopy[2]();
                if (v24)
                {
                  v25 = [_keysToIgnoreForComputingDiff setByAddingObjectsFromArray:v24];

                  _keysToIgnoreForComputingDiff = v25;
                }
              }

              _nonNilObject2 = [diffCopy _nonNilObject];
              v27 = [objc_opt_class() _compareRelationshipObject1:v20 againstRelationshipObject2:v22 propertiesToIgnore:_keysToIgnoreForComputingDiff relationshipObjectKey:v15];

              if ((v27 & 1) == 0)
              {
                v28 = [EKDiff diffBetweenObject:v20 andObject:v22 fetchKeysToIgnoreBlock:blockCopy];
                differentKeys = [v28 differentKeys];
                v36 = [differentKeys count];

                if (v36)
                {
                  [dictionary setObject:v28 forKeyedSubscript:v15];
                }
              }

              v11 = ignoreCopy;
            }

            else
            {
              _keysToIgnoreForComputingDiff = [MEMORY[0x1E695DFB0] null];
              [dictionary setObject:_keysToIgnoreForComputingDiff forKeyedSubscript:v15];
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v12);
  }

  [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  v31 = v30 = v11;
  [diffCopy setRelationshipSingleValueModifies:v31];

  v32 = MEMORY[0x1E695DFD8];
  allKeys = [dictionary allKeys];
  v34 = [v32 setWithArray:allKeys];
  [diffCopy setDifferentRelationshipSingleValueKeys:v34];

  v35 = *MEMORY[0x1E69E9840];
}

+ (void)_populateMultiValueRelationshipKeysForDiff:(id)diff keysToIgnore:(id)ignore fetchKeysToIgnoreBlock:(id)block
{
  v104 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  ignoreCopy = ignore;
  blockCopy = block;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateMultiValueRelationshipKeysForDiff:keysToIgnore:fetchKeysToIgnoreBlock:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownRelationshipMultiValueKeys = [objc_opt_class() knownRelationshipMultiValueKeys];

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __89__EKDiff__populateMultiValueRelationshipKeysForDiff_keysToIgnore_fetchKeysToIgnoreBlock___block_invoke;
  v96[3] = &unk_1E77FDC18;
  v63 = ignoreCopy;
  v97 = v63;
  v12 = diffCopy;
  v98 = v12;
  selfCopy = self;
  v13 = [knownRelationshipMultiValueKeys indexesOfObjectsPassingTest:v96];
  v64 = knownRelationshipMultiValueKeys;
  v14 = [knownRelationshipMultiValueKeys objectsAtIndexes:v13];

  v62 = v14;
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  [v12 setDifferentRelationshipMultiValueKeys:v15];

  v16 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKDiff _populateMultiValueRelationshipKeysForDiff:v16 keysToIgnore:? fetchKeysToIgnoreBlock:?];
  }

  v17 = 0x1E695D000uLL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
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
    selfCopy2 = self;
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
        dictionary4 = [*(v17 + 3984) dictionary];
        v20 = *(v17 + 3984);
        v21 = objc_opt_new();
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        firstObject = [v12 firstObject];
        v75 = v19;
        v23 = [firstObject valueForKey:v19];

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
              uniqueIdentifier = [v28 uniqueIdentifier];
              if ([uniqueIdentifier length])
              {
                [v21 setObject:v28 forKeyedSubscript:uniqueIdentifier];
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
        secondObject = [v12 secondObject];
        v33 = [secondObject valueForKey:v75];

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
              uniqueIdentifier2 = [v38 uniqueIdentifier];
              if ([uniqueIdentifier2 length])
              {
                [v31 setObject:v38 forKeyedSubscript:uniqueIdentifier2];
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v84 objects:v101 count:16];
          }

          while (v35);
        }

        v40 = MEMORY[0x1E695DFD8];
        allKeys = [v21 allKeys];
        v42 = [v40 setWithArray:allKeys];
        allKeys2 = [v31 allKeys];
        v44 = [v42 setByAddingObjectsFromArray:allKeys2];

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
                [EKDiff _populateMultiValueRelationshipKeysForDiff:a2 keysToIgnore:selfCopy2 fetchKeysToIgnoreBlock:?];
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
                v55 = [EKDiff diffBetweenObject:v52 andObject:v54 fetchKeysToIgnoreBlock:blockCopy];
                [dictionary4 setObject:v55 forKeyedSubscript:v51];

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
          [dictionary setObject:v47 forKeyedSubscript:v75];
        }

        if ([v79 count])
        {
          [dictionary2 setObject:v79 forKeyedSubscript:v75];
        }

        if ([dictionary4 count])
        {
          [dictionary3 setObject:dictionary4 forKeyedSubscript:v75];
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

  if ([dictionary count])
  {
    v58 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
    [v12 setRelationshipMultiValueAdds:v58];
  }

  if ([dictionary2 count])
  {
    v59 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary2];
    [v12 setRelationshipMultiValueRemoves:v59];
  }

  if ([dictionary3 count])
  {
    v60 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary3];
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

+ (void)_populateIdentityKeysForDiff:(id)diff keysToIgnore:(id)ignore
{
  diffCopy = diff;
  ignoreCopy = ignore;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateIdentityKeysForDiff:keysToIgnore:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownIdentityKeysForComparison = [objc_opt_class() knownIdentityKeysForComparison];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__EKDiff__populateIdentityKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = ignoreCopy;
  v17 = v10;
  v11 = diffCopy;
  v18 = v11;
  selfCopy = self;
  v12 = [knownIdentityKeysForComparison indexesOfObjectsPassingTest:v16];
  v13 = [knownIdentityKeysForComparison objectsAtIndexes:v12];

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

+ (void)_populateImmutableKeysForDiff:(id)diff keysToIgnore:(id)ignore
{
  diffCopy = diff;
  ignoreCopy = ignore;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    +[EKDiff _populateImmutableKeysForDiff:keysToIgnore:];
  }

  _nonNilObject = [diffCopy _nonNilObject];
  knownImmutableKeys = [objc_opt_class() knownImmutableKeys];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__EKDiff__populateImmutableKeysForDiff_keysToIgnore___block_invoke;
  v16[3] = &unk_1E77FDC18;
  v10 = ignoreCopy;
  v17 = v10;
  v11 = diffCopy;
  v18 = v11;
  selfCopy = self;
  v12 = [knownImmutableKeys indexesOfObjectsPassingTest:v16];
  v13 = [knownImmutableKeys objectsAtIndexes:v12];

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

- (id)_multiValueModifiedObjectsForKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  relationshipMultiValueModifies = [(EKDiff *)self relationshipMultiValueModifies];
  v6 = [relationshipMultiValueModifies objectForKeyedSubscript:keyCopy];

  v7 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [v6 allValues];
  v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        secondObject = [*(*(&v16 + 1) + 8 * i) secondObject];
        [v7 addObject:secondObject];
      }

      v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)differentKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  [v3 unionSet:differentIdentityKeys];

  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  [v3 unionSet:differentImmutableKeys];

  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  [v3 unionSet:differentSingleValueKeys];

  differentRelationshipSingleValueKeys = [(EKDiff *)self differentRelationshipSingleValueKeys];
  [v3 unionSet:differentRelationshipSingleValueKeys];

  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  [v3 unionSet:differentRelationshipMultiValueKeys];

  v9 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v9;
}

- (id)summaryDictionary
{
  v147 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  v5 = [differentSingleValueKeys countByEnumeratingWithState:&v134 objects:v146 count:16];
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
          objc_enumerationMutation(differentSingleValueKeys);
        }

        v9 = *(*(&v134 + 1) + 8 * i);
        null = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null forKeyedSubscript:v9];
      }

      v6 = [differentSingleValueKeys countByEnumeratingWithState:&v134 objects:v146 count:16];
    }

    while (v6);
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  v12 = [differentIdentityKeys countByEnumeratingWithState:&v130 objects:v145 count:16];
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
          objc_enumerationMutation(differentIdentityKeys);
        }

        v16 = *(*(&v130 + 1) + 8 * j);
        null2 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null2 forKeyedSubscript:v16];
      }

      v13 = [differentIdentityKeys countByEnumeratingWithState:&v130 objects:v145 count:16];
    }

    while (v13);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  v19 = [differentImmutableKeys countByEnumeratingWithState:&v126 objects:v144 count:16];
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
          objc_enumerationMutation(differentImmutableKeys);
        }

        v23 = *(*(&v126 + 1) + 8 * k);
        null3 = [MEMORY[0x1E695DFB0] null];
        [dictionary setObject:null3 forKeyedSubscript:v23];
      }

      v20 = [differentImmutableKeys countByEnumeratingWithState:&v126 objects:v144 count:16];
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
        firstObject = [(EKDiff *)self firstObject];
        v31 = [firstObject valueForKey:v29];

        secondObject = [(EKDiff *)self secondObject];
        v33 = [secondObject valueForKey:v29];

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
          null4 = [MEMORY[0x1E695DFB0] null];
          [dictionary setObject:null4 forKeyedSubscript:v29];
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
                  selfCopy = self;
                  v52 = v43;
                  v54 = v53 = v31;
                  v34 = v96;
                  [dictionary setObject:v54 forKeyedSubscript:v94];

                  null5 = [MEMORY[0x1E695DFB0] null];
                  [dictionary setObject:null5 forKeyedSubscript:v50];

                  v31 = v53;
                  v43 = v52;
                  self = selfCopy;
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
          null4 = v92;
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
  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  v99 = [differentRelationshipMultiValueKeys countByEnumeratingWithState:&v114 objects:v141 count:16];
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
          objc_enumerationMutation(differentRelationshipMultiValueKeys);
        }

        v101 = v58;
        v59 = *(*(&v114 + 1) + 8 * v58);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        relationshipMultiValueAdds = [(EKDiff *)self relationshipMultiValueAdds];
        v61 = [relationshipMultiValueAdds objectForKeyedSubscript:v59];

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
              [v67 _addObject:v66 forKey:v68 toDiff:dictionary];
            }

            v63 = [v61 countByEnumeratingWithState:&v110 objects:v140 count:16];
          }

          while (v63);
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        relationshipMultiValueRemoves = [(EKDiff *)self relationshipMultiValueRemoves];
        v70 = [relationshipMultiValueRemoves objectForKeyedSubscript:v59];

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
              [v76 _addObject:v75 forKey:v77 toDiff:dictionary];
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
              [v84 _addObject:v83 forKey:v85 toDiff:dictionary];
            }

            v80 = [v78 countByEnumeratingWithState:&v102 objects:v138 count:16];
          }

          while (v80);
        }

        v58 = v101 + 1;
      }

      while (v101 + 1 != v99);
      v99 = [differentRelationshipMultiValueKeys countByEnumeratingWithState:&v114 objects:v141 count:16];
    }

    while (v99);
  }

  v86 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (void)_addObject:(id)object forKey:(id)key toDiff:(id)diff
{
  objectCopy = object;
  keyCopy = key;
  diffCopy = diff;
  v9 = [diffCopy objectForKey:keyCopy];

  if (v9)
  {
    v10 = [diffCopy objectForKey:keyCopy];
    [v10 addObject:objectCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] setWithObject:objectCopy];
    [diffCopy setObject:v10 forKey:keyCopy];
  }
}

- (id)summaryString
{
  firstObject = [(EKDiff *)self firstObject];

  if (firstObject)
  {
    string = [MEMORY[0x1E696AD60] string];
    firstObject2 = [(EKDiff *)self firstObject];
    secondObject = [(EKDiff *)self secondObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:firstObject2 secondObject:secondObject mutableString:string depth:0];

    [string appendString:@"\n-------------------------\n"];
    secondObject2 = [(EKDiff *)self secondObject];
    firstObject3 = [(EKDiff *)self firstObject];
    [(EKDiff *)self _summarizeDiffsBetweenFirstObject:secondObject2 secondObject:firstObject3 mutableString:string depth:0];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    secondObject2 = [(EKDiff *)self secondObject];
    string = [v9 stringWithFormat:@"No object for comparison, %@ is entirely different", secondObject2];
  }

  return string;
}

- (void)_summarizeDiffsBetweenFirstObject:(id)object secondObject:(id)secondObject mutableString:(id)string depth:(int64_t)depth
{
  stringCopy = string;
  secondObjectCopy = secondObject;
  objectCopy = object;
  v13 = [objectCopy _basicSummaryWithDepth:depth];
  [stringCopy appendString:v13];

  v14 = objc_opt_class();
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  allObjects = [differentSingleValueKeys allObjects];
  [v14 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects firstObject:objectCopy secondObject:secondObjectCopy];

  v17 = objc_opt_class();
  differentIdentityKeys = [(EKDiff *)self differentIdentityKeys];
  allObjects2 = [differentIdentityKeys allObjects];
  [v17 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects2 firstObject:objectCopy secondObject:secondObjectCopy];

  v20 = objc_opt_class();
  differentImmutableKeys = [(EKDiff *)self differentImmutableKeys];
  allObjects3 = [differentImmutableKeys allObjects];
  [v20 _addSummaryWithDepth:depth toMutableString:stringCopy forSingleValueKeys:allObjects3 firstObject:objectCopy secondObject:secondObjectCopy];

  v23 = objc_opt_class();
  differentRelationshipSingleValueKeys = [(EKDiff *)self differentRelationshipSingleValueKeys];
  allObjects4 = [differentRelationshipSingleValueKeys allObjects];
  [v23 _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipSingleValueKeys:allObjects4 firstObject:objectCopy secondObject:secondObjectCopy];

  v26 = objc_opt_class();
  differentRelationshipMultiValueKeys = [(EKDiff *)self differentRelationshipMultiValueKeys];
  allObjects5 = [differentRelationshipMultiValueKeys allObjects];
  [v26 _addSummaryWithDepth:depth toMutableString:stringCopy forRelationshipMultiValueKeys:allObjects5 firstObject:objectCopy secondObject:secondObjectCopy];
}

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  if ([keysCopy count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = keysCopy;
    obj = keysCopy;
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
          [stringCopy appendString:@"\n"];
          v19 = [objc_opt_class() _addChangeStarIfChangedKey:v18 onObject:objectCopy];
          [self _addPaddedHeaderToMutableString:stringCopy forKey:v19 withDepth:depth];
          v20 = [objectCopy valueForKey:v18];
          [stringCopy appendFormat:@"%@", v20];

          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    keysCopy = v22;
  }

  v21 = *MEMORY[0x1E69E9840];
}

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipSingleValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  secondObjectCopy = secondObject;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = keysCopy;
  v28 = [keysCopy countByEnumeratingWithState:&v30 objects:v34 count:16];
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
        [stringCopy appendString:@"\n"];
        [self _addPaddedHeaderToMutableString:stringCopy forKey:v15 withDepth:depth];
        v16 = [objectCopy valueForKey:v15];
        v17 = [secondObjectCopy valueForKey:v15];
        eventStore = [objectCopy eventStore];
        v19 = [v16 meltedObjectInStore:eventStore];

        eventStore2 = [secondObjectCopy eventStore];
        v21 = [v17 meltedObjectInStore:eventStore2];

        if (!v16)
        {
          [stringCopy appendString:@"(null)"];
          goto LABEL_13;
        }

        if ([objc_msgSend(objc_opt_class() "meltedClass")])
        {
          uniqueIdentifier = [v16 uniqueIdentifier];
          [stringCopy appendFormat:@"<weak relation: %@>", uniqueIdentifier];
LABEL_12:

          goto LABEL_13;
        }

        if (secondObjectCopy)
        {
          uniqueIdentifier = [v19 diffWithObject:v21];
          [uniqueIdentifier _summarizeDiffsBetweenFirstObject:v19 secondObject:v21 mutableString:stringCopy depth:depth + 4];
          goto LABEL_12;
        }

        [v19 _addSummaryWithDepth:depth + 4 toMutableString:stringCopy indentFirstLine:0];
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

+ (void)_addSummaryWithDepth:(int64_t)depth toMutableString:(id)string forRelationshipMultiValueKeys:(id)keys firstObject:(id)object secondObject:(id)secondObject
{
  v47 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keysCopy = keys;
  objectCopy = object;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = keysCopy;
  v15 = [keysCopy countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    selfCopy = self;
    secondObjectCopy = secondObject;
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
        [stringCopy appendString:@"\n"];
        [self _addPaddedHeaderToMutableString:stringCopy forKey:v19 withDepth:depth];
        v36 = v18;
        if (secondObject)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There is a difference for the multi-valued key: %@", v19];
          [stringCopy appendString:v20];
        }

        else
        {
          v21 = [objectCopy valueForKey:v19];
          v22 = v21;
          if (!v21 || ![v21 count])
          {
            [stringCopy appendString:@"(null)"];
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
                eventStore = [objectCopy eventStore];
                v29 = [v27 meltedObjectInStore:eventStore];

                [stringCopy appendString:@"\n"];
                if (v27)
                {
                  [v29 _addSummaryWithDepth:depth + 8 toMutableString:stringCopy indentFirstLine:1];
                }

                else
                {
                  [stringCopy appendString:@"(null)"];
                }

                ++v26;
              }

              while (v24 != v26);
              v24 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v24);
          }

          self = selfCopy;
          secondObject = secondObjectCopy;
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

+ (void)_addPaddedHeaderToMutableString:(id)string forKey:(id)key withDepth:(int64_t)depth
{
  keyCopy = key;
  stringCopy = string;
  v10 = [self _indentStringAtDepth:depth + 4];
  [stringCopy appendString:v10];

  v11 = [keyCopy stringByPaddingToLength:20 withString:@" " startingAtIndex:0];

  [stringCopy appendFormat:@"%@: ", v11];
}

+ (id)_addChangeStarIfChangedKey:(id)key onObject:(id)object
{
  keyCopy = key;
  changeSet = [object changeSet];
  v7 = [changeSet hasUnsavedChangeForKey:keyCopy];

  if (v7)
  {
    keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"* %@", keyCopy];
  }

  else
  {
    keyCopy = keyCopy;
  }

  v9 = keyCopy;

  return v9;
}

- (id)copyOfObject:(id)object alreadyCopiedObjects:(id)objects madeNewCopy:(BOOL *)copy
{
  objectCopy = object;
  objectsCopy = objects;
  objectID = [objectCopy objectID];
  v10 = [objectsCopy objectForKeyedSubscript:objectID];
  if (v10)
  {
    v11 = v10;
    if (copy)
    {
      *copy = 0;
    }
  }

  else
  {
    if (copy)
    {
      *copy = 1;
    }

    v11 = [objectCopy copy];
    [objectsCopy setObject:v11 forKeyedSubscript:objectID];
  }

  return v11;
}

- (id)changeSetForDiff
{
  v93 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  differentSingleValueKeys = [(EKDiff *)self differentSingleValueKeys];
  v4 = [differentSingleValueKeys countByEnumeratingWithState:&v85 objects:v92 count:16];
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
          objc_enumerationMutation(differentSingleValueKeys);
        }

        v9 = *(*(&v85 + 1) + 8 * i);
        secondObject = [(EKDiff *)self secondObject];
        v11 = [secondObject valueForKey:v9];
        v12 = v11;
        if (v11)
        {
          null = v11;
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v14 = null;

        [dictionary setObject:v14 forKeyedSubscript:v9];
      }

      v6 = [differentSingleValueKeys countByEnumeratingWithState:&v85 objects:v92 count:16];
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
        relationshipSingleValueModifies = [(EKDiff *)self relationshipSingleValueModifies];
        v20 = [relationshipSingleValueModifies objectForKeyedSubscript:v18];

        null2 = [*(v5 + 4016) null];
        v22 = [v20 isEqual:null2];

        if (v22)
        {
          secondObject2 = [(EKDiff *)self secondObject];
          v24 = [secondObject2 valueForKey:v18];
          v25 = v24;
          if (v24)
          {
            null3 = v24;
          }

          else
          {
            null3 = [*(v5 + 4016) null];
          }

          v35 = null3;

          [dictionary setObject:v35 forKeyedSubscript:v18];
        }

        else
        {
          v27 = v5;
          v80 = 0;
          secondObject3 = [(EKDiff *)self secondObject];
          v29 = [secondObject3 valueForKey:v18];

          secondObject4 = [(EKDiff *)self secondObject];
          eventStore = [secondObject4 eventStore];
          v32 = [v29 meltedObjectInStore:eventStore];

          v33 = [(EKDiff *)self copyOfObject:v32 alreadyCopiedObjects:v15 madeNewCopy:&v80];
          if (v80 == 1)
          {
            changeSetForDiff = [v20 changeSetForDiff];
            [v33 addChanges:changeSetForDiff];
          }

          [dictionary setObject:v33 forKeyedSubscript:v18];

          v5 = v27;
          v16 = v65;
        }
      }

      v69 = [obj countByEnumeratingWithState:&v81 objects:v91 count:16];
    }

    while (v69);
  }

  v36 = MEMORY[0x1E695DF90];
  relationshipMultiValueAdds = [(EKDiff *)self relationshipMultiValueAdds];
  v38 = [v36 dictionaryWithDictionary:relationshipMultiValueAdds];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  relationshipMultiValueModifies = [(EKDiff *)self relationshipMultiValueModifies];
  v64 = [relationshipMultiValueModifies countByEnumeratingWithState:&v76 objects:v90 count:16];
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
          objc_enumerationMutation(relationshipMultiValueModifies);
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

        relationshipMultiValueModifies2 = [(EKDiff *)self relationshipMultiValueModifies];
        obja = v40;
        v46 = [relationshipMultiValueModifies2 objectForKeyedSubscript:v40];

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v66 = v46;
        allValues = [v46 allValues];
        v48 = [allValues countByEnumeratingWithState:&v72 objects:v89 count:16];
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
                objc_enumerationMutation(allValues);
              }

              v52 = *(*(&v72 + 1) + 8 * k);
              v80 = 0;
              secondObject5 = [v52 secondObject];
              v54 = [(EKDiff *)self copyOfObject:secondObject5 alreadyCopiedObjects:v15 madeNewCopy:&v80];

              if (v80 == 1)
              {
                changeSetForDiff2 = [v52 changeSetForDiff];
                [v54 addChanges:changeSetForDiff2];
              }

              [v44 addObject:v54];
            }

            v49 = [allValues countByEnumeratingWithState:&v72 objects:v89 count:16];
          }

          while (v49);
        }

        v38 = v63;
        [v63 setObject:v44 forKeyedSubscript:obja];

        v39 = v70 + 1;
      }

      while (v70 + 1 != v64);
      v64 = [relationshipMultiValueModifies countByEnumeratingWithState:&v76 objects:v90 count:16];
    }

    while (v64);
  }

  v56 = [EKChangeSet alloc];
  relationshipMultiValueRemoves = [(EKDiff *)self relationshipMultiValueRemoves];
  v58 = [(EKChangeSet *)v56 initWithSingleValueChanges:dictionary multiValueAdditions:v38 multiValueRemovals:relationshipMultiValueRemoves];

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
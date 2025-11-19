@interface NSArray(HealthKit)
+ (id)hk_arrayWithCount:()HealthKit generator:;
+ (uint64_t)_permutationHelperForArray:()HealthKit number:permutationHandler:;
- (BOOL)hk_allElementsUnique;
- (BOOL)hk_containsObjectPassingTest:()HealthKit;
- (double)hk_sumUsingEvaluationBlock:()HealthKit;
- (id)hk_averageUsingEvaluationBlock:()HealthKit;
- (id)hk_filter:()HealthKit;
- (id)hk_firstObjectPassingTest:()HealthKit;
- (id)hk_firstObjectWithMaximumValueUsingEvaluationBlock:()HealthKit;
- (id)hk_firstObjectWithMinimumValueUsingEvaluationBlock:()HealthKit;
- (id)hk_firstSortedObjectWithComparison:()HealthKit;
- (id)hk_foldRightFrom:()HealthKit with:;
- (id)hk_map:()HealthKit;
- (id)hk_map:()HealthKit error:;
- (id)hk_mapToDictionary:()HealthKit;
- (id)hk_mapToSet:()HealthKit;
- (id)hk_mutableSubarrayWithRange:()HealthKit;
- (id)hk_orPredicateWithPredicateBlock:()HealthKit;
- (id)hk_reversed;
- (id)hk_shuffled;
- (id)hk_splitWithBucketCount:()HealthKit;
- (uint64_t)_permutationsWithCount:()HealthKit permutation:depth:block:;
- (uint64_t)hk_allElementsEqual;
- (uint64_t)hk_allObjectsPassTest:()HealthKit;
- (uint64_t)hk_containsObjectsInArray:()HealthKit;
- (void)hk_enumeratePermutationsOfSubsetsOfLength:()HealthKit block:;
- (void)hk_enumeratePermutationsWithBlock:()HealthKit;
- (void)hk_partitionArrayWithPartitionSetupBlock:()HealthKit partitionMembershipCheckBlock:partitionExtendBlock:partitionFinalizeBlock:;
@end

@implementation NSArray(HealthKit)

+ (id)hk_arrayWithCount:()HealthKit generator:
{
  v5 = a4;
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    if (a3 >= 1)
    {
      do
      {
        v7 = objc_autoreleasePoolPush();
        v8 = v5[2](v5);
        objc_autoreleasePoolPop(v7);
        if (v8)
        {
          [v6 addObject:v8];
        }

        --a3;
      }

      while (a3);
    }
  }

  else
  {
    +[NSArray(HealthKit) hk_arrayWithCount:generator:];
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (id)hk_map:()HealthKit
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = a1;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = v4[2](v4, *(*(&v14 + 1) + 8 * i));
          if (v11)
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [NSArray(HealthKit) hk_map:];
    v5 = v18;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)hk_map:()HealthKit error:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = a1;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v22 = a4;
      v11 = 0;
      v12 = *v25;
      while (2)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v24 + 1) + 8 * v13);
          v23 = v14;
          v16 = v6[2](v6, v15, &v23);
          v11 = v23;

          if (!v16)
          {
            v17 = v11;
            v11 = v17;
            if (v17)
            {
              if (v22)
              {
                v18 = v17;
                *v22 = v11;
              }

              else
              {
                _HKLogDroppedError(v17);
              }
            }

            v19 = 0;
            goto LABEL_18;
          }

          [v7 addObject:v16];

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

    v19 = v7;
LABEL_18:
  }

  else
  {
    [NSArray(HealthKit) hk_map:error:];
    v19 = v28;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)hk_filter:()HealthKit
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __32__NSArray_HealthKit__hk_filter___block_invoke;
  v10[3] = &unk_1E737E9D0;
  v11 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v10];
  v8 = [a1 filteredArrayUsingPredicate:v7];

  return v8;
}

- (id)hk_foldRightFrom:()HealthKit with:
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__24;
  v18 = __Block_byref_object_dispose__24;
  v19 = [v6 copy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__NSArray_HealthKit__hk_foldRightFrom_with___block_invoke;
  v11[3] = &unk_1E737E9F8;
  v13 = &v14;
  v8 = v7;
  v12 = v8;
  [a1 enumerateObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)hk_firstObjectPassingTest:()HealthKit
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [NSArray(HealthKit) hk_firstObjectPassingTest:];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)hk_containsObjectPassingTest:()HealthKit
{
  v1 = [a1 hk_firstObjectPassingTest:?];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)hk_allObjectsPassTest:()HealthKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!v4[2](v4, *(*(&v13 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)hk_averageUsingEvaluationBlock:()HealthKit
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = a1;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = v9 + v4[2](v4, *(*(&v14 + 1) + 8 * i));
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithDouble:{v9 / objc_msgSend(v5, "count", v14)}];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (double)hk_sumUsingEvaluationBlock:()HealthKit
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v9 = v9 + v4[2](v4, *(*(&v13 + 1) + 8 * i));
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)hk_firstObjectWithMaximumValueUsingEvaluationBlock:()HealthKit
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    v10 = -1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = v4[2](v4, v12);
        if (v13 > v10)
        {
          v14 = v13;
          v15 = v12;

          v8 = v15;
          v10 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)hk_firstObjectWithMinimumValueUsingEvaluationBlock:()HealthKit
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    v10 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = v4[2](v4, v12);
        if (v13 < v10)
        {
          v14 = v13;
          v15 = v12;

          v8 = v15;
          v10 = v14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)hk_firstSortedObjectWithComparison:()HealthKit
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (v8)
        {
          if (v4[2](v4, v8, *(*(&v15 + 1) + 8 * i)) == 1)
          {
            v12 = v11;

            v8 = v12;
          }
        }

        else
        {
          v8 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

- (uint64_t)hk_containsObjectsInArray:()HealthKit
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
  v8 = [v6 isSubsetOfSet:v7];

  return v8;
}

- (BOOL)hk_allElementsUnique
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
  v3 = [v2 count];
  v4 = v3 == [a1 count];

  return v4;
}

- (uint64_t)hk_allElementsEqual
{
  if (![a1 count])
  {
    return 1;
  }

  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
  v3 = [v2 count] == 1;

  return v3;
}

- (void)hk_partitionArrayWithPartitionSetupBlock:()HealthKit partitionMembershipCheckBlock:partitionExtendBlock:partitionFinalizeBlock:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([a1 count])
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 1;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __137__NSArray_HealthKit__hk_partitionArrayWithPartitionSetupBlock_partitionMembershipCheckBlock_partitionExtendBlock_partitionFinalizeBlock___block_invoke;
    v15[3] = &unk_1E737EA20;
    v20 = v21;
    v16 = v10;
    v17 = v11;
    v14 = v13;
    v18 = v14;
    v19 = v12;
    [a1 enumerateObjectsUsingBlock:v15];
    v14[2](v14);

    _Block_object_dispose(v21, 8);
  }
}

- (id)hk_orPredicateWithPredicateBlock:()HealthKit
{
  v1 = MEMORY[0x1E696AB28];
  v2 = [a1 hk_map:?];
  v3 = [v1 orPredicateWithSubpredicates:v2];

  return v3;
}

- (id)hk_mapToDictionary:()HealthKit
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = a1;
    v6 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __41__NSArray_HealthKit__hk_mapToDictionary___block_invoke;
          v14[3] = &unk_1E7379968;
          v15 = v5;
          v4[2](v4, v10, v14);
        }

        v7 = [obj countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [NSArray(HealthKit) hk_mapToDictionary:];
    v5 = v20;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)hk_mapToSet:()HealthKit
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = a1;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = v4[2](v4, v11);
          if (v13)
          {
            [v5 addObject:{v13, v16}];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [NSArray(HealthKit) hk_mapToSet:];
    v5 = v20;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)hk_enumeratePermutationsWithBlock:()HealthKit
{
  v4 = a3;
  if (v4)
  {
    if ([a1 count])
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = objc_opt_class();
      v7 = [a1 mutableCopy];
      v8 = [a1 count];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__NSArray_HealthKit__hk_enumeratePermutationsWithBlock___block_invoke;
      v10[3] = &unk_1E737EA48;
      v11 = v5;
      v12 = v4;
      v9 = v5;
      [v6 _permutationHelperForArray:v7 number:v8 permutationHandler:v10];
    }

    else
    {
      v13 = 0;
      (*(v4 + 2))(v4, a1, &v13);
    }
  }

  else
  {
    [NSArray(HealthKit) hk_enumeratePermutationsWithBlock:];
  }
}

- (id)hk_reversed
{
  v1 = [a1 reverseObjectEnumerator];
  v2 = [v1 allObjects];

  return v2;
}

- (id)hk_shuffled
{
  v1 = [a1 mutableCopy];
  [v1 hk_shuffle];
  v2 = [v1 copy];

  return v2;
}

+ (uint64_t)_permutationHelperForArray:()HealthKit number:permutationHandler:
{
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
    v11 = v9[2](v9, v10);
  }

  else if (a4 < 2)
  {
LABEL_10:
    v11 = [a1 _permutationHelperForArray:v8 number:a4 - 1 permutationHandler:v9];
  }

  else
  {
    v12 = 0;
    while ([a1 _permutationHelperForArray:v8 number:a4 - 1 permutationHandler:v9])
    {
      if (a4)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }

      [v8 exchangeObjectAtIndex:v13 withObjectAtIndex:a4 - 1];
      if (a4 - 1 == ++v12)
      {
        goto LABEL_10;
      }
    }

    v11 = 0;
  }

  return v11;
}

- (void)hk_enumeratePermutationsOfSubsetsOfLength:()HealthKit block:
{
  v6 = a4;
  if (v6)
  {
    if ([a1 count] < a3)
    {
      [NSArray(HealthKit) hk_enumeratePermutationsOfSubsetsOfLength:block:];
    }

    if ([a1 count] >= a3)
    {
      if ([a1 count])
      {
        if (a3)
        {
          v7 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:a3];
          [a1 _permutationsWithCount:a3 permutation:v7 depth:0 block:v6];
        }

        else
        {
          v8 = 0;
          v6[2](v6, MEMORY[0x1E695E0F0], &v8);
        }
      }

      else
      {
        v9 = 0;
        (v6)[2](v6, a1, &v9);
      }
    }
  }

  else
  {
    [NSArray(HealthKit) hk_enumeratePermutationsOfSubsetsOfLength:block:];
  }
}

- (uint64_t)_permutationsWithCount:()HealthKit permutation:depth:block:
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a6;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = a1;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    v16 = a5 + 1;
    while (2)
    {
      v17 = 0;
      v30 = v14;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v32 + 1) + 8 * v17);
        if (([v10 containsObject:v18] & 1) == 0)
        {
          [v10 setObject:v18 atIndexedSubscript:a5];
          if (v16 >= a3)
          {
            v31 = 0;
            v19 = objc_alloc(MEMORY[0x1E695DEC8]);
            [v10 array];
            v20 = v15;
            v21 = a5;
            v22 = v16;
            v23 = v12;
            v25 = v24 = a3;
            v26 = [v19 initWithArray:v25];
            v11[2](v11, v26, &v31);

            a3 = v24;
            v12 = v23;
            v16 = v22;
            a5 = v21;
            v15 = v20;
            v14 = v30;
            if (v31)
            {
LABEL_15:
              v27 = 0;
              goto LABEL_16;
            }
          }

          else if (![v12 _permutationsWithCount:a3 permutation:v10 depth:v16 block:v11])
          {
            goto LABEL_15;
          }

          [v10 removeObjectAtIndex:a5];
        }

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_16:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)hk_mutableSubarrayWithRange:()HealthKit
{
  v4 = a4;
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4]; v4; --v4)
  {
    v8 = [a1 objectAtIndexedSubscript:a3];
    [i addObject:v8];

    ++a3;
  }

  return i;
}

- (id)hk_splitWithBucketCount:()HealthKit
{
  v3 = a3;
  if (a3 <= 0)
  {
    [NSArray(HealthKit) hk_splitWithBucketCount:];
  }

  v5 = [a1 count];
  v6 = [a1 count];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v3];
  if (v3 >= 1)
  {
    v8 = 0;
    v9 = v6 % v3;
    v10 = MEMORY[0x1E695E0F0];
    v11 = v5 / v3;
    do
    {
      if (v9 <= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 + 1;
      }

      if (v8 < [a1 count] && v12)
      {
        v13 = [a1 subarrayWithRange:{v8, v12}];
        [v7 addObject:v13];
      }

      else
      {
        [v7 addObject:v10];
      }

      v9 -= v9 > 0;
      v8 += v12;
      --v3;
    }

    while (v3);
  }

  return v7;
}

+ (void)hk_arrayWithCount:()HealthKit generator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (uint64_t)hk_map:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_17();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_2();
  [v3 handleFailureInMethod:@"filter" object:? file:? lineNumber:? description:?];

  result = [v1 copy];
  *v0 = result;
  return result;
}

- (uint64_t)hk_map:()HealthKit error:.cold.1()
{
  OUTLINED_FUNCTION_0_17();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_2();
  [v3 handleFailureInMethod:@"filter" object:? file:? lineNumber:? description:?];

  result = [v1 copy];
  *v0 = result;
  return result;
}

- (void)hk_firstObjectPassingTest:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"testHandler" object:? file:? lineNumber:? description:?];
}

- (uint64_t)hk_mapToDictionary:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_17();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_2();
  [v2 handleFailureInMethod:@"map" object:? file:? lineNumber:? description:?];

  result = objc_opt_new();
  *v0 = result;
  return result;
}

- (uint64_t)hk_mapToSet:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_17();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_3_2();
  [v3 handleFailureInMethod:@"filter" object:? file:? lineNumber:? description:?];

  result = [MEMORY[0x1E695DFD8] setWithArray:v1];
  *v0 = result;
  return result;
}

- (void)hk_enumeratePermutationsWithBlock:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)hk_enumeratePermutationsOfSubsetsOfLength:()HealthKit block:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"count <= self.count" object:? file:? lineNumber:? description:?];
}

- (void)hk_enumeratePermutationsOfSubsetsOfLength:()HealthKit block:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)hk_splitWithBucketCount:()HealthKit .cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"count > 0" object:? file:? lineNumber:? description:?];
}

@end
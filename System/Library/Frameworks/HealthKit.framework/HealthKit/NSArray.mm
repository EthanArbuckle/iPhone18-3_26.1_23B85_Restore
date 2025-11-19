@interface NSArray
@end

@implementation NSArray

uint64_t __44__NSArray_HealthKit__hk_foldRightFrom_with___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

void __137__NSArray_HealthKit__hk_partitionArrayWithPartitionSetupBlock_partitionMembershipCheckBlock_partitionExtendBlock_partitionFinalizeBlock___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    (*(a1[4] + 16))();
    *(*(a1[8] + 8) + 24) = 0;
  }

  if (((*(a1[5] + 16))() & 1) == 0)
  {
    (*(a1[6] + 16))();
    (*(a1[4] + 16))();
  }

  (*(a1[7] + 16))();
}

uint64_t __41__NSArray_HealthKit__hk_mapToDictionary___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      return [*(result + 32) setObject:a3 forKeyedSubscript:a2];
    }
  }

  return result;
}

uint64_t __56__NSArray_HealthKit__hk_enumeratePermutationsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
    (*(*(a1 + 40) + 16))();
  }

  return 1;
}

void __50__NSArray_HKCodedObject__codingsForKeyPath_error___block_invoke(uint64_t a1, void *a2, unsigned __int8 a3, _BYTE *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 conformsToProtocol:*(a1 + 32)])
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 56) + 8);
    obj = *(v9 + 40);
    v10 = [v7 codingsForKeyPath:v8 error:&obj];
    objc_storeStrong((v9 + 40), obj);
    if (v10)
    {
      v23 = a4;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = *(*(a1 + 56) + 8);
            v24 = *(v17 + 40);
            v18 = [v16 indexableObjectCollectingPushingIndex:a3 error:&v24];
            objc_storeStrong((v17 + 40), v24);
            if (!v18)
            {
              *v23 = 1;
              goto LABEL_14;
            }

            [*(a1 + 48) addObject:v18];
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] hk_error:3 format:{@"Loop object %@ does not conform to HKCodedObject protocol", NSClassFromString(v7)}];
    v20 = *(*(a1 + 56) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    *a4 = 1;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __57__NSArray_HKCodedObject__applyConcepts_forKeyPath_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_1F068B830])
  {
    v8 = v7;
    v9 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 48) + 8);
    obj = *(v11 + 40);
    v12 = [v8 applyConcepts:v9 forKeyPath:v10 error:&obj];
    objc_storeStrong((v11 + 40), obj);

    if ((v12 & 1) == 0)
    {
      *a4 = 1;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] hk_error:3 format:{@"Loop object %@ does not conform to HKCodedObject protocol", NSClassFromString(v7)}];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    *a4 = 1;
  }
}

@end
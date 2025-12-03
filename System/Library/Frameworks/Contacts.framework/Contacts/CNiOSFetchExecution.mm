@interface CNiOSFetchExecution
+ (id)contactsMatchingPredicates:(id)predicates sortOrdering:(unsigned int)ordering matchInfos:(id *)infos options:(unint64_t)options addressBook:(void *)book environment:(id)environment error:(id *)error;
+ (id)contactsMatchingPredicates:(id)predicates sortOrdering:(unsigned int)ordering options:(unint64_t)options addressBook:(void *)book progressiveResults:(id)results completion:(id)completion environment:(id)environment;
+ (void)_extractContacts:(id *)contacts matchInfo:(id *)info fromBlockResults:(id)results containsNestedResults:(BOOL)nestedResults;
@end

@implementation CNiOSFetchExecution

+ (void)_extractContacts:(id *)contacts matchInfo:(id *)info fromBlockResults:(id)results containsNestedResults:(BOOL)nestedResults
{
  v34[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v10 = objc_autoreleasePoolPush();
  if (resultsCopy)
  {
    context = v10;
    if (!nestedResults)
    {
      v34[0] = resultsCopy;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];

      resultsCopy = v11;
    }

    array = [MEMORY[0x1E695DF70] array];
    if (info)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      dictionary = 0;
    }

    null = [MEMORY[0x1E695DFB0] null];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = resultsCopy;
    v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v27)
    {
      v26 = *v30;
      v14 = *MEMORY[0x1E698A438];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 count])
          {
            v17 = 0;
            v18 = 1;
            do
            {
              v19 = [v16 objectAtIndex:v18 - 1];
              [array addObject:v19];
              if (info)
              {
                v20 = [v16 objectAtIndex:v18];
                if (v20 != null)
                {
                  v21 = ABRecordCopyValue(v19, v14);
                  if (v21)
                  {
                    v22 = v21;
                    [dictionary setObject:v20 forKey:v21];
                    CFRelease(v22);
                  }
                }
              }

              v17 += 2;
              ++v18;
            }

            while ([v16 count] > v17);
          }
        }

        v27 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v27);
    }

    if (info)
    {
      objc_storeStrong(info, dictionary);
    }

    if (location)
    {
      objc_storeStrong(location, array);
    }

    v10 = context;
  }

  objc_autoreleasePoolPop(v10);
}

+ (id)contactsMatchingPredicates:(id)predicates sortOrdering:(unsigned int)ordering options:(unint64_t)options addressBook:(void *)book progressiveResults:(id)results completion:(id)completion environment:(id)environment
{
  resultsCopy = results;
  completionCopy = completion;
  v17 = [_CNABPredicateObservable observableWithPredicates:predicates sortOrdering:ordering options:options addressBook:book environment:environment];
  v18 = MEMORY[0x1E69967A0];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke;
  v31[3] = &unk_1E7417190;
  v32 = resultsCopy;
  selfCopy = self;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke_2;
  v29[3] = &unk_1E74142B8;
  v30 = completionCopy;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke_3;
  v27 = &unk_1E7413D98;
  v28 = v30;
  v19 = v30;
  v20 = resultsCopy;
  v21 = [v18 observerWithResultBlock:v31 completionBlock:v29 failureBlock:&v24];
  v22 = [v17 subscribe:{v21, v24, v25, v26, v27}];

  return v22;
}

void __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = 0;
    v4 = 0;
    [*(a1 + 40) _extractContacts:&v4 matchInfo:&v3 fromBlockResults:a2 containsNestedResults:0];
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __125__CNiOSFetchExecution_contactsMatchingPredicates_sortOrdering_options_addressBook_progressiveResults_completion_environment___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)contactsMatchingPredicates:(id)predicates sortOrdering:(unsigned int)ordering matchInfos:(id *)infos options:(unint64_t)options addressBook:(void *)book environment:(id)environment error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = [_CNABPredicateObservable observableWithPredicates:predicates sortOrdering:ordering options:options addressBook:book environment:environment];
  v11 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v12 = MEMORY[0x1E69967A0];
  completionHandlerAdapter = [v11 completionHandlerAdapter];
  v14 = [v12 observerWithCompletionHandler:completionHandlerAdapter];
  v15 = [v10 subscribe:v14];

  future = [v11 future];
  v17 = [future result:error];

  if (v17)
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = v11;
    v35 = v10;
    if (infos)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      dictionary = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v33 = v17;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      v23 = *MEMORY[0x1E698A438];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v37 + 1) + 8 * i);
          v26 = [v25 objectAtIndex:{0, v33}];
          [array addObject:v26];
          if (infos)
          {
            v27 = [v25 objectAtIndex:1];
            null = [MEMORY[0x1E695DFB0] null];

            if (v27 != null)
            {
              v29 = ABRecordCopyValue(v26, v23);
              if (v29)
              {
                v30 = v29;
                [dictionary setObject:v27 forKey:v29];
                CFRelease(v30);
              }
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    v31 = dictionary;
    if (infos)
    {
      v31 = dictionary;
      *infos = v31;
    }

    v11 = v34;
    v10 = v35;
    v17 = v33;
  }

  else
  {
    array = 0;
  }

  return array;
}

@end
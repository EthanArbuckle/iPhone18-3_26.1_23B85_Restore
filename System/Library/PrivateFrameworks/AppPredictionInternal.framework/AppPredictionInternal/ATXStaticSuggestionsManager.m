@interface ATXStaticSuggestionsManager
+ (BOOL)isValidPreviousPosition:(id)a3 uiLimit:(unint64_t)a4 newSuggestionsCount:(unint64_t)a5;
+ (BOOL)suggestionsAreAllAppExecutableTypeAndHaveValidHash:(id)a3;
+ (id)executableObjectHashToPositionMappingForSuggestions:(id)a3;
+ (id)preservePreviousAppPositionsForPreviousSuggestions:(id)a3 newSuggestions:(id)a4 uiLimit:(unint64_t)a5;
@end

@implementation ATXStaticSuggestionsManager

+ (id)preservePreviousAppPositionsForPreviousSuggestions:(id)a3 newSuggestions:(id)a4 uiLimit:(unint64_t)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([ATXStaticSuggestionsManager suggestionsAreAllAppExecutableTypeAndHaveValidHash:v7]&& [ATXStaticSuggestionsManager suggestionsAreAllAppExecutableTypeAndHaveValidHash:v8])
  {
    v31 = v7;
    v33 = [ATXStaticSuggestionsManager executableObjectHashToPositionMappingForSuggestions:v7];
    v9 = [v8 mutableCopy];
    v32 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = [v8 count];
    if (v11 >= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      for (i = 0; i < v20; ++i)
      {
        v14 = [v8 objectAtIndexedSubscript:i];
        v15 = MEMORY[0x277CCABB0];
        v16 = [v14 executableSpecification];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "executableObjectHash")}];

        v18 = [v33 objectForKeyedSubscript:v17];
        if (+[ATXStaticSuggestionsManager isValidPreviousPosition:uiLimit:newSuggestionsCount:](ATXStaticSuggestionsManager, "isValidPreviousPosition:uiLimit:newSuggestionsCount:", v18, a5, [v8 count]))
        {
          [v9 setObject:v14 atIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
          [v10 addIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];
        }

        else
        {
          [v32 addObject:v14];
        }

        v19 = [v8 count];
        if (v19 >= a5)
        {
          v20 = a5;
        }

        else
        {
          v20 = v19;
        }
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v32;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v35;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          if (v24 < [v9 count])
          {
            v28 = v24;
            while (([v10 containsIndex:v28] & 1) != 0)
            {
              if (++v28 >= [v9 count])
              {
                goto LABEL_26;
              }
            }

            [v9 setObject:v27 atIndexedSubscript:v28];
            v24 = v28 + 1;
          }

LABEL_26:
          ;
        }

        v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v23);
    }

    v7 = v31;
  }

  else
  {
    v9 = v8;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)suggestionsAreAllAppExecutableTypeAndHaveValidHash:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 executableSpecification];
        v10 = [v9 executableType];

        if (v10 == 1)
        {
          v11 = [v8 executableSpecification];
          v12 = [v11 executableObjectHash];

          if (v12)
          {
            continue;
          }
        }

        v13 = 0;
        goto LABEL_13;
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v13 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isValidPreviousPosition:(id)a3 uiLimit:(unint64_t)a4 newSuggestionsCount:(unint64_t)a5
{
  v7 = a3;
  v8 = v7;
  v9 = v7 && [v7 unsignedIntegerValue] < a4 && objc_msgSend(v8, "unsignedIntegerValue") < a5;

  return v9;
}

+ (id)executableObjectHashToPositionMappingForSuggestions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__ATXStaticSuggestionsManager_executableObjectHashToPositionMappingForSuggestions___block_invoke;
  v7[3] = &unk_278599578;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __83__ATXStaticSuggestionsManager_executableObjectHashToPositionMappingForSuggestions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v11 = [v5 numberWithUnsignedInteger:a3];
  v7 = *(a1 + 32);
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 executableSpecification];

  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "executableObjectHash")}];
  [v7 setObject:v11 forKeyedSubscript:v10];
}

@end
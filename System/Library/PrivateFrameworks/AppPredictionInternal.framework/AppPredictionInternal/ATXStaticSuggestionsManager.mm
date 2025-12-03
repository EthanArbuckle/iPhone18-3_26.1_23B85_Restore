@interface ATXStaticSuggestionsManager
+ (BOOL)isValidPreviousPosition:(id)position uiLimit:(unint64_t)limit newSuggestionsCount:(unint64_t)count;
+ (BOOL)suggestionsAreAllAppExecutableTypeAndHaveValidHash:(id)hash;
+ (id)executableObjectHashToPositionMappingForSuggestions:(id)suggestions;
+ (id)preservePreviousAppPositionsForPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions uiLimit:(unint64_t)limit;
@end

@implementation ATXStaticSuggestionsManager

+ (id)preservePreviousAppPositionsForPreviousSuggestions:(id)suggestions newSuggestions:(id)newSuggestions uiLimit:(unint64_t)limit
{
  v39 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  newSuggestionsCopy = newSuggestions;
  if ([ATXStaticSuggestionsManager suggestionsAreAllAppExecutableTypeAndHaveValidHash:suggestionsCopy]&& [ATXStaticSuggestionsManager suggestionsAreAllAppExecutableTypeAndHaveValidHash:newSuggestionsCopy])
  {
    v31 = suggestionsCopy;
    v33 = [ATXStaticSuggestionsManager executableObjectHashToPositionMappingForSuggestions:suggestionsCopy];
    v9 = [newSuggestionsCopy mutableCopy];
    v32 = objc_opt_new();
    v10 = objc_opt_new();
    v11 = [newSuggestionsCopy count];
    if (v11 >= limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = v11;
    }

    if (limitCopy)
    {
      for (i = 0; i < limitCopy2; ++i)
      {
        v14 = [newSuggestionsCopy objectAtIndexedSubscript:i];
        v15 = MEMORY[0x277CCABB0];
        executableSpecification = [v14 executableSpecification];
        v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(executableSpecification, "executableObjectHash")}];

        v18 = [v33 objectForKeyedSubscript:v17];
        if (+[ATXStaticSuggestionsManager isValidPreviousPosition:uiLimit:newSuggestionsCount:](ATXStaticSuggestionsManager, "isValidPreviousPosition:uiLimit:newSuggestionsCount:", v18, limit, [newSuggestionsCopy count]))
        {
          [v9 setObject:v14 atIndexedSubscript:{objc_msgSend(v18, "unsignedIntegerValue")}];
          [v10 addIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];
        }

        else
        {
          [v32 addObject:v14];
        }

        v19 = [newSuggestionsCopy count];
        if (v19 >= limit)
        {
          limitCopy2 = limit;
        }

        else
        {
          limitCopy2 = v19;
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

    suggestionsCopy = v31;
  }

  else
  {
    v9 = newSuggestionsCopy;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)suggestionsAreAllAppExecutableTypeAndHaveValidHash:(id)hash
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  hashCopy = hash;
  v4 = [hashCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(hashCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        executableSpecification = [v8 executableSpecification];
        executableType = [executableSpecification executableType];

        if (executableType == 1)
        {
          executableSpecification2 = [v8 executableSpecification];
          executableObjectHash = [executableSpecification2 executableObjectHash];

          if (executableObjectHash)
          {
            continue;
          }
        }

        v13 = 0;
        goto LABEL_13;
      }

      v5 = [hashCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)isValidPreviousPosition:(id)position uiLimit:(unint64_t)limit newSuggestionsCount:(unint64_t)count
{
  positionCopy = position;
  v8 = positionCopy;
  v9 = positionCopy && [positionCopy unsignedIntegerValue] < limit && objc_msgSend(v8, "unsignedIntegerValue") < count;

  return v9;
}

+ (id)executableObjectHashToPositionMappingForSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__ATXStaticSuggestionsManager_executableObjectHashToPositionMappingForSuggestions___block_invoke;
  v7[3] = &unk_278599578;
  v5 = v4;
  v8 = v5;
  [suggestionsCopy enumerateObjectsUsingBlock:v7];

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
@interface PHMemoryAnalyticsHelper
+ (id)analyticsPayloadForMemory:(id)memory;
+ (id)isPromptSuggestedForGenerativeMemory:(id)memory;
+ (id)memoryStateStringForMemory:(id)memory;
+ (id)triggerTypesStringForMemory:(id)memory;
@end

@implementation PHMemoryAnalyticsHelper

+ (id)isPromptSuggestedForGenerativeMemory:(id)memory
{
  photosGraphProperties = [memory photosGraphProperties];
  v4 = [photosGraphProperties objectForKeyedSubscript:@"generativeMemoryData"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"promptInformation"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"isSuggestedPrompt"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)triggerTypesStringForMemory:(id)memory
{
  v22 = *MEMORY[0x1E69E9840];
  triggerTypes = [memory triggerTypes];
  if ([triggerTypes count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = triggerTypes;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = +[PHMemory stringForTriggerType:](PHMemory, "stringForTriggerType:", [*(*(&v16 + 1) + 8 * i) unsignedIntValue]);
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
    v20 = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v13 = [v4 sortedArrayUsingDescriptors:v12];

    v14 = [v13 componentsJoinedByString:{@", "}];
  }

  else
  {
    v14 = @"None";
  }

  return v14;
}

+ (id)memoryStateStringForMemory:(id)memory
{
  memoryCopy = memory;
  if ([memoryCopy featuredState] == 1)
  {
    v4 = @"Daily Memory";
  }

  else if ([memoryCopy pendingState] == 2)
  {
    v4 = @"Local Memory";
  }

  else if ([memoryCopy creationType] == 1)
  {
    v4 = @"Generative";
  }

  else if ([memoryCopy isUserCreated])
  {
    v4 = @"User Created";
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

+ (id)analyticsPayloadForMemory:(id)memory
{
  v23[9] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v22[0] = @"cpa_memory_memoryType";
  v21 = [self memoryStateStringForMemory:memoryCopy];
  v23[0] = v21;
  v22[1] = @"cpa_memory_favorited";
  isFavorite = [memoryCopy isFavorite];
  v7 = MEMORY[0x1E695E110];
  if (isFavorite)
  {
    v7 = MEMORY[0x1E695E118];
  }

  v23[1] = v7;
  v22[2] = @"cpa_memory_playCount";
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(memoryCopy, "playCount")}];
  v23[2] = v8;
  v22[3] = @"cpa_memory_shareCount";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(memoryCopy, "shareCount")}];
  v23[3] = v9;
  v22[4] = @"cpa_memory_viewCount";
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(memoryCopy, "viewCount")}];
  v23[4] = v10;
  v22[5] = @"cpa_memory_category";
  v11 = +[PHMemory stringForCategory:](PHMemory, "stringForCategory:", [memoryCopy category]);
  v23[5] = v11;
  v22[6] = @"cpa_memory_subcategory";
  v12 = +[PHMemory stringForSubcategory:](PHMemory, "stringForSubcategory:", [memoryCopy subcategory]);
  v23[6] = v12;
  v22[7] = @"cpa_memory_triggerType";
  v13 = [self triggerTypesStringForMemory:memoryCopy];
  v23[7] = v13;
  v22[8] = @"cpa_memory_colorGradeKind";
  [memoryCopy storyColorGradeKind];
  v14 = PFStoryColorGradeKindToString();
  v15 = v14;
  v16 = @"None";
  if (v14)
  {
    v16 = v14;
  }

  v23[8] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:9];
  v18 = [v5 initWithDictionary:v17];

  if ([memoryCopy isGenerative])
  {
    v19 = [PHMemoryAnalyticsHelper isPromptSuggestedForGenerativeMemory:memoryCopy];
    if (v19)
    {
      [v18 setValue:v19 forKey:@"memoryPromptIsSuggested"];
    }
  }

  return v18;
}

@end
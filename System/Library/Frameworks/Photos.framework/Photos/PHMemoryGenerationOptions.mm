@interface PHMemoryGenerationOptions
- (PHMemoryGenerationOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
@end

@implementation PHMemoryGenerationOptions

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  date = [(PHMemoryGenerationOptions *)self date];
  [dictionary setObject:date forKeyedSubscript:@"PHMemoryOptionDateKey"];

  location = [(PHMemoryGenerationOptions *)self location];
  [dictionary setObject:location forKeyedSubscript:@"PHMemoryOptionLocationKey"];

  peopleNames = [(PHMemoryGenerationOptions *)self peopleNames];
  [dictionary setObject:peopleNames forKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHMemoryGenerationOptions reason](self, "reason")}];
  [dictionary setObject:v7 forKeyedSubscript:@"PHMemoryOptionReasonKey"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PHMemoryGenerationOptions_dictionaryRepresentation__block_invoke;
  aBlock[3] = &unk_1E75A58B8;
  v8 = dictionary;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  existingMemories = [(PHMemoryGenerationOptions *)self existingMemories];
  v9[2](v9, existingMemories, @"PHMemoryOptionExistingMemoryIdentifiersKey");

  blockedMemories = [(PHMemoryGenerationOptions *)self blockedMemories];
  v9[2](v9, blockedMemories, @"PHMemoryOptionBlockedMemoryIdentifiersKey");

  extraParameters = [(PHMemoryGenerationOptions *)self extraParameters];
  [v8 setObject:extraParameters forKeyedSubscript:@"PHMemoryOptionExtraParametersKey"];

  v13 = v8;
  return v8;
}

void __53__PHMemoryGenerationOptions_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v14 + 1) + 8 * v12) localIdentifier];
          if (v13)
          {
            [v7 addObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setReason:{-[PHMemoryGenerationOptions reason](self, "reason")}];
  date = [(PHMemoryGenerationOptions *)self date];
  [v4 setDate:date];

  location = [(PHMemoryGenerationOptions *)self location];
  [v4 setLocation:location];

  peopleNames = [(PHMemoryGenerationOptions *)self peopleNames];
  v8 = [peopleNames copy];
  [v4 setPeopleNames:v8];

  existingMemories = [(PHMemoryGenerationOptions *)self existingMemories];
  v10 = [existingMemories copy];
  [v4 setExistingMemories:v10];

  blockedMemories = [(PHMemoryGenerationOptions *)self blockedMemories];
  v12 = [blockedMemories copy];
  [v4 setBlockedMemories:v12];

  extraParameters = [(PHMemoryGenerationOptions *)self extraParameters];
  v14 = [extraParameters copy];
  [v4 setExtraParameters:v14];

  photoLibrary = [(PHMemoryGenerationOptions *)self photoLibrary];
  [v4 setPhotoLibrary:photoLibrary];

  return v4;
}

- (PHMemoryGenerationOptions)init
{
  v6.receiver = self;
  v6.super_class = PHMemoryGenerationOptions;
  v2 = [(PHMemoryGenerationOptions *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    date = v2->_date;
    v2->_date = date;

    v2->_reason = 1;
  }

  return v2;
}

@end
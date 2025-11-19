@interface PHMemoryGenerationOptions
- (PHMemoryGenerationOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
@end

@implementation PHMemoryGenerationOptions

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PHMemoryGenerationOptions *)self date];
  [v3 setObject:v4 forKeyedSubscript:@"PHMemoryOptionDateKey"];

  v5 = [(PHMemoryGenerationOptions *)self location];
  [v3 setObject:v5 forKeyedSubscript:@"PHMemoryOptionLocationKey"];

  v6 = [(PHMemoryGenerationOptions *)self peopleNames];
  [v3 setObject:v6 forKeyedSubscript:@"PHMemoryOptionPeopleNamesKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHMemoryGenerationOptions reason](self, "reason")}];
  [v3 setObject:v7 forKeyedSubscript:@"PHMemoryOptionReasonKey"];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PHMemoryGenerationOptions_dictionaryRepresentation__block_invoke;
  aBlock[3] = &unk_1E75A58B8;
  v8 = v3;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(PHMemoryGenerationOptions *)self existingMemories];
  v9[2](v9, v10, @"PHMemoryOptionExistingMemoryIdentifiersKey");

  v11 = [(PHMemoryGenerationOptions *)self blockedMemories];
  v9[2](v9, v11, @"PHMemoryOptionBlockedMemoryIdentifiersKey");

  v12 = [(PHMemoryGenerationOptions *)self extraParameters];
  [v8 setObject:v12 forKeyedSubscript:@"PHMemoryOptionExtraParametersKey"];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setReason:{-[PHMemoryGenerationOptions reason](self, "reason")}];
  v5 = [(PHMemoryGenerationOptions *)self date];
  [v4 setDate:v5];

  v6 = [(PHMemoryGenerationOptions *)self location];
  [v4 setLocation:v6];

  v7 = [(PHMemoryGenerationOptions *)self peopleNames];
  v8 = [v7 copy];
  [v4 setPeopleNames:v8];

  v9 = [(PHMemoryGenerationOptions *)self existingMemories];
  v10 = [v9 copy];
  [v4 setExistingMemories:v10];

  v11 = [(PHMemoryGenerationOptions *)self blockedMemories];
  v12 = [v11 copy];
  [v4 setBlockedMemories:v12];

  v13 = [(PHMemoryGenerationOptions *)self extraParameters];
  v14 = [v13 copy];
  [v4 setExtraParameters:v14];

  v15 = [(PHMemoryGenerationOptions *)self photoLibrary];
  [v4 setPhotoLibrary:v15];

  return v4;
}

- (PHMemoryGenerationOptions)init
{
  v6.receiver = self;
  v6.super_class = PHMemoryGenerationOptions;
  v2 = [(PHMemoryGenerationOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    date = v2->_date;
    v2->_date = v3;

    v2->_reason = 1;
  }

  return v2;
}

@end
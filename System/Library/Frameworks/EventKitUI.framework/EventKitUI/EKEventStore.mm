@interface EKEventStore
@end

@implementation EKEventStore

void __51__EKEventStore_MobileCal__colorNamesInRainbowOrder__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E4058];
  v5[0] = *MEMORY[0x1E69E4068];
  v5[1] = v0;
  v1 = *MEMORY[0x1E69E4050];
  v5[2] = *MEMORY[0x1E69E4070];
  v5[3] = v1;
  v2 = *MEMORY[0x1E69E4060];
  v5[4] = *MEMORY[0x1E69E4038];
  v5[5] = v2;
  v5[6] = *MEMORY[0x1E69E4040];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = colorNamesInRainbowOrder___colorNames;
  colorNamesInRainbowOrder___colorNames = v3;
}

void __49__EKEventStore_MobileCal__symbolicNameToUIColors__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = symbolicNameToUIColors___symbolicColorMapping;
  symbolicNameToUIColors___symbolicColorMapping = v2;

  v4 = EKSymbolicColorToRGBMapping();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__EKEventStore_MobileCal__symbolicNameToUIColors__block_invoke_2;
  v5[3] = &unk_1E843F700;
  v5[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __49__EKEventStore_MobileCal__symbolicNameToUIColors__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 _uicolorFromString:a3];
  [symbolicNameToUIColors___symbolicColorMapping setObject:v6 forKeyedSubscript:v5];
}

void __62__EKEventStore_MobileCal__defaultCalendarColorsInRainbowOrder__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = defaultCalendarColorsInRainbowOrder___orderedUIColors;
  defaultCalendarColorsInRainbowOrder___orderedUIColors = v2;

  v4 = [*(a1 + 32) symbolicNameToUIColors];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [*(a1 + 32) colorNamesInRainbowOrder];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = defaultCalendarColorsInRainbowOrder___orderedUIColors;
        v11 = [v4 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v9)];
        [v10 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void __63__EKEventStore_MobileCal__localizedStringForSymbolicColorName___block_invoke()
{
  v11[7] = *MEMORY[0x1E69E9840];
  v0 = EventKitUIBundle();
  v10[0] = *MEMORY[0x1E69E4068];
  v1 = [v0 localizedStringForKey:@"Red" value:&stru_1F4EF6790 table:0];
  v11[0] = v1;
  v10[1] = *MEMORY[0x1E69E4058];
  v2 = [v0 localizedStringForKey:@"Orange" value:&stru_1F4EF6790 table:0];
  v11[1] = v2;
  v10[2] = *MEMORY[0x1E69E4070];
  v3 = [v0 localizedStringForKey:@"Yellow" value:&stru_1F4EF6790 table:0];
  v11[2] = v3;
  v10[3] = *MEMORY[0x1E69E4050];
  v4 = [v0 localizedStringForKey:@"Green" value:&stru_1F4EF6790 table:0];
  v11[3] = v4;
  v10[4] = *MEMORY[0x1E69E4038];
  v5 = [v0 localizedStringForKey:@"Blue" value:&stru_1F4EF6790 table:0];
  v11[4] = v5;
  v10[5] = *MEMORY[0x1E69E4060];
  v6 = [v0 localizedStringForKey:@"Purple" value:&stru_1F4EF6790 table:0];
  v11[5] = v6;
  v10[6] = *MEMORY[0x1E69E4040];
  v7 = [v0 localizedStringForKey:@"Brown" value:&stru_1F4EF6790 table:0];
  v11[6] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:7];
  v9 = localizedStringForSymbolicColorName____localizedStringMapping;
  localizedStringForSymbolicColorName____localizedStringMapping = v8;
}

void __48__EKEventStore_MobileCal__symbolicNameForColor___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEqual:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end
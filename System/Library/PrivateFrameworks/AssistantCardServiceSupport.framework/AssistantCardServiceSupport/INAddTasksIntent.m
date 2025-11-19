@interface INAddTasksIntent
@end

@implementation INAddTasksIntent

void __57__INAddTasksIntent_ACSCardRequesting__requestCard_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 title];
  v7 = [v6 spokenPhrase];

  v8 = [MEMORY[0x277D4C328] acs_uniquelyIdentifiedCardSection];
  v9 = objc_alloc_init(MEMORY[0x277D4C598]);
  v10 = objc_alloc_init(MEMORY[0x277D4C3A0]);
  [v10 setIsBold:1];
  [v10 setText:v7];
  [v10 setTextColor:0];
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v9 setFormattedTextPieces:v11];

  [v8 setTitle:v9];
  if ([v5 taskType] == 2)
  {
    v12 = objc_alloc_init(MEMORY[0x277D4C1F0]);
    v13 = [v5 status];
    if (v13 <= 2)
    {
      [v12 setIsSelected:(4u >> (v13 & 7)) & 1];
    }

    [v8 setButton:v12];
  }

  v14 = NSStringFromSelector(sel_addedTasks);
  v15 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v14];
  [v15 setIndex:a3 forSubKeyPath:v14];
  v18 = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [v8 acs_setParameters:v16];

  [*(a1 + 32) addObject:v8];
  v17 = *MEMORY[0x277D85DE8];
}

@end
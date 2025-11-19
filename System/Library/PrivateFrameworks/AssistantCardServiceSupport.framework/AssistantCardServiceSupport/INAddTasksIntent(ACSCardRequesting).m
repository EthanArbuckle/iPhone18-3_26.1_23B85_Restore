@interface INAddTasksIntent(ACSCardRequesting)
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INAddTasksIntent(ACSCardRequesting)

- (void)requestCard:()ACSCardRequesting reply:
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (v5)
  {
    v6 = [a3 content];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 underlyingInteraction];
    }

    else
    {
      v7 = 0;
    }

    v8 = [v7 intentResponse];

    if (v8)
    {
      v9 = [v7 intentResponse];
      v32 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v31 = [v11 modifiedTaskList];
      v12 = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
      v15 = [v31 title];
      v16 = [v15 spokenPhrase];
      [v14 setTitle:v16];

      [v14 setIsCentered:1];
      [v14 setSeparatorStyle:5];
      [v14 setTitleAlign:1];
      [v14 setTitleWeight:&unk_2853142F0];
      v17 = MEMORY[0x277CCACA8];
      v18 = NSStringFromSelector(sel_modifiedTaskList);
      NSStringFromSelector(sel_title);
      v19 = v33 = v6;
      v20 = [v17 stringWithFormat:@"%@.%@", v18, v19];

      v21 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v20];
      v36 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [v14 acs_setParameters:v22];

      [v13 addObject:v14];
      v23 = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      [v13 addObject:v23];

      v24 = [v11 addedTasks];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __57__INAddTasksIntent_ACSCardRequesting__requestCard_reply___block_invoke;
      v34[3] = &unk_278CCFAE0;
      v35 = v13;
      v25 = v13;
      [v24 enumerateObjectsUsingBlock:v34];

      v6 = v33;
      [v12 setCardSections:v25];
      [v12 acs_setInteraction:v7];
      v5[2](v5, v12, 0);

      v26 = v32;
      v27 = v31;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CF93E8];
      v37 = *MEMORY[0x277CCA068];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", v6];
      v38[0] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v12 = [v28 errorWithDomain:v29 code:400 userInfo:v27];
      (v5)[2](v5, 0, v12);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end
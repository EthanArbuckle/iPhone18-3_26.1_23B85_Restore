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
    content = [a3 content];
    if (objc_opt_respondsToSelector())
    {
      underlyingInteraction = [content underlyingInteraction];
    }

    else
    {
      underlyingInteraction = 0;
    }

    intentResponse = [underlyingInteraction intentResponse];

    if (intentResponse)
    {
      intentResponse2 = [underlyingInteraction intentResponse];
      v32 = intentResponse2;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = intentResponse2;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      modifiedTaskList = [v11 modifiedTaskList];
      acs_uniquelyIdentifiedCard = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
      title = [modifiedTaskList title];
      spokenPhrase = [title spokenPhrase];
      [acs_uniquelyIdentifiedCardSection setTitle:spokenPhrase];

      [acs_uniquelyIdentifiedCardSection setIsCentered:1];
      [acs_uniquelyIdentifiedCardSection setSeparatorStyle:5];
      [acs_uniquelyIdentifiedCardSection setTitleAlign:1];
      [acs_uniquelyIdentifiedCardSection setTitleWeight:&unk_2853142F0];
      v17 = MEMORY[0x277CCACA8];
      v18 = NSStringFromSelector(sel_modifiedTaskList);
      NSStringFromSelector(sel_title);
      v19 = v33 = content;
      v20 = [v17 stringWithFormat:@"%@.%@", v18, v19];

      v21 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v20];
      v36 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      [acs_uniquelyIdentifiedCardSection acs_setParameters:v22];

      [v13 addObject:acs_uniquelyIdentifiedCardSection];
      acs_wildCardSection = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      [v13 addObject:acs_wildCardSection];

      addedTasks = [v11 addedTasks];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __57__INAddTasksIntent_ACSCardRequesting__requestCard_reply___block_invoke;
      v34[3] = &unk_278CCFAE0;
      v35 = v13;
      v25 = v13;
      [addedTasks enumerateObjectsUsingBlock:v34];

      content = v33;
      [acs_uniquelyIdentifiedCard setCardSections:v25];
      [acs_uniquelyIdentifiedCard acs_setInteraction:underlyingInteraction];
      v5[2](v5, acs_uniquelyIdentifiedCard, 0);

      v26 = v32;
      v27 = modifiedTaskList;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CF93E8];
      v37 = *MEMORY[0x277CCA068];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content];
      v38[0] = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      acs_uniquelyIdentifiedCard = [v28 errorWithDomain:v29 code:400 userInfo:v27];
      (v5)[2](v5, 0, acs_uniquelyIdentifiedCard);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end
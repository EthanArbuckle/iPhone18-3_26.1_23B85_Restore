@interface INStartWorkoutIntent(ACSCardRequesting)
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INStartWorkoutIntent(ACSCardRequesting)

- (void)requestCard:()ACSCardRequesting reply:
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = [a3 content];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 underlyingInteraction], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      v11 = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
      v12 = [a1 workoutName];
      v13 = [v12 spokenPhrase];

      v14 = [v9 intentHandlingStatus];
      if (v14 <= 6)
      {
        v15 = off_278CCFB20[v14];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v15 value:&stru_2853137F0 table:0];

        v18 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, v13];
        [v11 setTitle:v18];
      }

      v19 = MEMORY[0x277CD3E50];
      v20 = objc_opt_class();
      v21 = NSStringFromSelector(sel_workoutName);
      v22 = [v19 parameterForClass:v20 keyPath:v21];

      if (v22)
      {
        v30 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [v11 acs_setParameters:v23];
      }

      [v11 setIsCentered:1];
      v29[0] = v11;
      v24 = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      v29[1] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [v10 setCardSections:v25];

      [v10 acs_setInteraction:v9];
      v6[2](v6, v10, 0);
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CF93E8];
      v31 = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", v7];
      v32[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      v11 = [v26 errorWithDomain:v27 code:400 userInfo:v10];
      (v6)[2](v6, 0, v11);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end
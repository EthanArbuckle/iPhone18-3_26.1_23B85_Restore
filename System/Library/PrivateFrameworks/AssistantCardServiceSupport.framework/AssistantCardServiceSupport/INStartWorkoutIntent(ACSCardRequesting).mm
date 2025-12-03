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
    content = [a3 content];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([content underlyingInteraction], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      acs_uniquelyIdentifiedCard = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
      workoutName = [self workoutName];
      spokenPhrase = [workoutName spokenPhrase];

      intentHandlingStatus = [v9 intentHandlingStatus];
      if (intentHandlingStatus <= 6)
      {
        v15 = off_278CCFB20[intentHandlingStatus];
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:v15 value:&stru_2853137F0 table:0];

        v18 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, spokenPhrase];
        [acs_uniquelyIdentifiedCardSection setTitle:v18];
      }

      v19 = MEMORY[0x277CD3E50];
      v20 = objc_opt_class();
      v21 = NSStringFromSelector(sel_workoutName);
      v22 = [v19 parameterForClass:v20 keyPath:v21];

      if (v22)
      {
        v30 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [acs_uniquelyIdentifiedCardSection acs_setParameters:v23];
      }

      [acs_uniquelyIdentifiedCardSection setIsCentered:1];
      v29[0] = acs_uniquelyIdentifiedCardSection;
      acs_wildCardSection = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      v29[1] = acs_wildCardSection;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
      [acs_uniquelyIdentifiedCard setCardSections:v25];

      [acs_uniquelyIdentifiedCard acs_setInteraction:v9];
      v6[2](v6, acs_uniquelyIdentifiedCard, 0);
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CF93E8];
      v31 = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content];
      v32[0] = v9;
      acs_uniquelyIdentifiedCard = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      acs_uniquelyIdentifiedCardSection = [v26 errorWithDomain:v27 code:400 userInfo:acs_uniquelyIdentifiedCard];
      (v6)[2](v6, 0, acs_uniquelyIdentifiedCardSection);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end
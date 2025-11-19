@interface ATXBestTimeToInteractWithContactDataSource
- (ATXBestTimeToInteractWithContactDataSource)initWithDevice:(id)a3;
- (void)hourOfDayInteractionProbabilitiesWithContact:(id)a3 callback:(id)a4;
@end

@implementation ATXBestTimeToInteractWithContactDataSource

- (ATXBestTimeToInteractWithContactDataSource)initWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXBestTimeToInteractWithContactDataSource;
  v6 = [(ATXBestTimeToInteractWithContactDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)hourOfDayInteractionProbabilitiesWithContact:(id)a3 callback:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2D8))
  {
    v7 = objc_opt_new();
    v13[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [v7 hourOfDayProbabilitiesToInteractWithContacts:v8];

    v10 = [v9 allValues];
    v11 = [v10 firstObject];
    v6[2](v6, v11, 0);
  }

  else
  {
    v6[2](v6, MEMORY[0x277CBEC10], 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end
@interface ATXBestTimeToInteractWithContactDataSource
- (ATXBestTimeToInteractWithContactDataSource)initWithDevice:(id)device;
- (void)hourOfDayInteractionProbabilitiesWithContact:(id)contact callback:(id)callback;
@end

@implementation ATXBestTimeToInteractWithContactDataSource

- (ATXBestTimeToInteractWithContactDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXBestTimeToInteractWithContactDataSource;
  v6 = [(ATXBestTimeToInteractWithContactDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)hourOfDayInteractionProbabilitiesWithContact:(id)contact callback:(id)callback
{
  v13[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2D8))
  {
    v7 = objc_opt_new();
    v13[0] = contactCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [v7 hourOfDayProbabilitiesToInteractWithContacts:v8];

    allValues = [v9 allValues];
    firstObject = [allValues firstObject];
    callbackCopy[2](callbackCopy, firstObject, 0);
  }

  else
  {
    callbackCopy[2](callbackCopy, MEMORY[0x277CBEC10], 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end
@interface WFHealthKitResource
- (void)refreshAvailability;
@end

@implementation WFHealthKitResource

- (void)refreshAvailability
{
  v12[2] = *MEMORY[0x277D85DE8];
  isHealthDataAvailable = [MEMORY[0x277CCD4D8] isHealthDataAvailable];
  if (isHealthDataAvailable)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D7CF38];
    v11[0] = *MEMORY[0x277CCA470];
    v7 = WFLocalizedString(@"This device does not have the Health app.");
    v12[0] = v7;
    v11[1] = *MEMORY[0x277D7CF40];
    v8 = WFLocalizedString(@"This shortcut requires the Health app, which this device does not have.");
    v12[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    v4 = [v5 errorWithDomain:v6 code:0 userInfo:v9];
  }

  [(WFResource *)self updateAvailability:isHealthDataAvailable withError:v4];

  v10 = *MEMORY[0x277D85DE8];
}

@end
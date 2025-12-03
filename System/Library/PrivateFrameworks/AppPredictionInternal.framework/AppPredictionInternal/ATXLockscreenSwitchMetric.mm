@interface ATXLockscreenSwitchMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenSwitchMetric

- (id)coreAnalyticsDictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenSwitchMetric *)self lockscreenId];
  null = lockscreenId;
  if (!lockscreenId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = null;
  v13[1] = @"switchMechanism";
  switchMechanism = [(ATXLockscreenSwitchMetric *)self switchMechanism];
  null2 = switchMechanism;
  if (!switchMechanism)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = null2;
  v13[2] = @"outcome";
  outcome = [(ATXLockscreenSwitchMetric *)self outcome];
  null3 = outcome;
  if (!outcome)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v14[2] = null3;
  v13[3] = @"duration";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenSwitchMetric duration](self, "duration")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  if (!outcome)
  {
  }

  if (!switchMechanism)
  {
  }

  if (!lockscreenId)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
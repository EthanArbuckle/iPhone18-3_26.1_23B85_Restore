@interface ATXLockscreenSwitchMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenSwitchMetric

- (id)coreAnalyticsDictionary
{
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"lockscreenId";
  v3 = [(ATXLockscreenSwitchMetric *)self lockscreenId];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v14[0] = v4;
  v13[1] = @"switchMechanism";
  v5 = [(ATXLockscreenSwitchMetric *)self switchMechanism];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v14[1] = v6;
  v13[2] = @"outcome";
  v7 = [(ATXLockscreenSwitchMetric *)self outcome];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v14[2] = v8;
  v13[3] = @"duration";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenSwitchMetric duration](self, "duration")}];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
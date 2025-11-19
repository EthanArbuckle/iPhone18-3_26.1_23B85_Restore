@interface ATXLockscreenWidgetMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetMetric

- (id)coreAnalyticsDictionary
{
  v16[6] = *MEMORY[0x277D85DE8];
  v15[0] = @"lockscreenId";
  v3 = [(ATXLockscreenWidgetMetric *)self lockscreenId];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = v4;
  v15[1] = @"extensionBundleId";
  v5 = [(ATXLockscreenWidgetMetric *)self extensionBundleId];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = v6;
  v15[2] = @"kind";
  v7 = [(ATXLockscreenWidgetMetric *)self kind];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v16[2] = v8;
  v15[3] = @"source";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetMetric source](self, "source")}];
  v16[3] = v9;
  v15[4] = @"family";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenWidgetMetric family](self, "family")}];
  v16[4] = v10;
  v15[5] = @"isLandscape";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenWidgetMetric isLandscape](self, "isLandscape")}];
  v16[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end
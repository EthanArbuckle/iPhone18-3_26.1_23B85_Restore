@interface ATXLockscreenWidgetMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenWidgetMetric

- (id)coreAnalyticsDictionary
{
  v16[6] = *MEMORY[0x277D85DE8];
  v15[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenWidgetMetric *)self lockscreenId];
  null = lockscreenId;
  if (!lockscreenId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[0] = null;
  v15[1] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenWidgetMetric *)self extensionBundleId];
  null2 = extensionBundleId;
  if (!extensionBundleId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[1] = null2;
  v15[2] = @"kind";
  kind = [(ATXLockscreenWidgetMetric *)self kind];
  null3 = kind;
  if (!kind)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v16[2] = null3;
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

  if (!kind)
  {
  }

  if (!extensionBundleId)
  {
  }

  if (!lockscreenId)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end
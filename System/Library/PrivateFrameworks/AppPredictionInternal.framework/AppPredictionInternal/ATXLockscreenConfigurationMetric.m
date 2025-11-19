@interface ATXLockscreenConfigurationMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenConfigurationMetric

- (id)coreAnalyticsDictionary
{
  v31[11] = *MEMORY[0x277D85DE8];
  v30[0] = @"lockscreenId";
  v3 = [(ATXLockscreenConfigurationMetric *)self lockscreenId];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v29 = v4;
  v26 = v3;
  v31[0] = v3;
  v30[1] = @"extensionBundleId";
  v5 = [(ATXLockscreenConfigurationMetric *)self extensionBundleId];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v5;
  v31[1] = v5;
  v30[2] = @"source";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric source](self, "source")}];
  v31[2] = v27;
  v30[3] = @"font";
  v7 = [(ATXLockscreenConfigurationMetric *)self font];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v28 = v6;
  v24 = v7;
  v31[3] = v7;
  v30[4] = @"color";
  v9 = [(ATXLockscreenConfigurationMetric *)self color];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v23 = v9;
  v31[4] = v9;
  v30[5] = @"numberingSystem";
  v11 = [(ATXLockscreenConfigurationMetric *)self numberingSystem];
  v12 = v11;
  if (!v11)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v31[5] = v11;
  v30[6] = @"numWidgets";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numWidgets](self, "numWidgets", v11)}];
  v31[6] = v13;
  v30[7] = @"numLandscapeWidgets";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numLandscapeWidgets](self, "numLandscapeWidgets")}];
  v31[7] = v14;
  v30[8] = @"hasCustomInlineComplication";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric hasCustomInlineComplication](self, "hasCustomInlineComplication")}];
  v31[8] = v15;
  v30[9] = @"relatedFocus";
  v16 = [(ATXLockscreenConfigurationMetric *)self relatedFocus];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v31[9] = v17;
  v30[10] = @"isSelected";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric isSelected](self, "isSelected")}];
  v31[10] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];

  if (!v16)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v28)
  {
  }

  if (!v29)
  {
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end
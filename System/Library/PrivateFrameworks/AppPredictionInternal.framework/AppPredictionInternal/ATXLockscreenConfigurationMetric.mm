@interface ATXLockscreenConfigurationMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenConfigurationMetric

- (id)coreAnalyticsDictionary
{
  v31[11] = *MEMORY[0x277D85DE8];
  v30[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenConfigurationMetric *)self lockscreenId];
  v4 = lockscreenId;
  if (!lockscreenId)
  {
    lockscreenId = [MEMORY[0x277CBEB68] null];
  }

  v29 = v4;
  v26 = lockscreenId;
  v31[0] = lockscreenId;
  v30[1] = @"extensionBundleId";
  extensionBundleId = [(ATXLockscreenConfigurationMetric *)self extensionBundleId];
  v6 = extensionBundleId;
  if (!extensionBundleId)
  {
    extensionBundleId = [MEMORY[0x277CBEB68] null];
  }

  v25 = extensionBundleId;
  v31[1] = extensionBundleId;
  v30[2] = @"source";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric source](self, "source")}];
  v31[2] = v27;
  v30[3] = @"font";
  font = [(ATXLockscreenConfigurationMetric *)self font];
  v8 = font;
  if (!font)
  {
    font = [MEMORY[0x277CBEB68] null];
  }

  v28 = v6;
  v24 = font;
  v31[3] = font;
  v30[4] = @"color";
  color = [(ATXLockscreenConfigurationMetric *)self color];
  v10 = color;
  if (!color)
  {
    color = [MEMORY[0x277CBEB68] null];
  }

  v23 = color;
  v31[4] = color;
  v30[5] = @"numberingSystem";
  numberingSystem = [(ATXLockscreenConfigurationMetric *)self numberingSystem];
  v12 = numberingSystem;
  if (!numberingSystem)
  {
    numberingSystem = [MEMORY[0x277CBEB68] null];
  }

  v31[5] = numberingSystem;
  v30[6] = @"numWidgets";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numWidgets](self, "numWidgets", numberingSystem)}];
  v31[6] = v13;
  v30[7] = @"numLandscapeWidgets";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenConfigurationMetric numLandscapeWidgets](self, "numLandscapeWidgets")}];
  v31[7] = v14;
  v30[8] = @"hasCustomInlineComplication";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric hasCustomInlineComplication](self, "hasCustomInlineComplication")}];
  v31[8] = v15;
  v30[9] = @"relatedFocus";
  relatedFocus = [(ATXLockscreenConfigurationMetric *)self relatedFocus];
  null = relatedFocus;
  if (!relatedFocus)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v31[9] = null;
  v30[10] = @"isSelected";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenConfigurationMetric isSelected](self, "isSelected")}];
  v31[10] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];

  if (!relatedFocus)
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
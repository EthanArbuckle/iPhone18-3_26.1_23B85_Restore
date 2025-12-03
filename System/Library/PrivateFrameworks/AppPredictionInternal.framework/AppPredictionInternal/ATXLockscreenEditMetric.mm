@interface ATXLockscreenEditMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXLockscreenEditMetric

- (id)coreAnalyticsDictionary
{
  v26[12] = *MEMORY[0x277D85DE8];
  v25[0] = @"lockscreenId";
  lockscreenId = [(ATXLockscreenEditMetric *)self lockscreenId];
  v4 = lockscreenId;
  if (!lockscreenId)
  {
    lockscreenId = [MEMORY[0x277CBEB68] null];
  }

  v24 = v4;
  v21 = lockscreenId;
  v26[0] = lockscreenId;
  v25[1] = @"entryPoint";
  entryPoint = [(ATXLockscreenEditMetric *)self entryPoint];
  v6 = entryPoint;
  if (!entryPoint)
  {
    entryPoint = [MEMORY[0x277CBEB68] null];
  }

  v20 = entryPoint;
  v26[1] = entryPoint;
  v25[2] = @"isNew";
  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric isNew](self, "isNew")}];
  v26[2] = v23;
  v25[3] = @"secondsSinceLastEdit";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXLockscreenEditMetric secondsSinceLastEdit](self, "secondsSinceLastEdit")}];
  v26[3] = v22;
  v25[4] = @"outcome";
  outcome = [(ATXLockscreenEditMetric *)self outcome];
  v8 = outcome;
  if (!outcome)
  {
    outcome = [MEMORY[0x277CBEB68] null];
  }

  v26[4] = outcome;
  v25[5] = @"timeSpentEditing";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXLockscreenEditMetric duration](self, "duration", outcome)}];
  v26[5] = v9;
  v25[6] = @"userChangedColor";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedColor](self, "userChangedColor")}];
  v26[6] = v10;
  v25[7] = @"userChangedFont";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedFont](self, "userChangedFont")}];
  v26[7] = v11;
  v25[8] = @"userChangedNumberingSystem";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedNumberingSystem](self, "userChangedNumberingSystem")}];
  v26[8] = v12;
  v25[9] = @"userChangedWidgets";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedWidgets](self, "userChangedWidgets")}];
  v26[9] = v13;
  v25[10] = @"userChangedPosterContent";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric userChangedPosterContent](self, "userChangedPosterContent")}];
  v26[10] = v14;
  v25[11] = @"didLockscreenHaveWidgetsBeforeEdit";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXLockscreenEditMetric didLockscreenHaveWidgetsBeforeEdit](self, "didLockscreenHaveWidgetsBeforeEdit")}];
  v26[11] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:12];

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v24)
  {
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end
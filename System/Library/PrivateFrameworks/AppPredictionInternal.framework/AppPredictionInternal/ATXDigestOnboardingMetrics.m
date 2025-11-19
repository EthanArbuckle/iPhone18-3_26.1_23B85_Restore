@interface ATXDigestOnboardingMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingMetrics

- (id)coreAnalyticsDictionary
{
  v27[10] = *MEMORY[0x277D85DE8];
  v26[0] = @"sessionUUID";
  v3 = [(ATXDigestOnboardingMetrics *)self sessionUUID];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v24 = v3;
  v27[0] = v3;
  v26[1] = @"entrySource";
  v5 = [(ATXDigestOnboardingMetrics *)self entrySource];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v23 = v5;
  v27[1] = v5;
  v26[2] = @"digestOnboardingOutcome";
  v7 = [(ATXDigestOnboardingMetrics *)self digestOnboardingOutcome];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v25 = v4;
  v22 = v7;
  v27[2] = v7;
  v26[3] = @"finalUIShown";
  v9 = [(ATXDigestOnboardingMetrics *)self finalUIShown];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v9;
  v27[3] = v9;
  v26[4] = @"didSelectShowMore";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingMetrics didSelectShowMore](self, "didSelectShowMore")}];
  v27[4] = v11;
  v26[5] = @"timeTaken";
  v12 = MEMORY[0x277CCABB0];
  [(ATXDigestOnboardingMetrics *)self timeTaken];
  v13 = [v12 numberWithDouble:?];
  v27[5] = v13;
  v26[6] = @"deliveryTime1";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime1](self, "deliveryTime1")}];
  v27[6] = v14;
  v26[7] = @"deliveryTime2";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime2](self, "deliveryTime2")}];
  v27[7] = v15;
  v26[8] = @"deliveryTime3";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ATXDigestOnboardingMetrics deliveryTime3](self, "deliveryTime3")}];
  v27[8] = v16;
  v26[9] = @"numScheduledDeliveries";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingMetrics numScheduledDeliveries](self, "numScheduledDeliveries")}];
  v27[9] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:10];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v25)
  {
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end
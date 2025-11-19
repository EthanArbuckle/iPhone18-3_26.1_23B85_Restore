@interface ATXAppSessionEventMetric
- (ATXAppSessionEventMetric)initWithDimensions:(id)a3 bundleId:(id)a4 interruptingAppBundleId:(id)a5 duration:(double)a6;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXAppSessionEventMetric

- (ATXAppSessionEventMetric)initWithDimensions:(id)a3 bundleId:(id)a4 interruptingAppBundleId:(id)a5 duration:(double)a6
{
  v11 = a4;
  v12 = a5;
  v20.receiver = self;
  v20.super_class = ATXAppSessionEventMetric;
  v13 = [(_ATXCoreAnalyticsMetric *)&v20 initWithDimensions:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appBundleId, a4);
    objc_storeStrong(&v14->_interruptingAppBundleId, a5);
    if (v14->_appBundleId)
    {
      v15 = [ATXSessionTaggingAppEntity genreIdForBundleId:?];
      appCategory = v14->_appCategory;
      v14->_appCategory = v15;
    }

    if (v14->_interruptingAppBundleId)
    {
      v17 = [ATXSessionTaggingAppEntity genreIdForBundleId:?];
      interruptingAppCategory = v14->_interruptingAppCategory;
      v14->_interruptingAppCategory = v17;
    }

    v14->_appSessionDuration = a6;
  }

  return v14;
}

- (id)coreAnalyticsDictionary
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"appBundleId";
  v3 = [(ATXAppSessionEventMetric *)self appBundleId];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = v4;
  v16[1] = @"appCategory";
  v5 = [(ATXAppSessionEventMetric *)self appCategory];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = v6;
  v16[2] = @"interruptingAppBundleId";
  v7 = [(ATXAppSessionEventMetric *)self interruptingAppBundleId];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v8;
  v16[3] = @"interruptingAppCategory";
  v9 = [(ATXAppSessionEventMetric *)self interruptingAppCategory];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v17[3] = v10;
  v16[4] = @"duration";
  v11 = MEMORY[0x277CCABB0];
  [(ATXAppSessionEventMetric *)self appSessionDuration];
  v12 = [v11 numberWithDouble:?];
  v17[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end
@interface ATXAppSessionEventMetric
- (ATXAppSessionEventMetric)initWithDimensions:(id)dimensions bundleId:(id)id interruptingAppBundleId:(id)bundleId duration:(double)duration;
- (id)coreAnalyticsDictionary;
@end

@implementation ATXAppSessionEventMetric

- (ATXAppSessionEventMetric)initWithDimensions:(id)dimensions bundleId:(id)id interruptingAppBundleId:(id)bundleId duration:(double)duration
{
  idCopy = id;
  bundleIdCopy = bundleId;
  v20.receiver = self;
  v20.super_class = ATXAppSessionEventMetric;
  v13 = [(_ATXCoreAnalyticsMetric *)&v20 initWithDimensions:dimensions];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appBundleId, id);
    objc_storeStrong(&v14->_interruptingAppBundleId, bundleId);
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

    v14->_appSessionDuration = duration;
  }

  return v14;
}

- (id)coreAnalyticsDictionary
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"appBundleId";
  appBundleId = [(ATXAppSessionEventMetric *)self appBundleId];
  null = appBundleId;
  if (!appBundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v17[0] = null;
  v16[1] = @"appCategory";
  appCategory = [(ATXAppSessionEventMetric *)self appCategory];
  null2 = appCategory;
  if (!appCategory)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v17[1] = null2;
  v16[2] = @"interruptingAppBundleId";
  interruptingAppBundleId = [(ATXAppSessionEventMetric *)self interruptingAppBundleId];
  null3 = interruptingAppBundleId;
  if (!interruptingAppBundleId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = null3;
  v16[3] = @"interruptingAppCategory";
  interruptingAppCategory = [(ATXAppSessionEventMetric *)self interruptingAppCategory];
  null4 = interruptingAppCategory;
  if (!interruptingAppCategory)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v17[3] = null4;
  v16[4] = @"duration";
  v11 = MEMORY[0x277CCABB0];
  [(ATXAppSessionEventMetric *)self appSessionDuration];
  v12 = [v11 numberWithDouble:?];
  v17[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  if (!interruptingAppCategory)
  {
  }

  if (!interruptingAppBundleId)
  {
  }

  if (!appCategory)
  {
  }

  if (!appBundleId)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end
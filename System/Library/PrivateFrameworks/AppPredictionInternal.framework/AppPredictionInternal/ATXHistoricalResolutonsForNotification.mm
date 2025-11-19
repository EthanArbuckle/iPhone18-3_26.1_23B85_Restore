@interface ATXHistoricalResolutonsForNotification
- (ATXHistoricalResolutonsForNotification)initWithNotification:(id)a3 historicalVolumeByCountAndPercentage:(id)a4 modeConditionedHistoricalVolumeByCountAndPercentage:(id)a5 historicalResolutionByPercentage:(id)a6 modeConditionedHistoricalResolutionByPercentage:(id)a7;
@end

@implementation ATXHistoricalResolutonsForNotification

- (ATXHistoricalResolutonsForNotification)initWithNotification:(id)a3 historicalVolumeByCountAndPercentage:(id)a4 modeConditionedHistoricalVolumeByCountAndPercentage:(id)a5 historicalResolutionByPercentage:(id)a6 modeConditionedHistoricalResolutionByPercentage:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ATXHistoricalResolutonsForNotification;
  v17 = [(ATXHistoricalResolutonsForNotification *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_userNotification, a3);
    objc_storeStrong(&v18->_historicalVolumeByCountAndPercentage, a4);
    objc_storeStrong(&v18->_modeConditionedHistoricalVolumeByCountAndPercentage, a5);
    objc_storeStrong(&v18->_historicalResolutionByPercentage, a6);
    objc_storeStrong(&v18->_modeConditionedHistoricalResolutionByPercentage, a7);
  }

  return v18;
}

@end
@interface ATXHistoricalResolutonsForNotification
- (ATXHistoricalResolutonsForNotification)initWithNotification:(id)notification historicalVolumeByCountAndPercentage:(id)percentage modeConditionedHistoricalVolumeByCountAndPercentage:(id)andPercentage historicalResolutionByPercentage:(id)byPercentage modeConditionedHistoricalResolutionByPercentage:(id)resolutionByPercentage;
@end

@implementation ATXHistoricalResolutonsForNotification

- (ATXHistoricalResolutonsForNotification)initWithNotification:(id)notification historicalVolumeByCountAndPercentage:(id)percentage modeConditionedHistoricalVolumeByCountAndPercentage:(id)andPercentage historicalResolutionByPercentage:(id)byPercentage modeConditionedHistoricalResolutionByPercentage:(id)resolutionByPercentage
{
  notificationCopy = notification;
  percentageCopy = percentage;
  andPercentageCopy = andPercentage;
  byPercentageCopy = byPercentage;
  resolutionByPercentageCopy = resolutionByPercentage;
  v21.receiver = self;
  v21.super_class = ATXHistoricalResolutonsForNotification;
  v17 = [(ATXHistoricalResolutonsForNotification *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_userNotification, notification);
    objc_storeStrong(&v18->_historicalVolumeByCountAndPercentage, percentage);
    objc_storeStrong(&v18->_modeConditionedHistoricalVolumeByCountAndPercentage, andPercentage);
    objc_storeStrong(&v18->_historicalResolutionByPercentage, byPercentage);
    objc_storeStrong(&v18->_modeConditionedHistoricalResolutionByPercentage, resolutionByPercentage);
  }

  return v18;
}

@end
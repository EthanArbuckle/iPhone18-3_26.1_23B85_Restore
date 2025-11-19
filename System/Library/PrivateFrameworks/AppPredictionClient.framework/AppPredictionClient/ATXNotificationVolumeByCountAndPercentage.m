@interface ATXNotificationVolumeByCountAndPercentage
- (ATXNotificationVolumeByCountAndPercentage)initWithBundleID:(id)a3 dailyNumberOfNotificationsReceivedForBundleID:(unint64_t)a4 weeklyNumberOfNotificationsReceivedForBundleID:(unint64_t)a5 dailyPercentageOfNotificationsReceivedForBundleID:(double)a6 weeklyPercentageOfNotificationsReceivedForBundleID:(double)a7;
- (ATXNotificationVolumeByCountAndPercentage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationVolumeByCountAndPercentage

- (ATXNotificationVolumeByCountAndPercentage)initWithBundleID:(id)a3 dailyNumberOfNotificationsReceivedForBundleID:(unint64_t)a4 weeklyNumberOfNotificationsReceivedForBundleID:(unint64_t)a5 dailyPercentageOfNotificationsReceivedForBundleID:(double)a6 weeklyPercentageOfNotificationsReceivedForBundleID:(double)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = ATXNotificationVolumeByCountAndPercentage;
  v13 = [(ATXNotificationVolumeByCountAndPercentage *)&v17 init];
  if (v13)
  {
    v14 = [v12 copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v14;

    v13->_dailyNumberOfNotificationsReceivedForBundleID = a4;
    v13->_weeklyNumberOfNotificationsReceivedForBundleID = a5;
    v13->_dailyPercentageOfNotificationsReceivedForBundleID = a6;
    v13->_weeklyPercentageOfNotificationsReceivedForBundleID = a7;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeInteger:self->_dailyNumberOfNotificationsReceivedForBundleID forKey:@"dailyNumberOfNotificationsReceivedForBundleID"];
  [v5 encodeInteger:self->_weeklyNumberOfNotificationsReceivedForBundleID forKey:@"weeklyNumberOfNotificationsReceivedForBundleID"];
  [v5 encodeDouble:@"dailyPercentageOfNotificationsReceivedForBundleID" forKey:self->_dailyPercentageOfNotificationsReceivedForBundleID];
  [v5 encodeDouble:@"weeklyPercentageOfNotificationsReceivedForBundleID" forKey:self->_weeklyPercentageOfNotificationsReceivedForBundleID];
}

- (ATXNotificationVolumeByCountAndPercentage)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXNotificationVolumeByCountAndPercentage;
  v5 = [(ATXNotificationVolumeByCountAndPercentage *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_dailyNumberOfNotificationsReceivedForBundleID = [v4 decodeIntegerForKey:@"dailyNumberOfNotificationsReceivedForBundleID"];
    v5->_weeklyNumberOfNotificationsReceivedForBundleID = [v4 decodeIntegerForKey:@"weeklyNumberOfNotificationsReceivedForBundleID"];
    [v4 decodeDoubleForKey:@"dailyPercentageOfNotificationsReceivedForBundleID"];
    v5->_dailyPercentageOfNotificationsReceivedForBundleID = v8;
    [v4 decodeDoubleForKey:@"weeklyPercentageOfNotificationsReceivedForBundleID"];
    v5->_weeklyPercentageOfNotificationsReceivedForBundleID = v9;
  }

  return v5;
}

@end
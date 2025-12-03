@interface ATXNotificationVolumeByCountAndPercentage
- (ATXNotificationVolumeByCountAndPercentage)initWithBundleID:(id)d dailyNumberOfNotificationsReceivedForBundleID:(unint64_t)iD weeklyNumberOfNotificationsReceivedForBundleID:(unint64_t)bundleID dailyPercentageOfNotificationsReceivedForBundleID:(double)forBundleID weeklyPercentageOfNotificationsReceivedForBundleID:(double)receivedForBundleID;
- (ATXNotificationVolumeByCountAndPercentage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationVolumeByCountAndPercentage

- (ATXNotificationVolumeByCountAndPercentage)initWithBundleID:(id)d dailyNumberOfNotificationsReceivedForBundleID:(unint64_t)iD weeklyNumberOfNotificationsReceivedForBundleID:(unint64_t)bundleID dailyPercentageOfNotificationsReceivedForBundleID:(double)forBundleID weeklyPercentageOfNotificationsReceivedForBundleID:(double)receivedForBundleID
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = ATXNotificationVolumeByCountAndPercentage;
  v13 = [(ATXNotificationVolumeByCountAndPercentage *)&v17 init];
  if (v13)
  {
    v14 = [dCopy copy];
    bundleID = v13->_bundleID;
    v13->_bundleID = v14;

    v13->_dailyNumberOfNotificationsReceivedForBundleID = iD;
    v13->_weeklyNumberOfNotificationsReceivedForBundleID = bundleID;
    v13->_dailyPercentageOfNotificationsReceivedForBundleID = forBundleID;
    v13->_weeklyPercentageOfNotificationsReceivedForBundleID = receivedForBundleID;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeInteger:self->_dailyNumberOfNotificationsReceivedForBundleID forKey:@"dailyNumberOfNotificationsReceivedForBundleID"];
  [coderCopy encodeInteger:self->_weeklyNumberOfNotificationsReceivedForBundleID forKey:@"weeklyNumberOfNotificationsReceivedForBundleID"];
  [coderCopy encodeDouble:@"dailyPercentageOfNotificationsReceivedForBundleID" forKey:self->_dailyPercentageOfNotificationsReceivedForBundleID];
  [coderCopy encodeDouble:@"weeklyPercentageOfNotificationsReceivedForBundleID" forKey:self->_weeklyPercentageOfNotificationsReceivedForBundleID];
}

- (ATXNotificationVolumeByCountAndPercentage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATXNotificationVolumeByCountAndPercentage;
  v5 = [(ATXNotificationVolumeByCountAndPercentage *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_dailyNumberOfNotificationsReceivedForBundleID = [coderCopy decodeIntegerForKey:@"dailyNumberOfNotificationsReceivedForBundleID"];
    v5->_weeklyNumberOfNotificationsReceivedForBundleID = [coderCopy decodeIntegerForKey:@"weeklyNumberOfNotificationsReceivedForBundleID"];
    [coderCopy decodeDoubleForKey:@"dailyPercentageOfNotificationsReceivedForBundleID"];
    v5->_dailyPercentageOfNotificationsReceivedForBundleID = v8;
    [coderCopy decodeDoubleForKey:@"weeklyPercentageOfNotificationsReceivedForBundleID"];
    v5->_weeklyPercentageOfNotificationsReceivedForBundleID = v9;
  }

  return v5;
}

@end
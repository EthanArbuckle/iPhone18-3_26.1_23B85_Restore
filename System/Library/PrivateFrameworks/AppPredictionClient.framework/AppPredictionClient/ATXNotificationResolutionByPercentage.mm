@interface ATXNotificationResolutionByPercentage
- (ATXNotificationResolutionByPercentage)initWithBundleID:(id)a3 percentageForOneMinuteDuration:(double)a4 percentageForTwoMinutesDuration:(double)a5 percentageForFiveMinutesDuration:(double)a6 percentageForTenMinutesDuration:(double)a7 percentageForTwentyMinutesDuration:(double)a8 percentageForThirtyMinutesDuration:(double)a9 percentageForSixtyMinutesDuration:(double)a10;
- (ATXNotificationResolutionByPercentage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationResolutionByPercentage

- (ATXNotificationResolutionByPercentage)initWithBundleID:(id)a3 percentageForOneMinuteDuration:(double)a4 percentageForTwoMinutesDuration:(double)a5 percentageForFiveMinutesDuration:(double)a6 percentageForTenMinutesDuration:(double)a7 percentageForTwentyMinutesDuration:(double)a8 percentageForThirtyMinutesDuration:(double)a9 percentageForSixtyMinutesDuration:(double)a10
{
  v18 = a3;
  v23.receiver = self;
  v23.super_class = ATXNotificationResolutionByPercentage;
  v19 = [(ATXNotificationResolutionByPercentage *)&v23 init];
  if (v19)
  {
    v20 = [v18 copy];
    bundleID = v19->_bundleID;
    v19->_bundleID = v20;

    v19->_percentageForOneMinuteDuration = a4;
    v19->_percentageForTwoMinutesDuration = a5;
    v19->_percentageForFiveMinutesDuration = a6;
    v19->_percentageForTenMinutesDuration = a7;
    v19->_percentageForTwentyMinutesDuration = a8;
    v19->_percentageForThirtyMinutesDuration = a9;
    v19->_percentageForSixtyMinutesDuration = a10;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeDouble:@"percentageForOneMinuteDuration" forKey:self->_percentageForOneMinuteDuration];
  [v5 encodeDouble:@"percentageForTwoMinutesDuration" forKey:self->_percentageForTwoMinutesDuration];
  [v5 encodeDouble:@"percentageForFiveMinutesDuration" forKey:self->_percentageForFiveMinutesDuration];
  [v5 encodeDouble:@"percentageForTenMinutesDuration" forKey:self->_percentageForTenMinutesDuration];
  [v5 encodeDouble:@"percentageForTwentyMinutesDuration" forKey:self->_percentageForTwentyMinutesDuration];
  [v5 encodeDouble:@"percentageForThirtyMinutesDuration" forKey:self->_percentageForThirtyMinutesDuration];
  [v5 encodeDouble:@"percentageForSixtyMinutesDuration" forKey:self->_percentageForSixtyMinutesDuration];
}

- (ATXNotificationResolutionByPercentage)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ATXNotificationResolutionByPercentage;
  v5 = [(ATXNotificationResolutionByPercentage *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    [v4 decodeDoubleForKey:@"percentageForOneMinuteDuration"];
    v5->_percentageForOneMinuteDuration = v8;
    [v4 decodeDoubleForKey:@"percentageForTwoMinutesDuration"];
    v5->_percentageForTwoMinutesDuration = v9;
    [v4 decodeDoubleForKey:@"percentageForFiveMinutesDuration"];
    v5->_percentageForFiveMinutesDuration = v10;
    [v4 decodeDoubleForKey:@"percentageForTenMinutesDuration"];
    v5->_percentageForTenMinutesDuration = v11;
    [v4 decodeDoubleForKey:@"percentageForTwentyMinutesDuration"];
    v5->_percentageForTwentyMinutesDuration = v12;
    [v4 decodeDoubleForKey:@"percentageForThirtyMinutesDuration"];
    v5->_percentageForThirtyMinutesDuration = v13;
    [v4 decodeDoubleForKey:@"percentageForSixtyMinutesDuration"];
    v5->_percentageForSixtyMinutesDuration = v14;
  }

  return v5;
}

@end
@interface ATXNotificationResolutionByPercentage
- (ATXNotificationResolutionByPercentage)initWithBundleID:(id)d percentageForOneMinuteDuration:(double)duration percentageForTwoMinutesDuration:(double)minutesDuration percentageForFiveMinutesDuration:(double)fiveMinutesDuration percentageForTenMinutesDuration:(double)tenMinutesDuration percentageForTwentyMinutesDuration:(double)twentyMinutesDuration percentageForThirtyMinutesDuration:(double)thirtyMinutesDuration percentageForSixtyMinutesDuration:(double)self0;
- (ATXNotificationResolutionByPercentage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationResolutionByPercentage

- (ATXNotificationResolutionByPercentage)initWithBundleID:(id)d percentageForOneMinuteDuration:(double)duration percentageForTwoMinutesDuration:(double)minutesDuration percentageForFiveMinutesDuration:(double)fiveMinutesDuration percentageForTenMinutesDuration:(double)tenMinutesDuration percentageForTwentyMinutesDuration:(double)twentyMinutesDuration percentageForThirtyMinutesDuration:(double)thirtyMinutesDuration percentageForSixtyMinutesDuration:(double)self0
{
  dCopy = d;
  v23.receiver = self;
  v23.super_class = ATXNotificationResolutionByPercentage;
  v19 = [(ATXNotificationResolutionByPercentage *)&v23 init];
  if (v19)
  {
    v20 = [dCopy copy];
    bundleID = v19->_bundleID;
    v19->_bundleID = v20;

    v19->_percentageForOneMinuteDuration = duration;
    v19->_percentageForTwoMinutesDuration = minutesDuration;
    v19->_percentageForFiveMinutesDuration = fiveMinutesDuration;
    v19->_percentageForTenMinutesDuration = tenMinutesDuration;
    v19->_percentageForTwentyMinutesDuration = twentyMinutesDuration;
    v19->_percentageForThirtyMinutesDuration = thirtyMinutesDuration;
    v19->_percentageForSixtyMinutesDuration = sixtyMinutesDuration;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeDouble:@"percentageForOneMinuteDuration" forKey:self->_percentageForOneMinuteDuration];
  [coderCopy encodeDouble:@"percentageForTwoMinutesDuration" forKey:self->_percentageForTwoMinutesDuration];
  [coderCopy encodeDouble:@"percentageForFiveMinutesDuration" forKey:self->_percentageForFiveMinutesDuration];
  [coderCopy encodeDouble:@"percentageForTenMinutesDuration" forKey:self->_percentageForTenMinutesDuration];
  [coderCopy encodeDouble:@"percentageForTwentyMinutesDuration" forKey:self->_percentageForTwentyMinutesDuration];
  [coderCopy encodeDouble:@"percentageForThirtyMinutesDuration" forKey:self->_percentageForThirtyMinutesDuration];
  [coderCopy encodeDouble:@"percentageForSixtyMinutesDuration" forKey:self->_percentageForSixtyMinutesDuration];
}

- (ATXNotificationResolutionByPercentage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ATXNotificationResolutionByPercentage;
  v5 = [(ATXNotificationResolutionByPercentage *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    [coderCopy decodeDoubleForKey:@"percentageForOneMinuteDuration"];
    v5->_percentageForOneMinuteDuration = v8;
    [coderCopy decodeDoubleForKey:@"percentageForTwoMinutesDuration"];
    v5->_percentageForTwoMinutesDuration = v9;
    [coderCopy decodeDoubleForKey:@"percentageForFiveMinutesDuration"];
    v5->_percentageForFiveMinutesDuration = v10;
    [coderCopy decodeDoubleForKey:@"percentageForTenMinutesDuration"];
    v5->_percentageForTenMinutesDuration = v11;
    [coderCopy decodeDoubleForKey:@"percentageForTwentyMinutesDuration"];
    v5->_percentageForTwentyMinutesDuration = v12;
    [coderCopy decodeDoubleForKey:@"percentageForThirtyMinutesDuration"];
    v5->_percentageForThirtyMinutesDuration = v13;
    [coderCopy decodeDoubleForKey:@"percentageForSixtyMinutesDuration"];
    v5->_percentageForSixtyMinutesDuration = v14;
  }

  return v5;
}

@end
@interface ATXNotificationCategorizationFeatureCollectionSet
- (ATXNotificationCategorizationFeatureCollectionSet)initWithBundleID:(id)d notificationDeliveryUrgency:(int64_t)urgency contactRelationships:(unint64_t)relationships relationshipsFromMegadome:(id)megadome dayOfWeek:(unint64_t)week timeOfDay:(int)day locationSemantic:(int)semantic appModeAffinityScore:(double)self0 contactModeAffinityScore:(double)self1 notificationModeAffinityScore:(double)self2 appCategoryScoreInMode:(double)self3 urgencyScore:(double)self4 importanceScore:(double)self5 bucketizedLengthOfNotificationBody:(unint64_t)self6 currentMode:(unint64_t)self7 timeToLaunchApp:(unint64_t)self8 historicalVolumeByCountAndPercentage:(id)self9 modeConditionedHistoricalVolumeByCountAndPercentage:(id)andPercentage historicalResolutionByPercentage:(id)byPercentage modeConditionedHistoricalResolutionByPercentage:(id)resolutionByPercentage;
- (ATXNotificationCategorizationFeatureCollectionSet)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationCategorizationFeatureCollectionSet

- (ATXNotificationCategorizationFeatureCollectionSet)initWithBundleID:(id)d notificationDeliveryUrgency:(int64_t)urgency contactRelationships:(unint64_t)relationships relationshipsFromMegadome:(id)megadome dayOfWeek:(unint64_t)week timeOfDay:(int)day locationSemantic:(int)semantic appModeAffinityScore:(double)self0 contactModeAffinityScore:(double)self1 notificationModeAffinityScore:(double)self2 appCategoryScoreInMode:(double)self3 urgencyScore:(double)self4 importanceScore:(double)self5 bucketizedLengthOfNotificationBody:(unint64_t)self6 currentMode:(unint64_t)self7 timeToLaunchApp:(unint64_t)self8 historicalVolumeByCountAndPercentage:(id)self9 modeConditionedHistoricalVolumeByCountAndPercentage:(id)andPercentage historicalResolutionByPercentage:(id)byPercentage modeConditionedHistoricalResolutionByPercentage:(id)resolutionByPercentage
{
  dCopy = d;
  megadomeCopy = megadome;
  percentageCopy = percentage;
  andPercentageCopy = andPercentage;
  byPercentageCopy = byPercentage;
  resolutionByPercentageCopy = resolutionByPercentage;
  v46.receiver = self;
  v46.super_class = ATXNotificationCategorizationFeatureCollectionSet;
  v35 = [(ATXNotificationCategorizationFeatureCollectionSet *)&v46 init];
  if (v35)
  {
    v36 = [dCopy copy];
    bundleID = v35->_bundleID;
    v35->_bundleID = v36;

    v35->_notificationDeliveryUrgency = urgency;
    v35->_contactRelationships = relationships;
    v38 = [megadomeCopy copy];
    relationshipsFromMegadome = v35->_relationshipsFromMegadome;
    v35->_relationshipsFromMegadome = v38;

    v35->_dayOfWeek = week;
    v35->_timeOfDay = day;
    v35->_locationSemantic = semantic;
    v35->_appModeAffinityScore = score;
    v35->_contactModeAffinityScore = affinityScore;
    v35->_notificationModeAffinityScore = modeAffinityScore;
    v35->_appCategoryScoreInMode = mode;
    v35->_urgencyScore = urgencyScore;
    v35->_importanceScore = importanceScore;
    v35->_bucketizedLengthOfNotificationBody = body;
    v35->_currentUnifiedMode = currentMode;
    v35->_timeToLaunchApp = app;
    objc_storeStrong(&v35->_historicalVolumeByCountAndPercentage, percentage);
    objc_storeStrong(&v35->_modeConditionedHistoricalVolumeByCountAndPercentage, andPercentage);
    objc_storeStrong(&v35->_historicalResolutionByPercentage, byPercentage);
    objc_storeStrong(&v35->_modeConditionedHistoricalResolutionByPercentage, resolutionByPercentage);
  }

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeInteger:self->_notificationDeliveryUrgency forKey:@"notificationDeliveryUrgency"];
  [coderCopy encodeInteger:self->_contactRelationships forKey:@"contactRelationships"];
  [coderCopy encodeObject:self->_relationshipsFromMegadome forKey:@"relationshipsFromMegadome"];
  [coderCopy encodeInteger:self->_dayOfWeek forKey:@"dayOfWeek"];
  [coderCopy encodeInt32:self->_timeOfDay forKey:@"timeOfDay"];
  [coderCopy encodeInt32:self->_locationSemantic forKey:@"locationSemantic"];
  [coderCopy encodeDouble:@"appModeAffinityScore" forKey:self->_appModeAffinityScore];
  [coderCopy encodeDouble:@"contactModeAffinityScore" forKey:self->_contactModeAffinityScore];
  [coderCopy encodeDouble:@"notificationModeAffinityScore" forKey:self->_notificationModeAffinityScore];
  [coderCopy encodeDouble:@"appCategoryScoreInMode" forKey:self->_appCategoryScoreInMode];
  [coderCopy encodeDouble:@"urgencyScore" forKey:self->_urgencyScore];
  [coderCopy encodeDouble:@"importanceScore" forKey:self->_importanceScore];
  [coderCopy encodeInteger:self->_bucketizedLengthOfNotificationBody forKey:@"bucketizedLengthOfNotificationBody"];
  [coderCopy encodeInteger:self->_currentUnifiedMode forKey:@"currentUnifiedMode"];
  [coderCopy encodeInteger:self->_timeToLaunchApp forKey:@"timeToLaunchApp"];
  [coderCopy encodeObject:self->_historicalVolumeByCountAndPercentage forKey:@"historicalVolumeByCountAndPercentage"];
  [coderCopy encodeObject:self->_modeConditionedHistoricalVolumeByCountAndPercentage forKey:@"modeConditionedHistoricalVolumeByCountAndPercentage"];
  [coderCopy encodeObject:self->_historicalResolutionByPercentage forKey:@"historicalResolutionByPercentage"];
  [coderCopy encodeObject:self->_modeConditionedHistoricalResolutionByPercentage forKey:@"modeConditionedHistoricalResolutionByPercentage"];
}

- (ATXNotificationCategorizationFeatureCollectionSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = ATXNotificationCategorizationFeatureCollectionSet;
  v5 = [(ATXNotificationCategorizationFeatureCollectionSet *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_notificationDeliveryUrgency = [coderCopy decodeIntegerForKey:@"notificationDeliveryUrgency"];
    v5->_contactRelationships = [coderCopy decodeIntegerForKey:@"contactRelationships"];
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"relationshipsFromMegadome"];
    relationshipsFromMegadome = v5->_relationshipsFromMegadome;
    v5->_relationshipsFromMegadome = v12;

    v5->_dayOfWeek = [coderCopy decodeIntegerForKey:@"dayOfWeek"];
    v5->_timeOfDay = [coderCopy decodeInt32ForKey:@"timeOfDay"];
    v5->_locationSemantic = [coderCopy decodeInt32ForKey:@"locationSemantic"];
    [coderCopy decodeDoubleForKey:@"appModeAffinityScore"];
    v5->_appModeAffinityScore = v14;
    [coderCopy decodeDoubleForKey:@"contactModeAffinityScore"];
    v5->_contactModeAffinityScore = v15;
    [coderCopy decodeDoubleForKey:@"notificationModeAffinityScore"];
    v5->_notificationModeAffinityScore = v16;
    [coderCopy decodeDoubleForKey:@"appCategoryScoreInMode"];
    v5->_appCategoryScoreInMode = v17;
    [coderCopy decodeDoubleForKey:@"urgencyScore"];
    v5->_urgencyScore = v18;
    [coderCopy decodeDoubleForKey:@"importanceScore"];
    v5->_importanceScore = v19;
    v5->_bucketizedLengthOfNotificationBody = [coderCopy decodeIntegerForKey:@"bucketizedLengthOfNotificationBody"];
    v5->_currentUnifiedMode = [coderCopy decodeIntegerForKey:@"currentUnifiedMode"];
    v5->_timeToLaunchApp = [coderCopy decodeIntegerForKey:@"timeToLaunchApp"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"historicalVolumeByCountAndPercentage"];
    historicalVolumeByCountAndPercentage = v5->_historicalVolumeByCountAndPercentage;
    v5->_historicalVolumeByCountAndPercentage = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeConditionedHistoricalVolumeByCountAndPercentage"];
    modeConditionedHistoricalVolumeByCountAndPercentage = v5->_modeConditionedHistoricalVolumeByCountAndPercentage;
    v5->_modeConditionedHistoricalVolumeByCountAndPercentage = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"historicalResolutionByPercentage"];
    historicalResolutionByPercentage = v5->_historicalResolutionByPercentage;
    v5->_historicalResolutionByPercentage = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeConditionedHistoricalResolutionByPercentage"];
    modeConditionedHistoricalResolutionByPercentage = v5->_modeConditionedHistoricalResolutionByPercentage;
    v5->_modeConditionedHistoricalResolutionByPercentage = v26;
  }

  return v5;
}

@end
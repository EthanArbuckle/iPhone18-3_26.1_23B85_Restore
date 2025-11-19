@interface ATXNotificationCategorizationFeatureCollectionSet
- (ATXNotificationCategorizationFeatureCollectionSet)initWithBundleID:(id)a3 notificationDeliveryUrgency:(int64_t)a4 contactRelationships:(unint64_t)a5 relationshipsFromMegadome:(id)a6 dayOfWeek:(unint64_t)a7 timeOfDay:(int)a8 locationSemantic:(int)a9 appModeAffinityScore:(double)a10 contactModeAffinityScore:(double)a11 notificationModeAffinityScore:(double)a12 appCategoryScoreInMode:(double)a13 urgencyScore:(double)a14 importanceScore:(double)a15 bucketizedLengthOfNotificationBody:(unint64_t)a16 currentMode:(unint64_t)a17 timeToLaunchApp:(unint64_t)a18 historicalVolumeByCountAndPercentage:(id)a19 modeConditionedHistoricalVolumeByCountAndPercentage:(id)a20 historicalResolutionByPercentage:(id)a21 modeConditionedHistoricalResolutionByPercentage:(id)a22;
- (ATXNotificationCategorizationFeatureCollectionSet)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationCategorizationFeatureCollectionSet

- (ATXNotificationCategorizationFeatureCollectionSet)initWithBundleID:(id)a3 notificationDeliveryUrgency:(int64_t)a4 contactRelationships:(unint64_t)a5 relationshipsFromMegadome:(id)a6 dayOfWeek:(unint64_t)a7 timeOfDay:(int)a8 locationSemantic:(int)a9 appModeAffinityScore:(double)a10 contactModeAffinityScore:(double)a11 notificationModeAffinityScore:(double)a12 appCategoryScoreInMode:(double)a13 urgencyScore:(double)a14 importanceScore:(double)a15 bucketizedLengthOfNotificationBody:(unint64_t)a16 currentMode:(unint64_t)a17 timeToLaunchApp:(unint64_t)a18 historicalVolumeByCountAndPercentage:(id)a19 modeConditionedHistoricalVolumeByCountAndPercentage:(id)a20 historicalResolutionByPercentage:(id)a21 modeConditionedHistoricalResolutionByPercentage:(id)a22
{
  v32 = a3;
  v33 = a6;
  v34 = a19;
  v45 = a20;
  v44 = a21;
  v43 = a22;
  v46.receiver = self;
  v46.super_class = ATXNotificationCategorizationFeatureCollectionSet;
  v35 = [(ATXNotificationCategorizationFeatureCollectionSet *)&v46 init];
  if (v35)
  {
    v36 = [v32 copy];
    bundleID = v35->_bundleID;
    v35->_bundleID = v36;

    v35->_notificationDeliveryUrgency = a4;
    v35->_contactRelationships = a5;
    v38 = [v33 copy];
    relationshipsFromMegadome = v35->_relationshipsFromMegadome;
    v35->_relationshipsFromMegadome = v38;

    v35->_dayOfWeek = a7;
    v35->_timeOfDay = a8;
    v35->_locationSemantic = a9;
    v35->_appModeAffinityScore = a10;
    v35->_contactModeAffinityScore = a11;
    v35->_notificationModeAffinityScore = a12;
    v35->_appCategoryScoreInMode = a13;
    v35->_urgencyScore = a14;
    v35->_importanceScore = a15;
    v35->_bucketizedLengthOfNotificationBody = a16;
    v35->_currentUnifiedMode = a17;
    v35->_timeToLaunchApp = a18;
    objc_storeStrong(&v35->_historicalVolumeByCountAndPercentage, a19);
    objc_storeStrong(&v35->_modeConditionedHistoricalVolumeByCountAndPercentage, a20);
    objc_storeStrong(&v35->_historicalResolutionByPercentage, a21);
    objc_storeStrong(&v35->_modeConditionedHistoricalResolutionByPercentage, a22);
  }

  return v35;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeInteger:self->_notificationDeliveryUrgency forKey:@"notificationDeliveryUrgency"];
  [v5 encodeInteger:self->_contactRelationships forKey:@"contactRelationships"];
  [v5 encodeObject:self->_relationshipsFromMegadome forKey:@"relationshipsFromMegadome"];
  [v5 encodeInteger:self->_dayOfWeek forKey:@"dayOfWeek"];
  [v5 encodeInt32:self->_timeOfDay forKey:@"timeOfDay"];
  [v5 encodeInt32:self->_locationSemantic forKey:@"locationSemantic"];
  [v5 encodeDouble:@"appModeAffinityScore" forKey:self->_appModeAffinityScore];
  [v5 encodeDouble:@"contactModeAffinityScore" forKey:self->_contactModeAffinityScore];
  [v5 encodeDouble:@"notificationModeAffinityScore" forKey:self->_notificationModeAffinityScore];
  [v5 encodeDouble:@"appCategoryScoreInMode" forKey:self->_appCategoryScoreInMode];
  [v5 encodeDouble:@"urgencyScore" forKey:self->_urgencyScore];
  [v5 encodeDouble:@"importanceScore" forKey:self->_importanceScore];
  [v5 encodeInteger:self->_bucketizedLengthOfNotificationBody forKey:@"bucketizedLengthOfNotificationBody"];
  [v5 encodeInteger:self->_currentUnifiedMode forKey:@"currentUnifiedMode"];
  [v5 encodeInteger:self->_timeToLaunchApp forKey:@"timeToLaunchApp"];
  [v5 encodeObject:self->_historicalVolumeByCountAndPercentage forKey:@"historicalVolumeByCountAndPercentage"];
  [v5 encodeObject:self->_modeConditionedHistoricalVolumeByCountAndPercentage forKey:@"modeConditionedHistoricalVolumeByCountAndPercentage"];
  [v5 encodeObject:self->_historicalResolutionByPercentage forKey:@"historicalResolutionByPercentage"];
  [v5 encodeObject:self->_modeConditionedHistoricalResolutionByPercentage forKey:@"modeConditionedHistoricalResolutionByPercentage"];
}

- (ATXNotificationCategorizationFeatureCollectionSet)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = ATXNotificationCategorizationFeatureCollectionSet;
  v5 = [(ATXNotificationCategorizationFeatureCollectionSet *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_notificationDeliveryUrgency = [v4 decodeIntegerForKey:@"notificationDeliveryUrgency"];
    v5->_contactRelationships = [v4 decodeIntegerForKey:@"contactRelationships"];
    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"relationshipsFromMegadome"];
    relationshipsFromMegadome = v5->_relationshipsFromMegadome;
    v5->_relationshipsFromMegadome = v12;

    v5->_dayOfWeek = [v4 decodeIntegerForKey:@"dayOfWeek"];
    v5->_timeOfDay = [v4 decodeInt32ForKey:@"timeOfDay"];
    v5->_locationSemantic = [v4 decodeInt32ForKey:@"locationSemantic"];
    [v4 decodeDoubleForKey:@"appModeAffinityScore"];
    v5->_appModeAffinityScore = v14;
    [v4 decodeDoubleForKey:@"contactModeAffinityScore"];
    v5->_contactModeAffinityScore = v15;
    [v4 decodeDoubleForKey:@"notificationModeAffinityScore"];
    v5->_notificationModeAffinityScore = v16;
    [v4 decodeDoubleForKey:@"appCategoryScoreInMode"];
    v5->_appCategoryScoreInMode = v17;
    [v4 decodeDoubleForKey:@"urgencyScore"];
    v5->_urgencyScore = v18;
    [v4 decodeDoubleForKey:@"importanceScore"];
    v5->_importanceScore = v19;
    v5->_bucketizedLengthOfNotificationBody = [v4 decodeIntegerForKey:@"bucketizedLengthOfNotificationBody"];
    v5->_currentUnifiedMode = [v4 decodeIntegerForKey:@"currentUnifiedMode"];
    v5->_timeToLaunchApp = [v4 decodeIntegerForKey:@"timeToLaunchApp"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"historicalVolumeByCountAndPercentage"];
    historicalVolumeByCountAndPercentage = v5->_historicalVolumeByCountAndPercentage;
    v5->_historicalVolumeByCountAndPercentage = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeConditionedHistoricalVolumeByCountAndPercentage"];
    modeConditionedHistoricalVolumeByCountAndPercentage = v5->_modeConditionedHistoricalVolumeByCountAndPercentage;
    v5->_modeConditionedHistoricalVolumeByCountAndPercentage = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"historicalResolutionByPercentage"];
    historicalResolutionByPercentage = v5->_historicalResolutionByPercentage;
    v5->_historicalResolutionByPercentage = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeConditionedHistoricalResolutionByPercentage"];
    modeConditionedHistoricalResolutionByPercentage = v5->_modeConditionedHistoricalResolutionByPercentage;
    v5->_modeConditionedHistoricalResolutionByPercentage = v26;
  }

  return v5;
}

@end
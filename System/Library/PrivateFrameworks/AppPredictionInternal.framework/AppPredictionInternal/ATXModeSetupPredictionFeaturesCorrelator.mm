@interface ATXModeSetupPredictionFeaturesCorrelator
- (ATXModeSetupPredictionFeaturesCorrelator)initWithMode:(unint64_t)a3 features:(id)a4;
- (BOOL)isDigestCurrentlyEnabled;
- (id)featureVector;
- (unint64_t)globalPosterConfigurationsCount;
- (void)createFeatureVectorWithModeSetupPredictionFeatures;
@end

@implementation ATXModeSetupPredictionFeaturesCorrelator

- (ATXModeSetupPredictionFeaturesCorrelator)initWithMode:(unint64_t)a3 features:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATXModeSetupPredictionFeaturesCorrelator;
  v8 = [(ATXModeSetupPredictionFeaturesCorrelator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mode = a3;
    objc_storeStrong(&v8->_modeSetupPredictionFeatures, a4);
  }

  return v9;
}

- (void)createFeatureVectorWithModeSetupPredictionFeatures
{
  v42 = [[ATXAppSessionInterruptionsProvider alloc] initWithLastNDays:7];
  v3 = objc_opt_new();
  v4 = [[ATXModeInferredDurationAndCountProvider alloc] initWithLastNDays:7];
  v5 = [[ATXNotificationsEventProvider alloc] initWithLastNDays:7];
  v6 = [[ATXAppLaunchProvider alloc] initWithLastNDays:7];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setIsDigestCurrentlyEnabled:[(ATXModeSetupPredictionFeaturesCorrelator *)self isDigestCurrentlyEnabled]];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "globalAllPagesFolderCount")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalAllPagesFolderCount:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "globalAllPagesWidgetCount")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalAllPagesWidgetCount:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "homePageFolderCountBucket")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setHomePageFolderCountBucket:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "homePageWidgetCountBucket")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setHomePageWidgetCountBucket:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppLaunchProvider globalAppLaunchCountWithinLastNDays](v6, "globalAppLaunchCountWithinLastNDays")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalAppLaunchCountWithinLastNDays:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppLaunchProvider globalAppLaunchCountWithinLast1Day](v6, "globalAppLaunchCountWithinLast1Day")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalAppLaunchCountWithinLast1Day:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppLaunchProvider modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDaysForMode:](v6, "modeAppLaunchCountBasedOnGlobalPriorsWithinLastNDaysForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppLaunchCountBasedOnGlobalPriorsWithinLastNDays:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppLaunchProvider modeAppLaunchCountBasedOnGlobalPriorsWithinLast1DayForMode:](v6, "modeAppLaunchCountBasedOnGlobalPriorsWithinLast1DayForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppLaunchCountBasedOnGlobalPriorsWithinLast1Day:v14];

  v15 = MEMORY[0x277CCABB0];
  [(ATXModeInferredDurationAndCountProvider *)v4 modeInferredDurationInLastNDaysForMode:self->_mode];
  v16 = [v15 numberWithDouble:?];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInferredDurationInLastNDays:v16];

  v17 = MEMORY[0x277CCABB0];
  [(ATXModeInferredDurationAndCountProvider *)v4 modeInferredDurationInLast1DayForMode:self->_mode];
  v18 = [v17 numberWithDouble:?];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInferredDurationInLast1Day:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeInferredDurationAndCountProvider modeInferredCountInLastNDaysForMode:](v4, "modeInferredCountInLastNDaysForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInferredCountInLastNDays:v19];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeInferredDurationAndCountProvider modeInferredCountInLast1DayForMode:](v4, "modeInferredCountInLast1DayForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInferredCountInLast1Day:v20];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider modeCountOfNotificationsClearedWithinLastNDaysForMode:](v5, "modeCountOfNotificationsClearedWithinLastNDaysForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeCountOfNotificationsClearedWithinLastNDays:v21];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider modeCountOfNotificationsClearedWithinLast1DayForMode:](v5, "modeCountOfNotificationsClearedWithinLast1DayForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeCountOfNotificationsClearedWithinLast1Day:v22];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider globalCountOfNotificationsClearedWithinLastNDays](v5, "globalCountOfNotificationsClearedWithinLastNDays")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalCountOfNotificationsClearedWithinLastNDays:v23];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider globalCountOfNotificationsClearedWithinLast1Day](v5, "globalCountOfNotificationsClearedWithinLast1Day")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalCountOfNotificationsClearedWithinLast1Day:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider modeCountOfNotificationsReceivedWithinLastNDaysForMode:](v5, "modeCountOfNotificationsReceivedWithinLastNDaysForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeCountOfNotificationsReceivedWithinLastNDays:v25];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider modeCountOfNotificationsReceivedWithinLast1DayForMode:](v5, "modeCountOfNotificationsReceivedWithinLast1DayForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeCountOfNotificationsReceivedWithinLast1Day:v26];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider globalCountOfNotificationsReceivedWithinLastNDays](v5, "globalCountOfNotificationsReceivedWithinLastNDays")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalCountOfNotificationsReceivedWithinLastNDays:v27];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationsEventProvider globalCountOfNotificationsReceivedWithinLast1Day](v5, "globalCountOfNotificationsReceivedWithinLast1Day")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalCountOfNotificationsReceivedWithinLast1Day:v28];

  v29 = MEMORY[0x277CCABB0];
  [(ATXAppLaunchProvider *)v6 modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDaysForMode:self->_mode];
  v30 = [v29 numberWithDouble:?];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLastNDays:v30];

  v31 = MEMORY[0x277CCABB0];
  [(ATXAppLaunchProvider *)v6 modeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1DayForMode:self->_mode];
  v32 = [v31 numberWithDouble:?];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeWeightedAppLaunchPriorsBasedOnGlobalPriorsWithinLast1Day:v32];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeSetupPredictionFeaturesCorrelator globalPosterConfigurationsCount](self, "globalPosterConfigurationsCount")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalPosterConfigurationsCount:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider globalInterruptedAppSessionsCountWithinLastNDays](v42, "globalInterruptedAppSessionsCountWithinLastNDays")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalInterruptedAppSessionsCountWithinLastNDays:v34];

  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider globalInterruptedAppSessionsCountWithinLast1Day](v42, "globalInterruptedAppSessionsCountWithinLast1Day")}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setGlobalInterruptedAppSessionsCountWithinLast1Day:v35];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeInterruptedAppSessionsCountWithinLastNDaysForMode:](v42, "modeInterruptedAppSessionsCountWithinLastNDaysForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInterruptedAppSessionsCountWithinLastNDays:v36];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeInterruptedAppSessionsCountWithinLast1DayForMode:](v42, "modeInterruptedAppSessionsCountWithinLast1DayForMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeInterruptedAppSessionsCountWithinLast1Day:v37];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode:](v42, "modeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppInterruptionsCountWithinLastNDaysBasedOnAllowListOfMode:v38];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode:](v42, "modeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppInterruptionsCountWithinLastNDaysBasedOnDenyListOfMode:v39];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode:](v42, "modeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppInterruptionsCountWithinLast1DayBasedOnAllowListOfMode:v40];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXAppSessionInterruptionsProvider modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode:](v42, "modeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode:", self->_mode)}];
  [(ATXModeSetupPredictionFeatures *)self->_modeSetupPredictionFeatures setModeAppInterruptionsCountWithinLast1DayBasedOnDenyListOfMode:v41];
}

- (unint64_t)globalPosterConfigurationsCount
{
  v2 = +[ATXPosterConfigurationCache sharedInstance];
  v3 = [v2 configurations];

  if ([v3 count] <= 0xA)
  {
    v4 = [v3 count];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (BOOL)isDigestCurrentlyEnabled
{
  v2 = objc_opt_new();
  v3 = [v2 digestSetupComplete];

  return v3;
}

- (id)featureVector
{
  [(ATXModeSetupPredictionFeaturesCorrelator *)self createFeatureVectorWithModeSetupPredictionFeatures];
  modeSetupPredictionFeatures = self->_modeSetupPredictionFeatures;

  return [(ATXModeSetupPredictionFeatures *)modeSetupPredictionFeatures jsonRepresentation];
}

@end
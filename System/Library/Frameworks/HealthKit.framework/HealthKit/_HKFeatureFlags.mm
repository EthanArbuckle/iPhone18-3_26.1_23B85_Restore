@interface _HKFeatureFlags
- (BOOL)HRCoordinator;
- (BOOL)analyticsSubmissionOnMaintenanceWorkCoordinator;
- (BOOL)bloodPressureTrends;
- (BOOL)bloodPressureValidationsEnabled;
- (BOOL)chamomile;
- (BOOL)chutney;
- (BOOL)cmPedometerPush;
- (BOOL)coachingUpdates;
- (BOOL)coalesceCumulativeTypesInWorkoutSeries;
- (BOOL)coalesceHeartRatesInWorkoutSeries;
- (BOOL)condenseFirstPartyiOSWorkouts;
- (BOOL)condenseWorkoutSamplesFromNonWatchSources;
- (BOOL)databasePerfTrace;
- (BOOL)databasePrioritySemaphore;
- (BOOL)databasePruningTaskShouldUseRestrictionPredicates;
- (BOOL)databaseSemaphoreLogging;
- (BOOL)databaseStateCacheTransactionScoped;
- (BOOL)dbAvailablityAfterPrimaryMerge;
- (BOOL)deprecateIRN1;
- (BOOL)experimentalOrchestrationAdoption;
- (BOOL)extendedLocalWatchData;
- (BOOL)heartRatePush;
- (BOOL)hermit;
- (BOOL)isPinnedInBrowse;
- (BOOL)maritime;
- (BOOL)nanoMedicalIDSwift;
- (BOOL)nebula;
- (BOOL)newSleep6MonthView;
- (BOOL)newUnifiedTabBar;
- (BOOL)pauseRings;
- (BOOL)removeCKCascadeDelete;
- (BOOL)scheduledGoals;
- (BOOL)sharedStoreXPC;
- (BOOL)sharingPlus;
- (BOOL)simplifiedLogging;
- (BOOL)sleepCloudKitManatee;
- (BOOL)sleepCloudKitSync;
- (BOOL)sleepDetails;
- (BOOL)sleepOnIpad;
- (BOOL)sleepOnMac;
- (BOOL)sleepResultsNotificationsOnWatch;
- (BOOL)snidgetsTinker;
- (BOOL)summaryGradient;
- (BOOL)timeInBedTracking;
- (BOOL)unifiedCloudSync;
- (BOOL)urgentNotificationDismiss;
- (BOOL)vrx;
- (BOOL)workoutCondensationOnLocking;
- (BOOL)workoutSavingQueryPerf;
- (BOOL)workoutSeriesAggregation;
- (BOOL)workoutSeriesFirstPartyOnly;
- (BOOL)workoutTempTableChanges;
- (BOOL)xpcGatedSecondaryJournalMerge;
- (BOOL)yodel;
- (id).cxx_construct;
- (void)setAnalyticsSubmissionOnMaintenanceWorkCoordinator:(BOOL)a3;
- (void)setBloodPressureTrends:(BOOL)a3;
- (void)setBloodPressureValidationsEnabled:(BOOL)a3;
- (void)setChamomile:(BOOL)a3;
- (void)setChutney:(BOOL)a3;
- (void)setCmPedometerPush:(BOOL)a3;
- (void)setCoachingUpdates:(BOOL)a3;
- (void)setCoalesceCumulativeTypesInWorkoutSeries:(BOOL)a3;
- (void)setCoalesceHeartRatesInWorkoutSeries:(BOOL)a3;
- (void)setCondenseFirstPartyiOSWorkouts:(BOOL)a3;
- (void)setCondenseWorkoutSamplesFromNonWatchSources:(BOOL)a3;
- (void)setDatabasePruningTaskShouldUseRestrictionPredicates:(BOOL)a3;
- (void)setDatabaseStateCacheTransactionScoped:(BOOL)a3;
- (void)setDeprecateIRN1:(BOOL)a3;
- (void)setExperimentalOrchestrationAdoption:(BOOL)a3;
- (void)setExtendedLocalWatchData:(BOOL)a3;
- (void)setHRCoordinator:(BOOL)a3;
- (void)setHeartRatePush:(BOOL)a3;
- (void)setHermit:(BOOL)a3;
- (void)setIsPinnedInBrowse:(BOOL)a3;
- (void)setMaritime:(BOOL)a3;
- (void)setNanoMedicalIDSwift:(BOOL)a3;
- (void)setNebula:(BOOL)a3;
- (void)setNewSleep6MonthView:(BOOL)a3;
- (void)setNewUnifiedTabBar:(BOOL)a3;
- (void)setPauseRings:(BOOL)a3;
- (void)setRemoveCKCascadeDelete:(BOOL)a3;
- (void)setScheduledGoals:(BOOL)a3;
- (void)setSharedStoreXPC:(BOOL)a3;
- (void)setSimplifiedLogging:(BOOL)a3;
- (void)setSleepCloudKitManatee:(BOOL)a3;
- (void)setSleepCloudKitSync:(BOOL)a3;
- (void)setSleepDetails:(BOOL)a3;
- (void)setSleepOnIpad:(BOOL)a3;
- (void)setSleepOnMac:(BOOL)a3;
- (void)setSleepResultsNotificationsOnWatch:(BOOL)a3;
- (void)setSnidgetsTinker:(BOOL)a3;
- (void)setSummaryGradient:(BOOL)a3;
- (void)setTimeInBedTracking:(BOOL)a3;
- (void)setUnifiedCloudSync:(BOOL)a3;
- (void)setVrx:(BOOL)a3;
- (void)setWorkoutSeriesAggregation:(BOOL)a3;
- (void)setWorkoutSeriesFirstPartyOnly:(BOOL)a3;
- (void)setYodel:(BOOL)a3;
@end

@implementation _HKFeatureFlags

- (BOOL)analyticsSubmissionOnMaintenanceWorkCoordinator
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_122;
  v7 = v6;
  os_unfair_lock_lock(&self->_analyticsSubmissionOnMaintenanceWorkCoordinator._loadLock);
  if (self->_analyticsSubmissionOnMaintenanceWorkCoordinator._hasLoaded)
  {
    value = self->_analyticsSubmissionOnMaintenanceWorkCoordinator._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_analyticsSubmissionOnMaintenanceWorkCoordinator._value = value;
    self->_analyticsSubmissionOnMaintenanceWorkCoordinator._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_analyticsSubmissionOnMaintenanceWorkCoordinator._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setAnalyticsSubmissionOnMaintenanceWorkCoordinator:(BOOL)a3
{
  os_unfair_lock_lock(&self->_analyticsSubmissionOnMaintenanceWorkCoordinator._loadLock);
  self->_analyticsSubmissionOnMaintenanceWorkCoordinator._hasLoaded = 1;
  self->_analyticsSubmissionOnMaintenanceWorkCoordinator._value = a3;

  os_unfair_lock_unlock(&self->_analyticsSubmissionOnMaintenanceWorkCoordinator._loadLock);
}

- (BOOL)bloodPressureValidationsEnabled
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_8_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_bloodPressureValidationsEnabled._loadLock);
  if (self->_bloodPressureValidationsEnabled._hasLoaded)
  {
    value = self->_bloodPressureValidationsEnabled._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_bloodPressureValidationsEnabled._value = value;
    self->_bloodPressureValidationsEnabled._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_bloodPressureValidationsEnabled._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setBloodPressureValidationsEnabled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_bloodPressureValidationsEnabled._loadLock);
  self->_bloodPressureValidationsEnabled._hasLoaded = 1;
  self->_bloodPressureValidationsEnabled._value = a3;

  os_unfair_lock_unlock(&self->_bloodPressureValidationsEnabled._loadLock);
}

- (BOOL)coalesceCumulativeTypesInWorkoutSeries
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_11_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_coalesceCumulativeTypesInWorkoutSeries._loadLock);
  if (self->_coalesceCumulativeTypesInWorkoutSeries._hasLoaded)
  {
    value = self->_coalesceCumulativeTypesInWorkoutSeries._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_coalesceCumulativeTypesInWorkoutSeries._value = value;
    self->_coalesceCumulativeTypesInWorkoutSeries._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_coalesceCumulativeTypesInWorkoutSeries._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCoalesceCumulativeTypesInWorkoutSeries:(BOOL)a3
{
  os_unfair_lock_lock(&self->_coalesceCumulativeTypesInWorkoutSeries._loadLock);
  self->_coalesceCumulativeTypesInWorkoutSeries._hasLoaded = 1;
  self->_coalesceCumulativeTypesInWorkoutSeries._value = a3;

  os_unfair_lock_unlock(&self->_coalesceCumulativeTypesInWorkoutSeries._loadLock);
}

- (BOOL)coalesceHeartRatesInWorkoutSeries
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_14;
  v7 = v6;
  os_unfair_lock_lock(&self->_coalesceHeartRatesInWorkoutSeries._loadLock);
  if (self->_coalesceHeartRatesInWorkoutSeries._hasLoaded)
  {
    value = self->_coalesceHeartRatesInWorkoutSeries._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_coalesceHeartRatesInWorkoutSeries._value = value;
    self->_coalesceHeartRatesInWorkoutSeries._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_coalesceHeartRatesInWorkoutSeries._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCoalesceHeartRatesInWorkoutSeries:(BOOL)a3
{
  os_unfair_lock_lock(&self->_coalesceHeartRatesInWorkoutSeries._loadLock);
  self->_coalesceHeartRatesInWorkoutSeries._hasLoaded = 1;
  self->_coalesceHeartRatesInWorkoutSeries._value = a3;

  os_unfair_lock_unlock(&self->_coalesceHeartRatesInWorkoutSeries._loadLock);
}

- (BOOL)condenseWorkoutSamplesFromNonWatchSources
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_17_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_condenseWorkoutSamplesFromNonWatchSources._loadLock);
  if (self->_condenseWorkoutSamplesFromNonWatchSources._hasLoaded)
  {
    value = self->_condenseWorkoutSamplesFromNonWatchSources._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_condenseWorkoutSamplesFromNonWatchSources._value = value;
    self->_condenseWorkoutSamplesFromNonWatchSources._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_condenseWorkoutSamplesFromNonWatchSources._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCondenseWorkoutSamplesFromNonWatchSources:(BOOL)a3
{
  os_unfair_lock_lock(&self->_condenseWorkoutSamplesFromNonWatchSources._loadLock);
  self->_condenseWorkoutSamplesFromNonWatchSources._hasLoaded = 1;
  self->_condenseWorkoutSamplesFromNonWatchSources._value = a3;

  os_unfair_lock_unlock(&self->_condenseWorkoutSamplesFromNonWatchSources._loadLock);
}

- (BOOL)condenseFirstPartyiOSWorkouts
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_20;
  v7 = v6;
  os_unfair_lock_lock(&self->_condenseFirstPartyiOSWorkouts._loadLock);
  if (self->_condenseFirstPartyiOSWorkouts._hasLoaded)
  {
    value = self->_condenseFirstPartyiOSWorkouts._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_condenseFirstPartyiOSWorkouts._value = value;
    self->_condenseFirstPartyiOSWorkouts._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_condenseFirstPartyiOSWorkouts._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCondenseFirstPartyiOSWorkouts:(BOOL)a3
{
  os_unfair_lock_lock(&self->_condenseFirstPartyiOSWorkouts._loadLock);
  self->_condenseFirstPartyiOSWorkouts._hasLoaded = 1;
  self->_condenseFirstPartyiOSWorkouts._value = a3;

  os_unfair_lock_unlock(&self->_condenseFirstPartyiOSWorkouts._loadLock);
}

- (BOOL)pauseRings
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_23_2;
  v7 = v6;
  os_unfair_lock_lock(&self->_pauseRings._loadLock);
  if (self->_pauseRings._hasLoaded)
  {
    value = self->_pauseRings._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_pauseRings._value = value;
    self->_pauseRings._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_pauseRings._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setPauseRings:(BOOL)a3
{
  os_unfair_lock_lock(&self->_pauseRings._loadLock);
  self->_pauseRings._hasLoaded = 1;
  self->_pauseRings._value = a3;

  os_unfair_lock_unlock(&self->_pauseRings._loadLock);
}

- (BOOL)scheduledGoals
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_25_2;
  v7 = v6;
  os_unfair_lock_lock(&self->_scheduledGoals._loadLock);
  if (self->_scheduledGoals._hasLoaded)
  {
    value = self->_scheduledGoals._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_scheduledGoals._value = value;
    self->_scheduledGoals._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_scheduledGoals._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setScheduledGoals:(BOOL)a3
{
  os_unfair_lock_lock(&self->_scheduledGoals._loadLock);
  self->_scheduledGoals._hasLoaded = 1;
  self->_scheduledGoals._value = a3;

  os_unfair_lock_unlock(&self->_scheduledGoals._loadLock);
}

- (BOOL)coachingUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_27_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_coachingUpdates._loadLock);
  if (self->_coachingUpdates._hasLoaded)
  {
    value = self->_coachingUpdates._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_coachingUpdates._value = value;
    self->_coachingUpdates._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_coachingUpdates._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCoachingUpdates:(BOOL)a3
{
  os_unfair_lock_lock(&self->_coachingUpdates._loadLock);
  self->_coachingUpdates._hasLoaded = 1;
  self->_coachingUpdates._value = a3;

  os_unfair_lock_unlock(&self->_coachingUpdates._loadLock);
}

- (BOOL)databasePruningTaskShouldUseRestrictionPredicates
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_31_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_databasePruningTaskShouldUseRestrictionPredicates._loadLock);
  if (self->_databasePruningTaskShouldUseRestrictionPredicates._hasLoaded)
  {
    value = self->_databasePruningTaskShouldUseRestrictionPredicates._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_databasePruningTaskShouldUseRestrictionPredicates._value = value;
    self->_databasePruningTaskShouldUseRestrictionPredicates._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_databasePruningTaskShouldUseRestrictionPredicates._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setDatabasePruningTaskShouldUseRestrictionPredicates:(BOOL)a3
{
  os_unfair_lock_lock(&self->_databasePruningTaskShouldUseRestrictionPredicates._loadLock);
  self->_databasePruningTaskShouldUseRestrictionPredicates._hasLoaded = 1;
  self->_databasePruningTaskShouldUseRestrictionPredicates._value = a3;

  os_unfair_lock_unlock(&self->_databasePruningTaskShouldUseRestrictionPredicates._loadLock);
}

- (BOOL)bloodPressureTrends
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_34;
  v7 = v6;
  os_unfair_lock_lock(&self->_bloodPressureTrends._loadLock);
  if (self->_bloodPressureTrends._hasLoaded)
  {
    value = self->_bloodPressureTrends._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_bloodPressureTrends._value = value;
    self->_bloodPressureTrends._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_bloodPressureTrends._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setBloodPressureTrends:(BOOL)a3
{
  os_unfair_lock_lock(&self->_bloodPressureTrends._loadLock);
  self->_bloodPressureTrends._hasLoaded = 1;
  self->_bloodPressureTrends._value = a3;

  os_unfair_lock_unlock(&self->_bloodPressureTrends._loadLock);
}

- (BOOL)chamomile
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_38;
  v7 = v6;
  os_unfair_lock_lock(&self->_chamomile._loadLock);
  if (self->_chamomile._hasLoaded)
  {
    value = self->_chamomile._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_chamomile._value = value;
    self->_chamomile._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_chamomile._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setChamomile:(BOOL)a3
{
  os_unfair_lock_lock(&self->_chamomile._loadLock);
  self->_chamomile._hasLoaded = 1;
  self->_chamomile._value = a3;

  os_unfair_lock_unlock(&self->_chamomile._loadLock);
}

- (BOOL)databasePrioritySemaphore
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_41_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_databasePrioritySemaphore._loadLock);
  if (self->_databasePrioritySemaphore._hasLoaded)
  {
    value = self->_databasePrioritySemaphore._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_databasePrioritySemaphore._value = value;
    self->_databasePrioritySemaphore._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_databasePrioritySemaphore._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)databaseSemaphoreLogging
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_44_2;
  v7 = v6;
  os_unfair_lock_lock(&self->_databaseSemaphoreLogging._loadLock);
  if (self->_databaseSemaphoreLogging._hasLoaded)
  {
    value = self->_databaseSemaphoreLogging._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_databaseSemaphoreLogging._value = value;
    self->_databaseSemaphoreLogging._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_databaseSemaphoreLogging._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)databaseStateCacheTransactionScoped
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_47;
  v7 = v6;
  os_unfair_lock_lock(&self->_databaseStateCacheTransactionScoped._loadLock);
  if (self->_databaseStateCacheTransactionScoped._hasLoaded)
  {
    value = self->_databaseStateCacheTransactionScoped._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_databaseStateCacheTransactionScoped._value = value;
    self->_databaseStateCacheTransactionScoped._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_databaseStateCacheTransactionScoped._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setDatabaseStateCacheTransactionScoped:(BOOL)a3
{
  os_unfair_lock_lock(&self->_databaseStateCacheTransactionScoped._loadLock);
  self->_databaseStateCacheTransactionScoped._hasLoaded = 1;
  self->_databaseStateCacheTransactionScoped._value = a3;

  os_unfair_lock_unlock(&self->_databaseStateCacheTransactionScoped._loadLock);
}

- (BOOL)deprecateIRN1
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_50_2;
  v7 = v6;
  os_unfair_lock_lock(&self->_deprecateIRN1._loadLock);
  if (self->_deprecateIRN1._hasLoaded)
  {
    value = self->_deprecateIRN1._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_deprecateIRN1._value = value;
    self->_deprecateIRN1._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_deprecateIRN1._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setDeprecateIRN1:(BOOL)a3
{
  os_unfair_lock_lock(&self->_deprecateIRN1._loadLock);
  self->_deprecateIRN1._hasLoaded = 1;
  self->_deprecateIRN1._value = a3;

  os_unfair_lock_unlock(&self->_deprecateIRN1._loadLock);
}

- (BOOL)simplifiedLogging
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_53_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_simplifiedLogging._loadLock);
  if (self->_simplifiedLogging._hasLoaded)
  {
    value = self->_simplifiedLogging._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_simplifiedLogging._value = value;
    self->_simplifiedLogging._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_simplifiedLogging._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSimplifiedLogging:(BOOL)a3
{
  os_unfair_lock_lock(&self->_simplifiedLogging._loadLock);
  self->_simplifiedLogging._hasLoaded = 1;
  self->_simplifiedLogging._value = a3;

  os_unfair_lock_unlock(&self->_simplifiedLogging._loadLock);
}

- (BOOL)dbAvailablityAfterPrimaryMerge
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_56_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_dbAvailablityAfterPrimaryMerge._loadLock);
  if (self->_dbAvailablityAfterPrimaryMerge._hasLoaded)
  {
    value = self->_dbAvailablityAfterPrimaryMerge._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_dbAvailablityAfterPrimaryMerge._value = value;
    self->_dbAvailablityAfterPrimaryMerge._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_dbAvailablityAfterPrimaryMerge._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)extendedLocalWatchData
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_59_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_extendedLocalWatchData._loadLock);
  if (self->_extendedLocalWatchData._hasLoaded)
  {
    value = self->_extendedLocalWatchData._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_extendedLocalWatchData._value = value;
    self->_extendedLocalWatchData._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_extendedLocalWatchData._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setExtendedLocalWatchData:(BOOL)a3
{
  os_unfair_lock_lock(&self->_extendedLocalWatchData._loadLock);
  self->_extendedLocalWatchData._hasLoaded = 1;
  self->_extendedLocalWatchData._value = a3;

  os_unfair_lock_unlock(&self->_extendedLocalWatchData._loadLock);
}

- (BOOL)experimentalOrchestrationAdoption
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_62_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_experimentalOrchestrationAdoption._loadLock);
  if (self->_experimentalOrchestrationAdoption._hasLoaded)
  {
    value = self->_experimentalOrchestrationAdoption._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_experimentalOrchestrationAdoption._value = value;
    self->_experimentalOrchestrationAdoption._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_experimentalOrchestrationAdoption._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setExperimentalOrchestrationAdoption:(BOOL)a3
{
  os_unfair_lock_lock(&self->_experimentalOrchestrationAdoption._loadLock);
  self->_experimentalOrchestrationAdoption._hasLoaded = 1;
  self->_experimentalOrchestrationAdoption._value = a3;

  os_unfair_lock_unlock(&self->_experimentalOrchestrationAdoption._loadLock);
}

- (BOOL)heartRatePush
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_65_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_heartRatePush._loadLock);
  if (self->_heartRatePush._hasLoaded)
  {
    value = self->_heartRatePush._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_heartRatePush._value = value;
    self->_heartRatePush._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_heartRatePush._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setHeartRatePush:(BOOL)a3
{
  os_unfair_lock_lock(&self->_heartRatePush._loadLock);
  self->_heartRatePush._hasLoaded = 1;
  self->_heartRatePush._value = a3;

  os_unfair_lock_unlock(&self->_heartRatePush._loadLock);
}

- (BOOL)hermit
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_68;
  v7 = v6;
  os_unfair_lock_lock(&self->_hermit._loadLock);
  if (self->_hermit._hasLoaded)
  {
    value = self->_hermit._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_hermit._value = value;
    self->_hermit._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_hermit._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setHermit:(BOOL)a3
{
  os_unfair_lock_lock(&self->_hermit._loadLock);
  self->_hermit._hasLoaded = 1;
  self->_hermit._value = a3;

  os_unfair_lock_unlock(&self->_hermit._loadLock);
}

- (BOOL)isPinnedInBrowse
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_71;
  v7 = v6;
  os_unfair_lock_lock(&self->_isPinnedInBrowse._loadLock);
  if (self->_isPinnedInBrowse._hasLoaded)
  {
    value = self->_isPinnedInBrowse._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_isPinnedInBrowse._value = value;
    self->_isPinnedInBrowse._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_isPinnedInBrowse._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setIsPinnedInBrowse:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isPinnedInBrowse._loadLock);
  self->_isPinnedInBrowse._hasLoaded = 1;
  self->_isPinnedInBrowse._value = a3;

  os_unfair_lock_unlock(&self->_isPinnedInBrowse._loadLock);
}

- (BOOL)nebula
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_74;
  v7 = v6;
  os_unfair_lock_lock(&self->_nebula._loadLock);
  if (self->_nebula._hasLoaded)
  {
    value = self->_nebula._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_nebula._value = value;
    self->_nebula._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_nebula._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setNebula:(BOOL)a3
{
  os_unfair_lock_lock(&self->_nebula._loadLock);
  self->_nebula._hasLoaded = 1;
  self->_nebula._value = a3;

  os_unfair_lock_unlock(&self->_nebula._loadLock);
}

- (BOOL)newUnifiedTabBar
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_77_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_newUnifiedTabBar._loadLock);
  if (self->_newUnifiedTabBar._hasLoaded)
  {
    value = self->_newUnifiedTabBar._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_newUnifiedTabBar._value = value;
    self->_newUnifiedTabBar._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_newUnifiedTabBar._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setNewUnifiedTabBar:(BOOL)a3
{
  os_unfair_lock_lock(&self->_newUnifiedTabBar._loadLock);
  self->_newUnifiedTabBar._hasLoaded = 1;
  self->_newUnifiedTabBar._value = a3;

  os_unfair_lock_unlock(&self->_newUnifiedTabBar._loadLock);
}

- (BOOL)sharedStoreXPC
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_80_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_sharedStoreXPC._loadLock);
  if (self->_sharedStoreXPC._hasLoaded)
  {
    value = self->_sharedStoreXPC._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sharedStoreXPC._value = value;
    self->_sharedStoreXPC._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sharedStoreXPC._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSharedStoreXPC:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sharedStoreXPC._loadLock);
  self->_sharedStoreXPC._hasLoaded = 1;
  self->_sharedStoreXPC._value = a3;

  os_unfair_lock_unlock(&self->_sharedStoreXPC._loadLock);
}

- (BOOL)sharingPlus
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_83_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_sharingPlus._loadLock);
  if (self->_sharingPlus._hasLoaded)
  {
    value = self->_sharingPlus._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sharingPlus._value = value;
    self->_sharingPlus._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sharingPlus._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)sleepCloudKitManatee
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_86_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepCloudKitManatee._loadLock);
  if (self->_sleepCloudKitManatee._hasLoaded)
  {
    value = self->_sleepCloudKitManatee._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepCloudKitManatee._value = value;
    self->_sleepCloudKitManatee._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepCloudKitManatee._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepCloudKitManatee:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepCloudKitManatee._loadLock);
  self->_sleepCloudKitManatee._hasLoaded = 1;
  self->_sleepCloudKitManatee._value = a3;

  os_unfair_lock_unlock(&self->_sleepCloudKitManatee._loadLock);
}

- (BOOL)sleepCloudKitSync
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_89_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepCloudKitSync._loadLock);
  if (self->_sleepCloudKitSync._hasLoaded)
  {
    value = self->_sleepCloudKitSync._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepCloudKitSync._value = value;
    self->_sleepCloudKitSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepCloudKitSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepCloudKitSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepCloudKitSync._loadLock);
  self->_sleepCloudKitSync._hasLoaded = 1;
  self->_sleepCloudKitSync._value = a3;

  os_unfair_lock_unlock(&self->_sleepCloudKitSync._loadLock);
}

- (BOOL)sleepDetails
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_92;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepDetails._loadLock);
  if (self->_sleepDetails._hasLoaded)
  {
    value = self->_sleepDetails._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepDetails._value = value;
    self->_sleepDetails._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepDetails._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepDetails:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepDetails._loadLock);
  self->_sleepDetails._hasLoaded = 1;
  self->_sleepDetails._value = a3;

  os_unfair_lock_unlock(&self->_sleepDetails._loadLock);
}

- (BOOL)sleepOnIpad
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_95;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepOnIpad._loadLock);
  if (self->_sleepOnIpad._hasLoaded)
  {
    value = self->_sleepOnIpad._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepOnIpad._value = value;
    self->_sleepOnIpad._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepOnIpad._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepOnIpad:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepOnIpad._loadLock);
  self->_sleepOnIpad._hasLoaded = 1;
  self->_sleepOnIpad._value = a3;

  os_unfair_lock_unlock(&self->_sleepOnIpad._loadLock);
}

- (BOOL)sleepOnMac
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_98_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepOnMac._loadLock);
  if (self->_sleepOnMac._hasLoaded)
  {
    value = self->_sleepOnMac._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepOnMac._value = value;
    self->_sleepOnMac._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepOnMac._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepOnMac:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepOnMac._loadLock);
  self->_sleepOnMac._hasLoaded = 1;
  self->_sleepOnMac._value = a3;

  os_unfair_lock_unlock(&self->_sleepOnMac._loadLock);
}

- (BOOL)sleepResultsNotificationsOnWatch
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_101_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_sleepResultsNotificationsOnWatch._loadLock);
  if (self->_sleepResultsNotificationsOnWatch._hasLoaded)
  {
    value = self->_sleepResultsNotificationsOnWatch._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_sleepResultsNotificationsOnWatch._value = value;
    self->_sleepResultsNotificationsOnWatch._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_sleepResultsNotificationsOnWatch._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSleepResultsNotificationsOnWatch:(BOOL)a3
{
  os_unfair_lock_lock(&self->_sleepResultsNotificationsOnWatch._loadLock);
  self->_sleepResultsNotificationsOnWatch._hasLoaded = 1;
  self->_sleepResultsNotificationsOnWatch._value = a3;

  os_unfair_lock_unlock(&self->_sleepResultsNotificationsOnWatch._loadLock);
}

- (BOOL)snidgetsTinker
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_104;
  v7 = v6;
  os_unfair_lock_lock(&self->_snidgetsTinker._loadLock);
  if (self->_snidgetsTinker._hasLoaded)
  {
    value = self->_snidgetsTinker._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_snidgetsTinker._value = value;
    self->_snidgetsTinker._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_snidgetsTinker._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSnidgetsTinker:(BOOL)a3
{
  os_unfair_lock_lock(&self->_snidgetsTinker._loadLock);
  self->_snidgetsTinker._hasLoaded = 1;
  self->_snidgetsTinker._value = a3;

  os_unfair_lock_unlock(&self->_snidgetsTinker._loadLock);
}

- (BOOL)summaryGradient
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_107;
  v7 = v6;
  os_unfair_lock_lock(&self->_summaryGradient._loadLock);
  if (self->_summaryGradient._hasLoaded)
  {
    value = self->_summaryGradient._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_summaryGradient._value = value;
    self->_summaryGradient._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_summaryGradient._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSummaryGradient:(BOOL)a3
{
  os_unfair_lock_lock(&self->_summaryGradient._loadLock);
  self->_summaryGradient._hasLoaded = 1;
  self->_summaryGradient._value = a3;

  os_unfair_lock_unlock(&self->_summaryGradient._loadLock);
}

- (BOOL)urgentNotificationDismiss
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_110;
  v7 = v6;
  os_unfair_lock_lock(&self->_urgentNotificationDismiss._loadLock);
  if (self->_urgentNotificationDismiss._hasLoaded)
  {
    value = self->_urgentNotificationDismiss._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_urgentNotificationDismiss._value = value;
    self->_urgentNotificationDismiss._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_urgentNotificationDismiss._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)timeInBedTracking
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_113_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_timeInBedTracking._loadLock);
  if (self->_timeInBedTracking._hasLoaded)
  {
    value = self->_timeInBedTracking._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_timeInBedTracking._value = value;
    self->_timeInBedTracking._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_timeInBedTracking._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setTimeInBedTracking:(BOOL)a3
{
  os_unfair_lock_lock(&self->_timeInBedTracking._loadLock);
  self->_timeInBedTracking._hasLoaded = 1;
  self->_timeInBedTracking._value = a3;

  os_unfair_lock_unlock(&self->_timeInBedTracking._loadLock);
}

- (BOOL)vrx
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_116;
  v7 = v6;
  os_unfair_lock_lock(&self->_vrx._loadLock);
  if (self->_vrx._hasLoaded)
  {
    value = self->_vrx._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_vrx._value = value;
    self->_vrx._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_vrx._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setVrx:(BOOL)a3
{
  os_unfair_lock_lock(&self->_vrx._loadLock);
  self->_vrx._hasLoaded = 1;
  self->_vrx._value = a3;

  os_unfair_lock_unlock(&self->_vrx._loadLock);
}

- (BOOL)workoutCondensationOnLocking
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_119;
  v7 = v6;
  os_unfair_lock_lock(&self->_workoutCondensationOnLocking._loadLock);
  if (self->_workoutCondensationOnLocking._hasLoaded)
  {
    value = self->_workoutCondensationOnLocking._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_workoutCondensationOnLocking._value = value;
    self->_workoutCondensationOnLocking._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_workoutCondensationOnLocking._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)workoutSavingQueryPerf
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_122_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_workoutSavingQueryPerf._loadLock);
  if (self->_workoutSavingQueryPerf._hasLoaded)
  {
    value = self->_workoutSavingQueryPerf._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_workoutSavingQueryPerf._value = value;
    self->_workoutSavingQueryPerf._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_workoutSavingQueryPerf._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)workoutSeriesAggregation
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_125_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_workoutSeriesAggregation._loadLock);
  if (self->_workoutSeriesAggregation._hasLoaded)
  {
    value = self->_workoutSeriesAggregation._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_workoutSeriesAggregation._value = value;
    self->_workoutSeriesAggregation._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_workoutSeriesAggregation._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setWorkoutSeriesAggregation:(BOOL)a3
{
  os_unfair_lock_lock(&self->_workoutSeriesAggregation._loadLock);
  self->_workoutSeriesAggregation._hasLoaded = 1;
  self->_workoutSeriesAggregation._value = a3;

  os_unfair_lock_unlock(&self->_workoutSeriesAggregation._loadLock);
}

- (BOOL)workoutSeriesFirstPartyOnly
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_128_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_workoutSeriesFirstPartyOnly._loadLock);
  if (self->_workoutSeriesFirstPartyOnly._hasLoaded)
  {
    value = self->_workoutSeriesFirstPartyOnly._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_workoutSeriesFirstPartyOnly._value = value;
    self->_workoutSeriesFirstPartyOnly._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_workoutSeriesFirstPartyOnly._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setWorkoutSeriesFirstPartyOnly:(BOOL)a3
{
  os_unfair_lock_lock(&self->_workoutSeriesFirstPartyOnly._loadLock);
  self->_workoutSeriesFirstPartyOnly._hasLoaded = 1;
  self->_workoutSeriesFirstPartyOnly._value = a3;

  os_unfair_lock_unlock(&self->_workoutSeriesFirstPartyOnly._loadLock);
}

- (BOOL)workoutTempTableChanges
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_131;
  v7 = v6;
  os_unfair_lock_lock(&self->_workoutSavingQueryPerf._loadLock);
  if (self->_workoutSavingQueryPerf._hasLoaded)
  {
    value = self->_workoutSavingQueryPerf._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_workoutSavingQueryPerf._value = value;
    self->_workoutSavingQueryPerf._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_workoutSavingQueryPerf._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)databasePerfTrace
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_134_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_databasePerfTrace._loadLock);
  if (self->_databasePerfTrace._hasLoaded)
  {
    value = self->_databasePerfTrace._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_databasePerfTrace._value = value;
    self->_databasePerfTrace._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_databasePerfTrace._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)xpcGatedSecondaryJournalMerge
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_137_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_xpcGatedSecondaryJournalMerge._loadLock);
  if (self->_xpcGatedSecondaryJournalMerge._hasLoaded)
  {
    value = self->_xpcGatedSecondaryJournalMerge._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_xpcGatedSecondaryJournalMerge._value = value;
    self->_xpcGatedSecondaryJournalMerge._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_xpcGatedSecondaryJournalMerge._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (BOOL)yodel
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_140;
  v7 = v6;
  os_unfair_lock_lock(&self->_yodel._loadLock);
  if (self->_yodel._hasLoaded)
  {
    value = self->_yodel._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_yodel._value = value;
    self->_yodel._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_yodel._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setYodel:(BOOL)a3
{
  os_unfair_lock_lock(&self->_yodel._loadLock);
  self->_yodel._hasLoaded = 1;
  self->_yodel._value = a3;

  os_unfair_lock_unlock(&self->_yodel._loadLock);
}

- (BOOL)chutney
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_146_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_chutney._loadLock);
  if (self->_chutney._hasLoaded)
  {
    value = self->_chutney._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_chutney._value = value;
    self->_chutney._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_chutney._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setChutney:(BOOL)a3
{
  os_unfair_lock_lock(&self->_chutney._loadLock);
  self->_chutney._hasLoaded = 1;
  self->_chutney._value = a3;

  os_unfair_lock_unlock(&self->_chutney._loadLock);
}

- (BOOL)maritime
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_149_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_maritime._loadLock);
  if (self->_maritime._hasLoaded)
  {
    value = self->_maritime._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_maritime._value = value;
    self->_maritime._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_maritime._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setMaritime:(BOOL)a3
{
  os_unfair_lock_lock(&self->_maritime._loadLock);
  self->_maritime._hasLoaded = 1;
  self->_maritime._value = a3;

  os_unfair_lock_unlock(&self->_maritime._loadLock);
}

- (BOOL)cmPedometerPush
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_153_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_cmPedometerPush._loadLock);
  if (self->_cmPedometerPush._hasLoaded)
  {
    value = self->_cmPedometerPush._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_cmPedometerPush._value = value;
    self->_cmPedometerPush._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_cmPedometerPush._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setCmPedometerPush:(BOOL)a3
{
  os_unfair_lock_lock(&self->_cmPedometerPush._loadLock);
  self->_cmPedometerPush._hasLoaded = 1;
  self->_cmPedometerPush._value = a3;

  os_unfair_lock_unlock(&self->_cmPedometerPush._loadLock);
}

- (BOOL)nanoMedicalIDSwift
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_157_1;
  v7 = v6;
  os_unfair_lock_lock(&self->_nanoMedicalIDSwift._loadLock);
  if (self->_nanoMedicalIDSwift._hasLoaded)
  {
    value = self->_nanoMedicalIDSwift._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_nanoMedicalIDSwift._value = value;
    self->_nanoMedicalIDSwift._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_nanoMedicalIDSwift._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setNanoMedicalIDSwift:(BOOL)a3
{
  os_unfair_lock_lock(&self->_nanoMedicalIDSwift._loadLock);
  self->_nanoMedicalIDSwift._hasLoaded = 1;
  self->_nanoMedicalIDSwift._value = a3;

  os_unfair_lock_unlock(&self->_nanoMedicalIDSwift._loadLock);
}

- (BOOL)HRCoordinator
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_160_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_HRCoordinator._loadLock);
  if (self->_HRCoordinator._hasLoaded)
  {
    value = self->_HRCoordinator._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_HRCoordinator._value = value;
    self->_HRCoordinator._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_HRCoordinator._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setHRCoordinator:(BOOL)a3
{
  os_unfair_lock_lock(&self->_HRCoordinator._loadLock);
  self->_HRCoordinator._hasLoaded = 1;
  self->_HRCoordinator._value = a3;

  os_unfair_lock_unlock(&self->_HRCoordinator._loadLock);
}

- (BOOL)removeCKCascadeDelete
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_163;
  v7 = v6;
  os_unfair_lock_lock(&self->_removeCKCascadeDelete._loadLock);
  if (self->_removeCKCascadeDelete._hasLoaded)
  {
    value = self->_removeCKCascadeDelete._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_removeCKCascadeDelete._value = value;
    self->_removeCKCascadeDelete._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_removeCKCascadeDelete._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setRemoveCKCascadeDelete:(BOOL)a3
{
  os_unfair_lock_lock(&self->_removeCKCascadeDelete._loadLock);
  self->_removeCKCascadeDelete._hasLoaded = 1;
  self->_removeCKCascadeDelete._value = a3;

  os_unfair_lock_unlock(&self->_removeCKCascadeDelete._loadLock);
}

- (BOOL)unifiedCloudSync
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_166;
  v7 = v6;
  os_unfair_lock_lock(&self->_unifiedCloudSync._loadLock);
  if (self->_unifiedCloudSync._hasLoaded)
  {
    value = self->_unifiedCloudSync._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_unifiedCloudSync._value = value;
    self->_unifiedCloudSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_unifiedCloudSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setUnifiedCloudSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_unifiedCloudSync._loadLock);
  self->_unifiedCloudSync._hasLoaded = 1;
  self->_unifiedCloudSync._value = a3;

  os_unfair_lock_unlock(&self->_unifiedCloudSync._loadLock);
}

- (BOOL)newSleep6MonthView
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_169_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_newSleep6MonthView._loadLock);
  if (self->_newSleep6MonthView._hasLoaded)
  {
    value = self->_newSleep6MonthView._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_newSleep6MonthView._value = value;
    self->_newSleep6MonthView._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_newSleep6MonthView._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setNewSleep6MonthView:(BOOL)a3
{
  os_unfair_lock_lock(&self->_newSleep6MonthView._loadLock);
  self->_newSleep6MonthView._hasLoaded = 1;
  self->_newSleep6MonthView._value = a3;

  os_unfair_lock_unlock(&self->_newSleep6MonthView._loadLock);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 5) = 0;
  *(self + 7) = 0;
  *(self + 9) = 0;
  *(self + 11) = 0;
  *(self + 13) = 0;
  *(self + 15) = 0;
  *(self + 17) = 0;
  *(self + 19) = 0;
  *(self + 21) = 0;
  *(self + 23) = 0;
  *(self + 25) = 0;
  *(self + 27) = 0;
  *(self + 29) = 0;
  *(self + 31) = 0;
  *(self + 33) = 0;
  *(self + 35) = 0;
  *(self + 37) = 0;
  *(self + 39) = 0;
  *(self + 41) = 0;
  *(self + 43) = 0;
  *(self + 45) = 0;
  *(self + 47) = 0;
  *(self + 49) = 0;
  *(self + 51) = 0;
  *(self + 53) = 0;
  *(self + 55) = 0;
  *(self + 57) = 0;
  *(self + 59) = 0;
  *(self + 61) = 0;
  *(self + 63) = 0;
  *(self + 65) = 0;
  *(self + 67) = 0;
  *(self + 69) = 0;
  *(self + 71) = 0;
  *(self + 73) = 0;
  *(self + 75) = 0;
  *(self + 77) = 0;
  *(self + 79) = 0;
  *(self + 81) = 0;
  *(self + 83) = 0;
  *(self + 85) = 0;
  *(self + 87) = 0;
  *(self + 89) = 0;
  *(self + 91) = 0;
  *(self + 93) = 0;
  *(self + 95) = 0;
  *(self + 97) = 0;
  *(self + 99) = 0;
  *(self + 101) = 0;
  *(self + 103) = 0;
  *(self + 105) = 0;
  *(self + 107) = 0;
  *(self + 109) = 0;
  *(self + 111) = 0;
  *(self + 113) = 0;
  *(self + 115) = 0;
  *(self + 117) = 0;
  return self;
}

@end
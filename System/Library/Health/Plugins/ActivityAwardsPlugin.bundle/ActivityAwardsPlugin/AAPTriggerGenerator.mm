@interface AAPTriggerGenerator
- (AAPTriggerGenerator)initWithProfile:(id)profile awardsClient:(id)client;
- (unint64_t)_triggersForSummary:(id)summary changedFields:(unint64_t)fields;
- (void)_notifyForUpdatedSummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation AAPTriggerGenerator

- (AAPTriggerGenerator)initWithProfile:(id)profile awardsClient:(id)client
{
  profileCopy = profile;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = AAPTriggerGenerator;
  v8 = [(AAPTriggerGenerator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_awardsClient, client);
    v10 = objc_storeWeak(&v9->_profile, profileCopy);
    [profileCopy registerProfileReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [MEMORY[0x29EDBAD78] categoryTypeForIdentifier:*MEMORY[0x29EDBA4A8]];
  dataManager = [WeakRetained dataManager];
  [dataManager addObserver:self forDataType:v4];

  dataManager2 = [WeakRetained dataManager];
  workoutType = [MEMORY[0x29EDBACB8] workoutType];
  [dataManager2 addObserver:self forDataType:workoutType];

  currentActivitySummaryHelper = [WeakRetained currentActivitySummaryHelper];
  [currentActivitySummaryHelper addObserver:self];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v5 = ACHLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29E9F4000, v5, OS_LOG_TYPE_DEFAULT, "Sample added, signaling awards daemon for workouts/mindfulSessions added", v6, 2u);
  }

  [(AACAwardsClient *)self->_awardsClient requestAwardingWithTriggers:2 completion:&unk_2A2520098];
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateTodayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  if (([summaryCopy _isDataLoading] & 1) == 0)
  {
    [(AAPTriggerGenerator *)self _notifyForUpdatedSummary:summaryCopy changedFields:fields];
  }
}

- (void)currentActivitySummaryHelper:(id)helper didUpdateYesterdayActivitySummary:(id)summary changedFields:(unint64_t)fields
{
  summaryCopy = summary;
  if (([summaryCopy _isDataLoading] & 1) == 0)
  {
    [(AAPTriggerGenerator *)self _notifyForUpdatedSummary:summaryCopy changedFields:fields];
  }
}

- (void)_notifyForUpdatedSummary:(id)summary changedFields:(unint64_t)fields
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = [(AAPTriggerGenerator *)self _triggersForSummary:summary changedFields:fields];
  if (v5)
  {
    v6 = v5;
    v7 = ACHTriggerOptionsToString();
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_29E9F4000, v8, OS_LOG_TYPE_DEFAULT, "Singaling awards daemon for triggers: %@", &v10, 0xCu);
    }

    [(AACAwardsClient *)self->_awardsClient requestAwardingWithTriggers:v6 completion:&unk_2A25200B8];
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (unint64_t)_triggersForSummary:(id)summary changedFields:(unint64_t)fields
{
  fieldsCopy = fields;
  summaryCopy = summary;
  kilocalorieUnit = [MEMORY[0x29EDBAE50] kilocalorieUnit];
  minuteUnit = [MEMORY[0x29EDBAE50] minuteUnit];
  countUnit = [MEMORY[0x29EDBAE50] countUnit];
  if ([summaryCopy activityMoveMode] == 2)
  {
    if ((fieldsCopy & 0x4000) != 0)
    {
      appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
      [appleMoveTimeGoal doubleValueForUnit:minuteUnit];
      v11 = v10;

      if (v11 > 0.0)
      {
        appleMoveTime = [summaryCopy appleMoveTime];
        v13 = appleMoveTime;
        v14 = minuteUnit;
        goto LABEL_8;
      }
    }

LABEL_10:
    v19 = 0;
    if ((fieldsCopy & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((fieldsCopy & 2) == 0)
  {
    goto LABEL_10;
  }

  activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
  [activeEnergyBurnedGoal doubleValueForUnit:kilocalorieUnit];
  v11 = v16;

  if (v11 <= 0.0)
  {
    goto LABEL_10;
  }

  appleMoveTime = [summaryCopy activeEnergyBurned];
  v13 = appleMoveTime;
  v14 = kilocalorieUnit;
LABEL_8:
  [appleMoveTime doubleValueForUnit:v14];
  v18 = v17 >= v11;

  v19 = 4 * v18;
  if ((fieldsCopy & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  appleExerciseTimeGoal = [summaryCopy appleExerciseTimeGoal];
  [appleExerciseTimeGoal doubleValueForUnit:minuteUnit];
  v22 = v21;

  appleExerciseTime = [summaryCopy appleExerciseTime];
  [appleExerciseTime doubleValueForUnit:minuteUnit];
  v25 = v24;

  if (v25 >= v22)
  {
    v19 |= 0x10uLL;
  }

LABEL_13:
  if ((fieldsCopy & 8) != 0)
  {
    appleStandHoursGoal = [summaryCopy appleStandHoursGoal];
    [appleStandHoursGoal doubleValueForUnit:countUnit];
    v28 = v27;

    appleStandHours = [summaryCopy appleStandHours];
    [appleStandHours doubleValueForUnit:countUnit];
    v31 = v30;

    if (v31 >= v28)
    {
      v19 |= 0x20uLL;
    }
  }

  return v19;
}

@end
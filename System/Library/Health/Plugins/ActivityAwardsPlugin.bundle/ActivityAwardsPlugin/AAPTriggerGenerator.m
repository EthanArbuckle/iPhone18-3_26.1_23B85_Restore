@interface AAPTriggerGenerator
- (AAPTriggerGenerator)initWithProfile:(id)a3 awardsClient:(id)a4;
- (unint64_t)_triggersForSummary:(id)a3 changedFields:(unint64_t)a4;
- (void)_notifyForUpdatedSummary:(id)a3 changedFields:(unint64_t)a4;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5;
- (void)profileDidBecomeReady:(id)a3;
- (void)samplesAdded:(id)a3 anchor:(id)a4;
@end

@implementation AAPTriggerGenerator

- (AAPTriggerGenerator)initWithProfile:(id)a3 awardsClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AAPTriggerGenerator;
  v8 = [(AAPTriggerGenerator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_awardsClient, a4);
    v10 = objc_storeWeak(&v9->_profile, v6);
    [v6 registerProfileReadyObserver:v9 queue:0];
  }

  return v9;
}

- (void)profileDidBecomeReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [MEMORY[0x29EDBAD78] categoryTypeForIdentifier:*MEMORY[0x29EDBA4A8]];
  v5 = [WeakRetained dataManager];
  [v5 addObserver:self forDataType:v4];

  v6 = [WeakRetained dataManager];
  v7 = [MEMORY[0x29EDBACB8] workoutType];
  [v6 addObserver:self forDataType:v7];

  v8 = [WeakRetained currentActivitySummaryHelper];
  [v8 addObserver:self];
}

- (void)samplesAdded:(id)a3 anchor:(id)a4
{
  v5 = ACHLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29E9F4000, v5, OS_LOG_TYPE_DEFAULT, "Sample added, signaling awards daemon for workouts/mindfulSessions added", v6, 2u);
  }

  [(AACAwardsClient *)self->_awardsClient requestAwardingWithTriggers:2 completion:&unk_2A2520098];
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateTodayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v7 = a4;
  if (([v7 _isDataLoading] & 1) == 0)
  {
    [(AAPTriggerGenerator *)self _notifyForUpdatedSummary:v7 changedFields:a5];
  }
}

- (void)currentActivitySummaryHelper:(id)a3 didUpdateYesterdayActivitySummary:(id)a4 changedFields:(unint64_t)a5
{
  v7 = a4;
  if (([v7 _isDataLoading] & 1) == 0)
  {
    [(AAPTriggerGenerator *)self _notifyForUpdatedSummary:v7 changedFields:a5];
  }
}

- (void)_notifyForUpdatedSummary:(id)a3 changedFields:(unint64_t)a4
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = [(AAPTriggerGenerator *)self _triggersForSummary:a3 changedFields:a4];
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

- (unint64_t)_triggersForSummary:(id)a3 changedFields:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x29EDBAE50] kilocalorieUnit];
  v7 = [MEMORY[0x29EDBAE50] minuteUnit];
  v8 = [MEMORY[0x29EDBAE50] countUnit];
  if ([v5 activityMoveMode] == 2)
  {
    if ((v4 & 0x4000) != 0)
    {
      v9 = [v5 appleMoveTimeGoal];
      [v9 doubleValueForUnit:v7];
      v11 = v10;

      if (v11 > 0.0)
      {
        v12 = [v5 appleMoveTime];
        v13 = v12;
        v14 = v7;
        goto LABEL_8;
      }
    }

LABEL_10:
    v19 = 0;
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_10;
  }

  v15 = [v5 activeEnergyBurnedGoal];
  [v15 doubleValueForUnit:v6];
  v11 = v16;

  if (v11 <= 0.0)
  {
    goto LABEL_10;
  }

  v12 = [v5 activeEnergyBurned];
  v13 = v12;
  v14 = v6;
LABEL_8:
  [v12 doubleValueForUnit:v14];
  v18 = v17 >= v11;

  v19 = 4 * v18;
  if ((v4 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v20 = [v5 appleExerciseTimeGoal];
  [v20 doubleValueForUnit:v7];
  v22 = v21;

  v23 = [v5 appleExerciseTime];
  [v23 doubleValueForUnit:v7];
  v25 = v24;

  if (v25 >= v22)
  {
    v19 |= 0x10uLL;
  }

LABEL_13:
  if ((v4 & 8) != 0)
  {
    v26 = [v5 appleStandHoursGoal];
    [v26 doubleValueForUnit:v8];
    v28 = v27;

    v29 = [v5 appleStandHours];
    [v29 doubleValueForUnit:v8];
    v31 = v30;

    if (v31 >= v28)
    {
      v19 |= 0x20uLL;
    }
  }

  return v19;
}

@end
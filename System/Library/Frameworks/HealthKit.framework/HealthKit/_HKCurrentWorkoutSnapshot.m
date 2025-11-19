@interface _HKCurrentWorkoutSnapshot
- (_HKCurrentWorkoutSnapshot)initWithCoder:(id)a3;
- (double)elapsedTimeAtDate:(id)a3;
- (id)_initWithSessionIdentifier:(id)a3 workoutConfiguration:(id)a4 sessionServerState:(int64_t)a5 isSessionActive:(BOOL)a6 sessionType:(int64_t)a7 sessionError:(id)a8 isBuilderPaused:(BOOL)a9 applicationIdentifier:(id)a10 elapsedTime:(double)a11 snapshotDate:(id)a12 builderStartDate:(id)a13;
- (id)description;
- (int64_t)state;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKCurrentWorkoutSnapshot

- (id)_initWithSessionIdentifier:(id)a3 workoutConfiguration:(id)a4 sessionServerState:(int64_t)a5 isSessionActive:(BOOL)a6 sessionType:(int64_t)a7 sessionError:(id)a8 isBuilderPaused:(BOOL)a9 applicationIdentifier:(id)a10 elapsedTime:(double)a11 snapshotDate:(id)a12 builderStartDate:(id)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a8;
  v22 = a10;
  v35 = a12;
  v23 = a13;
  v36.receiver = self;
  v36.super_class = _HKCurrentWorkoutSnapshot;
  v24 = [(_HKCurrentWorkoutSnapshot *)&v36 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionIdentifier, a3);
    objc_storeStrong(&v25->_configuration, a4);
    v25->_internalState = a5;
    v25->_sessionState = HKWorkoutSessionStateFromServerState(a5);
    v25->_isSessionActive = a6;
    v25->_sessionType = a7;
    v26 = [v21 copy];
    sessionError = v25->_sessionError;
    v25->_sessionError = v26;

    v25->_isBuilderPaused = a9;
    v28 = [v22 copy];
    applicationIdentifier = v25->_applicationIdentifier;
    v25->_applicationIdentifier = v28;

    v25->_elapsedTime = a11;
    objc_storeStrong(&v25->_snapshotDate, a12);
    v30 = [v23 copy];
    builderStartDate = v25->_builderStartDate;
    v25->_builderStartDate = v30;
  }

  return v25;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  configuration = self->_configuration;
  v5 = HKWorkoutSessionStateToString(self->_sessionState);
  v6 = _HKWorkoutSessionServerStateToString(self->_internalState);
  applicationIdentifier = self->_applicationIdentifier;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_elapsedTime];
  snapshotDate = self->_snapshotDate;
  builderStartDate = self->_builderStartDate;
  v11 = HKWorkoutSessionTypeToString(self->_sessionType);
  v12 = [v14 stringWithFormat:@"<%@:%p, configuration:%@, state:%@, internalState:%@, applicationIdentifier:%@, elapsedTime:%@, snapshotDate:%@, builderStartDate:%@, sessionType:%@>", v3, self, configuration, v5, v6, applicationIdentifier, v8, snapshotDate, builderStartDate, v11];

  return v12;
}

- (double)elapsedTimeAtDate:(id)a3
{
  v4 = a3;
  v5 = v4;
  elapsedTime = 0.0;
  if (self->_elapsedTime != 0.0 && ([v4 hk_isBeforeDate:self->_snapshotDate] & 1) == 0)
  {
    elapsedTime = self->_elapsedTime;
    if (!self->_isBuilderPaused)
    {
      [v5 timeIntervalSinceDate:self->_snapshotDate];
      elapsedTime = elapsedTime + v7;
    }
  }

  return elapsedTime;
}

- (int64_t)state
{
  v2 = self->_sessionState - 2;
  if (v2 > 4)
  {
    return 1;
  }

  else
  {
    return qword_191DCD748[v2];
  }
}

- (_HKCurrentWorkoutSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = _HKCurrentWorkoutSnapshot;
  v5 = [(_HKCurrentWorkoutSnapshot *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v10;

    v5->_sessionState = [v4 decodeIntegerForKey:@"state"];
    v5->_internalState = [v4 decodeIntegerForKey:@"internalState"];
    v5->_isSessionActive = [v4 decodeBoolForKey:@"isSessionActive"];
    v5->_sessionType = [v4 decodeIntegerForKey:@"sessionType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionError"];
    sessionError = v5->_sessionError;
    v5->_sessionError = v12;

    v5->_isBuilderPaused = [v4 decodeBoolForKey:@"isBuilderPaused"];
    [v4 decodeDoubleForKey:@"elapsedTime"];
    v5->_elapsedTime = v14;
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotDate"];
    snapshotDate = v5->_snapshotDate;
    v5->_snapshotDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    builderStartDate = v5->_builderStartDate;
    v5->_builderStartDate = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeObject:self->_configuration forKey:@"configuration"];
  [v5 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeInteger:self->_sessionState forKey:@"state"];
  [v5 encodeInteger:self->_internalState forKey:@"internalState"];
  [v5 encodeBool:self->_isSessionActive forKey:@"isSessionActive"];
  [v5 encodeInteger:self->_sessionType forKey:@"sessionType"];
  [v5 encodeObject:self->_sessionError forKey:@"sessionError"];
  [v5 encodeBool:self->_isBuilderPaused forKey:@"isBuilderPaused"];
  [v5 encodeDouble:@"elapsedTime" forKey:self->_elapsedTime];
  [v5 encodeObject:self->_snapshotDate forKey:@"snapshotDate"];
  [v5 encodeObject:self->_builderStartDate forKey:@"startDate"];
}

@end
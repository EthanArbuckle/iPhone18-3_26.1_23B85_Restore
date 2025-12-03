@interface _HKCurrentWorkoutSnapshot
- (_HKCurrentWorkoutSnapshot)initWithCoder:(id)coder;
- (double)elapsedTimeAtDate:(id)date;
- (id)_initWithSessionIdentifier:(id)identifier workoutConfiguration:(id)configuration sessionServerState:(int64_t)state isSessionActive:(BOOL)active sessionType:(int64_t)type sessionError:(id)error isBuilderPaused:(BOOL)paused applicationIdentifier:(id)self0 elapsedTime:(double)self1 snapshotDate:(id)self2 builderStartDate:(id)self3;
- (id)description;
- (int64_t)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKCurrentWorkoutSnapshot

- (id)_initWithSessionIdentifier:(id)identifier workoutConfiguration:(id)configuration sessionServerState:(int64_t)state isSessionActive:(BOOL)active sessionType:(int64_t)type sessionError:(id)error isBuilderPaused:(BOOL)paused applicationIdentifier:(id)self0 elapsedTime:(double)self1 snapshotDate:(id)self2 builderStartDate:(id)self3
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  errorCopy = error;
  applicationIdentifierCopy = applicationIdentifier;
  dateCopy = date;
  startDateCopy = startDate;
  v36.receiver = self;
  v36.super_class = _HKCurrentWorkoutSnapshot;
  v24 = [(_HKCurrentWorkoutSnapshot *)&v36 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_sessionIdentifier, identifier);
    objc_storeStrong(&v25->_configuration, configuration);
    v25->_internalState = state;
    v25->_sessionState = HKWorkoutSessionStateFromServerState(state);
    v25->_isSessionActive = active;
    v25->_sessionType = type;
    v26 = [errorCopy copy];
    sessionError = v25->_sessionError;
    v25->_sessionError = v26;

    v25->_isBuilderPaused = paused;
    v28 = [applicationIdentifierCopy copy];
    applicationIdentifier = v25->_applicationIdentifier;
    v25->_applicationIdentifier = v28;

    v25->_elapsedTime = time;
    objc_storeStrong(&v25->_snapshotDate, date);
    v30 = [startDateCopy copy];
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

- (double)elapsedTimeAtDate:(id)date
{
  dateCopy = date;
  v5 = dateCopy;
  elapsedTime = 0.0;
  if (self->_elapsedTime != 0.0 && ([dateCopy hk_isBeforeDate:self->_snapshotDate] & 1) == 0)
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

- (_HKCurrentWorkoutSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = _HKCurrentWorkoutSnapshot;
  v5 = [(_HKCurrentWorkoutSnapshot *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v10;

    v5->_sessionState = [coderCopy decodeIntegerForKey:@"state"];
    v5->_internalState = [coderCopy decodeIntegerForKey:@"internalState"];
    v5->_isSessionActive = [coderCopy decodeBoolForKey:@"isSessionActive"];
    v5->_sessionType = [coderCopy decodeIntegerForKey:@"sessionType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionError"];
    sessionError = v5->_sessionError;
    v5->_sessionError = v12;

    v5->_isBuilderPaused = [coderCopy decodeBoolForKey:@"isBuilderPaused"];
    [coderCopy decodeDoubleForKey:@"elapsedTime"];
    v5->_elapsedTime = v14;
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotDate"];
    snapshotDate = v5->_snapshotDate;
    v5->_snapshotDate = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    builderStartDate = v5->_builderStartDate;
    v5->_builderStartDate = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeObject:self->_configuration forKey:@"configuration"];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeInteger:self->_sessionState forKey:@"state"];
  [coderCopy encodeInteger:self->_internalState forKey:@"internalState"];
  [coderCopy encodeBool:self->_isSessionActive forKey:@"isSessionActive"];
  [coderCopy encodeInteger:self->_sessionType forKey:@"sessionType"];
  [coderCopy encodeObject:self->_sessionError forKey:@"sessionError"];
  [coderCopy encodeBool:self->_isBuilderPaused forKey:@"isBuilderPaused"];
  [coderCopy encodeDouble:@"elapsedTime" forKey:self->_elapsedTime];
  [coderCopy encodeObject:self->_snapshotDate forKey:@"snapshotDate"];
  [coderCopy encodeObject:self->_builderStartDate forKey:@"startDate"];
}

@end
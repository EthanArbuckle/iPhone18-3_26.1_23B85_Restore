@interface CLLocationManagerStateTracker
- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints;
- (CLLocationManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state;
- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state;
- (void)dealloc;
- (void)setActivityType:(int64_t)type;
- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations;
- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates;
- (void)setAllowsLocationPrompts:(BOOL)prompts;
- (void)setAllowsMapCorrection:(BOOL)correction;
- (void)setBatchingLocation:(BOOL)location;
- (void)setCourtesyPromptNeeded:(BOOL)needed;
- (void)setDesiredAccuracy:(double)accuracy;
- (void)setDistanceFilter:(double)filter;
- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled;
- (void)setFusionInfoEnabled:(BOOL)enabled;
- (void)setGroundAltitudeEnabled:(BOOL)enabled;
- (void)setHeadingFilter:(double)filter;
- (void)setIsAuthorizedForWidgetUpdates:(BOOL)updates;
- (void)setLimitsPrecision:(BOOL)precision;
- (void)setMatchInfoEnabled:(BOOL)enabled;
- (void)setPaused:(BOOL)paused;
- (void)setPausesLocationUpdatesAutomatically:(int)automatically;
- (void)setPreviousAuthorizationStatus:(int)status;
- (void)setPreviousAuthorizationStatusValid:(BOOL)valid;
- (void)setRequestingLocation:(BOOL)location;
- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator;
- (void)setTrackRunInfoEnabled:(BOOL)enabled;
- (void)setUpdatingHeading:(BOOL)heading;
- (void)setUpdatingLocation:(BOOL)location;
- (void)setUpdatingVehicleHeading:(BOOL)heading;
- (void)setUpdatingVehicleSpeed:(BOOL)speed;
- (void)updateState:(id)state;
@end

@implementation CLLocationManagerStateTracker

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290562;
    v7 = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "state_transition";
    v12 = 2082;
    v13 = "LocationManager";
    v14 = 2050;
    identifier = [(CLLocationManagerStateTracker *)self identifier];
    v16 = 2082;
    v17 = "lifecycle";
    v18 = 2050;
    selfCopy = self;
    v20 = 2050;
    v21 = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

  v5.receiver = self;
  v5.super_class = CLLocationManagerStateTracker;
  [(CLStateTracker *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)initInSilo:(id)silo withIdentifier:(void *)identifier state:(id)state
{
  [silo assertInside];
  queue = [silo queue];

  return [(CLLocationManagerStateTracker *)self initWithQueue:queue identifier:identifier state:state];
}

- (CLLocationManagerStateTracker)initWithQueue:(id)queue identifier:(void *)identifier state:(id)state
{
  v32 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CLLocationManagerStateTracker;
  v7 = [(CLStateTracker *)&v17 initWithQueue:queue];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  v7->_identifier = identifier;
  if (!state)
  {
    goto LABEL_7;
  }

  if (v7->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v15 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v16 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "!_inTransaction";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Already in a transaction. LocationManager threading bug?", "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v8 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "assert";
      v24 = 2081;
      v25 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, &v8->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  else
  {
    v7->_inTransaction = 1;
    (*(state + 2))(state, v7);
    v8->_inTransaction = 0;
    if (qword_1ED519078 == -1)
    {
      goto LABEL_5;
    }
  }

  dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
LABEL_5:
  v9 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(CLLocationManagerStateTracker *)v8 identifier];
    *buf = 68290562;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "state_transition";
    v24 = 2082;
    v25 = "LocationManager";
    v26 = 2050;
    v27 = identifier;
    v28 = 2082;
    v29 = "init";
    v30 = 1040;
    *v31 = 80;
    *&v31[4] = 2098;
    *&v31[6] = &v8->_state;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, new:%{public, location:_CLLocationManagerStateTrackerState}.*P}", buf, 0x4Au);
LABEL_7:
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v11 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [(CLLocationManagerStateTracker *)v8 identifier];
    *buf = 68290562;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "state_transition";
    v24 = 2082;
    v25 = "LocationManager";
    v26 = 2050;
    v27 = identifier2;
    v28 = 2082;
    v29 = "lifecycle";
    v30 = 2050;
    *v31 = 0;
    *&v31[8] = 2050;
    *&v31[10] = v8;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", buf, 0x4Eu);
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setDistanceFilter:(double)filter
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      distanceFilter = self->_state.distanceFilter;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "distanceFilter";
      v20 = 2050;
      v21 = distanceFilter;
      v22 = 2050;
      filterCopy = filter;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v9, 0x4Eu);
    }
  }

  self->_state.distanceFilter = filter;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDesiredAccuracy:(double)accuracy
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      desiredAccuracy = self->_state.desiredAccuracy;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "desiredAccuracy";
      v20 = 2050;
      v21 = desiredAccuracy;
      v22 = 2050;
      accuracyCopy = accuracy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v9, 0x4Eu);
    }
  }

  self->_state.desiredAccuracy = accuracy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatingLocation:(BOOL)location
{
  locationCopy = location;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      updatingLocation = self->_state.updatingLocation;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "updatingLocation";
      v20 = 1026;
      v21 = updatingLocation;
      v22 = 1026;
      v23 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.updatingLocation = locationCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setRequestingLocation:(BOOL)location
{
  locationCopy = location;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      requestingLocation = self->_state.requestingLocation;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "requestingLocation";
      v20 = 1026;
      v21 = requestingLocation;
      v22 = 1026;
      v23 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.requestingLocation = locationCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatingHeading:(BOOL)heading
{
  headingCopy = heading;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      updatingHeading = self->_state.updatingHeading;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "updatingHeading";
      v20 = 1026;
      v21 = updatingHeading;
      v22 = 1026;
      v23 = headingCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.updatingHeading = headingCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setHeadingFilter:(double)filter
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      headingFilter = self->_state.headingFilter;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "headingFilter";
      v20 = 2050;
      v21 = headingFilter;
      v22 = 2050;
      filterCopy = filter;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}f, new:%{public}f}", v9, 0x4Eu);
    }
  }

  self->_state.headingFilter = filter;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAllowsLocationPrompts:(BOOL)prompts
{
  promptsCopy = prompts;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      allowsLocationPrompts = self->_state.allowsLocationPrompts;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "allowsLocationPrompts";
      v20 = 1026;
      v21 = allowsLocationPrompts;
      v22 = 1026;
      v23 = promptsCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.allowsLocationPrompts = promptsCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations
{
  locationsCopy = locations;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      allowsAlteredAccessoryLocations = self->_state.allowsAlteredAccessoryLocations;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "allowsAlteredAccessoryLocations";
      v20 = 1026;
      v21 = allowsAlteredAccessoryLocations;
      v22 = 1026;
      v23 = locationsCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.allowsAlteredAccessoryLocations = locationsCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      dynamicAccuracyReductionEnabled = self->_state.dynamicAccuracyReductionEnabled;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "dynamicAccuracyReductionEnabled";
      v20 = 1026;
      v21 = dynamicAccuracyReductionEnabled;
      v22 = 1026;
      v23 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.dynamicAccuracyReductionEnabled = enabledCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPreviousAuthorizationStatusValid:(BOOL)valid
{
  validCopy = valid;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      previousAuthorizationStatusValid = self->_state.previousAuthorizationStatusValid;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "previousAuthorizationStatusValid";
      v20 = 1026;
      v21 = previousAuthorizationStatusValid;
      v22 = 1026;
      v23 = validCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.previousAuthorizationStatusValid = validCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPreviousAuthorizationStatus:(int)status
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      previousAuthorizationStatus = self->_state.previousAuthorizationStatus;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "previousAuthorizationStatus";
      v20 = 2050;
      v21 = previousAuthorizationStatus;
      v22 = 2050;
      statusCopy = status;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLClientAuthorizationStatus}lld, new:%{public, location:CLClientAuthorizationStatus}lld}", v9, 0x4Eu);
    }
  }

  self->_state.previousAuthorizationStatus = status;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLimitsPrecision:(BOOL)precision
{
  precisionCopy = precision;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      limitsPrecision = self->_state.limitsPrecision;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "limitsPrecision";
      v20 = 1026;
      v21 = limitsPrecision;
      v22 = 1026;
      v23 = precisionCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.limitsPrecision = precisionCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setActivityType:(int64_t)type
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      activityType = self->_state.activityType;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "activityType";
      v20 = 2050;
      v21 = activityType;
      v22 = 2050;
      typeCopy = type;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLActivityType}lld, new:%{public, location:CLActivityType}lld}", v9, 0x4Eu);
    }
  }

  self->_state.activityType = type;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPausesLocationUpdatesAutomatically:(int)automatically
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      pausesLocationUpdatesAutomatically = self->_state.pausesLocationUpdatesAutomatically;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "pausesLocationUpdatesAutomatically";
      v20 = 2050;
      v21 = pausesLocationUpdatesAutomatically;
      v22 = 2050;
      automaticallyCopy = automatically;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:CLAutoPause}lld, new:%{public, location:CLAutoPause}lld}", v9, 0x4Eu);
    }
  }

  self->_state.pausesLocationUpdatesAutomatically = automatically;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      paused = self->_state.paused;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "paused";
      v20 = 1026;
      pausedCopy2 = paused;
      v22 = 1026;
      v23 = pausedCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.paused = pausedCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      allowsBackgroundLocationUpdates = self->_state.allowsBackgroundLocationUpdates;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "allowsBackgroundLocationUpdates";
      v20 = 1026;
      v21 = allowsBackgroundLocationUpdates;
      v22 = 1026;
      v23 = updatesCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.allowsBackgroundLocationUpdates = updatesCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setShowsBackgroundLocationIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      showsBackgroundLocationIndicator = self->_state.showsBackgroundLocationIndicator;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "showsBackgroundLocationIndicator";
      v20 = 1026;
      v21 = showsBackgroundLocationIndicator;
      v22 = 1026;
      v23 = indicatorCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.showsBackgroundLocationIndicator = indicatorCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAllowsMapCorrection:(BOOL)correction
{
  correctionCopy = correction;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      allowsMapCorrection = self->_state.allowsMapCorrection;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "allowsMapCorrection";
      v20 = 1026;
      v21 = allowsMapCorrection;
      v22 = 1026;
      v23 = correctionCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.allowsMapCorrection = correctionCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBatchingLocation:(BOOL)location
{
  locationCopy = location;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      batchingLocation = self->_state.batchingLocation;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "batchingLocation";
      v20 = 1026;
      v21 = batchingLocation;
      v22 = 1026;
      v23 = locationCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.batchingLocation = locationCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatingVehicleSpeed:(BOOL)speed
{
  speedCopy = speed;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      updatingVehicleSpeed = self->_state.updatingVehicleSpeed;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "updatingVehicleSpeed";
      v20 = 1026;
      v21 = updatingVehicleSpeed;
      v22 = 1026;
      v23 = speedCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.updatingVehicleSpeed = speedCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUpdatingVehicleHeading:(BOOL)heading
{
  headingCopy = heading;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      updatingVehicleHeading = self->_state.updatingVehicleHeading;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "updatingVehicleHeading";
      v20 = 1026;
      v21 = updatingVehicleHeading;
      v22 = 1026;
      v23 = headingCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.updatingVehicleHeading = headingCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMatchInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      matchInfoEnabled = self->_state.matchInfoEnabled;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "matchInfoEnabled";
      v20 = 1026;
      v21 = matchInfoEnabled;
      v22 = 1026;
      v23 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.matchInfoEnabled = enabledCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGroundAltitudeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      groundAltitudeEnabled = self->_state.groundAltitudeEnabled;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "groundAltitudeEnabled";
      v20 = 1026;
      v21 = groundAltitudeEnabled;
      v22 = 1026;
      v23 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.groundAltitudeEnabled = enabledCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setFusionInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      fusionInfoEnabled = self->_state.fusionInfoEnabled;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "fusionInfoEnabled";
      v20 = 1026;
      v21 = fusionInfoEnabled;
      v22 = 1026;
      v23 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.fusionInfoEnabled = enabledCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCourtesyPromptNeeded:(BOOL)needed
{
  neededCopy = needed;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      courtesyPromptNeeded = self->_state.courtesyPromptNeeded;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "courtesyPromptNeeded";
      v20 = 1026;
      v21 = courtesyPromptNeeded;
      v22 = 1026;
      v23 = neededCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.courtesyPromptNeeded = neededCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setIsAuthorizedForWidgetUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      isAuthorizedForWidgetUpdates = self->_state.isAuthorizedForWidgetUpdates;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "isAuthorizedForWidgetUpdates";
      v20 = 1026;
      v21 = isAuthorizedForWidgetUpdates;
      v22 = 1026;
      v23 = updatesCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.isAuthorizedForWidgetUpdates = updatesCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTrackRunInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v5 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
    {
      identifier = [(CLLocationManagerStateTracker *)self identifier];
      trackRunInfoEnabled = self->_state.trackRunInfoEnabled;
      v9[0] = 68290562;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "state_transition";
      v14 = 2082;
      v15 = "LocationManager";
      v16 = 2050;
      v17 = identifier;
      v18 = 2082;
      v19 = "trackRunInfoEnabled";
      v20 = 1026;
      v21 = trackRunInfoEnabled;
      v22 = 1026;
      v23 = enabledCopy;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}hhd, new:%{public}hhd}", v9, 0x46u);
    }
  }

  self->_state.trackRunInfoEnabled = enabledCopy;
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateState:(id)state
{
  v33 = *MEMORY[0x1E69E9840];
  p_state = &self->_state;
  v4 = *&self->_state.activityType;
  v12[2] = *&self->_state.allowsLocationPrompts;
  v12[3] = v4;
  v12[4] = *&self->_state.batchingLocation;
  v5 = *&self->_state.updatingLocation;
  v12[0] = *&self->_state.distanceFilter;
  v12[1] = v5;
  if (self->_inTransaction)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v10 = qword_1ED519080;
    p_state = "assert";
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v11 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "!_inTransaction";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Already in a transaction. LocationManager threading bug?", "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    selfCopy = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "!_inTransaction";
      _os_log_impl(&dword_19B873000, &selfCopy->super.super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Already in a transaction. LocationManager threading bug?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  else
  {
    selfCopy = self;
    self->_inTransaction = 1;
    (*(state + 2))(state, self);
    selfCopy->_inTransaction = 0;
    if (qword_1ED519078 == -1)
    {
      goto LABEL_3;
    }
  }

  dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
LABEL_3:
  v7 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEBUG))
  {
    identifier = [(CLLocationManagerStateTracker *)selfCopy identifier];
    *buf = 68291074;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "state_transition";
    v19 = 2082;
    v20 = "LocationManager";
    v21 = 2050;
    v22 = identifier;
    v23 = 2082;
    v24 = "allStates";
    v25 = 1040;
    v26 = 80;
    v27 = 2098;
    v28 = v12;
    v29 = 1040;
    v30 = 80;
    v31 = 2098;
    v32 = p_state;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public, location:_CLLocationManagerStateTrackerState}.*P, new:%{public, location:_CLLocationManagerStateTrackerState}.*P}", buf, 0x5Au);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)dumpState:(void *)state withSize:(unint64_t)size hints:(os_state_hints_s *)hints
{
  v21 = *MEMORY[0x1E69E9840];
  if (size <= 0x4F)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }

    v9 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2050;
      v18 = 80;
      v19 = 2050;
      sizeCopy2 = size;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v13, 0x26u);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
      }
    }

    v10 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2050;
      v18 = 80;
      v19 = 2050;
      sizeCopy2 = size;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "state dump failure", "{msg%{public}.0s:state dump failure, expected_size:%{public}lld, provided_size:%{public}lld}", &v13, 0x26u);
    }
  }

  else
  {
    *state = *&self->_state.distanceFilter;
    v6 = *&self->_state.batchingLocation;
    v8 = *&self->_state.updatingLocation;
    v7 = *&self->_state.allowsLocationPrompts;
    *(state + 3) = *&self->_state.activityType;
    *(state + 4) = v6;
    *(state + 1) = v8;
    *(state + 2) = v7;
  }

  result = size > 0x4F;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end
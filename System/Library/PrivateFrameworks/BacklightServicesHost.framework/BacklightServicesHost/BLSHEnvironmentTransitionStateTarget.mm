@interface BLSHEnvironmentTransitionStateTarget
- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)d backlightState:(int64_t)state triggerEvent:(id)event backlightRampBlock:(id)block forIdentifier:(id)identifier previousTarget:(id)target;
- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)d backlightState:(int64_t)state visualState:(id)visualState presentationDate:(id)date triggerEvent:(id)event pendingBacklightRamp:(id)ramp;
- (BLSHEnvironmentTransitionStateTarget)initWithTarget:(id)target visualState:(id)state presentationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVisualState:(id)state presentationDate:(id)date;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHEnvironmentTransitionStateTarget

- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)d backlightState:(int64_t)state triggerEvent:(id)event backlightRampBlock:(id)block forIdentifier:(id)identifier previousTarget:(id)target
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  blockCopy = block;
  identifierCopy = identifier;
  targetCopy = target;
  if (!targetCopy)
  {
    goto LABEL_15;
  }

  IsActive = BLSBacklightStateIsActive();
  [targetCopy backlightState];
  if (IsActive != BLSBacklightStateIsActive())
  {
    goto LABEL_15;
  }

  if (blockCopy)
  {
    pendingBacklightRamp = 0;
  }

  else
  {
    pendingBacklightRamp = [targetCopy pendingBacklightRamp];
    if ([(BLSHPendingBacklightRamp *)pendingBacklightRamp hasPendingRamp])
    {
      v20 = bls_scenes_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromBLSBacklightState();
        v27 = 134219010;
        selfCopy2 = self;
        v29 = 2114;
        v30 = identifierCopy;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = targetCopy;
        v35 = 2114;
        v36 = eventCopy;
        _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ update to state:%{public}@ – inheriting old backlight ramp existingInProgress:%{public}@ – event:%{public}@", &v27, 0x34u);
      }
    }
  }

  if (!eventCopy)
  {
    eventCopy = [targetCopy triggerEvent];
    if (eventCopy)
    {
      v22 = bls_scenes_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromBLSBacklightState();
        v27 = 134219010;
        selfCopy2 = self;
        v29 = 2114;
        v30 = identifierCopy;
        v31 = 2114;
        v32 = v23;
        v33 = 2114;
        v34 = targetCopy;
        v35 = 2114;
        v36 = eventCopy;
        _os_log_impl(&dword_21FD11000, v22, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ update to state:%{public}@ – inheriting old triggerEvent existingInProgress:%{public}@ – event:%{public}@", &v27, 0x34u);
      }
    }
  }

  if (!pendingBacklightRamp)
  {
LABEL_15:
    pendingBacklightRamp = [[BLSHPendingBacklightRamp alloc] initWithBacklightRampBlock:blockCopy];
  }

  v24 = [(BLSHEnvironmentTransitionStateTarget *)self initWithSequenceID:d backlightState:state visualState:0 presentationDate:0 triggerEvent:eventCopy pendingBacklightRamp:pendingBacklightRamp];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BLSHEnvironmentTransitionStateTarget)initWithTarget:(id)target visualState:(id)state presentationDate:(id)date
{
  dateCopy = date;
  stateCopy = state;
  targetCopy = target;
  sequenceID = [targetCopy sequenceID];
  backlightState = [targetCopy backlightState];
  triggerEvent = [targetCopy triggerEvent];
  pendingBacklightRamp = [targetCopy pendingBacklightRamp];

  v15 = [(BLSHEnvironmentTransitionStateTarget *)self initWithSequenceID:sequenceID backlightState:backlightState visualState:stateCopy presentationDate:dateCopy triggerEvent:triggerEvent pendingBacklightRamp:pendingBacklightRamp];
  return v15;
}

- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)d backlightState:(int64_t)state visualState:(id)visualState presentationDate:(id)date triggerEvent:(id)event pendingBacklightRamp:(id)ramp
{
  visualStateCopy = visualState;
  dateCopy = date;
  eventCopy = event;
  rampCopy = ramp;
  v22.receiver = self;
  v22.super_class = BLSHEnvironmentTransitionStateTarget;
  v18 = [(BLSHEnvironmentTransitionStateTarget *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_sequenceID = d;
    v18->_backlightState = state;
    objc_storeStrong(&v18->_visualState, visualState);
    objc_storeStrong(&v19->_presentationDate, date);
    objc_storeStrong(&v19->_triggerEvent, event);
    objc_storeStrong(&v19->_pendingBacklightRamp, ramp);
  }

  return v19;
}

- (id)description
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __51__BLSHEnvironmentTransitionStateTarget_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

id __51__BLSHEnvironmentTransitionStateTarget_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 16) withName:0];
  v3 = *(a1 + 32);
  [*(a1 + 40) backlightState];
  v4 = NSStringFromBLSBacklightState();
  v5 = [v3 appendObject:v4 withName:0];

  v6 = *(a1 + 40);
  if (v6[5])
  {
    v7 = *(a1 + 32);
    v8 = [v6[5] bls_shortLoggingString];
    v9 = [v7 appendObject:v8 withName:0];

    v6 = *(a1 + 40);
  }

  if (v6[6])
  {
    v10 = *(a1 + 32);
    v11 = [v6[6] bls_shortLoggingString];
    v12 = [v10 appendObject:v11 withName:0];

    v6 = *(a1 + 40);
  }

  if ([v6 didUpdateInitialState])
  {
    v13 = [*(a1 + 32) appendObject:@"initialComplete" withName:0];
  }

  result = [*(*(a1 + 40) + 32) hasPendingRamp];
  if (result)
  {
    return [*(a1 + 32) appendObject:@"pendingRamp" withName:0];
  }

  return result;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_sequenceID withName:@"sequenceID"];
  [(BLSHEnvironmentTransitionStateTarget *)self backlightState];
  v5 = NSStringFromBLSBacklightState();
  [v3 appendString:v5 withName:@"backlightState"];

  v6 = [v3 appendObject:self->_visualState withName:@"visualState"];
  bls_shortLoggingString = [(NSDate *)self->_presentationDate bls_shortLoggingString];
  v8 = [v3 appendObject:bls_shortLoggingString withName:@"presentationDate"];

  v9 = [v3 appendBool:-[BLSHEnvironmentTransitionStateTarget didUpdateInitialState](self withName:"didUpdateInitialState") ifEqualTo:{@"updatedInitialState", 1}];
  v10 = [v3 appendBool:-[BLSHPendingBacklightRamp hasPendingRamp](self->_pendingBacklightRamp withName:"hasPendingRamp") ifEqualTo:{@"hasPendingBacklightRamp", 1}];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInt64:self->_sequenceID];
  v5 = [builder appendObject:self->_visualState];
  v6 = [builder appendObject:self->_presentationDate];
  v7 = [builder hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  sequenceID = self->_sequenceID;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__BLSHEnvironmentTransitionStateTarget_isEqual___block_invoke;
  v20[3] = &unk_27841EB18;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendInt64:sequenceID counterpart:v20];
  visualState = self->_visualState;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__BLSHEnvironmentTransitionStateTarget_isEqual___block_invoke_2;
  v18[3] = &unk_27841EB40;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:visualState counterpart:v18];
  presentationDate = self->_presentationDate;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__BLSHEnvironmentTransitionStateTarget_isEqual___block_invoke_3;
  v16[3] = &unk_27841EB40;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:presentationDate counterpart:v16];
  LOBYTE(presentationDate) = [v5 isEqual];

  return presentationDate;
}

- (BOOL)isEqualToVisualState:(id)state presentationDate:(id)date
{
  dateCopy = date;
  visualState = self->_visualState;
  if (BSEqualObjects())
  {
    presentationDate = self->_presentationDate;
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
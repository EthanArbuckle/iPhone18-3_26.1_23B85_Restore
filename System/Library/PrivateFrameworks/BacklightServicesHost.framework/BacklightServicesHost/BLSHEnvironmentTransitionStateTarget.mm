@interface BLSHEnvironmentTransitionStateTarget
- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)a3 backlightState:(int64_t)a4 triggerEvent:(id)a5 backlightRampBlock:(id)a6 forIdentifier:(id)a7 previousTarget:(id)a8;
- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)a3 backlightState:(int64_t)a4 visualState:(id)a5 presentationDate:(id)a6 triggerEvent:(id)a7 pendingBacklightRamp:(id)a8;
- (BLSHEnvironmentTransitionStateTarget)initWithTarget:(id)a3 visualState:(id)a4 presentationDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVisualState:(id)a3 presentationDate:(id)a4;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLSHEnvironmentTransitionStateTarget

- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)a3 backlightState:(int64_t)a4 triggerEvent:(id)a5 backlightRampBlock:(id)a6 forIdentifier:(id)a7 previousTarget:(id)a8
{
  v37 = *MEMORY[0x277D85DE8];
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (!v17)
  {
    goto LABEL_15;
  }

  IsActive = BLSBacklightStateIsActive();
  [v17 backlightState];
  if (IsActive != BLSBacklightStateIsActive())
  {
    goto LABEL_15;
  }

  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = [v17 pendingBacklightRamp];
    if ([(BLSHPendingBacklightRamp *)v19 hasPendingRamp])
    {
      v20 = bls_scenes_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromBLSBacklightState();
        v27 = 134219010;
        v28 = self;
        v29 = 2114;
        v30 = v16;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = v17;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&dword_21FD11000, v20, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ update to state:%{public}@ – inheriting old backlight ramp existingInProgress:%{public}@ – event:%{public}@", &v27, 0x34u);
      }
    }
  }

  if (!v14)
  {
    v14 = [v17 triggerEvent];
    if (v14)
    {
      v22 = bls_scenes_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromBLSBacklightState();
        v27 = 134219010;
        v28 = self;
        v29 = 2114;
        v30 = v16;
        v31 = 2114;
        v32 = v23;
        v33 = 2114;
        v34 = v17;
        v35 = 2114;
        v36 = v14;
        _os_log_impl(&dword_21FD11000, v22, OS_LOG_TYPE_INFO, "ETS:%p:%{public}@ update to state:%{public}@ – inheriting old triggerEvent existingInProgress:%{public}@ – event:%{public}@", &v27, 0x34u);
      }
    }
  }

  if (!v19)
  {
LABEL_15:
    v19 = [[BLSHPendingBacklightRamp alloc] initWithBacklightRampBlock:v15];
  }

  v24 = [(BLSHEnvironmentTransitionStateTarget *)self initWithSequenceID:a3 backlightState:a4 visualState:0 presentationDate:0 triggerEvent:v14 pendingBacklightRamp:v19];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BLSHEnvironmentTransitionStateTarget)initWithTarget:(id)a3 visualState:(id)a4 presentationDate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 sequenceID];
  v12 = [v10 backlightState];
  v13 = [v10 triggerEvent];
  v14 = [v10 pendingBacklightRamp];

  v15 = [(BLSHEnvironmentTransitionStateTarget *)self initWithSequenceID:v11 backlightState:v12 visualState:v9 presentationDate:v8 triggerEvent:v13 pendingBacklightRamp:v14];
  return v15;
}

- (BLSHEnvironmentTransitionStateTarget)initWithSequenceID:(unint64_t)a3 backlightState:(int64_t)a4 visualState:(id)a5 presentationDate:(id)a6 triggerEvent:(id)a7 pendingBacklightRamp:(id)a8
{
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v22.receiver = self;
  v22.super_class = BLSHEnvironmentTransitionStateTarget;
  v18 = [(BLSHEnvironmentTransitionStateTarget *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_sequenceID = a3;
    v18->_backlightState = a4;
    objc_storeStrong(&v18->_visualState, a5);
    objc_storeStrong(&v19->_presentationDate, a6);
    objc_storeStrong(&v19->_triggerEvent, a7);
    objc_storeStrong(&v19->_pendingBacklightRamp, a8);
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
  v12 = self;
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
  v7 = [(NSDate *)self->_presentationDate bls_shortLoggingString];
  v8 = [v3 appendObject:v7 withName:@"presentationDate"];

  v9 = [v3 appendBool:-[BLSHEnvironmentTransitionStateTarget didUpdateInitialState](self withName:"didUpdateInitialState") ifEqualTo:{@"updatedInitialState", 1}];
  v10 = [v3 appendBool:-[BLSHPendingBacklightRamp hasPendingRamp](self->_pendingBacklightRamp withName:"hasPendingRamp") ifEqualTo:{@"hasPendingBacklightRamp", 1}];
  v11 = [v3 build];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInt64:self->_sequenceID];
  v5 = [v3 appendObject:self->_visualState];
  v6 = [v3 appendObject:self->_presentationDate];
  v7 = [v3 hash];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  sequenceID = self->_sequenceID;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __48__BLSHEnvironmentTransitionStateTarget_isEqual___block_invoke;
  v20[3] = &unk_27841EB18;
  v7 = v4;
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

- (BOOL)isEqualToVisualState:(id)a3 presentationDate:(id)a4
{
  v5 = a4;
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
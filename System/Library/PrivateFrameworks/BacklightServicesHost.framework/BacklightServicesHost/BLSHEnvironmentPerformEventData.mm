@interface BLSHEnvironmentPerformEventData
- (BLSHEnvironmentPerformEventData)initWithStateMachineOldBacklightState:(int64_t)state eventPreviousBacklightState:(int64_t)backlightState eventNewBacklightState:(int64_t)newBacklightState;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BLSHEnvironmentPerformEventData

- (BLSHEnvironmentPerformEventData)initWithStateMachineOldBacklightState:(int64_t)state eventPreviousBacklightState:(int64_t)backlightState eventNewBacklightState:(int64_t)newBacklightState
{
  v11.receiver = self;
  v11.super_class = BLSHEnvironmentPerformEventData;
  v8 = [(BLSHEnvironmentPerformEventData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_stateMachineOldBacklightState = state;
    v8->_eventPreviousBacklightState = backlightState;
    v8->_eventNewBacklightState = newBacklightState;
    v8->_startedTime = mach_continuous_time();
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stateMachineOldBacklightState = self->_stateMachineOldBacklightState;
  v5 = NSStringFromBLSBacklightState();
  eventPreviousBacklightState = self->_eventPreviousBacklightState;
  v7 = NSStringFromBLSBacklightState();
  eventNewBacklightState = self->_eventNewBacklightState;
  v9 = NSStringFromBLSBacklightState();
  v10 = objc_alloc(MEMORY[0x277CBEAA8]);
  v11 = [v10 bls_initWithMachContinuousTime:self->_startedTime];
  bls_shortLoggingString = [v11 bls_shortLoggingString];
  v13 = [v3 stringWithFormat:@"event (%@) %@->%@ %@", v5, v7, v9, bls_shortLoggingString];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  stateMachineOldBacklightState = self->_stateMachineOldBacklightState;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__BLSHEnvironmentPerformEventData_isEqual___block_invoke;
  v20[3] = &unk_27841EB18;
  v7 = equalCopy;
  v21 = v7;
  v8 = [v5 appendInteger:stateMachineOldBacklightState counterpart:v20];
  eventPreviousBacklightState = self->_eventPreviousBacklightState;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__BLSHEnvironmentPerformEventData_isEqual___block_invoke_2;
  v18[3] = &unk_27841EB18;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendInteger:eventPreviousBacklightState counterpart:v18];
  eventNewBacklightState = self->_eventNewBacklightState;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __43__BLSHEnvironmentPerformEventData_isEqual___block_invoke_3;
  v16[3] = &unk_27841EB18;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendInteger:eventNewBacklightState counterpart:v16];
  LOBYTE(eventNewBacklightState) = [v5 isEqual];

  return eventNewBacklightState;
}

@end
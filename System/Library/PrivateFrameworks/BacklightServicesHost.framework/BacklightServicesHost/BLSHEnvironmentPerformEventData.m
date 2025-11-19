@interface BLSHEnvironmentPerformEventData
- (BLSHEnvironmentPerformEventData)initWithStateMachineOldBacklightState:(int64_t)a3 eventPreviousBacklightState:(int64_t)a4 eventNewBacklightState:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation BLSHEnvironmentPerformEventData

- (BLSHEnvironmentPerformEventData)initWithStateMachineOldBacklightState:(int64_t)a3 eventPreviousBacklightState:(int64_t)a4 eventNewBacklightState:(int64_t)a5
{
  v11.receiver = self;
  v11.super_class = BLSHEnvironmentPerformEventData;
  v8 = [(BLSHEnvironmentPerformEventData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_stateMachineOldBacklightState = a3;
    v8->_eventPreviousBacklightState = a4;
    v8->_eventNewBacklightState = a5;
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
  v12 = [v11 bls_shortLoggingString];
  v13 = [v3 stringWithFormat:@"event (%@) %@->%@ %@", v5, v7, v9, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  stateMachineOldBacklightState = self->_stateMachineOldBacklightState;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__BLSHEnvironmentPerformEventData_isEqual___block_invoke;
  v20[3] = &unk_27841EB18;
  v7 = v4;
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
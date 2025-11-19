@interface BLSHBacklightDisplayStateMachineAbortContext
- (BLSHBacklightDisplayStateMachineAbortContext)initWithDisplayMode:(int64_t)a3 prewarmingDisplayMode:(int64_t)a4 lastSteadyStateDisplayMode:(int64_t)a5 caDisplayState:(int64_t)a6 cbDisplayMode:(int64_t)a7 showingBlankingWindow:(BOOL)a8 sleepMonitorAggregateState:(id)a9 hasEnsureFlipbookCurrent:(BOOL)a10;
- (NSString)abortReasonString;
- (NSString)description;
- (void)_populatePayload;
- (void)dealloc;
@end

@implementation BLSHBacklightDisplayStateMachineAbortContext

- (BLSHBacklightDisplayStateMachineAbortContext)initWithDisplayMode:(int64_t)a3 prewarmingDisplayMode:(int64_t)a4 lastSteadyStateDisplayMode:(int64_t)a5 caDisplayState:(int64_t)a6 cbDisplayMode:(int64_t)a7 showingBlankingWindow:(BOOL)a8 sleepMonitorAggregateState:(id)a9 hasEnsureFlipbookCurrent:(BOOL)a10
{
  v17 = a9;
  v21.receiver = self;
  v21.super_class = BLSHBacklightDisplayStateMachineAbortContext;
  v18 = [(BLSHBacklightDisplayStateMachineAbortContext *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_displayMode = a3;
    v18->_prewarmingDisplayMode = a4;
    v18->_lastSteadyStateDisplayMode = a5;
    v18->_caDisplayState = a6;
    v18->_cbDisplayMode = a7;
    v18->_showingBlankingWindow = a8;
    v18->_hasEnsureFlipbookCurrent = a10;
    objc_storeStrong(&v18->_sleepMonitorAggregateState, a9);
    v19->_abortTimestamp = mach_continuous_time();
    v19->_abortReason = 2;
    v19->_payloadSize = 20;
    [(BLSHBacklightDisplayStateMachineAbortContext *)v19 _populatePayload];
  }

  return v19;
}

- (NSString)abortReasonString
{
  if (self->_abortReason == 7)
  {
    return @"DSM_SI";
  }

  else
  {
    return @"DSM";
  }
}

- (void)_populatePayload
{
  v3 = malloc_type_calloc(1uLL, self->_payloadSize, 0xBD44E61EuLL);
  v4 = v3;
  *v3 = 1;
  *(v3 + 4) = vmovn_s64(*&self->_displayMode);
  caDisplayState = self->_caDisplayState;
  *(v3 + 3) = self->_lastSteadyStateDisplayMode;
  v6 = v3[16] & 0xFE;
  if ((caDisplayState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    ++v6;
  }

  v3[16] = v6;
  v3[16] = v6 & 0xFD | (2 * self->_showingBlankingWindow);
  v7 = v3[16] & 0xFB | (4 * (BLSBacklightFactorFromCBDisplayMode(self->_cbDisplayMode) != 0));
  v4[16] = v7;
  v8 = v7 & 0xF7 | (8 * (self->_caDisplayState != 1));
  v4[16] = v8;
  v9 = self->_caDisplayState;
  if (v9 == 3 || v9 == 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  v4[16] = v11 | v8 & 0xEF;
  self->_payload = v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NSStringFromBLSBacklightDisplayMode(self->_displayMode);
  [v3 appendString:v4 withName:@"displayMode"];

  v5 = [(SWSystemSleepMonitorAggregateState *)self->_sleepMonitorAggregateState descriptionForTimestamp:self->_abortTimestamp];
  v6 = [v3 appendObject:v5 withName:@"sleepState"];

  v7 = [v3 appendBool:self->_hasEnsureFlipbookCurrent withName:@"hasEnsureFlipbookCurrent"];
  v8 = NSStringFromBLSBacklightDisplayMode(self->_prewarmingDisplayMode);
  [v3 appendString:v8 withName:@"prewarmingDisplayMode"];

  v9 = NSStringFromBLSBacklightDisplayMode(self->_lastSteadyStateDisplayMode);
  [v3 appendString:v9 withName:@"lastSteadyStateDisplayMode"];

  caDisplayState = self->_caDisplayState;
  v11 = NSStringFromCADisplayState();
  v12 = [v3 appendObject:v11 withName:@"caDisplayState"];

  v13 = NSStringFromCBDisplayMode_bls(self->_cbDisplayMode);
  v14 = [v3 appendObject:v13 withName:@"cbDisplayMode"];

  v15 = [v3 appendBool:self->_showingBlankingWindow withName:@"showingBlankingWindow"];
  v16 = [v3 build];

  return v16;
}

- (void)dealloc
{
  payload = self->_payload;
  if (payload)
  {
    free(payload);
    self->_payload = 0;
    self->_payloadSize = 0;
  }

  v4.receiver = self;
  v4.super_class = BLSHBacklightDisplayStateMachineAbortContext;
  [(BLSHBacklightDisplayStateMachineAbortContext *)&v4 dealloc];
}

@end
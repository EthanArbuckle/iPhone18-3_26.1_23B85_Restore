@interface BLSHBacklightTransitionStateMachineAbortContext
+ (unsigned)backlightChangeRequestExplanationIdentifierFromString:(id)a3;
- (BLSHBacklightTransitionStateMachineAbortContext)initWithCurrentState:(id)a3 targetState:(id)a4 activeEvents:(id)a5 abortedEvents:(id)a6 pendingEnvironmentUpdate:(id)a7 pendingUpdatePresentation:(id)a8 pendingUpdateToSpecifier:(id)a9 pendingUpdateDisplayMode:(id)a10 ensureFlipbookCurrentOperation:(id)a11 queuedEventsToPerform:(id)a12 pendingPrewarmedEvent:(id)a13 environmentStateMachine:(id)a14 sleepMonitorAggregateState:(id)a15;
- (NSString)abortReasonString;
- (NSString)description;
- (void)_populatePayload;
- (void)dealloc;
@end

@implementation BLSHBacklightTransitionStateMachineAbortContext

+ (unsigned)backlightChangeRequestExplanationIdentifierFromString:(id)a3
{
  v3 = a3;
  if (backlightChangeRequestExplanationIdentifierFromString__onceToken != -1)
  {
    +[BLSHBacklightTransitionStateMachineAbortContext backlightChangeRequestExplanationIdentifierFromString:];
  }

  v4 = [backlightChangeRequestExplanationIdentifierFromString__exactMatches objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue];
  }

  else if ([v3 containsString:@" - force active"])
  {
    v6 = 1000;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __105__BLSHBacklightTransitionStateMachineAbortContext_backlightChangeRequestExplanationIdentifierFromString___block_invoke()
{
  v0 = backlightChangeRequestExplanationIdentifierFromString__exactMatches;
  backlightChangeRequestExplanationIdentifierFromString__exactMatches = &unk_28338DED8;
}

- (BLSHBacklightTransitionStateMachineAbortContext)initWithCurrentState:(id)a3 targetState:(id)a4 activeEvents:(id)a5 abortedEvents:(id)a6 pendingEnvironmentUpdate:(id)a7 pendingUpdatePresentation:(id)a8 pendingUpdateToSpecifier:(id)a9 pendingUpdateDisplayMode:(id)a10 ensureFlipbookCurrentOperation:(id)a11 queuedEventsToPerform:(id)a12 pendingPrewarmedEvent:(id)a13 environmentStateMachine:(id)a14 sleepMonitorAggregateState:(id)a15
{
  v40 = a3;
  v39 = a4;
  v28 = a5;
  v38 = a5;
  v29 = a6;
  v37 = a6;
  v30 = a7;
  v36 = a7;
  v35 = a8;
  v34 = a9;
  v33 = a10;
  v32 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v41.receiver = self;
  v41.super_class = BLSHBacklightTransitionStateMachineAbortContext;
  v24 = [(BLSHBacklightTransitionStateMachineAbortContext *)&v41 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_currentState, a3);
    objc_storeStrong(&v25->_targetState, a4);
    objc_storeStrong(&v25->_activeEvents, v28);
    objc_storeStrong(&v25->_abortedEvents, v29);
    objc_storeStrong(&v25->_pendingEnvironmentUpdate, v30);
    objc_storeStrong(&v25->_pendingUpdatePresentation, a8);
    objc_storeStrong(&v25->_pendingUpdateToSpecifier, a9);
    objc_storeStrong(&v25->_pendingUpdateDisplayMode, a10);
    objc_storeStrong(&v25->_ensureFlipbookCurrentOperation, a11);
    objc_storeStrong(&v25->_queuedEventsToPerform, a12);
    objc_storeStrong(&v25->_pendingPrewarmedEvent, a13);
    objc_storeStrong(&v25->_environmentStateMachine, a14);
    objc_storeStrong(&v25->_sleepMonitorAggregateState, a15);
    v25->_abortTimestamp = mach_continuous_time();
    v25->_abortReason = 1;
    v25->_payloadSize = 376;
    [(BLSHBacklightTransitionStateMachineAbortContext *)v25 _populatePayload];
  }

  return v25;
}

- (NSString)abortReasonString
{
  if (self->_abortReason == 4)
  {
    return @"TSM_SI";
  }

  else
  {
    return @"TSM";
  }
}

- (void)_populatePayload
{
  v3 = malloc_type_calloc(1uLL, self->_payloadSize, 0x8ED12450uLL);
  *v3 = 2;
  v3[1] = [(BLSHBacklightAggregateState *)self->_currentState displayMode];
  v4 = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  [BLSHBacklightEnvironmentStateMachineAbortPayload populatePresentationStruct:v3 + 2 withPresentation:v4];

  v3[8] = [(BLSHBacklightMutableTargetState *)self->_targetState displayMode];
  v5 = [(BLSHBacklightMutableTargetState *)self->_targetState presentation];
  [BLSHBacklightEnvironmentStateMachineAbortPayload populatePresentationStruct:v3 + 9 withPresentation:v5];

  pendingEnvironmentUpdate = self->_pendingEnvironmentUpdate;
  v7 = v3[16] & 0xFE;
  if (pendingEnvironmentUpdate)
  {
    ++v7;
  }

  *(v3 + 64) = v7;
  if (pendingEnvironmentUpdate)
  {
    v8 = pendingEnvironmentUpdate;
    if ([(BLSHPendingEnvironmentUpdateOperation *)v8 didUpdateInitialState])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(v3 + 64) = v3[16] & 0xFD | v9;
    v10 = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    *(v3 + 9) = [v10 eventID];

    v11 = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    v3[20] = [v11 state];

    v12 = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    v3[21] = [v12 previousState];

    v13 = [(BLSHPendingEnvironmentUpdateOperation *)v8 initialSpecifier];
    v14 = [v13 presentationDate];
    [v14 timeIntervalSinceReferenceDate];
    *(v3 + 11) = v15;

    v16 = [(BLSHPendingEnvironmentUpdateOperation *)v8 initialSpecifier];

    v17 = [v16 specifiers];
    v3[24] = [v17 count];
  }

  v18 = v3[26] & 0xFE;
  if (self->_pendingUpdatePresentation)
  {
    ++v18;
  }

  *(v3 + 104) = v18;
  v19 = v3[27] & 0xFE;
  if (self->_pendingUpdateToSpecifier)
  {
    ++v19;
  }

  *(v3 + 108) = v19;
  pendingUpdateDisplayMode = self->_pendingUpdateDisplayMode;
  if (pendingUpdateDisplayMode)
  {
    v21 = (v3[28] & 0xFE) + 1;
  }

  else
  {
    v21 = v3[28] & 0xFE;
  }

  *(v3 + 112) = v21;
  if (pendingUpdateDisplayMode)
  {
    v3[29] = [(BLSHPendingUpdateDisplayMode *)pendingUpdateDisplayMode targetDisplayMode];
  }

  v22 = [(NSArray *)self->_queuedEventsToPerform firstObject];
  _populateBacklightChangeEventStruct(v22, (v3 + 66));

  _populateBacklightChangeEventStruct(self->_pendingPrewarmedEvent, (v3 + 80));
  environmentStateMachine = self->_environmentStateMachine;
  if (environmentStateMachine)
  {
    [(BLSHBacklightEnvironmentStateMachine *)environmentStateMachine populateEnvironmentStateMachineStruct:v3 + 30];
  }

  else
  {
    *(v3 + 120) &= ~1u;
  }

  self->_payload = v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SWSystemSleepMonitorAggregateState *)self->_sleepMonitorAggregateState descriptionForTimestamp:self->_abortTimestamp];
  v5 = [v3 appendObject:v4 withName:@"sleepState"];

  activeEvents = self->_activeEvents;
  abortedEvents = self->_abortedEvents;
  v8 = NSStringFromBLSBacklightChangeEvents();
  v9 = [v3 appendObject:v8 withName:@"events"];

  v10 = [v3 appendObject:self->_ensureFlipbookCurrentOperation withName:@"ensureFlipbookCurrentOperation"];
  v11 = [v3 appendObject:self->_currentState withName:@"currentState"];
  v12 = [v3 appendObject:self->_targetState withName:@"targetState"];
  v13 = [v3 appendObject:self->_pendingEnvironmentUpdate withName:@"pendingEnvironmentUpdate"];
  v14 = [v3 appendObject:self->_pendingUpdatePresentation withName:@"pendingUpdatePresentation"];
  v15 = [v3 appendObject:self->_pendingUpdateToSpecifier withName:@"pendingUpdateToSpecifier"];
  v16 = [v3 appendObject:self->_queuedEventsToPerform withName:@"queuedEventsToPerform"];
  v17 = [v3 appendObject:self->_pendingPrewarmedEvent withName:@"pendingPrewarmedEvent"];
  v18 = [v3 build];

  return v18;
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
  v4.super_class = BLSHBacklightTransitionStateMachineAbortContext;
  [(BLSHBacklightTransitionStateMachineAbortContext *)&v4 dealloc];
}

@end
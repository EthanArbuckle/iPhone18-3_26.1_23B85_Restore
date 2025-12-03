@interface BLSHBacklightTransitionStateMachineAbortContext
+ (unsigned)backlightChangeRequestExplanationIdentifierFromString:(id)string;
- (BLSHBacklightTransitionStateMachineAbortContext)initWithCurrentState:(id)state targetState:(id)targetState activeEvents:(id)events abortedEvents:(id)abortedEvents pendingEnvironmentUpdate:(id)update pendingUpdatePresentation:(id)presentation pendingUpdateToSpecifier:(id)specifier pendingUpdateDisplayMode:(id)self0 ensureFlipbookCurrentOperation:(id)self1 queuedEventsToPerform:(id)self2 pendingPrewarmedEvent:(id)self3 environmentStateMachine:(id)self4 sleepMonitorAggregateState:(id)self5;
- (NSString)abortReasonString;
- (NSString)description;
- (void)_populatePayload;
- (void)dealloc;
@end

@implementation BLSHBacklightTransitionStateMachineAbortContext

+ (unsigned)backlightChangeRequestExplanationIdentifierFromString:(id)string
{
  stringCopy = string;
  if (backlightChangeRequestExplanationIdentifierFromString__onceToken != -1)
  {
    +[BLSHBacklightTransitionStateMachineAbortContext backlightChangeRequestExplanationIdentifierFromString:];
  }

  v4 = [backlightChangeRequestExplanationIdentifierFromString__exactMatches objectForKeyedSubscript:stringCopy];
  v5 = v4;
  if (v4)
  {
    unsignedIntegerValue = [v4 unsignedIntegerValue];
  }

  else if ([stringCopy containsString:@" - force active"])
  {
    unsignedIntegerValue = 1000;
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

void __105__BLSHBacklightTransitionStateMachineAbortContext_backlightChangeRequestExplanationIdentifierFromString___block_invoke()
{
  v0 = backlightChangeRequestExplanationIdentifierFromString__exactMatches;
  backlightChangeRequestExplanationIdentifierFromString__exactMatches = &unk_28338DED8;
}

- (BLSHBacklightTransitionStateMachineAbortContext)initWithCurrentState:(id)state targetState:(id)targetState activeEvents:(id)events abortedEvents:(id)abortedEvents pendingEnvironmentUpdate:(id)update pendingUpdatePresentation:(id)presentation pendingUpdateToSpecifier:(id)specifier pendingUpdateDisplayMode:(id)self0 ensureFlipbookCurrentOperation:(id)self1 queuedEventsToPerform:(id)self2 pendingPrewarmedEvent:(id)self3 environmentStateMachine:(id)self4 sleepMonitorAggregateState:(id)self5
{
  stateCopy = state;
  targetStateCopy = targetState;
  eventsCopy = events;
  eventsCopy2 = events;
  abortedEventsCopy = abortedEvents;
  abortedEventsCopy2 = abortedEvents;
  updateCopy = update;
  updateCopy2 = update;
  presentationCopy = presentation;
  specifierCopy = specifier;
  modeCopy = mode;
  operationCopy = operation;
  performCopy = perform;
  eventCopy = event;
  machineCopy = machine;
  aggregateStateCopy = aggregateState;
  v41.receiver = self;
  v41.super_class = BLSHBacklightTransitionStateMachineAbortContext;
  v24 = [(BLSHBacklightTransitionStateMachineAbortContext *)&v41 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_currentState, state);
    objc_storeStrong(&v25->_targetState, targetState);
    objc_storeStrong(&v25->_activeEvents, eventsCopy);
    objc_storeStrong(&v25->_abortedEvents, abortedEventsCopy);
    objc_storeStrong(&v25->_pendingEnvironmentUpdate, updateCopy);
    objc_storeStrong(&v25->_pendingUpdatePresentation, presentation);
    objc_storeStrong(&v25->_pendingUpdateToSpecifier, specifier);
    objc_storeStrong(&v25->_pendingUpdateDisplayMode, mode);
    objc_storeStrong(&v25->_ensureFlipbookCurrentOperation, operation);
    objc_storeStrong(&v25->_queuedEventsToPerform, perform);
    objc_storeStrong(&v25->_pendingPrewarmedEvent, event);
    objc_storeStrong(&v25->_environmentStateMachine, machine);
    objc_storeStrong(&v25->_sleepMonitorAggregateState, aggregateState);
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
  presentation = [(BLSHBacklightAggregateState *)self->_currentState presentation];
  [BLSHBacklightEnvironmentStateMachineAbortPayload populatePresentationStruct:v3 + 2 withPresentation:presentation];

  v3[8] = [(BLSHBacklightMutableTargetState *)self->_targetState displayMode];
  presentation2 = [(BLSHBacklightMutableTargetState *)self->_targetState presentation];
  [BLSHBacklightEnvironmentStateMachineAbortPayload populatePresentationStruct:v3 + 9 withPresentation:presentation2];

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
    triggerEvent = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    *(v3 + 9) = [triggerEvent eventID];

    triggerEvent2 = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    v3[20] = [triggerEvent2 state];

    triggerEvent3 = [(BLSHPendingEnvironmentUpdateOperation *)v8 triggerEvent];
    v3[21] = [triggerEvent3 previousState];

    initialSpecifier = [(BLSHPendingEnvironmentUpdateOperation *)v8 initialSpecifier];
    presentationDate = [initialSpecifier presentationDate];
    [presentationDate timeIntervalSinceReferenceDate];
    *(v3 + 11) = v15;

    initialSpecifier2 = [(BLSHPendingEnvironmentUpdateOperation *)v8 initialSpecifier];

    specifiers = [initialSpecifier2 specifiers];
    v3[24] = [specifiers count];
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

  firstObject = [(NSArray *)self->_queuedEventsToPerform firstObject];
  _populateBacklightChangeEventStruct(firstObject, (v3 + 66));

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
  build = [v3 build];

  return build;
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
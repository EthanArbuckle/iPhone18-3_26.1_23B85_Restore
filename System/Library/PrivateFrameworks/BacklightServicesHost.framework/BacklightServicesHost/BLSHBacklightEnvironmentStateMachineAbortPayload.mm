@interface BLSHBacklightEnvironmentStateMachineAbortPayload
+ (unsigned)presentationEntryIdentifierFromString:(id)string;
+ (void)populateEnvironmentStateMachineStruct:(id *)struct machineIsNil:(BOOL)nil presentation:(id)presentation addingEnvironmentsCount:(int)count updatingVisualStateTransitionStates:(id)states updatingDateSpecifierTransitionStates:(id)transitionStates backlightState:(int64_t)state previousBacklightState:(int64_t)self0 pendingNotifyBeganUpdatingState:(BOOL)self1 updatingState:(BOOL)self2 updatingPresentation:(BOOL)self3;
+ (void)populateOperationCompletedMismatchedBacklightStatesStruct:(id *)struct backlightState:(int64_t)state targetBacklightState:(int64_t)backlightState performEventHistory:(id)history didBeginUpdateHistory:(id)updateHistory didCompleteUpdateHistory:(id)completeUpdateHistory envStateMachineIsNil:(BOOL)nil envStateMachinePresentation:(id)self0 addingEnvironmentsCount:(int)self1 envStateMachineUpdatingVisualStateTransitionStates:(id)self2 envStateMachineUpdatingDateSpecifierTransitionStates:(id)self3 envStateMachineBacklightState:(int64_t)self4 envStateMachinePreviousBacklightState:(int64_t)self5 envStateMachinePendingNotifyBeganUpdatingState:(BOOL)self6 envStateMachineUpdatingState:(BOOL)self7 envStateMachineUpdatingPresentation:(BOOL)self8;
+ (void)populatePresentationStruct:(id *)struct withPresentation:(id)presentation;
+ (void)populateTransitionStateStruct:(void *)struct withTransitionState:;
@end

@implementation BLSHBacklightEnvironmentStateMachineAbortPayload

+ (unsigned)presentationEntryIdentifierFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqual:@"com.apple.Carousel"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqual:@"com.apple.clockface"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqual:@"com.apple.Carousel.defaultblanking"])
  {
    v4 = 6;
  }

  else if ([stringCopy hasPrefix:@"com.apple.carousel.lockscreen"])
  {
    v4 = 7;
  }

  else if ([stringCopy hasPrefix:@"com.apple.carousel.bulletin.alert"])
  {
    v4 = 5;
  }

  else if ([stringCopy hasPrefix:@"remoteContextView"])
  {
    v4 = 3;
  }

  else if ([stringCopy hasPrefix:@"com.apple.Carousel.coordinatedBacklightTransitioner"])
  {
    v4 = 8;
  }

  else if ([stringCopy containsString:@"alert:Legacy"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)populatePresentationStruct:(id *)struct withPresentation:(id)presentation
{
  presentationCopy = presentation;
  v7 = *struct & 0xFE;
  if (presentationCopy)
  {
    ++v7;
  }

  *struct = v7;
  v25 = presentationCopy;
  if (presentationCopy)
  {
    flipbookContext = [presentationCopy flipbookContext];
    if ([flipbookContext isInverted])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *struct = *struct & 0xFB | v9;

    flipbookContext2 = [v25 flipbookContext];
    if ([flipbookContext2 wantsTransform])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *struct = *struct & 0xFD | v11;

    presentationEntries = [v25 presentationEntries];
    v13 = [presentationEntries count];

    v14 = 0;
    struct->var3 = v13;
    p_var7 = &struct->var7;
    p_var6 = &struct->var6;
    p_var5 = &struct->var5;
    p_var4 = &struct->var4;
    do
    {
      if (v13 == v14)
      {
        break;
      }

      presentationEntries2 = [v25 presentationEntries];
      v19 = [presentationEntries2 objectAtIndexedSubscript:v14];
      environment = [v19 environment];
      identifier = [environment identifier];

      v22 = [self presentationEntryIdentifierFromString:identifier];
      if (v14 > 1)
      {
        v23 = p_var6;
        if (v14 != 2)
        {
          v23 = p_var7;
        }
      }

      else
      {
        v23 = p_var4;
        if (v14)
        {
          v23 = p_var5;
        }
      }

      *v23 = v22;

      ++v14;
    }

    while (v14 != 4);
  }
}

+ (void)populateTransitionStateStruct:(void *)struct withTransitionState:
{
  structCopy = struct;
  v4 = objc_opt_self();
  v5 = *a2 & 0xFE;
  if (structCopy)
  {
    ++v5;
  }

  *a2 = v5;
  if (structCopy)
  {
    environment = [structCopy environment];
    identifier = [environment identifier];
    *(a2 + 4) = [v4 presentationEntryIdentifierFromString:identifier];

    *(a2 + 8) = *(a2 + 8) & 0xFE | [structCopy isUpdatingInitialState];
    if ([structCopy isUpdatingVisualState])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 8) = *(a2 + 8) & 0xFD | v8;
    if ([structCopy isAnimating])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *(a2 + 8) = *(a2 + 8) & 0xFB | v9;
  }
}

+ (void)populateEnvironmentStateMachineStruct:(id *)struct machineIsNil:(BOOL)nil presentation:(id)presentation addingEnvironmentsCount:(int)count updatingVisualStateTransitionStates:(id)states updatingDateSpecifierTransitionStates:(id)transitionStates backlightState:(int64_t)state previousBacklightState:(int64_t)self0 pendingNotifyBeganUpdatingState:(BOOL)self1 updatingState:(BOOL)self2 updatingPresentation:(BOOL)self3
{
  presentationCopy = presentation;
  statesCopy = states;
  transitionStatesCopy = transitionStates;
  *struct = *struct & 0xFE | !nil;
  if (!nil)
  {
    [self populatePresentationStruct:&struct->var1 withPresentation:presentationCopy];
    v20 = [statesCopy count];
    v21 = 0;
    struct->var2 = v20;
    p_var6 = &struct->var6;
    p_var5 = &struct->var5;
    p_var4 = &struct->var4;
    structCopy = struct;
    p_var3 = &struct->var3;
    do
    {
      if (v20 == v21)
      {
        break;
      }

      v26 = [statesCopy objectAtIndexedSubscript:v21];
      v27 = v21 == 2 ? p_var5 : p_var6;
      v28 = v21 ? p_var4 : p_var3;
      v29 = (v21 <= 1 ? v28 : v27);
      v30 = v26;
      [(BLSHBacklightEnvironmentStateMachineAbortPayload *)self populateTransitionStateStruct:v29 withTransitionState:v26];

      ++v21;
    }

    while (v21 != 4);
    v31 = [transitionStatesCopy count];
    v32 = 0;
    structCopy->var7 = v31;
    do
    {
      if (v31 == v32)
      {
        break;
      }

      v33 = [transitionStatesCopy objectAtIndexedSubscript:v32];
      v34 = (v32 == 2 ? &structCopy->var10 : &structCopy->var11);
      v35 = (v32 ? &structCopy->var9 : &structCopy->var8);
      v36 = v32 <= 1 ? v35 : v34;
      [(BLSHBacklightEnvironmentStateMachineAbortPayload *)self populateTransitionStateStruct:v36 withTransitionState:v33];

      ++v32;
    }

    while (v32 != 4);
    structCopy->var12 = state;
    structCopy->var13 = backlightState;
    if (a12)
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    if (updatingPresentation)
    {
      v38 = 4;
    }

    else
    {
      v38 = 0;
    }

    *(structCopy + 140) = v37 | updatingState | v38 | *(structCopy + 140) & 0xF8;
  }
}

+ (void)populateOperationCompletedMismatchedBacklightStatesStruct:(id *)struct backlightState:(int64_t)state targetBacklightState:(int64_t)backlightState performEventHistory:(id)history didBeginUpdateHistory:(id)updateHistory didCompleteUpdateHistory:(id)completeUpdateHistory envStateMachineIsNil:(BOOL)nil envStateMachinePresentation:(id)self0 addingEnvironmentsCount:(int)self1 envStateMachineUpdatingVisualStateTransitionStates:(id)self2 envStateMachineUpdatingDateSpecifierTransitionStates:(id)self3 envStateMachineBacklightState:(int64_t)self4 envStateMachinePreviousBacklightState:(int64_t)self5 envStateMachinePendingNotifyBeganUpdatingState:(BOOL)self6 envStateMachineUpdatingState:(BOOL)self7 envStateMachineUpdatingPresentation:(BOOL)self8
{
  backlightStateCopy = backlightState;
  stateCopy = state;
  historyCopy = history;
  updateHistoryCopy = updateHistory;
  completeUpdateHistoryCopy = completeUpdateHistory;
  presentationCopy = presentation;
  statesCopy = states;
  transitionStatesCopy = transitionStates;
  struct->var0 = 1;
  struct->var1 = stateCopy;
  struct->var2 = backlightStateCopy;
  v25 = [historyCopy count];
  v26 = 0;
  v27 = 0;
  struct->var3 = v25;
  do
  {
    v28 = struct + v26 * 32;
    struct->var4[v26].var0 = 1;
    v29 = *(&struct->var4[v26] + 4);
    if (v27 >= v25)
    {
      v28[20] = v29 & 0xFE;
    }

    else
    {
      v28[20] = v29 | 1;
      v30 = [historyCopy objectAtIndexedSubscript:v27];
      *(v28 + 6) = [v30 stateMachineOldBacklightState];
      *(v28 + 7) = [v30 eventPreviousBacklightState];
      *(v28 + 8) = [v30 eventNewBacklightState];
      *(v28 + 5) = [v30 startedTime];
    }

    ++v27;
    ++v26;
  }

  while (v26 != 5);
  v31 = [updateHistoryCopy count];
  v32 = 0;
  struct->var5 = v31;
  var6 = struct->var6;
  var8 = struct->var8;
  do
  {
    var6->var0 = 1;
    if (v32 >= v31)
    {
      LOBYTE(var6[5].var3) &= ~1u;
    }

    else
    {
      *(var6 + 4) |= 1u;
      v35 = [updateHistoryCopy objectAtIndexedSubscript:v32];
      environmentIdentifier = [v35 environmentIdentifier];
      var6->var2 = [self presentationEntryIdentifierFromString:environmentIdentifier];

      var6->var3 = [v35 newBacklightState];
      var6->var4 = [v35 pendingTransitionStateCount];
      var6->var5 = [v35 timeStamp];
    }

    ++v32;
    ++var6;
  }

  while (v32 != 5);
  v37 = [completeUpdateHistoryCopy count];
  v38 = 0;
  struct->var7 = v37;
  do
  {
    var8->var0 = 1;
    v39 = *(var8 + 4);
    if (v38 >= v37)
    {
      *(var8 + 4) = v39 & 0xFE;
    }

    else
    {
      *(var8 + 4) = v39 | 1;
      v40 = [completeUpdateHistoryCopy objectAtIndexedSubscript:v38];
      environmentIdentifier2 = [v40 environmentIdentifier];
      var8->var2 = [self presentationEntryIdentifierFromString:environmentIdentifier2];

      var8->var3 = [v40 newBacklightState];
      var8->var4 = [v40 pendingTransitionStateCount];
      var8->var5 = [v40 timeStamp];
    }

    ++v38;
    ++var8;
  }

  while (v38 != 5);
  BYTE2(v42) = updatingPresentation;
  LOWORD(v42) = __PAIR16__(machineUpdatingState, updatingState);
  [self populateEnvironmentStateMachineStruct:&struct->var9 machineIsNil:nil presentation:presentationCopy addingEnvironmentsCount:count updatingVisualStateTransitionStates:statesCopy updatingDateSpecifierTransitionStates:transitionStatesCopy backlightState:machineBacklightState previousBacklightState:previousBacklightState pendingNotifyBeganUpdatingState:v42 updatingState:? updatingPresentation:?];
}

@end
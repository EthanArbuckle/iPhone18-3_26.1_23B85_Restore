@interface BLSHBacklightEnvironmentStateMachineAbortPayload
+ (unsigned)presentationEntryIdentifierFromString:(id)a3;
+ (void)populateEnvironmentStateMachineStruct:(id *)a3 machineIsNil:(BOOL)a4 presentation:(id)a5 addingEnvironmentsCount:(int)a6 updatingVisualStateTransitionStates:(id)a7 updatingDateSpecifierTransitionStates:(id)a8 backlightState:(int64_t)a9 previousBacklightState:(int64_t)a10 pendingNotifyBeganUpdatingState:(BOOL)a11 updatingState:(BOOL)a12 updatingPresentation:(BOOL)a13;
+ (void)populateOperationCompletedMismatchedBacklightStatesStruct:(id *)a3 backlightState:(int64_t)a4 targetBacklightState:(int64_t)a5 performEventHistory:(id)a6 didBeginUpdateHistory:(id)a7 didCompleteUpdateHistory:(id)a8 envStateMachineIsNil:(BOOL)a9 envStateMachinePresentation:(id)a10 addingEnvironmentsCount:(int)a11 envStateMachineUpdatingVisualStateTransitionStates:(id)a12 envStateMachineUpdatingDateSpecifierTransitionStates:(id)a13 envStateMachineBacklightState:(int64_t)a14 envStateMachinePreviousBacklightState:(int64_t)a15 envStateMachinePendingNotifyBeganUpdatingState:(BOOL)a16 envStateMachineUpdatingState:(BOOL)a17 envStateMachineUpdatingPresentation:(BOOL)a18;
+ (void)populatePresentationStruct:(id *)a3 withPresentation:(id)a4;
+ (void)populateTransitionStateStruct:(void *)a3 withTransitionState:;
@end

@implementation BLSHBacklightEnvironmentStateMachineAbortPayload

+ (unsigned)presentationEntryIdentifierFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"com.apple.Carousel"])
  {
    v4 = 1;
  }

  else if ([v3 isEqual:@"com.apple.clockface"])
  {
    v4 = 2;
  }

  else if ([v3 isEqual:@"com.apple.Carousel.defaultblanking"])
  {
    v4 = 6;
  }

  else if ([v3 hasPrefix:@"com.apple.carousel.lockscreen"])
  {
    v4 = 7;
  }

  else if ([v3 hasPrefix:@"com.apple.carousel.bulletin.alert"])
  {
    v4 = 5;
  }

  else if ([v3 hasPrefix:@"remoteContextView"])
  {
    v4 = 3;
  }

  else if ([v3 hasPrefix:@"com.apple.Carousel.coordinatedBacklightTransitioner"])
  {
    v4 = 8;
  }

  else if ([v3 containsString:@"alert:Legacy"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)populatePresentationStruct:(id *)a3 withPresentation:(id)a4
{
  v6 = a4;
  v7 = *a3 & 0xFE;
  if (v6)
  {
    ++v7;
  }

  *a3 = v7;
  v25 = v6;
  if (v6)
  {
    v8 = [v6 flipbookContext];
    if ([v8 isInverted])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    *a3 = *a3 & 0xFB | v9;

    v10 = [v25 flipbookContext];
    if ([v10 wantsTransform])
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *a3 = *a3 & 0xFD | v11;

    v12 = [v25 presentationEntries];
    v13 = [v12 count];

    v14 = 0;
    a3->var3 = v13;
    p_var7 = &a3->var7;
    p_var6 = &a3->var6;
    p_var5 = &a3->var5;
    p_var4 = &a3->var4;
    do
    {
      if (v13 == v14)
      {
        break;
      }

      v18 = [v25 presentationEntries];
      v19 = [v18 objectAtIndexedSubscript:v14];
      v20 = [v19 environment];
      v21 = [v20 identifier];

      v22 = [a1 presentationEntryIdentifierFromString:v21];
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

+ (void)populateTransitionStateStruct:(void *)a3 withTransitionState:
{
  v10 = a3;
  v4 = objc_opt_self();
  v5 = *a2 & 0xFE;
  if (v10)
  {
    ++v5;
  }

  *a2 = v5;
  if (v10)
  {
    v6 = [v10 environment];
    v7 = [v6 identifier];
    *(a2 + 4) = [v4 presentationEntryIdentifierFromString:v7];

    *(a2 + 8) = *(a2 + 8) & 0xFE | [v10 isUpdatingInitialState];
    if ([v10 isUpdatingVisualState])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(a2 + 8) = *(a2 + 8) & 0xFD | v8;
    if ([v10 isAnimating])
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

+ (void)populateEnvironmentStateMachineStruct:(id *)a3 machineIsNil:(BOOL)a4 presentation:(id)a5 addingEnvironmentsCount:(int)a6 updatingVisualStateTransitionStates:(id)a7 updatingDateSpecifierTransitionStates:(id)a8 backlightState:(int64_t)a9 previousBacklightState:(int64_t)a10 pendingNotifyBeganUpdatingState:(BOOL)a11 updatingState:(BOOL)a12 updatingPresentation:(BOOL)a13
{
  v40 = a5;
  v18 = a7;
  v19 = a8;
  *a3 = *a3 & 0xFE | !a4;
  if (!a4)
  {
    [a1 populatePresentationStruct:&a3->var1 withPresentation:v40];
    v20 = [v18 count];
    v21 = 0;
    a3->var2 = v20;
    p_var6 = &a3->var6;
    p_var5 = &a3->var5;
    p_var4 = &a3->var4;
    v39 = a3;
    p_var3 = &a3->var3;
    do
    {
      if (v20 == v21)
      {
        break;
      }

      v26 = [v18 objectAtIndexedSubscript:v21];
      v27 = v21 == 2 ? p_var5 : p_var6;
      v28 = v21 ? p_var4 : p_var3;
      v29 = (v21 <= 1 ? v28 : v27);
      v30 = v26;
      [(BLSHBacklightEnvironmentStateMachineAbortPayload *)a1 populateTransitionStateStruct:v29 withTransitionState:v26];

      ++v21;
    }

    while (v21 != 4);
    v31 = [v19 count];
    v32 = 0;
    v39->var7 = v31;
    do
    {
      if (v31 == v32)
      {
        break;
      }

      v33 = [v19 objectAtIndexedSubscript:v32];
      v34 = (v32 == 2 ? &v39->var10 : &v39->var11);
      v35 = (v32 ? &v39->var9 : &v39->var8);
      v36 = v32 <= 1 ? v35 : v34;
      [(BLSHBacklightEnvironmentStateMachineAbortPayload *)a1 populateTransitionStateStruct:v36 withTransitionState:v33];

      ++v32;
    }

    while (v32 != 4);
    v39->var12 = a9;
    v39->var13 = a10;
    if (a12)
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    if (a13)
    {
      v38 = 4;
    }

    else
    {
      v38 = 0;
    }

    *(v39 + 140) = v37 | a11 | v38 | *(v39 + 140) & 0xF8;
  }
}

+ (void)populateOperationCompletedMismatchedBacklightStatesStruct:(id *)a3 backlightState:(int64_t)a4 targetBacklightState:(int64_t)a5 performEventHistory:(id)a6 didBeginUpdateHistory:(id)a7 didCompleteUpdateHistory:(id)a8 envStateMachineIsNil:(BOOL)a9 envStateMachinePresentation:(id)a10 addingEnvironmentsCount:(int)a11 envStateMachineUpdatingVisualStateTransitionStates:(id)a12 envStateMachineUpdatingDateSpecifierTransitionStates:(id)a13 envStateMachineBacklightState:(int64_t)a14 envStateMachinePreviousBacklightState:(int64_t)a15 envStateMachinePendingNotifyBeganUpdatingState:(BOOL)a16 envStateMachineUpdatingState:(BOOL)a17 envStateMachineUpdatingPresentation:(BOOL)a18
{
  v20 = a5;
  v21 = a4;
  v47 = a6;
  v46 = a7;
  v24 = a8;
  v45 = a10;
  v44 = a12;
  v43 = a13;
  a3->var0 = 1;
  a3->var1 = v21;
  a3->var2 = v20;
  v25 = [v47 count];
  v26 = 0;
  v27 = 0;
  a3->var3 = v25;
  do
  {
    v28 = a3 + v26 * 32;
    a3->var4[v26].var0 = 1;
    v29 = *(&a3->var4[v26] + 4);
    if (v27 >= v25)
    {
      v28[20] = v29 & 0xFE;
    }

    else
    {
      v28[20] = v29 | 1;
      v30 = [v47 objectAtIndexedSubscript:v27];
      *(v28 + 6) = [v30 stateMachineOldBacklightState];
      *(v28 + 7) = [v30 eventPreviousBacklightState];
      *(v28 + 8) = [v30 eventNewBacklightState];
      *(v28 + 5) = [v30 startedTime];
    }

    ++v27;
    ++v26;
  }

  while (v26 != 5);
  v31 = [v46 count];
  v32 = 0;
  a3->var5 = v31;
  var6 = a3->var6;
  var8 = a3->var8;
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
      v35 = [v46 objectAtIndexedSubscript:v32];
      v36 = [v35 environmentIdentifier];
      var6->var2 = [a1 presentationEntryIdentifierFromString:v36];

      var6->var3 = [v35 newBacklightState];
      var6->var4 = [v35 pendingTransitionStateCount];
      var6->var5 = [v35 timeStamp];
    }

    ++v32;
    ++var6;
  }

  while (v32 != 5);
  v37 = [v24 count];
  v38 = 0;
  a3->var7 = v37;
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
      v40 = [v24 objectAtIndexedSubscript:v38];
      v41 = [v40 environmentIdentifier];
      var8->var2 = [a1 presentationEntryIdentifierFromString:v41];

      var8->var3 = [v40 newBacklightState];
      var8->var4 = [v40 pendingTransitionStateCount];
      var8->var5 = [v40 timeStamp];
    }

    ++v38;
    ++var8;
  }

  while (v38 != 5);
  BYTE2(v42) = a18;
  LOWORD(v42) = __PAIR16__(a17, a16);
  [a1 populateEnvironmentStateMachineStruct:&a3->var9 machineIsNil:a9 presentation:v45 addingEnvironmentsCount:a11 updatingVisualStateTransitionStates:v44 updatingDateSpecifierTransitionStates:v43 backlightState:a14 previousBacklightState:a15 pendingNotifyBeganUpdatingState:v42 updatingState:? updatingPresentation:?];
}

@end
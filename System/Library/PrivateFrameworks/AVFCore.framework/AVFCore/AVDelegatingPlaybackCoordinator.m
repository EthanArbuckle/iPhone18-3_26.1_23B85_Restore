@interface AVDelegatingPlaybackCoordinator
- (AVDelegatingPlaybackCoordinator)initWithPlaybackControlDelegate:(id)playbackControlDelegate;
- (BOOL)pauseSnapsToMediaTimeOfOriginator;
- (NSString)currentItemIdentifier;
- (id)_currentWaitingPoliciesArray;
- (id)_participantStateForIdentifier:(id)a3;
- (id)_transportControlStateForItemIdentifier:(id)a3;
- (id)avfParticipantsForFigParticipantsUUIDs:(id)a3;
- (id)beginSuspensionForReason:(id)a3;
- (id)coordinationMediumDelegate;
- (id)mediumLoggingIdentifier;
- (id)otherParticipants;
- (id)participantForIdentifier:(id)a3;
- (id)participantStates;
- (id)suspensionReasons;
- (id)suspensionReasonsThatTriggerWaiting;
- (id)trackedTransportControlStateDictionaries;
- (int64_t)participantLimitForWaitingOutSuspensionsWithReason:(id)a3;
- (void)_prepareToInitiatePlayback;
- (void)_removeParticipantStateWithIdentifier:(id)a3;
- (void)_removeUnusedTransportControlStates;
- (void)_replaceParticipantStates:(id)a3;
- (void)_setIsInExpanseMediaPlaybackOnAVAudioSession;
- (void)_updateOtherParticipantsUsingFigParticipantUUIDs:(id)a3;
- (void)_updateParticipantStateDictionaryWithParticipantState:(id)a3;
- (void)_updateSuspensionReasons:(id)a3;
- (void)_updateTransportControlStateDictionaryWithTransportControlState:(id)a3;
- (void)_updateWaitingPoliciesArray:(id)a3 withPolicies:(id)a4;
- (void)applyFigPauseSnapsToMediaTimeOfOriginator;
- (void)dealloc;
- (void)handleNewParticipantStateDictionary:(id)a3;
- (void)handleNewTransportControlStateDictionary:(id)a3;
- (void)handleRemovalOfParticipant:(id)a3;
- (void)handleReplacementParticipantStateDictionaries:(id)a3;
- (void)setCoordinationMediumDelegate:(id)a3;
- (void)setMediumLoggingIdentifier:(id)a3;
- (void)setParticipantLimit:(int64_t)a3 forWaitingOutSuspensionsWithReason:(id)a4;
- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)a3;
- (void)setSuspensionReasonsThatTriggerWaiting:(id)a3;
- (void)transitionToItemWithIdentifier:(NSString *)itemIdentifier proposingInitialTimingBasedOnTimebase:(CMTimebaseRef)snapshotTimebase;
@end

@implementation AVDelegatingPlaybackCoordinator

- (void)_setIsInExpanseMediaPlaybackOnAVAudioSession
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [MEMORY[0x1E6958460] sharedInstance];
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__AVDelegatingPlaybackCoordinator__setIsInExpanseMediaPlaybackOnAVAudioSession__block_invoke;
  v5[3] = &unk_1E7461130;
  v5[6] = &v10;
  v5[7] = &v6;
  v5[4] = self;
  v5[5] = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) != *(v11 + 24) && v3)
  {
    [v3 setIsExpanseMediaSession:? error:?];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __79__AVDelegatingPlaybackCoordinator__setIsInExpanseMediaPlaybackOnAVAudioSession__block_invoke(void *a1)
{
  result = [*(a1[4] + 88) count];
  *(*(a1[6] + 8) + 24) = result != 0;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 160);
  v3 = a1[4];
  v4 = *(*(a1[6] + 8) + 24);
  if (*(v3 + 160) != v4)
  {
    if (a1[5])
    {
      *(v3 + 160) = v4;
    }
  }

  return result;
}

- (void)_prepareToInitiatePlayback
{
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v4 = *MEMORY[0x1E69AE9E0];

  [v2 setAttribute:v3 forKey:v4 error:0];
}

- (AVDelegatingPlaybackCoordinator)initWithPlaybackControlDelegate:(id)playbackControlDelegate
{
  v42 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AVDelegatingPlaybackCoordinator;
  val = [(AVPlaybackCoordinator *)&v40 initInternal];
  if (val)
  {
    v4 = *MEMORY[0x1E695E4D0];
    [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6963228]];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    val->_timelineControlQueue = dispatch_queue_create("com.apple.avfoundation.avdelegatingplaybackcoordinator.timelinecontrol", v5);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    val->_figTimelineCoordinatorConfigQueue = dispatch_queue_create("com.apple.avdelegatingplaybackcoordinator.figtimelinecoordinator.config", v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    val->_currentItemIDConfigQueue = dispatch_queue_create("com.apple.avdelegatingplaybackcoordinator.currentitemidentifier.config", v7);
    val->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.avdelegatingplaybackcoordinator.ivars");
    objc_storeWeak(&val->_delegate, playbackControlDelegate);
    val->_controlStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    val->_participantStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    val->_otherParticipants = objc_alloc_init(MEMORY[0x1E695DF70]);
    val->_suspensionReasons = objc_alloc_init(MEMORY[0x1E695DF70]);
    val->_participantLimitPerSuspensionReason = objc_alloc_init(MEMORY[0x1E695DF90]);
    val->_suspensionReasonsThatTriggerWaiting = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"AVCoordinatedPlaybackSuspensionReasonUserIsChangingCurrentTime", 0}];
    val->_waitingPoliciesArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    val->_pauseSnapsToMediaTimeOfOriginator = 1;
    v34 = 0;
    v35 = AVDelegatingPlaybackCoordinatorSetRateAndAnchorTimeCallback;
    v36 = AVDelegatingPlaybackCoordinatorJumpToTimeCallback;
    v37 = AVDelegatingPlaybackCoordinatorPauseCallback;
    v38 = AVDelegatingPlaybackCoordinatorPrepareToSetRateCallback;
    v39 = 0;
    if (!FigTimelineCoordinatorCreate())
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v9 = [(AVDelegatingPlaybackCoordinator *)val suspensionReasonsThatTriggerWaiting];
      v10 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v10)
      {
        v11 = *v31;
        v12 = *MEMORY[0x1E6963348];
        v13 = *MEMORY[0x1E6963340];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(*(&v30 + 1) + 8 * i)), v12, v4, v13, 0)}];
          }

          v10 = [v9 countByEnumeratingWithState:&v30 objects:v41 count:16];
        }

        while (v10);
      }

      [(AVDelegatingPlaybackCoordinator *)val _updateWaitingPoliciesArray:val->_waitingPoliciesArray withPolicies:v8];
      [(AVDelegatingPlaybackCoordinator *)val _setWaitingPolicies:val->_waitingPoliciesArray];
      location[1] = 0;
      location[2] = 0;
      location[3] = AVDelegatingPlaybackCoordinatorBroadcastTimelineStateCallback;
      location[4] = AVDelegatingPlaybackCoordinatorBroadcastParticipantStateCallback;
      location[5] = AVDelegatingPlaybackCoordinatorAsynchronouslyReloadTimelineStateCallback;
      if (!FigTimelineCoordinatorSetWeakMediumAndCallbacks())
      {
        objc_initWeak(location, val);
        v15 = [MEMORY[0x1E696AD88] defaultCenter];
        figTimelineCoordinator = val->_figTimelineCoordinator;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke;
        v27[3] = &unk_1E7460BB0;
        objc_copyWeak(&v28, location);
        val->_suspensionsChangedNotificationToken = [v15 addObserverForName:*MEMORY[0x1E6963298] object:figTimelineCoordinator queue:0 usingBlock:v27];
        v17 = [MEMORY[0x1E696AD88] defaultCenter];
        v18 = val->_figTimelineCoordinator;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke_2;
        v25[3] = &unk_1E7460BB0;
        objc_copyWeak(&v26, location);
        val->_participantsChangedNotificationToken = [v17 addObserverForName:*MEMORY[0x1E6963290] object:v18 queue:0 usingBlock:v25];
        v19 = [MEMORY[0x1E696AD88] defaultCenter];
        v20 = val->_figTimelineCoordinator;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke_3;
        v23[3] = &unk_1E7460BB0;
        objc_copyWeak(&v24, location);
        val->_didIssueCommandToPlaybackObjectNotificationToken = [v19 addObserverForName:*MEMORY[0x1E6963288] object:v20 queue:0 usingBlock:v23];
        [(AVDelegatingPlaybackCoordinator *)val applyFigPauseSnapsToMediaTimeOfOriginator];
        objc_destroyWeak(&v24);
        objc_destroyWeak(&v26);
        objc_destroyWeak(&v28);
        objc_destroyWeak(location);
        return val;
      }
    }
  }

  return 0;
}

uint64_t __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a2 userInfo];
  result = [v3 objectForKey:*MEMORY[0x1E6963280]];
  if (result)
  {
    v5 = result;
    v6 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addObject:AVPlaybackCoordinatorAVFSuspensionReasonForFigReason(*(*(&v11 + 1) + 8 * v10++))];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    return [objc_loadWeak((a1 + 32)) _updateSuspensionReasons:v6];
  }

  return result;
}

uint64_t __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  result = [v3 objectForKey:*MEMORY[0x1E6963278]];
  if (result)
  {
    v5 = result;
    Weak = objc_loadWeak((a1 + 32));

    return [Weak _updateOtherParticipantsUsingFigParticipantUUIDs:v5];
  }

  return result;
}

uint64_t __67__AVDelegatingPlaybackCoordinator_initWithPlaybackControlDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectNotification" object:Weak userInfo:{AVPlaybackCoordinatorMakeUserInfoForDidIssueCommandToPlaybackObjectNotification(objc_msgSend(a2, "userInfo"))}];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v5 postNotification:v4];
}

- (void)dealloc
{
  if (self->_suspensionsChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (self->_participantsChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (self->_didIssueCommandToPlaybackObjectNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  timelineControlQueue = self->_timelineControlQueue;
  if (timelineControlQueue)
  {
    dispatch_release(timelineControlQueue);
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  if (figTimelineCoordinatorConfigQueue)
  {
    dispatch_release(figTimelineCoordinatorConfigQueue);
  }

  currentItemIDConfigQueue = self->_currentItemIDConfigQueue;
  if (currentItemIDConfigQueue)
  {
    dispatch_release(currentItemIDConfigQueue);
  }

  figTimelineCoordinator = self->_figTimelineCoordinator;
  if (figTimelineCoordinator)
  {
    CFRelease(figTimelineCoordinator);
  }

  v8.receiver = self;
  v8.super_class = AVDelegatingPlaybackCoordinator;
  [(AVDelegatingPlaybackCoordinator *)&v8 dealloc];
}

- (NSString)currentItemIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVDelegatingPlaybackCoordinator_currentItemIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __56__AVDelegatingPlaybackCoordinator_currentItemIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)transitionToItemWithIdentifier:(NSString *)itemIdentifier proposingInitialTimingBasedOnTimebase:(CMTimebaseRef)snapshotTimebase
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__AVDelegatingPlaybackCoordinator_transitionToItemWithIdentifier_proposingInitialTimingBasedOnTimebase___block_invoke;
  v9[3] = &unk_1E7460DF0;
  v9[4] = self;
  v9[5] = itemIdentifier;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  currentItemIDConfigQueue = self->_currentItemIDConfigQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__AVDelegatingPlaybackCoordinator_transitionToItemWithIdentifier_proposingInitialTimingBasedOnTimebase___block_invoke_2;
  v8[3] = &unk_1E7460FA8;
  v8[4] = self;
  v8[5] = snapshotTimebase;
  dispatch_sync(currentItemIDConfigQueue, v8);
}

uint64_t __104__AVDelegatingPlaybackCoordinator_transitionToItemWithIdentifier_proposingInitialTimingBasedOnTimebase___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 144) = result;
  return result;
}

uint64_t __104__AVDelegatingPlaybackCoordinator_transitionToItemWithIdentifier_proposingInitialTimingBasedOnTimebase___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 currentItemIdentifier];
  v5 = *(a1 + 40);

  return MEMORY[0x1EEDBE258](v3, v4, v5);
}

- (id)avfParticipantsForFigParticipantsUUIDs:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
  v4 = [a3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        NSUUIDFromCFUUID = AVPlaybackCoordinatorGetNSUUIDFromCFUUID(*(*(&v25 + 1) + 8 * i));
        v9 = [MEMORY[0x1E695DF70] array];
        cf = 0;
        FigTimelineCoordinatorCopyParticipantSnapshotForUUID();
        if (cf)
        {
          v10 = FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate() != 0;
          v11 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons();
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v9 addObject:AVPlaybackCoordinatorAVFSuspensionReasonForFigReason(*(*(&v20 + 1) + 8 * j))];
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
            }

            while (v13);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        else
        {
          v10 = 0;
        }

        v16 = [[AVCoordinatedPlaybackParticipant alloc] initWithParticipantIdentifier:NSUUIDFromCFUUID readyToPlay:v10 suspensionReasons:v9];
        [v19 addObject:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  return v19;
}

- (void)_updateOtherParticipantsUsingFigParticipantUUIDs:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(AVDelegatingPlaybackCoordinator *)self avfParticipantsForFigParticipantsUUIDs:a3];
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__AVDelegatingPlaybackCoordinator__updateOtherParticipantsUsingFigParticipantUUIDs___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = self;
  v7[5] = v4;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  if (*(v9 + 24) == 1)
  {
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorOtherParticipantsDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(AVDelegatingPlaybackCoordinator *)self _setIsInExpanseMediaPlaybackOnAVAudioSession];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __84__AVDelegatingPlaybackCoordinator__updateOtherParticipantsUsingFigParticipantUUIDs___block_invoke(void *a1)
{
  result = AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(a1[4] + 88), a1[5]);
  if ((result & 1) == 0)
  {

    result = [a1[5] copy];
    *(a1[4] + 88) = result;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (id)otherParticipants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVDelegatingPlaybackCoordinator_otherParticipants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AVDelegatingPlaybackCoordinator_otherParticipants__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)participantForIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__13;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVDelegatingPlaybackCoordinator_participantForIdentifier___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __60__AVDelegatingPlaybackCoordinator_participantForIdentifier___block_invoke(void *a1)
{
  v2 = *(a1[4] + 88);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVDelegatingPlaybackCoordinator_participantForIdentifier___block_invoke_2;
  v4[3] = &unk_1E7463B40;
  v4[4] = a1[5];
  result = [v2 indexOfObjectPassingTest:v4];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1[4] + 88) objectAtIndexedSubscript:result];
    *(*(a1[6] + 8) + 40) = result;
  }

  return result;
}

uint64_t __60__AVDelegatingPlaybackCoordinator_participantForIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "identifier")];
  *a4 = result;
  return result;
}

- (void)setCoordinationMediumDelegate:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AVDelegatingPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = a3;
  v7[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVDelegatingPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, block);
}

id __65__AVDelegatingPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32) || (Weak = objc_loadWeak((*(a1 + 40) + 152)), v3 = *(a1 + 32), Weak != v3))
  {
    [*(*(a1 + 40) + 96) removeAllObjects];
    [*(*(a1 + 40) + 104) removeAllObjects];
    v3 = *(a1 + 32);
  }

  v4 = (*(a1 + 40) + 152);

  return objc_storeWeak(v4, v3);
}

void __65__AVDelegatingPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke_2(uint64_t a1)
{
  CFUUIDFromNSUUID = AVPlaybackCoordinatorCreateCFUUIDFromNSUUID([objc_msgSend(*(a1 + 32) "coordinationMediumDelegate")]);
  FigTimelineCoordinatorHandleAssignmentOfUUIDToLocalParticipantByMedium();
  if (CFUUIDFromNSUUID)
  {

    CFRelease(CFUUIDFromNSUUID);
  }
}

- (id)coordinationMediumDelegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVDelegatingPlaybackCoordinator_coordinationMediumDelegate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __61__AVDelegatingPlaybackCoordinator_coordinationMediumDelegate__block_invoke(uint64_t a1)
{
  result = objc_loadWeakRetained((*(a1 + 32) + 152));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setMediumLoggingIdentifier:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AVDelegatingPlaybackCoordinator_setMediumLoggingIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = a3;
  v4[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __62__AVDelegatingPlaybackCoordinator_setMediumLoggingIdentifier___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 168);
  if (*(result + 32) != v1)
  {
    v2 = result;

    result = [*(v2 + 32) copy];
    *(*(v2 + 40) + 168) = result;
  }

  return result;
}

- (id)mediumLoggingIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVDelegatingPlaybackCoordinator_mediumLoggingIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __58__AVDelegatingPlaybackCoordinator_mediumLoggingIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)trackedTransportControlStateDictionaries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AVDelegatingPlaybackCoordinator_trackedTransportControlStateDictionaries__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __75__AVDelegatingPlaybackCoordinator_trackedTransportControlStateDictionaries__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateTransportControlStateDictionaryWithTransportControlState:(id)a3
{
  v5 = [-[AVDelegatingPlaybackCoordinator coordinationMediumDelegate](self "coordinationMediumDelegate")];
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__AVDelegatingPlaybackCoordinator__updateTransportControlStateDictionaryWithTransportControlState___block_invoke;
  v7[3] = &unk_1E7460E90;
  v7[4] = a3;
  v7[5] = self;
  v7[6] = v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
}

void __99__AVDelegatingPlaybackCoordinator__updateTransportControlStateDictionaryWithTransportControlState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"Identifier"];
  v3 = [*(*(a1 + 40) + 96) objectForKeyedSubscript:v2];
  if (!v3 || (v4 = v3, v5 = [objc_msgSend(v3 objectForKeyedSubscript:{@"LamportTimestamp", "intValue"}], v6 = objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"LamportTimestamp"), "intValue"), (objc_msgSend(objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"IsAuthoritative"), "BOOLValue") & 1) != 0) || v6 > v5)
  {
LABEL_9:
    v10 = *(a1 + 32);
    v11 = *(*(a1 + 40) + 96);

    [v11 setObject:v10 forKeyedSubscript:v2];
    return;
  }

  if (v6 == v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(v4, "objectForKeyedSubscript:", @"OriginatorUUID"}];
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"OriginatorUUID"}];
    v9 = [v8 compare:v7];
    if (v9 != 1)
    {
      if (!v9)
      {
        if ([v8 isEqual:*(a1 + 48)])
        {
          goto LABEL_8;
        }

        if (dword_1ED5AC238)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      return;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (dword_1ED5AC238)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (id)_transportControlStateForItemIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__13;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVDelegatingPlaybackCoordinator__transportControlStateForItemIdentifier___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __75__AVDelegatingPlaybackCoordinator__transportControlStateForItemIdentifier___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 96) objectForKeyedSubscript:{a1[5]), "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_removeUnusedTransportControlStates
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__AVDelegatingPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

uint64_t __70__AVDelegatingPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 96) allKeys];
  v3 = [*(*(a1 + 32) + 104) allValues];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __70__AVDelegatingPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke_2;
        v9[3] = &unk_1E74610B8;
        v9[4] = v8;
        if ([v3 indexOfObjectPassingTest:v9] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(*(a1 + 32) + 96) removeObjectForKey:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __70__AVDelegatingPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"CurrentIdentifier", "isEqualToString:", *(a1 + 32)}];
  *a4 = result;
  return result;
}

- (id)participantStates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVDelegatingPlaybackCoordinator_participantStates__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AVDelegatingPlaybackCoordinator_participantStates__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateParticipantStateDictionaryWithParticipantState:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__AVDelegatingPlaybackCoordinator__updateParticipantStateDictionaryWithParticipantState___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __89__AVDelegatingPlaybackCoordinator__updateParticipantStateDictionaryWithParticipantState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 104);
  v3 = [v1 objectForKeyedSubscript:@"UUID"];

  return [v2 setObject:v1 forKeyedSubscript:v3];
}

- (id)_participantStateForIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__13;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVDelegatingPlaybackCoordinator__participantStateForIdentifier___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __66__AVDelegatingPlaybackCoordinator__participantStateForIdentifier___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 104) objectForKeyedSubscript:{a1[5]), "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_removeParticipantStateWithIdentifier:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AVDelegatingPlaybackCoordinator__removeParticipantStateWithIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __73__AVDelegatingPlaybackCoordinator__removeParticipantStateWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  v2 = [*(a1 + 40) UUIDString];

  return [v1 removeObjectForKey:v2];
}

- (void)_replaceParticipantStates:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVDelegatingPlaybackCoordinator__replaceParticipantStates___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __61__AVDelegatingPlaybackCoordinator__replaceParticipantStates___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 104) removeAllObjects];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 32) + 104) setObject:*(*(&v7 + 1) + 8 * v6) forKeyedSubscript:{objc_msgSend(*(*(&v7 + 1) + 8 * v6), "objectForKeyedSubscript:", @"UUID"}];
        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)handleNewTransportControlStateDictionary:(id)a3
{
  [(AVDelegatingPlaybackCoordinator *)self _updateTransportControlStateDictionaryWithTransportControlState:?];
  v5 = [a3 objectForKeyedSubscript:@"Identifier"];
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AVDelegatingPlaybackCoordinator_handleNewTransportControlStateDictionary___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = v5;
  dispatch_async(figTimelineCoordinatorConfigQueue, v7);
}

uint64_t __76__AVDelegatingPlaybackCoordinator_handleNewTransportControlStateDictionary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _transportControlStateForItemIdentifier:*(a1 + 40)];
  result = FigTimelineCoordinatorHandleUpdatedTimelineStateFromMedium();
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)handleNewParticipantStateDictionary:(id)a3
{
  [(AVDelegatingPlaybackCoordinator *)self _updateParticipantStateDictionaryWithParticipantState:?];
  [(AVDelegatingPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  v5 = [a3 objectForKeyedSubscript:@"UUID"];
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__AVDelegatingPlaybackCoordinator_handleNewParticipantStateDictionary___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = v5;
  dispatch_async(figTimelineCoordinatorConfigQueue, v7);
}

uint64_t __71__AVDelegatingPlaybackCoordinator_handleNewParticipantStateDictionary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _participantStateForIdentifier:*(a1 + 40)];
  result = FigTimelineCoordinatorHandleUpdatedParticipantStateFromMedium();
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)handleReplacementParticipantStateDictionaries:(id)a3
{
  [(AVDelegatingPlaybackCoordinator *)self _replaceParticipantStates:a3];
  [(AVDelegatingPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AVDelegatingPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, block);
}

uint64_t __81__AVDelegatingPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "participantStates")];
  result = FigTimelineCoordinatorHandleReplacementOfAllParticipantStatesFromMedium();
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)handleRemovalOfParticipant:(id)a3
{
  [(AVDelegatingPlaybackCoordinator *)self _removeParticipantStateWithIdentifier:?];
  [(AVDelegatingPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AVDelegatingPlaybackCoordinator_handleRemovalOfParticipant___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = a3;
  v6[5] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, v6);
}

void __62__AVDelegatingPlaybackCoordinator_handleRemovalOfParticipant___block_invoke(uint64_t a1)
{
  CFUUIDFromNSUUID = AVPlaybackCoordinatorCreateCFUUIDFromNSUUID(*(a1 + 32));
  FigTimelineCoordinatorHandleRemovalOfParticipantStateFromMedium();
  if (CFUUIDFromNSUUID)
  {

    CFRelease(CFUUIDFromNSUUID);
  }
}

- (void)_updateSuspensionReasons:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  ivarAccessQueue = self->_ivarAccessQueue;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVDelegatingPlaybackCoordinator__updateSuspensionReasons___block_invoke;
  v6[3] = &unk_1E7460F30;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v8 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorSuspensionReasonsDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __60__AVDelegatingPlaybackCoordinator__updateSuspensionReasons___block_invoke(void *a1)
{
  result = AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(a1[4] + 80), a1[5]);
  if ((result & 1) == 0)
  {

    result = [a1[5] copy];
    *(a1[4] + 80) = result;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (id)suspensionReasons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVDelegatingPlaybackCoordinator_suspensionReasons__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__AVDelegatingPlaybackCoordinator_suspensionReasons__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 80) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)beginSuspensionForReason:(id)a3
{
  v3 = [[AVCoordinatedPlaybackSuspension alloc] initWithCoordinator:self reason:a3];
  [(AVCoordinatedPlaybackSuspension *)v3 _figSuspension];
  FigTimelineCoordinatorBeginSuspension();

  return v3;
}

- (void)_updateWaitingPoliciesArray:(id)a3 withPolicies:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [a4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v16 = *v22;
    v7 = *MEMORY[0x1E6963348];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(a4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [a3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(a3);
              }

              v14 = *(*(&v17 + 1) + 8 * j);
              [v14 objectForKeyedSubscript:v7];
              [v9 objectForKeyedSubscript:v7];
              if (FigCFEqual())
              {
                if (v14)
                {
                  [a3 removeObject:v14];
                }

                goto LABEL_17;
              }
            }

            v11 = [a3 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
        [a3 addObject:v9];
      }

      v6 = [a4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }
}

- (id)_currentWaitingPoliciesArray
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVDelegatingPlaybackCoordinator__currentWaitingPoliciesArray__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__AVDelegatingPlaybackCoordinator__currentWaitingPoliciesArray__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 128) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setParticipantLimit:(int64_t)a3 forWaitingOutSuspensionsWithReason:(id)a4
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__AVDelegatingPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke;
  v8[3] = &unk_1E7460FF0;
  v8[4] = self;
  v8[5] = a4;
  v8[6] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90__AVDelegatingPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke_2;
  v7[3] = &unk_1E7460C00;
  v7[4] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, v7);
}

uint64_t __90__AVDelegatingPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 112) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", *(a1 + 48)), *(a1 + 40)}];
  v2 = [*(*(a1 + 32) + 120) containsObject:*(a1 + 40)];
  v3 = MEMORY[0x1E695DF20];
  v4 = AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(a1 + 40));
  v5 = *MEMORY[0x1E6963348];
  v6 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  v8 = *MEMORY[0x1E6963340];
  v9 = [*(*(a1 + 32) + 112) objectForKeyedSubscript:*(a1 + 40)];
  v10 = [v3 dictionaryWithObjectsAndKeys:{v4, v5, v7, v8, v9, *MEMORY[0x1E6963338], 0}];
  v11 = *(a1 + 32);
  v12 = v11[16];
  v14[0] = v10;
  return [v11 _updateWaitingPoliciesArray:v12 withPolicies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 1)}];
}

uint64_t __90__AVDelegatingPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _currentWaitingPoliciesArray];

  return [v1 _setWaitingPolicies:v2];
}

- (int64_t)participantLimitForWaitingOutSuspensionsWithReason:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__13;
  ivarAccessQueue = self->_ivarAccessQueue;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__AVDelegatingPlaybackCoordinator_participantLimitForWaitingOutSuspensionsWithReason___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v8;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v9[5];
  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __86__AVDelegatingPlaybackCoordinator_participantLimitForWaitingOutSuspensionsWithReason___block_invoke(void *a1)
{
  result = [*(a1[4] + 112) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)setSuspensionReasonsThatTriggerWaiting:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_3;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, block);
}

uint64_t __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(*(a1 + 32) + 120), *(a1 + 40)) & 1) == 0)
  {
    v2 = AVPlaybackCoordinatorArrayMinusArray(*(*(a1 + 32) + 120), *(a1 + 40));
    if ([v2 count])
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_2;
      v18[3] = &unk_1E74620F0;
      v18[4] = *(a1 + 32);
      [v2 enumerateObjectsUsingBlock:v18];
    }

    *(*(a1 + 32) + 120) = [*(a1 + 40) copy];
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = a1;
  v4 = *(*(a1 + 32) + 120);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x1E6963348];
    v9 = *MEMORY[0x1E695E4D0];
    v10 = *MEMORY[0x1E6963340];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(*(&v14 + 1) + 8 * i)), v8, v9, v10, 0)}];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  return [*(v13 + 32) _updateWaitingPoliciesArray:*(*(v13 + 32) + 128) withPolicies:v3];
}

uint64_t __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 128);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = *MEMORY[0x1E6963348];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      [v10 objectForKeyedSubscript:v8];
      AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(a2);
      if (FigCFEqual())
      {
        break;
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return [*(*(a1 + 32) + 128) removeObject:v10];
}

uint64_t __74__AVDelegatingPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _currentWaitingPoliciesArray];

  return [v1 _setWaitingPolicies:v2];
}

- (id)suspensionReasonsThatTriggerWaiting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AVDelegatingPlaybackCoordinator_suspensionReasonsThatTriggerWaiting__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __70__AVDelegatingPlaybackCoordinator_suspensionReasonsThatTriggerWaiting__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)applyFigPauseSnapsToMediaTimeOfOriginator
{
  figTimelineCoordinatorConfigQueue = self->_figTimelineCoordinatorConfigQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVDelegatingPlaybackCoordinator_applyFigPauseSnapsToMediaTimeOfOriginator__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figTimelineCoordinatorConfigQueue, block);
}

uint64_t __76__AVDelegatingPlaybackCoordinator_applyFigPauseSnapsToMediaTimeOfOriginator__block_invoke(uint64_t a1)
{
  [*(a1 + 32) pauseSnapsToMediaTimeOfOriginator];
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = *MEMORY[0x1E69632C0];
  v5 = [v2 pauseSnapsToMediaTimeOfOriginator];
  v6 = MEMORY[0x1E695E4D0];
  if (!v5)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;

  return MEMORY[0x1EEDBE290](v3, v4, v7);
}

- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVDelegatingPlaybackCoordinator_setPauseSnapsToMediaTimeOfOriginator___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVDelegatingPlaybackCoordinator *)self applyFigPauseSnapsToMediaTimeOfOriginator];
}

- (BOOL)pauseSnapsToMediaTimeOfOriginator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVDelegatingPlaybackCoordinator_pauseSnapsToMediaTimeOfOriginator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end
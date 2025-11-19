@interface AVPlayerPlaybackCoordinator
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)expectedItemTimeAtHostTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)networkToHostTimeOffset;
- (AVPlayerPlaybackCoordinator)initWithPlayer:(id)a3;
- (BOOL)_hasFigPlaybackCoordinator;
- (BOOL)isConnectedToLocalPlaybackCoordinationMedium;
- (BOOL)isDefunct;
- (BOOL)pauseSnapsToMediaTimeOfOriginator;
- (OpaqueFigPlaybackCoordinator)_copyFigPlaybackCoordinator;
- (id)_currentWaitingPoliciesArray;
- (id)_pendingFigPlaybackCoordinatorProperties;
- (id)_pendingFigPlaybackCoordinatorPropertyForKey:(id)a3;
- (id)avfParticipantsForFigParticipantsUUIDs:(id)a3;
- (id)beginSuspensionForReason:(id)a3;
- (id)coordinationMediumDelegate;
- (id)currentLamportTimestampForIdentifier;
- (id)currentSuspensions;
- (id)delegate;
- (id)description;
- (id)identifierForPlayerItem:(id)a3;
- (id)interstitialPlaybackCoordinator;
- (id)interstitialTimeRangesForPlayerItem:(id)a3;
- (id)itemIdentifierForPlayerItem:(id)a3;
- (id)mediumLoggingIdentifier;
- (id)otherParticipants;
- (id)participantForIdentifier:(id)a3;
- (id)playbackCoordinationMedium;
- (id)suspensionReasons;
- (id)suspensionReasonsThatTriggerWaiting;
- (id)trackedTransportControlStateDictionaries;
- (int)_disconnectFromCoordinationMedium;
- (int64_t)participantLimitForWaitingOutSuspensionsWithReason:(id)a3;
- (unsigned)defaultItemIdentifierCounter;
- (void)_addFigPlaybackCoordinatorListeners:(OpaqueFigPlaybackCoordinator *)a3;
- (void)_applyAdjustedIntegratedSeekTimeFromTime:(id *)a3 withNetworkTime:(id)a4 rate:(id)a5;
- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3;
- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3 proposingNewTime:(id *)a4;
- (void)_endSuspensionWithReason:(id)a3;
- (void)_postNotificationWithName:(id)a3 userInfo:(id)a4;
- (void)_reactToNewDelegate;
- (void)_removeSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3;
- (void)_replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3;
- (void)_resetGroupTimelineExpectationsForIdentifier:(id)a3;
- (void)_setInterstitialActive:(unsigned __int8)a3;
- (void)_setIsInExpanseMediaPlaybackOnAVAudioSession;
- (void)_setIsLocallyCoordinated:(__CFBoolean *)a3;
- (void)_setNetworkToHostTimeOffset;
- (void)_setPendingFigPlaybackCoordinatorProperty:(id)a3 forKey:(id)a4;
- (void)_setStorage:(id)a3;
- (void)_setWeakReferenceToPlayerItem:(id)a3 withItemIdentifier:(id)a4;
- (void)_storageRead:(id)a3;
- (void)_storageWrite:(id)a3;
- (void)_synchronizeFigPlayerEvents;
- (void)_synchronizeWorkOnPlayerQueue:(id)a3;
- (void)_updateCoordinationMediumDelegateOnFigPlaybackCoordinator;
- (void)_updateLocalParticipantUUIDOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3;
- (void)_updateOtherParticipantsUsingFigParticipantUUIDs:(id)a3;
- (void)_updateParticipantLimitOnFigPlaybackCoordinatorWithReason:(id)a3;
- (void)_updateParticipantStateDictionaryWithParticipantState:(id)a3;
- (void)_updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier:(id)a3;
- (void)_updatePauseSnapsToMediaTimeOfOriginatorOnFigPlaybackCoordinator;
- (void)_updateSuspensionReasons:(id)a3;
- (void)_updateSuspensionReasonsThatTriggerWaitingOFigPlaybackCoordinator;
- (void)_updateSuspensionsForNewSuspensionReasons:(id)a3;
- (void)_updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier:(id)a3;
- (void)_updateTransportControlStateDictionaryWithTransportControlState:(id)a3;
- (void)_updateWaitingPoliciesArray:(id)a3 withPolicies:(id)a4;
- (void)_updateWaitingPoliciesOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3;
- (void)dealloc;
- (void)handleNewParticipantStateDictionary:(id)a3;
- (void)handleNewTransportControlStateDictionary:(id)a3;
- (void)handleRemovalOfParticipant:(id)a3;
- (void)handleReplacementParticipantStateDictionaries:(id)a3;
- (void)setCoordinationMediumDelegate:(id)a3;
- (void)setDefaultItemIdentifierCounter:(unsigned int)a3 postingNotification:(unsigned __int8)a4;
- (void)setDelegate:(id)delegate;
- (void)setFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3;
- (void)setInterstitialPlaybackCoordinator:(id)a3;
- (void)setMediumLoggingIdentifier:(id)a3;
- (void)setParticipantLimit:(int64_t)a3 forWaitingOutSuspensionsWithReason:(id)a4;
- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)a3;
- (void)setSuspensionReasonsThatTriggerWaiting:(id)a3;
@end

@implementation AVPlayerPlaybackCoordinator

- (void)dealloc
{
  if (self->_suspensionsChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_suspensionsChangedNotificationToken = 0;
  }

  if (self->_participantsChangedNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_participantsChangedNotificationToken = 0;
  }

  if (self->_didIssueCommandToPlaybackObjectNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_didIssueCommandToPlaybackObjectNotificationToken = 0;
  }

  [(AVPlayerPlaybackCoordinator *)self _disconnectFromCoordinationMedium];

  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
  if (figPlaybackCoordinatorConfigQueue)
  {
    dispatch_release(figPlaybackCoordinatorConfigQueue);
  }

  localParticipantUUIDConfigQueue = self->_localParticipantUUIDConfigQueue;
  if (localParticipantUUIDConfigQueue)
  {
    dispatch_release(localParticipantUUIDConfigQueue);
  }

  figPlaybackCoordinator = self->_figPlaybackCoordinator;
  if (figPlaybackCoordinator)
  {
    CFRelease(figPlaybackCoordinator);
  }

  v7.receiver = self;
  v7.super_class = AVPlayerPlaybackCoordinator;
  [(AVPlayerPlaybackCoordinator *)&v7 dealloc];
}

- (int)_disconnectFromCoordinationMedium
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  if ([(AVPlayerPlaybackCoordinator *)self playbackCoordinationMedium])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__AVPlayerPlaybackCoordinator__disconnectFromCoordinationMedium__block_invoke;
    v7[3] = &unk_1E74652D8;
    v7[4] = &v8;
    [(AVPlayerPlaybackCoordinator *)self _storageRead:v7];
    [(AVPlayerPlaybackCoordinator *)self _setIsLocallyCoordinated:*MEMORY[0x1E695E4C0]];
    v3 = [(AVPlayerPlaybackCoordinator *)self playbackCoordinationMedium];
    v4 = [v3 disconnectPlaybackCoordinatorWithIdentifier:v9[5]];
    [(AVPlayerPlaybackCoordinator *)self setCoordinationMediumDelegate:0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__AVPlayerPlaybackCoordinator__disconnectFromCoordinationMedium__block_invoke_2;
    v6[3] = &unk_1E7465350;
    v6[4] = self;
    [(AVPlayerPlaybackCoordinator *)self _storageWrite:v6];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (id)playbackCoordinationMedium
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__AVPlayerPlaybackCoordinator_playbackCoordinationMedium__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __57__AVPlayerPlaybackCoordinator_playbackCoordinationMedium__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 96);
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (AVPlayerPlaybackCoordinator)initWithPlayer:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = AVPlayerPlaybackCoordinator;
  v4 = [(AVPlaybackCoordinator *)&v23 initInternal];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(v4 + 1, a3);
    v5->_otherParticipants = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplaybackcoordinator.ivars");
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5->_figPlaybackCoordinatorConfigQueue = dispatch_queue_create("com.apple.avplaybackcoordinator.figplaybackcoordinator.config", v6);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5->_localParticipantUUIDConfigQueue = dispatch_queue_create("com.apple.avplaybackcoordinator.localparticipantuuid.config", v7);
    v5->_suspensionReasons = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_storage = objc_alloc_init(AVPlayerPlaybackCoordinatorStorage);
    v5->_storage->controlStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_storage->participantStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_storage->playbackCoordinationMedium = 0;
    v5->_storage->currentLamportTimestampForIdentifier = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_isInExpanseMediaPlayback = 0;
    v5->_storage->participantLimitPerSuspensionReason = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_storage->suspensionReasonsThatTriggerWaiting = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"AVCoordinatedPlaybackSuspensionReasonUserIsChangingCurrentTime", 0}];
    v5->_storage->waitingPoliciesArray = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_currentSuspensions = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_storage->pauseSnapsToMediaTimeOfOriginator = 1;
    objc_storeWeak(&v5->_weakPrimaryPlaybackCoordinator, 0);
    v5->_interstitialPlaybackCoordinator = 0;
    v5->_pendingFigPlaybackCoordinatorProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5->_playerItemToItemIdentifierMap = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v5->_defaultItemIdentifierCounter = 0;
    v5->_shouldOverrideGroupState = 0;
    v8 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    suspensionReasonsThatTriggerWaiting = v5->_storage->suspensionReasonsThatTriggerWaiting;
    v10 = [(NSMutableArray *)suspensionReasonsThatTriggerWaiting countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      v13 = *MEMORY[0x1E6963348];
      v14 = *MEMORY[0x1E695E4D0];
      v15 = *MEMORY[0x1E6963340];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(suspensionReasonsThatTriggerWaiting);
          }

          [v8 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(*(&v19 + 1) + 8 * i)), v13, v14, v15, 0)}];
        }

        v11 = [(NSMutableArray *)suspensionReasonsThatTriggerWaiting countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    v5 = v18;
    [(AVPlayerPlaybackCoordinator *)v18 _updateWaitingPoliciesArray:v18->_storage->waitingPoliciesArray withPolicies:v8];
  }

  return v5;
}

- (void)_addFigPlaybackCoordinatorListeners:(OpaqueFigPlaybackCoordinator *)a3
{
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E6972400];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke;
  v15[3] = &unk_1E7460BB0;
  objc_copyWeak(&v16, &location);
  self->_suspensionsChangedNotificationToken = [v5 addObserverForName:v6 object:a3 queue:0 usingBlock:v15];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E69723F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke_2;
  v13[3] = &unk_1E7460BB0;
  objc_copyWeak(&v14, &location);
  self->_participantsChangedNotificationToken = [v7 addObserverForName:v8 object:a3 queue:0 usingBlock:v13];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = *MEMORY[0x1E69723F0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke_3;
  v11[3] = &unk_1E7460BB0;
  objc_copyWeak(&v12, &location);
  self->_didIssueCommandToPlaybackObjectNotificationToken = [v9 addObserverForName:v10 object:a3 queue:0 usingBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a2 userInfo];
  result = [v3 objectForKey:*MEMORY[0x1E69723E8]];
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

    [objc_loadWeak((a1 + 32)) _updateSuspensionReasons:v6];
    return [objc_msgSend(objc_loadWeak((a1 + 32)) "primaryPlaybackCoordinatorForInterstitial")];
  }

  return result;
}

uint64_t __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:*MEMORY[0x1E69723E0]];
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateOtherParticipantsUsingFigParticipantUUIDs:v4];
}

uint64_t __67__AVPlayerPlaybackCoordinator__addFigPlaybackCoordinatorListeners___block_invoke_3(uint64_t a1, void *a2)
{
  UserInfoForDidIssueCommandToPlaybackObjectNotification = AVPlaybackCoordinatorMakeUserInfoForDidIssueCommandToPlaybackObjectNotification([a2 userInfo]);
  [objc_loadWeak((a1 + 32)) _postNotificationWithName:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectNotification" userInfo:UserInfoForDidIssueCommandToPlaybackObjectNotification];
  v4 = [objc_loadWeak((a1 + 32)) primaryPlaybackCoordinatorForInterstitial];

  return [v4 _postNotificationWithName:@"AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectNotification" userInfo:UserInfoForDidIssueCommandToPlaybackObjectNotification];
}

- (void)_postNotificationWithName:(id)a3 userInfo:(id)a4
{
  v4 = [MEMORY[0x1E696AD80] notificationWithName:a3 object:self userInfo:a4];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];

  [v5 postNotification:v4];
}

- (void)_storageRead:(id)a3
{
  rwQueue = self->_storage->rwQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AVPlayerPlaybackCoordinator__storageRead___block_invoke;
  v4[3] = &unk_1E7462650;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_read(rwQueue, v4);
}

- (void)_storageWrite:(id)a3
{
  rwQueue = self->_storage->rwQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__AVPlayerPlaybackCoordinator__storageWrite___block_invoke;
  v4[3] = &unk_1E7462650;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(rwQueue, v4);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayerPlaybackCoordinator_description__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __42__AVPlayerPlaybackCoordinator_description__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88) == 0;
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  result = [v3 initWithFormat:@"<%@: %p, type = %d>", NSStringFromClass(v4), *(a1 + 32), v2];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "figPlaybackCoordinator != NULL"), 0}];
    objc_exception_throw(v20);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  ivarAccessQueue = self->_ivarAccessQueue;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __57__AVPlayerPlaybackCoordinator_setFigPlaybackCoordinator___block_invoke;
  v28[3] = &unk_1E7462990;
  v28[5] = &v29;
  v28[6] = a3;
  v28[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v28);
  if (*(v30 + 24) == 1)
  {
    [(AVPlayerPlaybackCoordinator *)self _addFigPlaybackCoordinatorListeners:a3];
    [(AVPlayerPlaybackCoordinator *)self _ensureIntegratedTimelineIsEstablished];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [(AVPlayerPlaybackCoordinator *)self currentSuspensions];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v12)
    {
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v16)
          {
            v16(a3, v15);
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v12);
    }

    v23[0] = 0;
    v23[1] = 0;
    v23[2] = AVPlayerPlaybackCoordinatorBroadcastTransportControlStateCallback;
    v23[3] = AVPlayerPlaybackCoordinatorBroadcastParticipantStateCallback;
    v23[4] = AVPlayerPlaybackCoordinatorAsynchronouslyReloadTransportControlStateCallback;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v17)
    {
      v18 = v17(a3, self, v23);
    }

    else
    {
      v18 = -12782;
    }

    [(AVPlayerPlaybackCoordinator *)self _updateLocalParticipantUUIDOnFigPlaybackCoordinator:a3];
    CFRetain(a3);
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AVPlayerPlaybackCoordinator_setFigPlaybackCoordinator___block_invoke_2;
    block[3] = &unk_1E7463880;
    block[4] = self;
    block[5] = a3;
    v22 = v18;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }

  _Block_object_dispose(&v29, 8);
}

CFTypeRef __57__AVPlayerPlaybackCoordinator_setFigPlaybackCoordinator___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  result = a1[6];
  if (v3 != result)
  {
    if (v3)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"FigPlaybackCoordinator associated with an AVPlayer should not change" userInfo:0]);
    }

    if (result)
    {
      result = CFRetain(result);
      v2 = a1[4];
    }

    *(v2 + 40) = result;
    *(*(a1[5] + 8) + 24) = 1;
  }

  return result;
}

void __57__AVPlayerPlaybackCoordinator_setFigPlaybackCoordinator___block_invoke_2(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6972408], *MEMORY[0x1E69632B0], 0}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v37;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [*(a1 + 32) _pendingFigPlaybackCoordinatorPropertyForKey:v7];
        if (v8)
        {
          v9 = v8;
          CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v11)
          {
            v11(CMBaseObject, v7, v9);
          }
        }

        [*(a1 + 32) _setPendingFigPlaybackCoordinatorProperty:0 forKey:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _updateWaitingPoliciesOnFigPlaybackCoordinator:*(a1 + 40)];
  if ([*(a1 + 32) pauseSnapsToMediaTimeOfOriginator])
  {
    v12 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v12 = MEMORY[0x1E695E4C0];
  }

  v13 = FigPlaybackCoordinatorGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E69632C0], *v12);
  }

  obj = [objc_msgSend(*(a1 + 32) "trackedTransportControlStateDictionaries")];
  [*(a1 + 32) _replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator:*(a1 + 40)];
  if ((*(*(a1 + 32) + 148) & 1) == 0)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * j);
          if ([*(a1 + 32) interstitialPlaybackCoordinator])
          {
            [objc_msgSend(v19 objectForKeyedSubscript:{@"Rate", "floatValue"}];
            if (v20 != 0.0)
            {
              memset(&v40, 0, sizeof(v40));
              [objc_msgSend(v19 objectForKeyedSubscript:{@"Time", "floatValue"}];
              CMTimeMakeWithSeconds(&v40, v21, 1000);
              v22 = [v19 objectForKeyedSubscript:@"NetworkTime"];
              v23 = [v19 objectForKeyedSubscript:@"Rate"];
              v24 = *(a1 + 32);
              v41 = v40;
              [v24 _applyAdjustedIntegratedSeekTimeFromTime:&v41 withNetworkTime:v22 rate:v23];
            }
          }

          v25 = *(a1 + 40);
          v26 = *(*(CMBaseObjectGetVTable() + 16) + 88);
          if (!v26 || v26(v25, v19))
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v16 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v16);
    }
  }

  v28 = *(a1 + 40);
  if (v28)
  {
    CFRelease(v28);
  }
}

- (BOOL)_hasFigPlaybackCoordinator
{
  v2 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (OpaqueFigPlaybackCoordinator)_copyFigPlaybackCoordinator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerPlaybackCoordinator__copyFigPlaybackCoordinator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __58__AVPlayerPlaybackCoordinator__copyFigPlaybackCoordinator__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_pendingFigPlaybackCoordinatorProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVPlayerPlaybackCoordinator__pendingFigPlaybackCoordinatorProperties__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __71__AVPlayerPlaybackCoordinator__pendingFigPlaybackCoordinatorProperties__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_pendingFigPlaybackCoordinatorPropertyForKey:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__30;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVPlayerPlaybackCoordinator__pendingFigPlaybackCoordinatorPropertyForKey___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __76__AVPlayerPlaybackCoordinator__pendingFigPlaybackCoordinatorPropertyForKey___block_invoke(void *a1)
{
  result = [*(a1[4] + 104) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_setPendingFigPlaybackCoordinatorProperty:(id)a3 forKey:(id)a4
{
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__AVPlayerPlaybackCoordinator__setPendingFigPlaybackCoordinatorProperty_forKey___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
}

uint64_t __80__AVPlayerPlaybackCoordinator__setPendingFigPlaybackCoordinatorProperty_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 104);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (void)_setInterstitialActive:(unsigned __int8)a3
{
  v3 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  v12 = *v5;
  v6 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v6)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AVPlayerPlaybackCoordinator__setInterstitialActive___block_invoke;
    block[3] = &unk_1E74630E0;
    block[4] = v13;
    block[5] = &v9;
    block[6] = v6;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }

  else
  {
    [(AVPlayerPlaybackCoordinator *)self _setPendingFigPlaybackCoordinatorProperty:v10[3] forKey:*MEMORY[0x1E6972408]];
  }

  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(v13, 8);
}

void __54__AVPlayerPlaybackCoordinator__setInterstitialActive___block_invoke(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(CMBaseObject, *MEMORY[0x1E6972408], v2);
  }

  else
  {
    v5 = -12782;
  }

  *(*(a1[4] + 8) + 24) = v5;
  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

- (void)setInterstitialPlaybackCoordinator:(id)a3
{
  [a3 _setStorage:self->_storage];
  ivarAccessQueue = self->_ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AVPlayerPlaybackCoordinator_setInterstitialPlaybackCoordinator___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = a3;
  v6[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

void *__66__AVPlayerPlaybackCoordinator_setInterstitialPlaybackCoordinator___block_invoke(void *result)
{
  v1 = *(result[5] + 88);
  if (result[4] != v1)
  {
    v2 = result;

    result = v2[4];
    *(v2[5] + 88) = result;
  }

  return result;
}

- (void)_setStorage:(id)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AVPlayerPlaybackCoordinator__setStorage___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

id __43__AVPlayerPlaybackCoordinator__setStorage___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 64) = result;
  return result;
}

- (id)interstitialPlaybackCoordinator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlayerPlaybackCoordinator_interstitialPlaybackCoordinator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __62__AVPlayerPlaybackCoordinator_interstitialPlaybackCoordinator__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setDelegate:(id)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__AVPlayerPlaybackCoordinator_setDelegate___block_invoke;
  v4[3] = &unk_1E74652B0;
  v4[4] = delegate;
  v4[5] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v4];
  if (*(v6 + 24) == 1)
  {
    [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
    [(AVPlayerPlaybackCoordinator *)self _reactToNewDelegate];
  }

  _Block_object_dispose(&v5, 8);
}

id __43__AVPlayerPlaybackCoordinator_setDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a2 + 72));
  v5 = *(a1 + 32);
  if (result != v5)
  {
    result = objc_storeWeak((a2 + 72), v5);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_reactToNewDelegate
{
  v2 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorItemIdentifierForCoordinatedPlaybackDidChangeNotification" object:self];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 postNotification:v2];
}

- (id)delegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__AVPlayerPlaybackCoordinator_delegate__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __39__AVPlayerPlaybackCoordinator_delegate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeakRetained((a2 + 72));
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)itemIdentifierForPlayerItem:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__30;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVPlayerPlaybackCoordinator_itemIdentifierForPlayerItem___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __59__AVPlayerPlaybackCoordinator_itemIdentifierForPlayerItem___block_invoke(void *a1)
{
  result = [*(a1[4] + 136) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_setWeakReferenceToPlayerItem:(id)a3 withItemIdentifier:(id)a4
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__AVPlayerPlaybackCoordinator__setWeakReferenceToPlayerItem_withItemIdentifier___block_invoke;
  v5[3] = &unk_1E7460E90;
  v5[4] = self;
  v5[5] = a4;
  v5[6] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

- (id)identifierForPlayerItem:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self delegate];
  if (v5 && (v6 = v5, (objc_opt_respondsToSelector() & 1) != 0))
  {

    return [v6 playbackCoordinator:self identifierForPlayerItem:a3];
  }

  else
  {
    if (![(AVPlayerPlaybackCoordinator *)self playbackCoordinationMedium])
    {
      return 0;
    }

    v8 = [(AVPlayerPlaybackCoordinator *)self itemIdentifierForPlayerItem:a3];
    if (!v8)
    {
      v9 = [(AVPlayerPlaybackCoordinator *)self defaultItemIdentifierCounter];
      [(AVPlayerPlaybackCoordinator *)self setDefaultItemIdentifierCounter:(v9 + 1) postingNotification:0];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%u", 0x1F0A8A370, v9];
      [(AVPlayerPlaybackCoordinator *)self _setWeakReferenceToPlayerItem:a3 withItemIdentifier:v8];
    }

    return v8;
  }
}

- (id)interstitialTimeRangesForPlayerItem:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self delegate];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v6 playbackCoordinator:self interstitialTimeRangesForPlayerItem:a3];
}

- (void)_updateLocalParticipantUUIDOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3
{
  localParticipantUUIDConfigQueue = self->_localParticipantUUIDConfigQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVPlayerPlaybackCoordinator__updateLocalParticipantUUIDOnFigPlaybackCoordinator___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(localParticipantUUIDConfigQueue, v4);
}

void __83__AVPlayerPlaybackCoordinator__updateLocalParticipantUUIDOnFigPlaybackCoordinator___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__30;
  v19 = __Block_byref_object_dispose__30;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__30;
  v13 = __Block_byref_object_dispose__30;
  v14 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AVPlayerPlaybackCoordinator__updateLocalParticipantUUIDOnFigPlaybackCoordinator___block_invoke_2;
  v8[3] = &unk_1E7465300;
  v8[4] = &v15;
  v8[5] = &v9;
  [v2 _storageRead:v8];
  v3 = v16[5];
  if (v3)
  {
    v4 = [v3 UUIDString];
    v5 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v7)
  {
    v7(v6, v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
}

id __83__AVPlayerPlaybackCoordinator__updateLocalParticipantUUIDOnFigPlaybackCoordinator___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [*(a2 + 64) copy];
  result = objc_loadWeakRetained((a2 + 80));
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

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
  v3 = [[(AVPlayerPlaybackCoordinator *)self player] audioSession];
  if (!v3)
  {
    v3 = [MEMORY[0x1E6958460] sharedInstance];
  }

  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__AVPlayerPlaybackCoordinator__setIsInExpanseMediaPlaybackOnAVAudioSession__block_invoke;
  v5[3] = &unk_1E7461130;
  v5[6] = &v10;
  v5[7] = &v6;
  v5[4] = self;
  v5[5] = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) != *(v11 + 24) && v3)
  {
    [AVAudioSession setIsExpanseMediaSession:v3 error:"setIsExpanseMediaSession:error:"];
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
}

uint64_t __75__AVPlayerPlaybackCoordinator__setIsInExpanseMediaPlaybackOnAVAudioSession__block_invoke(void *a1)
{
  result = [*(a1[4] + 56) count];
  *(*(a1[6] + 8) + 24) = result != 0;
  *(*(a1[7] + 8) + 24) = *(a1[4] + 96);
  v3 = a1[4];
  v4 = *(*(a1[6] + 8) + 24);
  if (*(v3 + 96) != v4)
  {
    if (a1[5])
    {
      *(v3 + 96) = v4;
    }
  }

  return result;
}

- (id)avfParticipantsForFigParticipantsUUIDs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DF70] array];
  v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v5)
  {
    v6 = v5;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      obj = a3;
      v23 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          NSUUIDFromCFUUID = AVPlaybackCoordinatorGetNSUUIDFromCFUUID(v10);
          v12 = [MEMORY[0x1E695DF70] array];
          cf = 0;
          v13 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v13)
          {
            v13(v6, v10, &cf);
          }

          if (cf)
          {
            v14 = FigTimelineCoordinationParticipantSnapshotIsReadyToSetNonZeroRate() != 0;
            v15 = FigTimelineCoordinationParticipantSnapshotCopySuspensionReasons();
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v26;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v26 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [v12 addObject:AVPlaybackCoordinatorAVFSuspensionReasonForFigReason(*(*(&v25 + 1) + 8 * j))];
                }

                v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
              }

              while (v17);
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }

          else
          {
            v14 = 0;
          }

          v20 = [[AVCoordinatedPlaybackParticipant alloc] initWithParticipantIdentifier:NSUUIDFromCFUUID readyToPlay:v14 suspensionReasons:v12];
          [v24 addObject:v20];
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    CFRelease(v6);
  }

  return v24;
}

- (void)_updateOtherParticipantsUsingFigParticipantUUIDs:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [(AVPlayerPlaybackCoordinator *)self avfParticipantsForFigParticipantsUUIDs:a3];
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__AVPlayerPlaybackCoordinator__updateOtherParticipantsUsingFigParticipantUUIDs___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = self;
  v7[5] = v4;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  if (*(v9 + 24) == 1)
  {
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorOtherParticipantsDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    [(AVPlayerPlaybackCoordinator *)self _setIsInExpanseMediaPlaybackOnAVAudioSession];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __80__AVPlayerPlaybackCoordinator__updateOtherParticipantsUsingFigParticipantUUIDs___block_invoke(void *a1)
{
  result = AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(a1[4] + 56), a1[5]);
  if ((result & 1) == 0)
  {

    result = [a1[5] copy];
    *(a1[4] + 56) = result;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (id)otherParticipants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerPlaybackCoordinator_otherParticipants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__AVPlayerPlaybackCoordinator_otherParticipants__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)participantForIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__30;
  ivarAccessQueue = self->_ivarAccessQueue;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerPlaybackCoordinator_participantForIdentifier___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __56__AVPlayerPlaybackCoordinator_participantForIdentifier___block_invoke(void *a1)
{
  v2 = *(a1[4] + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVPlayerPlaybackCoordinator_participantForIdentifier___block_invoke_2;
  v4[3] = &unk_1E7463B40;
  v4[4] = a1[5];
  result = [v2 indexOfObjectPassingTest:v4];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1[4] + 56) objectAtIndexedSubscript:result];
    *(*(a1[6] + 8) + 40) = result;
  }

  return result;
}

uint64_t __56__AVPlayerPlaybackCoordinator_participantForIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 "identifier")];
  *a4 = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)expectedItemTimeAtHostTime:(SEL)a3
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (result)
  {
    v7 = result;
    v9 = *&a4->var0;
    var3 = a4->var3;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v8)
    {
      v11 = v9;
      v12 = var3;
      v8(v7, &v11, retstr);
    }

    CFRelease(v7);
  }

  return result;
}

- (void)setCoordinationMediumDelegate:(id)a3
{
  v5 = [a3 localParticipantUUIDForPlaybackCoordinator:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AVPlayerPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke;
  v6[3] = &unk_1E7465328;
  v6[4] = a3;
  v6[5] = v5;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v6];
  [(AVPlayerPlaybackCoordinator *)self _updateCoordinationMediumDelegateOnFigPlaybackCoordinator];
  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
}

void __61__AVPlayerPlaybackCoordinator_setCoordinationMediumDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a2 + 16) removeAllObjects];
  [*(a2 + 104) removeAllObjects];
  [*(a2 + 24) removeAllObjects];
  objc_storeWeak((a2 + 80), *(a1 + 32));
  v4 = *(a2 + 64);
  *(a2 + 64) = [*(a1 + 40) copy];
}

- (void)_updateCoordinationMediumDelegateOnFigPlaybackCoordinator
{
  v3 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v3)
  {
    v4 = v3;
    [(AVPlayerPlaybackCoordinator *)self _updateLocalParticipantUUIDOnFigPlaybackCoordinator:v3];

    CFRelease(v4);
  }
}

- (id)coordinationMediumDelegate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__AVPlayerPlaybackCoordinator_coordinationMediumDelegate__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __57__AVPlayerPlaybackCoordinator_coordinationMediumDelegate__block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeakRetained((a2 + 80));
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)setMediumLoggingIdentifier:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__AVPlayerPlaybackCoordinator_setMediumLoggingIdentifier___block_invoke;
  v3[3] = &unk_1E7465350;
  v3[4] = a3;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v3];
}

uint64_t __58__AVPlayerPlaybackCoordinator_setMediumLoggingIdentifier___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (*(result + 32) != v2)
  {
    v4 = result;

    result = [*(v4 + 32) copy];
    *(a2 + 88) = result;
  }

  return result;
}

- (id)mediumLoggingIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AVPlayerPlaybackCoordinator_mediumLoggingIdentifier__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __54__AVPlayerPlaybackCoordinator_mediumLoggingIdentifier__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 88) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (id)trackedTransportControlStateDictionaries
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AVPlayerPlaybackCoordinator_trackedTransportControlStateDictionaries__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __71__AVPlayerPlaybackCoordinator_trackedTransportControlStateDictionaries__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 16) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)_updateTransportControlStateDictionaryWithTransportControlState:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryWithTransportControlState___block_invoke;
  v3[3] = &unk_1E7465328;
  v3[4] = a3;
  v3[5] = self;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v3];
}

void __95__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryWithTransportControlState___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"Identifier"];
  v5 = [*(a2 + 16) objectForKeyedSubscript:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"LamportTimestamp", "intValue"}];
  v8 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"LamportTimestamp", "intValue"}];
  if (([objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"IsAuthoritative", "BOOLValue"}] & 1) != 0 || v8 > v7)
  {
    goto LABEL_9;
  }

  if (v8 == v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(v6, "objectForKeyedSubscript:", @"OriginatorUUID"}];
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", @"OriginatorUUID"}];
    v11 = [v10 compare:v9];
    if (v11 != 1)
    {
      if (!v11)
      {
        if ([v10 isEqual:*(a2 + 64)])
        {
          goto LABEL_8;
        }

        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return;
    }

LABEL_8:

LABEL_9:
    [*(a2 + 16) setObject:*(a1 + 32) forKeyedSubscript:v4];
    [*(a2 + 104) setObject:objc_msgSend(*(a1 + 32) forKeyedSubscript:{"objectForKeyedSubscript:", @"LamportTimestamp", v4}];
    *(*(a1 + 40) + 148) = 0;
    return;
  }

  if (dword_1ED5AC238)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __66__AVPlayerPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke(uint64_t a1, id *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a2[2] allKeys];
  v4 = [a2[3] allValues];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = v3;
  result = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __66__AVPlayerPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke_2;
        v11[3] = &unk_1E74610B8;
        v11[4] = v9;
        if ([v4 indexOfObjectPassingTest:v11] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [a2[2] removeObjectForKey:v9];
          [a2[13] removeObjectForKey:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __66__AVPlayerPlaybackCoordinator__removeUnusedTransportControlStates__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"CurrentIdentifier", "isEqualToString:", *(a1 + 32)}];
  *a4 = result;
  return result;
}

- (void)_updateParticipantStateDictionaryWithParticipantState:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__AVPlayerPlaybackCoordinator__updateParticipantStateDictionaryWithParticipantState___block_invoke;
  v3[3] = &unk_1E7465350;
  v3[4] = a3;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v3];
}

uint64_t __85__AVPlayerPlaybackCoordinator__updateParticipantStateDictionaryWithParticipantState___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 24);
  v4 = [v2 objectForKeyedSubscript:@"UUID"];

  return [v3 setObject:v2 forKeyedSubscript:v4];
}

- (void)handleNewTransportControlStateDictionary:(id)a3
{
  [(AVPlayerPlaybackCoordinator *)self _updateTransportControlStateDictionaryWithTransportControlState:?];
  v5 = [a3 objectForKeyedSubscript:@"Identifier"];

  [(AVPlayerPlaybackCoordinator *)self _updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier:v5];
}

- (void)_updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v5)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier___block_invoke;
    block[3] = &unk_1E7460FF0;
    block[4] = self;
    block[5] = a3;
    block[6] = v5;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }

  else
  {
    v7 = [(AVPlayerPlaybackCoordinator *)self interstitialPlaybackCoordinator];

    [v7 _updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier:a3];
  }
}

void __111__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__30;
  v24 = __Block_byref_object_dispose__30;
  v25 = 0;
  v2 = *(a1 + 32);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier___block_invoke_2;
  v19[3] = &unk_1E7465398;
  v19[4] = *(a1 + 40);
  v19[5] = &v20;
  [v2 _storageRead:v19];
  memset(&v18, 0, sizeof(v18));
  [objc_msgSend(v21[5] objectForKeyedSubscript:{@"Time", "floatValue"}];
  CMTimeMakeWithSeconds(&v18, v3, 1000);
  [objc_msgSend(v21[5] objectForKeyedSubscript:{@"Rate", "floatValue"}];
  v5 = v4;
  v6 = [*(a1 + 32) interstitialPlaybackCoordinator];
  v7 = *(a1 + 32);
  if (v6 && v5 == 0.0)
  {
    v26[0] = v18;
    [v7 _applyIntegratedTimelineSeek:v26];
  }

  else if ([v7 interstitialPlaybackCoordinator] && v5 != 0.0)
  {
    v8 = [v21[5] objectForKeyedSubscript:@"NetworkTime"];
    v9 = [v21[5] objectForKeyedSubscript:@"Rate"];
    v10 = *(a1 + 32);
    v26[0] = v18;
    [v10 _applyAdjustedIntegratedSeekTimeFromTime:v26 withNetworkTime:v8 rate:v9];
  }

  v11 = *(a1 + 48);
  v12 = v21[5];
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v13 || v13(v11, v12))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    CFRelease(v15);
  }

  [objc_msgSend(*(a1 + 32) interstitialPlaybackCoordinator];
  _Block_object_dispose(&v20, 8);
}

uint64_t __111__AVPlayerPlaybackCoordinator__updateTransportControlStateDictionaryOnFigPlaybackCoordinatorForItemIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a2 + 16) objectForKeyedSubscript:{*(a1 + 32)), "copy"}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)handleNewParticipantStateDictionary:(id)a3
{
  [(AVPlayerPlaybackCoordinator *)self _updateParticipantStateDictionaryWithParticipantState:?];
  [(AVPlayerPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  v5 = [a3 objectForKeyedSubscript:@"UUID"];
  [(AVPlayerPlaybackCoordinator *)self _updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier:v5];
  v6 = [(AVPlayerPlaybackCoordinator *)self interstitialPlaybackCoordinator];

  [v6 _updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier:v5];
}

- (void)_updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v5)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__AVPlayerPlaybackCoordinator__updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier___block_invoke;
    block[3] = &unk_1E7460FF0;
    block[4] = self;
    block[5] = a3;
    block[6] = v5;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }
}

void __100__AVPlayerPlaybackCoordinator__updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__30;
  v13 = __Block_byref_object_dispose__30;
  v14 = 0;
  v2 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __100__AVPlayerPlaybackCoordinator__updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier___block_invoke_2;
  v8[3] = &unk_1E7465398;
  v8[4] = a1[5];
  v8[5] = &v9;
  [v2 _storageRead:v8];
  v3 = a1[6];
  v4 = v10[5];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v5 || v5(v3, v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __100__AVPlayerPlaybackCoordinator__updateParticipantStateOnFigPlaybackCoordinatorForItemWithIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a2 + 24) objectForKeyedSubscript:{*(a1 + 32)), "copy"}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)handleReplacementParticipantStateDictionaries:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AVPlayerPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke;
  v7[3] = &unk_1E7465350;
  v7[4] = a3;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v7];
  [(AVPlayerPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  v4 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v4)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__AVPlayerPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke_2;
    block[3] = &unk_1E7460FA8;
    block[4] = self;
    block[5] = v4;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }
}

uint64_t __77__AVPlayerPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a2 + 24) removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a2 + 24) setObject:*(*(&v9 + 1) + 8 * v8) forKeyedSubscript:{objc_msgSend(*(*(&v9 + 1) + 8 * v8), "objectForKeyedSubscript:", @"UUID"}];
        ++v8;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void __77__AVPlayerPlaybackCoordinator_handleReplacementParticipantStateDictionaries___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)_replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__AVPlayerPlaybackCoordinator__replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator___block_invoke;
  v7[3] = &unk_1E74652D8;
  v7[4] = &v8;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v7];
  v4 = v9[5];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v5 || v5(a3, v4))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __95__AVPlayerPlaybackCoordinator__replaceAllParticipantStateDictionariesOnFigPlaybackCoordinator___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a2 + 24) "allValues")];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)handleRemovalOfParticipant:(id)a3
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AVPlayerPlaybackCoordinator_handleRemovalOfParticipant___block_invoke;
  v8[3] = &unk_1E7465350;
  v8[4] = a3;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v8];
  [(AVPlayerPlaybackCoordinator *)self _removeUnusedTransportControlStates];
  v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v5)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AVPlayerPlaybackCoordinator_handleRemovalOfParticipant___block_invoke_2;
    block[3] = &unk_1E7460FA8;
    block[4] = a3;
    block[5] = v5;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }
}

uint64_t __58__AVPlayerPlaybackCoordinator_handleRemovalOfParticipant___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = [*(a1 + 32) UUIDString];

  return [v2 removeObjectForKey:v3];
}

void __58__AVPlayerPlaybackCoordinator_handleRemovalOfParticipant___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], [v2 UUIDString]);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v5)
  {
    v5(v4, v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    CFRelease(v6);
  }
}

- (void)_updateSuspensionsForNewSuspensionReasons:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self suspensionReasons];
  if ([(AVPlayerPlaybackCoordinator *)self _hasRemovedSuspensionReason:@"AVCoordinatedPlaybackSuspensionReasonBackgroundTransition" currentReasons:v5 newReasons:a3])
  {
    [[(AVPlayerPlaybackCoordinator *)self player] _removeCoordinatedPlaybackSuspensionWithReason:@"AVCoordinatedPlaybackSuspensionReasonBackgroundTransition" requiringSuspensionEnd:0];
  }

  if (-[AVPlayerPlaybackCoordinator playbackCoordinationMedium](self, "playbackCoordinationMedium") && [-[AVPlayerPlaybackCoordinator playbackCoordinationMedium](self "playbackCoordinationMedium")] && -[AVPlayerPlaybackCoordinator _hasRemovedSuspensionReason:currentReasons:newReasons:](self, "_hasRemovedSuspensionReason:currentReasons:newReasons:", @"AVCoordinatedPlaybackSuspensionReasonAudioSessionInterrupted", v5, a3))
  {
    v6 = [(AVPlayerPlaybackCoordinator *)self playbackCoordinationMedium];

    [v6 endSuspensionOnAllCoordinatorsWithReason:@"AVCoordinatedPlaybackSuspensionReasonAudioSessionInterrupted"];
  }
}

- (void)_updateSuspensionReasons:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(AVPlayerPlaybackCoordinator *)self _updateSuspensionsForNewSuspensionReasons:?];
  ivarAccessQueue = self->_ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__AVPlayerPlaybackCoordinator__updateSuspensionReasons___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  if (*(v9 + 24) == 1)
  {
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorSuspensionReasonsDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __56__AVPlayerPlaybackCoordinator__updateSuspensionReasons___block_invoke(void *a1)
{
  result = AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(a1[4] + 48), a1[5]);
  if ((result & 1) == 0)
  {

    result = [a1[5] copy];
    *(a1[4] + 48) = result;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (id)suspensionReasons
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerPlaybackCoordinator_suspensionReasons__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__AVPlayerPlaybackCoordinator_suspensionReasons__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)currentSuspensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__30;
  v10 = __Block_byref_object_dispose__30;
  v11 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerPlaybackCoordinator_currentSuspensions__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __49__AVPlayerPlaybackCoordinator_currentSuspensions__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)beginSuspensionForReason:(id)a3
{
  v5 = [[AVCoordinatedPlaybackSuspension alloc] initWithCoordinator:self reason:a3];
  ivarAccessQueue = self->_ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__AVPlayerPlaybackCoordinator_beginSuspensionForReason___block_invoke;
  v12[3] = &unk_1E7460DF0;
  v12[4] = self;
  v12[5] = v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v7 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v7)
  {
    v8 = v7;
    v9 = [(AVCoordinatedPlaybackSuspension *)v5 _figSuspension];
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v10)
    {
      v10(v8, v9);
    }

    CFRelease(v8);
  }

  if ([(AVPlayerPlaybackCoordinator *)self interstitialPlaybackCoordinator])
  {
    -[AVCoordinatedPlaybackSuspension _setInterstitialSuspension:](v5, "_setInterstitialSuspension:", [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")]);
  }

  return v5;
}

uint64_t __56__AVPlayerPlaybackCoordinator_beginSuspensionForReason___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72);
  v2 = [*(a1 + 40) _figSuspension];

  return [v1 addObject:v2];
}

- (void)_synchronizeFigPlayerEvents
{
  v2 = [[(AVPlayerPlaybackCoordinator *)self player] _copyFigPlayer];
  if (v2)
  {
    v3 = v2;
    cf = 0;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6973440], *MEMORY[0x1E695E480], &cf);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    CFRelease(v3);
  }
}

- (void)_synchronizeWorkOnPlayerQueue:(id)a3
{
  v5 = [[(AVPlayerPlaybackCoordinator *)self player] _copyFigPlayer];
  if (v5)
  {
    v6 = v5;
    if (FigPlayerAsyncDispatchToPlayerQueue())
    {
      [(AVPlayerPlaybackCoordinator *)self _synchronizeFigPlayerEvents];
      (*(a3 + 2))(a3);
    }

    CFRelease(v6);
  }

  else
  {
    [(AVPlayerPlaybackCoordinator *)self _synchronizeFigPlayerEvents];
    v7 = *(a3 + 2);

    v7(a3);
  }
}

- (void)_removeSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVPlayerPlaybackCoordinator__removeSuspension___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__AVPlayerPlaybackCoordinator__endSuspension___block_invoke;
  v9[3] = &unk_1E7460FA8;
  v9[4] = self;
  v9[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  v6 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      CFRetain(a3);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AVPlayerPlaybackCoordinator__endSuspension___block_invoke_2;
    v8[3] = &__block_descriptor_48_e5_v8__0l;
    v8[4] = v7;
    v8[5] = a3;
    [(AVPlayerPlaybackCoordinator *)self _synchronizeWorkOnPlayerQueue:v8];
  }
}

void __46__AVPlayerPlaybackCoordinator__endSuspension___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v4(v2, v3);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

- (void)_endSuspension:(OpaqueFigTimelineCoordinatorSuspension *)a3 proposingNewTime:(id *)a4
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__AVPlayerPlaybackCoordinator__endSuspension_proposingNewTime___block_invoke;
  v13[3] = &unk_1E7460FA8;
  v13[4] = self;
  v13[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v8 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v8)
  {
    v9 = v8;
    if (a3)
    {
      CFRetain(a3);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__AVPlayerPlaybackCoordinator__endSuspension_proposingNewTime___block_invoke_2;
    v10[3] = &__block_descriptor_72_e5_v8__0l;
    v10[4] = v9;
    v10[5] = a3;
    v11 = *&a4->var0;
    var3 = a4->var3;
    [(AVPlayerPlaybackCoordinator *)self _synchronizeWorkOnPlayerQueue:v10];
  }
}

void __63__AVPlayerPlaybackCoordinator__endSuspension_proposingNewTime___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {
    v9 = v7;
    v10 = v8;
    v4(v2, v3, &v9);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

- (void)_endSuspensionWithReason:(id)a3
{
  [(AVPlayerPlaybackCoordinator *)self suspensionReasons];
  if (FigCFArrayContainsValue() == 1)
  {
    v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(a3);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __56__AVPlayerPlaybackCoordinator__endSuspensionWithReason___block_invoke;
      v8[3] = &__block_descriptor_48_e5_v8__0l;
      v8[4] = v6;
      v8[5] = v7;
      [(AVPlayerPlaybackCoordinator *)self _synchronizeWorkOnPlayerQueue:v8];
    }
  }
}

void __56__AVPlayerPlaybackCoordinator__endSuspensionWithReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v4)
  {
    v4(v2, v3);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
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
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AVPlayerPlaybackCoordinator__currentWaitingPoliciesArray__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __59__AVPlayerPlaybackCoordinator__currentWaitingPoliciesArray__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 56) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)_updateWaitingPoliciesOnFigPlaybackCoordinator:(OpaqueFigPlaybackCoordinator *)a3
{
  v3 = [(AVPlayerPlaybackCoordinator *)self _currentWaitingPoliciesArray];
  CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = *MEMORY[0x1E69632C8];

    v5(CMBaseObject, v6, v3);
  }
}

- (void)setParticipantLimit:(int64_t)a3 forWaitingOutSuspensionsWithReason:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__AVPlayerPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke;
  v6[3] = &unk_1E74653E0;
  v6[5] = self;
  v6[6] = a3;
  v6[4] = a4;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v6];
  [(AVPlayerPlaybackCoordinator *)self _updateParticipantLimitOnFigPlaybackCoordinatorWithReason:a4];
  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
}

uint64_t __86__AVPlayerPlaybackCoordinator_setParticipantLimit_forWaitingOutSuspensionsWithReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  [*(a2 + 32) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", *(a1 + 48)), *(a1 + 32)}];
  v4 = [*(a2 + 40) containsObject:*(a1 + 32)];
  v5 = MEMORY[0x1E695DF20];
  v6 = AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(a1 + 32));
  v7 = *MEMORY[0x1E6963348];
  v8 = MEMORY[0x1E695E4D0];
  if (!v4)
  {
    v8 = MEMORY[0x1E695E4C0];
  }

  v9 = *v8;
  v10 = *MEMORY[0x1E6963340];
  v11 = [*(a2 + 32) objectForKeyedSubscript:*(a1 + 32)];
  v12 = [v5 dictionaryWithObjectsAndKeys:{v6, v7, v9, v10, v11, *MEMORY[0x1E6963338], 0}];
  v13 = *(a1 + 40);
  v14 = *(a2 + 56);
  v16[0] = v12;
  return [v13 _updateWaitingPoliciesArray:v14 withPolicies:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 1)}];
}

- (void)_updateParticipantLimitOnFigPlaybackCoordinatorWithReason:(id)a3
{
  v4 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v4)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__AVPlayerPlaybackCoordinator__updateParticipantLimitOnFigPlaybackCoordinatorWithReason___block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_async(figPlaybackCoordinatorConfigQueue, v6);
  }
}

void __89__AVPlayerPlaybackCoordinator__updateParticipantLimitOnFigPlaybackCoordinatorWithReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateWaitingPoliciesOnFigPlaybackCoordinator:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (int64_t)participantLimitForWaitingOutSuspensionsWithReason:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__30;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__AVPlayerPlaybackCoordinator_participantLimitForWaitingOutSuspensionsWithReason___block_invoke;
  v6[3] = &unk_1E7465398;
  v6[4] = a3;
  v6[5] = &v7;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v6];
  v3 = v8[5];
  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __82__AVPlayerPlaybackCoordinator_participantLimitForWaitingOutSuspensionsWithReason___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 32) objectForKeyedSubscript:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setSuspensionReasonsThatTriggerWaiting:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__AVPlayerPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke;
  v4[3] = &unk_1E7465328;
  v4[4] = a3;
  v4[5] = self;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v4];
  [(AVPlayerPlaybackCoordinator *)self _updateSuspensionReasonsThatTriggerWaitingOFigPlaybackCoordinator];
  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
}

uint64_t __70__AVPlayerPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((AVPlaybackCoordinatorArrayContainsSameElementsAsArray(*(a2 + 40), *(a1 + 32)) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:*(a2 + 40)];
    [v5 removeObjectsInArray:v4];
    if ([v5 count])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __70__AVPlayerPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_2;
      v22[3] = &unk_1E74620F0;
      v22[4] = a2;
      [v5 enumerateObjectsUsingBlock:v22];
    }

    *(a2 + 40) = [*(a1 + 32) copy];
  }

  v16 = a1;
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = a2;
  v7 = *(a2 + 40);
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = *MEMORY[0x1E6963348];
    v12 = *MEMORY[0x1E695E4D0];
    v13 = *MEMORY[0x1E6963340];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", AVPlaybackCoordinatorFigSuspensionReasonForAVFReason(*(*(&v18 + 1) + 8 * i)), v11, v12, v13, 0)}];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }

  return [*(v16 + 40) _updateWaitingPoliciesArray:*(v17 + 56) withPolicies:v6];
}

uint64_t __70__AVPlayerPlaybackCoordinator_setSuspensionReasonsThatTriggerWaiting___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(*(a1 + 32) + 56);
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

  return [*(*(a1 + 32) + 56) removeObject:v10];
}

- (void)_updateSuspensionReasonsThatTriggerWaitingOFigPlaybackCoordinator
{
  v3 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v3)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __96__AVPlayerPlaybackCoordinator__updateSuspensionReasonsThatTriggerWaitingOFigPlaybackCoordinator__block_invoke;
    v5[3] = &unk_1E7460FA8;
    v5[4] = self;
    v5[5] = v3;
    dispatch_async(figPlaybackCoordinatorConfigQueue, v5);
  }
}

void __96__AVPlayerPlaybackCoordinator__updateSuspensionReasonsThatTriggerWaitingOFigPlaybackCoordinator__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateWaitingPoliciesOnFigPlaybackCoordinator:*(a1 + 40)];
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (id)suspensionReasonsThatTriggerWaiting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__AVPlayerPlaybackCoordinator_suspensionReasonsThatTriggerWaiting__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __66__AVPlayerPlaybackCoordinator_suspensionReasonsThatTriggerWaiting__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 40) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (void)setPauseSnapsToMediaTimeOfOriginator:(BOOL)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVPlayerPlaybackCoordinator_setPauseSnapsToMediaTimeOfOriginator___block_invoke;
  v4[3] = &__block_descriptor_33_e44_v16__0__AVPlayerPlaybackCoordinatorStorage_8l;
  v5 = a3;
  [(AVPlayerPlaybackCoordinator *)self _storageWrite:v4];
  [(AVPlayerPlaybackCoordinator *)self _updatePauseSnapsToMediaTimeOfOriginatorOnFigPlaybackCoordinator];
  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
}

- (void)_updatePauseSnapsToMediaTimeOfOriginatorOnFigPlaybackCoordinator
{
  v3 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v3)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __95__AVPlayerPlaybackCoordinator__updatePauseSnapsToMediaTimeOfOriginatorOnFigPlaybackCoordinator__block_invoke;
    v5[3] = &unk_1E7460FA8;
    v5[4] = self;
    v5[5] = v3;
    dispatch_async(figPlaybackCoordinatorConfigQueue, v5);
  }
}

void __95__AVPlayerPlaybackCoordinator__updatePauseSnapsToMediaTimeOfOriginatorOnFigPlaybackCoordinator__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) pauseSnapsToMediaTimeOfOriginator])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(CMBaseObject, *MEMORY[0x1E69632C0], *v2);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

- (BOOL)pauseSnapsToMediaTimeOfOriginator
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__AVPlayerPlaybackCoordinator_pauseSnapsToMediaTimeOfOriginator__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_setIsLocallyCoordinated:(__CFBoolean *)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 0;
  v5 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v5)
  {
    figPlaybackCoordinatorConfigQueue = self->_figPlaybackCoordinatorConfigQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AVPlayerPlaybackCoordinator__setIsLocallyCoordinated___block_invoke;
    block[3] = &unk_1E7462BD8;
    block[4] = v8;
    block[5] = v5;
    block[6] = a3;
    dispatch_async(figPlaybackCoordinatorConfigQueue, block);
  }

  else
  {
    [(AVPlayerPlaybackCoordinator *)self _setPendingFigPlaybackCoordinatorProperty:a3 forKey:*MEMORY[0x1E69632B0]];
  }

  [-[AVPlayerPlaybackCoordinator interstitialPlaybackCoordinator](self "interstitialPlaybackCoordinator")];
  _Block_object_dispose(v8, 8);
}

void __56__AVPlayerPlaybackCoordinator__setIsLocallyCoordinated___block_invoke(void *a1)
{
  v2 = a1[6];
  CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(CMBaseObject, *MEMORY[0x1E69632B0], v2);
  }

  else
  {
    v5 = -12782;
  }

  v6 = a1[5];
  *(*(a1[4] + 8) + 24) = v5;
  if (v6)
  {

    CFRelease(v6);
  }
}

- (unsigned)defaultItemIdentifierCounter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayerPlaybackCoordinator_defaultItemIdentifierCounter__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDefaultItemIdentifierCounter:(unsigned int)a3 postingNotification:(unsigned __int8)a4
{
  v4 = a4;
  ivarAccessQueue = self->_ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AVPlayerPlaybackCoordinator_setDefaultItemIdentifierCounter_postingNotification___block_invoke;
  v8[3] = &unk_1E74628F8;
  v8[4] = self;
  v9 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlaybackCoordinatorItemIdentifierForCoordinatedPlaybackDidChangeNotification" object:self];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }
}

- (BOOL)isConnectedToLocalPlaybackCoordinationMedium
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVPlayerPlaybackCoordinator_isConnectedToLocalPlaybackCoordinationMedium__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __60__AVPlayerPlaybackCoordinator__connectToCoordinationMedium___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  *(a2 + 96) = result;
  return result;
}

uint64_t __64__AVPlayerPlaybackCoordinator__disconnectFromCoordinationMedium__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 64) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)networkToHostTimeOffset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__AVPlayerPlaybackCoordinator_networkToHostTimeOffset__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __54__AVPlayerPlaybackCoordinator_networkToHostTimeOffset__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 112);
  v3 = *(*(a1 + 32) + 128);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)_setNetworkToHostTimeOffset
{
  v3 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v3)
  {
    v4 = v3;
    v12 = 0;
    v11 = **&MEMORY[0x1E6960C70];
    CMBaseObject = FigPlaybackCoordinatorGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E69632B8], *MEMORY[0x1E695E480], &v12);
      if (v12)
      {
        v7 = CFGetTypeID(v12);
        if (v7 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(&v11, v12);
        }
      }
    }

    ivarAccessQueue = self->_ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__AVPlayerPlaybackCoordinator__setNetworkToHostTimeOffset__block_invoke;
    v9[3] = &unk_1E7462FD8;
    v9[4] = self;
    v10 = v11;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
    if (v12)
    {
      CFRelease(v12);
    }

    CFRelease(v4);
  }
}

__n128 __58__AVPlayerPlaybackCoordinator__setNetworkToHostTimeOffset__block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 112);
  v2 = *(a1 + 56);
  result = *(a1 + 40);
  *v1 = result;
  v1[1].n128_u64[0] = v2;
  return result;
}

- (void)_applyAdjustedIntegratedSeekTimeFromTime:(id *)a3 withNetworkTime:(id)a4 rate:(id)a5
{
  if (self)
  {
    [(AVPlayerPlaybackCoordinator *)self networkToHostTimeOffset];
    if ((v13 & 1) == 0)
    {
      [(AVPlayerPlaybackCoordinator *)self _setNetworkToHostTimeOffset];
    }

    v11 = 0uLL;
    v12 = 0;
    v9 = *&a3->var0;
    var3 = a3->var3;
    [(AVPlayerPlaybackCoordinator *)self _convertToMediaTimeForTime:&v9 withNetworkTime:a4 rate:a5];
    if (BYTE12(v11))
    {
      v9 = v11;
      var3 = v12;
      [(AVPlayerPlaybackCoordinator *)self _applyIntegratedTimelineSeek:&v9];
    }
  }

  else
  {
    [0 _setNetworkToHostTimeOffset];
  }
}

- (void)_resetGroupTimelineExpectationsForIdentifier:(id)a3
{
  v5 = [(AVPlayerPlaybackCoordinator *)self interstitialPlaybackCoordinator];
  if (![-[AVPlayerPlaybackCoordinator currentSuspensions](self "currentSuspensions")])
  {
    v6 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
    if (!v6)
    {
      self->_shouldOverrideGroupState = 1;
      if (!v5)
      {
        return;
      }

      goto LABEL_7;
    }

    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v8)
    {
      v8(v7, a3);
    }

    CFRelease(v7);
  }

  if (!v5)
  {
    return;
  }

LABEL_7:

  [v5 _resetGroupTimelineExpectationsForIdentifier:a3];
}

- (id)currentLamportTimestampForIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__30;
  v9 = __Block_byref_object_dispose__30;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVPlayerPlaybackCoordinator_currentLamportTimestampForIdentifier__block_invoke;
  v4[3] = &unk_1E74652D8;
  v4[4] = &v5;
  [(AVPlayerPlaybackCoordinator *)self _storageRead:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __67__AVPlayerPlaybackCoordinator_currentLamportTimestampForIdentifier__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 104) copy];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (BOOL)isDefunct
{
  v8 = 0;
  v2 = [(AVPlayerPlaybackCoordinator *)self _copyFigPlaybackCoordinator];
  if (v2)
  {
    v3 = v2;
    v4 = *(CMBaseObjectGetVTable() + 8);
    if (*v4 < 5uLL || (v5 = v4[11]) == 0 || (v6 = v5(v3, &v8), !v8) && v6)
    {
      v8 = 1;
    }

    CFRelease(v3);
    LOBYTE(v2) = v8 == 1;
  }

  return v2;
}

@end
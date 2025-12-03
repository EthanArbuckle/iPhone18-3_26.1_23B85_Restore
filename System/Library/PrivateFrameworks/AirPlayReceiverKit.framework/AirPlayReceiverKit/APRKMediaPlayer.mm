@interface APRKMediaPlayer
- (APRKMediaPlayer)initWithP2PWiFiSupport:(BOOL)support isInterstitialPlayer:(BOOL)player playerSessionID:(int)d;
- (APRKMediaPlayerMessagingDelegate)messagingDelegate;
- (BOOL)_attemptToSetSelectedMediaArray:(id)array;
- (BOOL)_ensureFairPlayHelper;
- (BOOL)_shouldIgnoreSeekCompletionForSeekID:(int)d forItem:(id)item;
- (BOOL)shouldDelegateToInterstitialPlayerForMessageAndID:(id)d sessionID:(int)iD;
- (id)_SSLPropertiesforTLSInfo:(id)info;
- (id)_currentPlaybackInfoDictionary;
- (id)_figPlaybackStateStringFrom:(int64_t)from;
- (id)_fixedIPContentLocationFromURLString:(id)string error:(id *)error;
- (id)_frontPlayerItem;
- (id)_getPropertyWithDictionary:(id)dictionary;
- (id)_playerItemForUUID:(id)d;
- (id)_processAuthorizeItemWithDictionary:(id)dictionary;
- (id)_processMessageWithDictionaryInternal:(id)internal;
- (id)_processPlaybackInfoRequestWithDictionary:(id)dictionary;
- (id)_seekRequestMessageForSeekID:(int)d forItem:(id)item;
- (id)_serializeTimeRanges:(id)ranges;
- (id)_timedMetadataFromAVTimedMetadata:(id)metadata;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator;
- (id)processMessageWithIDAndDictionarySync:(id)sync messageSessionID:(int)d;
- (id)selectedMediaArrayForItem:(id)item;
- (void)_addPendingSeekID:(int)d withMessage:(id)message forItem:(id)item ignoreSeekCompletion:(BOOL)completion;
- (void)_ensureInterstitialPlayerFor:(int)for;
- (void)_handleCurrentEventSkippedNotification:(id)notification;
- (void)_handleCurrentItemChangedNotification:(id)notification;
- (void)_handleCurrentItemFailedToPlayToEndNotification:(id)notification;
- (void)_handleCurrentItemPlaybackStalledNotification:(id)notification;
- (void)_handleCurrentItemPlayedToEndNotification:(id)notification;
- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:(id)notification;
- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:(id)notification;
- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:(id)notification;
- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:(id)notification;
- (void)_handleSeekDidCompleteNotification:(id)notification;
- (void)_handleTimeJumpedNotification:(id)notification;
- (void)_insertPlayQueueItemWithDictionary:(id)dictionary;
- (void)_pausePlayerIfNeededForState:(int64_t)state;
- (void)_processPlaybackCoordinationMediumWithDictionary:(id)dictionary;
- (void)_processStreamingKeyWithDictionary:(id)dictionary;
- (void)_processUnhandledURLWithDictionary:(id)dictionary;
- (void)_registerNotificationHandlersAndInsertPlayerItem:(id)item afterItem:(id)afterItem;
- (void)_registerNotificationHandlersForPlayer;
- (void)_removePendingSeekID:(int)d forItem:(id)item;
- (void)_removePlayQueueItemWithDictionary:(id)dictionary;
- (void)_seekWithDictionary:(id)dictionary;
- (void)_sendUpstreamErrorMessageWithError:(id)error;
- (void)_sendUpstreamMessageWithDictionary:(id)dictionary;
- (void)_sendUpstreamPlaybackStateMessageWithPlaybackStateString:(id)string stoppedBecauseInterrupted:(BOOL)interrupted;
- (void)_setPropertyWithDictionary:(id)dictionary;
- (void)_setRateWithDictionary:(id)dictionary;
- (void)_stopWithDictionary:(id)dictionary;
- (void)_unregisterNotificationHandlersAndRemovePlayerItem:(id)item;
- (void)_unregisterNotificationHandlersForPlayer;
- (void)_updateAudioSessionMode:(id)mode;
- (void)_updatePlaybackStateWithState:(int64_t)state stoppedBecauseInterrupted:(BOOL)interrupted shouldSendUpstreamMessage:(BOOL)message;
- (void)addDateRangeCollectorToItem:(id)item;
- (void)contentKeyHelper:(id)helper didGenerateSecureStopRecordPayload:(id)payload;
- (void)contentKeyHelper:(id)helper wantsToPerformContentKeyRequestWithDictionary:(id)dictionary;
- (void)dealloc;
- (void)integratedTimeline:(id)timeline didRequestSeekToTime:(id *)time seekID:(int)d toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)invalidate;
- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary;
- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier;
- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)processMessageWithIDAndDictionaryAsync:(id)async messageSessionID:(int)d;
- (void)processTLSInfoDictionary:(id)dictionary;
- (void)resourceLoaderHelper:(id)helper wantsToPerformUnhandledURLRequestWithDictionary:(id)dictionary forRequestID:(id)d;
- (void)setCompleteIntegratedTimelineSeekBlock:(id)block;
- (void)setCurrentInterstitialEventID:(id)d;
- (void)setInterstitialEventControllerForInterstitialPlayer:(id)player;
- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock;
- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address;
- (void)stopWithCompletionBlock:(id)block;
@end

@implementation APRKMediaPlayer

- (APRKMediaPlayer)initWithP2PWiFiSupport:(BOOL)support isInterstitialPlayer:(BOOL)player playerSessionID:(int)d
{
  v40.receiver = self;
  v40.super_class = APRKMediaPlayer;
  v8 = [(APRKMediaPlayer *)&v40 init];
  v9 = v8;
  if (v8)
  {
    v8->_stallCount = 0;
    v10 = dispatch_queue_create("com.apple.APRKMediaPlayer.messageQueue", 0);
    messageQueue = v9->_messageQueue;
    v9->_messageQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CE65F8]);
    player = v9->_player;
    v9->_player = v12;

    [(AVQueuePlayer *)v9->_player setAllowsExternalPlayback:0];
    v9->_isInterstitialPlayer = player;
    interstitialEventControllerForPrimaryPlayer = v9->_interstitialEventControllerForPrimaryPlayer;
    v9->_interstitialEventControllerForPrimaryPlayer = 0;

    objc_storeWeak(&v9->_interstitialEventControllerForInterstitialPlayer, 0);
    v9->_pendingIntegratedTimelineSeekID = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingIntegratedTimelineSeekIDMap = v9->_pendingIntegratedTimelineSeekIDMap;
    v9->_pendingIntegratedTimelineSeekIDMap = v15;

    if (v9->_isInterstitialPlayer)
    {
      completeIntegratedTimelineSeek = v9->_completeIntegratedTimelineSeek;
      v9->_completeIntegratedTimelineSeek = 0;
    }

    else
    {
      objc_initWeak(&location, v9);
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __79__APRKMediaPlayer_initWithP2PWiFiSupport_isInterstitialPlayer_playerSessionID___block_invoke;
      v37 = &unk_278C626C0;
      objc_copyWeak(&v38, &location);
      v18 = _Block_copy(&v34);
      v19 = v9->_completeIntegratedTimelineSeek;
      v9->_completeIntegratedTimelineSeek = v18;

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    [(APRKMediaPlayer *)v9 _registerNotificationHandlersForPlayer:v34];
    previousItemUUID = v9->_previousItemUUID;
    v9->_previousItemUUID = 0;

    currentItemUUID = v9->_currentItemUUID;
    v9->_currentItemUUID = 0;

    v22 = objc_alloc_init(APRKResourceLoaderHelper);
    resourceLoaderHelper = v9->_resourceLoaderHelper;
    v9->_resourceLoaderHelper = v22;

    [(APRKResourceLoaderHelper *)v9->_resourceLoaderHelper setDelegate:v9];
    v24 = objc_alloc_init(APRKContentKeyHelper);
    contentKeyHelper = v9->_contentKeyHelper;
    v9->_contentKeyHelper = v24;

    [(APRKContentKeyHelper *)v9->_contentKeyHelper setDelegate:v9];
    v9->_isP2PWiFiSession = support;
    v9->_playerSessionID = d;
    v9->_receiverNetworkClock = 0;
    *&v9->_isFirstSetRateReceived = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingSenderSeekMessages = v9->_pendingSenderSeekMessages;
    v9->_pendingSenderSeekMessages = dictionary;

    v28 = MEMORY[0x277CC0898];
    *&v9->_cachedTimeToPausePlayback.value = *MEMORY[0x277CC0898];
    v9->_cachedTimeToPausePlayback.epoch = *(v28 + 16);
    v9->_fpHelper = 0;
    if (APSSettingsIsFeatureEnabled())
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      localParticipantID = v9->_localParticipantID;
      v9->_localParticipantID = uUID;

      playbackCoordinator = [(AVQueuePlayer *)v9->_player playbackCoordinator];
      playbackCoordinator = v9->_playbackCoordinator;
      v9->_playbackCoordinator = playbackCoordinator;

      [(AVPlayerPlaybackCoordinator *)v9->_playbackCoordinator setCoordinationMediumDelegate:v9];
      [(AVPlayerPlaybackCoordinator *)v9->_playbackCoordinator setDelegate:v9];
    }
  }

  return v9;
}

void __79__APRKMediaPlayer_initWithP2PWiFiSupport_isInterstitialPlayer_playerSessionID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v7 = [v9 currentItem];
    v8 = [v7 integratedTimeline];
    [v8 noteSeekID:a2 didFinish:a3];
  }
}

- (void)dealloc
{
  if (self->_fpHelper)
  {
    APReceiverFairPlayHelperRemoveAllFPSessions();
    fpHelper = self->_fpHelper;
    if (fpHelper)
    {
      CFRelease(fpHelper);
    }
  }

  v4.receiver = self;
  v4.super_class = APRKMediaPlayer;
  [(APRKMediaPlayer *)&v4 dealloc];
}

- (void)invalidate
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer invalidate];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APRKMediaPlayer_invalidate__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(messageQueue, block);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__APRKMediaPlayer_invalidate__block_invoke_2;
  v4[3] = &unk_278C626E8;
  v4[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __29__APRKMediaPlayer_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setDelegate:0];
  [*(*(a1 + 32) + 120) setDelegate:0];
  [*(*(a1 + 32) + 128) setCoordinationMediumDelegate:0];
  [*(*(a1 + 32) + 128) setDelegate:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 168) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 160) = 0;
  }
}

void __29__APRKMediaPlayer_invalidate__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 178) = 1;
  v2 = [*(*(a1 + 32) + 8) items];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
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

        [*(a1 + 32) _unregisterNotificationHandlersAndRemovePlayerItem:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) _unregisterNotificationHandlersForPlayer];
}

- (void)stopWithCompletionBlock:(id)block
{
  blockCopy = block;
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_sync(messageQueue, block);
  v6 = self->_messageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_2;
  v8[3] = &unk_278C62710;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

void __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePlaybackStateWithState:3 stoppedBecauseInterrupted:1 shouldSendUpstreamMessage:1];
  v2 = *(*(a1 + 32) + 216);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(v4 + 216);
    *(v4 + 216) = 0;

    [v3 setMessagingDelegate:0];
    [*(*(a1 + 32) + 8) _setInterstitialPlayer:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_3;
    v9[3] = &unk_278C62710;
    v10 = v3;
    v11 = *(a1 + 40);
    v6 = v3;
    [v6 stopWithCompletionBlock:v9];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setCompleteIntegratedTimelineSeekBlock:(id)block
{
  self->_completeIntegratedTimelineSeek = _Block_copy(block);

  MEMORY[0x2821F96F8]();
}

- (APRKMediaPlayerMessagingDelegate)messagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);

  return WeakRetained;
}

- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address
{
  sessionReceiverAddr = self->_sessionReceiverAddr;
  self->_sessionReceiverAddr = address;
  if (address)
  {
    CFRetain(address);
  }

  if (sessionReceiverAddr)
  {

    CFRelease(sessionReceiverAddr);
  }
}

- (void)setInterstitialEventControllerForInterstitialPlayer:(id)player
{
  if (self->_isInterstitialPlayer)
  {
    objc_storeWeak(&self->_interstitialEventControllerForInterstitialPlayer, player);
  }
}

- (void)setCurrentInterstitialEventID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_currentInterstitialEventID, d);
  interstitialPlayer = self->_interstitialPlayer;
  if (interstitialPlayer)
  {
    [(APRKMediaPlayer *)interstitialPlayer setCurrentInterstitialEventID:dCopy];
  }
}

- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock
{
  receiverNetworkClock = self->_receiverNetworkClock;
  self->_receiverNetworkClock = clock;
  if (clock)
  {
    CFRetain(clock);
  }

  if (receiverNetworkClock)
  {

    CFRelease(receiverNetworkClock);
  }
}

- (BOOL)shouldDelegateToInterstitialPlayerForMessageAndID:(id)d sessionID:(int)iD
{
  v4 = *&iD;
  dCopy = d;
  v7 = dCopy;
  if (self->_isInterstitialPlayer || ([dCopy objectForKey:*MEMORY[0x277CC0F38]], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, !v9))
  {
    v10 = 0;
  }

  else
  {
    if (!self->_interstitialPlayer)
    {
      [(APRKMediaPlayer *)self _ensureInterstitialPlayerFor:v4];
    }

    v10 = 1;
  }

  return v10;
}

- (void)_ensureInterstitialPlayerFor:(int)for
{
  if (!self->_interstitialPlayer)
  {
    v5 = [[APRKMediaPlayer alloc] initWithP2PWiFiSupport:self->_isP2PWiFiSession isInterstitialPlayer:1 playerSessionID:*&for];
    interstitialPlayer = self->_interstitialPlayer;
    self->_interstitialPlayer = v5;

    v7 = self->_interstitialPlayer;
    WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);
    [(APRKMediaPlayer *)v7 setMessagingDelegate:WeakRetained];

    [(APRKMediaPlayer *)self->_interstitialPlayer setSessionReceiverAddress:self->_sessionReceiverAddr];
    v14 = self->_player;
    backingAVQueuePlayer = [(APRKMediaPlayer *)self->_interstitialPlayer backingAVQueuePlayer];
    if (v14 && backingAVQueuePlayer)
    {
      [(AVQueuePlayer *)v14 _setInterstitialPlayer:backingAVQueuePlayer];
      interstitialEvents = self->_interstitialEvents;
      if (interstitialEvents)
      {
        currentItem = [(AVQueuePlayer *)v14 currentItem];
        [(AVQueuePlayer *)v14 _noteRemoteInterstitialEvents:interstitialEvents forItem:currentItem];
      }

      if (self->_currentInterstitialEventID)
      {
        [(APRKMediaPlayer *)self->_interstitialPlayer setCurrentInterstitialEventID:?];
        [(AVQueuePlayer *)v14 _noteCurrentRemoteInterstitialEvent:self->_currentInterstitialEventID];
      }
    }

    if (!self->_isInterstitialPlayer)
    {
      v12 = [MEMORY[0x277CE65A0] interstitialEventControllerWithPrimaryPlayer:self->_player];
      interstitialEventControllerForPrimaryPlayer = self->_interstitialEventControllerForPrimaryPlayer;
      self->_interstitialEventControllerForPrimaryPlayer = v12;
    }

    [(APRKMediaPlayer *)self->_interstitialPlayer setPendingIntegratedTimelineSeekID:self->_pendingIntegratedTimelineSeekID];
    [(APRKMediaPlayer *)self->_interstitialPlayer setInterstitialEventControllerForInterstitialPlayer:self->_interstitialEventControllerForPrimaryPlayer];
    [(APRKMediaPlayer *)self->_interstitialPlayer setCompleteIntegratedTimelineSeekBlock:self->_completeIntegratedTimelineSeek];
  }
}

- (void)processMessageWithIDAndDictionaryAsync:(id)async messageSessionID:(int)d
{
  asyncCopy = async;
  v7 = asyncCopy;
  if (self->_playerSessionID == d)
  {
    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__APRKMediaPlayer_processMessageWithIDAndDictionaryAsync_messageSessionID___block_invoke;
    block[3] = &unk_278C62738;
    block[4] = self;
    v10 = asyncCopy;
    dCopy = d;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer processMessageWithIDAndDictionaryAsync:messageSessionID:];
  }
}

uint64_t __75__APRKMediaPlayer_processMessageWithIDAndDictionaryAsync_messageSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDelegateToInterstitialPlayerForMessageAndID:*(a1 + 40) sessionID:*(a1 + 48)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[27];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v4 processMessageWithIDAndDictionaryAsync:v5 messageSessionID:v6];
  }

  else
  {
    v8 = [v3 _processMessageWithDictionaryInternal:*(a1 + 40)];
    if (v8)
    {
      [*(a1 + 32) _sendUpstreamMessageWithDictionary:v8];
    }

    return MEMORY[0x2821F96F8]();
  }
}

- (id)processMessageWithIDAndDictionarySync:(id)sync messageSessionID:(int)d
{
  syncCopy = sync;
  v7 = syncCopy;
  v8 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (self->_playerSessionID == d)
  {
    messageQueue = self->_messageQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke;
    v12[3] = &unk_278C62760;
    v12[4] = self;
    dCopy = d;
    v13 = syncCopy;
    v14 = &v16;
    dispatch_sync(messageQueue, v12);

    v8 = v17[5];
  }

  v10 = v8;
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDelegateToInterstitialPlayerForMessageAndID:*(a1 + 40) sessionID:*(a1 + 56)];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3[27] processMessageWithIDAndDictionarySync:*(a1 + 40) messageSessionID:*(a1 + 56)];
  }

  else
  {
    [v3 _processMessageWithDictionaryInternal:*(a1 + 40)];
  }
  v4 = ;
  v6 = *(a1 + 48);
  v5 = a1 + 48;
  v7 = *(v6 + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke_cold_1(v5);
  }
}

- (id)_processMessageWithDictionaryInternal:(id)internal
{
  internalCopy = internal;
  v5 = internalCopy;
  if (!internalCopy)
  {
LABEL_13:
    v7 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v6 = [internalCopy objectForKey:@"type"];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processMessageWithDictionaryInternal:];
    }

    goto LABEL_13;
  }

  if ([v6 isEqualToString:@"unhandledURL"])
  {
    [(APRKMediaPlayer *)self _processUnhandledURLWithDictionary:v5];
LABEL_9:
    v7 = 0;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:@"playbackInfo"])
  {
    v9 = [(APRKMediaPlayer *)self _processPlaybackInfoRequestWithDictionary:v5];
  }

  else
  {
    if ([v6 isEqualToString:@"setProperty"])
    {
      [(APRKMediaPlayer *)self _setPropertyWithDictionary:v5];
      goto LABEL_9;
    }

    if ([v6 isEqualToString:@"property"])
    {
      v9 = [(APRKMediaPlayer *)self _getPropertyWithDictionary:v5];
    }

    else
    {
      if ([v6 isEqualToString:@"insertPlayQueueItem"])
      {
        [(APRKMediaPlayer *)self _insertPlayQueueItemWithDictionary:v5];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"removePlayQueueItem"])
      {
        [(APRKMediaPlayer *)self _removePlayQueueItemWithDictionary:v5];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"setRate"])
      {
        [(APRKMediaPlayer *)self _setRateWithDictionary:v5];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"seek"])
      {
        [(APRKMediaPlayer *)self _seekWithDictionary:v5];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"streamingKey"])
      {
        [(APRKMediaPlayer *)self _processStreamingKeyWithDictionary:v5];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"stop"])
      {
        [(APRKMediaPlayer *)self _stopWithDictionary:v5];
        goto LABEL_9;
      }

      if (![v6 isEqualToString:@"authorizeItem"])
      {
        if ([v6 isEqualToString:@"playbackCoordinationMedium"] && APSSettingsIsFeatureEnabled())
        {
          [(APRKMediaPlayer *)self _processPlaybackCoordinationMediumWithDictionary:v5];
        }

        goto LABEL_9;
      }

      v9 = [(APRKMediaPlayer *)self _processAuthorizeItemWithDictionary:v5];
    }
  }

  v7 = v9;
LABEL_14:

  return v7;
}

- (id)_serializeTimeRanges:(id)ranges
{
  v28 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  if (rangesCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = rangesCopy;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = rangesCopy;
    v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *MEMORY[0x277CC11A0];
      v9 = *MEMORY[0x277CC1198];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          memset(v22, 0, sizeof(v22));
          v21 = 0u;
          if (v11)
          {
            [v11 CMTimeRangeValue];
          }

          v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          *&time.value = v21;
          time.epoch = *&v22[0];
          v13 = CMTimeCopyAsDictionary(&time, 0);
          if (v13)
          {
            v14 = v13;
            [v12 setObject:v13 forKey:v8];
          }

          time = *(v22 + 8);
          v15 = CMTimeCopyAsDictionary(&time, 0);
          if (v15)
          {
            v16 = v15;
            [v12 setObject:v15 forKey:v9];
          }

          [array addObject:{v12, v18}];
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    rangesCopy = v18;
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_currentPlaybackInfoDictionary
{
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  v5 = currentItem;
  if (!currentItem)
  {
    if (self->_isInterstitialPlayer)
    {
      goto LABEL_32;
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA590];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"Sender requested playbackInfo while AVPlayer on Receiver side did not have a current playerItem.";
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v7 = [v32 errorWithDomain:v33 code:-6707 userInfo:v34];

    currentDate = [APRKUtilities dictionaryForError:v7];
    [v3 setObject:currentDate forKey:@"error"];
    goto LABEL_30;
  }

  v39 = @"uuid";
  uUIDString = [currentItem UUIDString];
  v40[0] = uUIDString;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];

  [v3 setObject:v7 forKey:@"item"];
  status = [v5 status];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:status == 1];
  [v3 setObject:v9 forKey:*MEMORY[0x277CC10A0]];

  if (status == 1)
  {
    currentDate = [v5 currentDate];
    if (currentDate)
    {
      [v3 setObject:currentDate forKey:*MEMORY[0x277CC1050]];
      v11 = MEMORY[0x277CCABB0];
      [currentDate timeIntervalSinceReferenceDate];
      v12 = [v11 numberWithDouble:?];
      [v3 setObject:v12 forKey:*MEMORY[0x277CC1048]];
    }

    [v5 duration];
    v13 = *MEMORY[0x277CBECE8];
    v14 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
    [v3 setObject:v14 forKey:*MEMORY[0x277CC1058]];

    if (!self->_isInTrickPlay)
    {
      [v5 currentTime];
      v15 = CMTimeCopyAsDictionary(&time, v13);
      [v3 setObject:v15 forKey:*MEMORY[0x277CC1090]];
    }

    timeControlStatus = [(AVQueuePlayer *)self->_player timeControlStatus];
    v17 = 0.0;
    if (timeControlStatus == 2)
    {
      [(AVQueuePlayer *)self->_player rate];
    }

    if (!self->_isInTrickPlay)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      [v3 setObject:v18 forKey:*MEMORY[0x277CC1098]];
    }

    [(APRKMediaPlayer *)self _pausePlayerIfNeededForState:self->_internalPlaybackState, v17];
    v19 = [(APRKMediaPlayer *)self _figPlaybackStateStringFrom:self->_internalPlaybackState];
    if (v19)
    {
      [v3 setObject:v19 forKey:@"playbackState"];
    }

    if (self->_isWaitingToSetRateFromSenderAfterSeek)
    {
      [v3 setObject:MEMORY[0x277CBEC38] forKey:@"isWaitingToSetRateFromSenderAfterSeek"];
    }

    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPlaybackLikelyToKeepUp")}];
    [v3 setObject:v20 forKey:*MEMORY[0x277CC1088]];

    currentEstimatedDate = [v5 currentEstimatedDate];
    if (currentEstimatedDate)
    {
      [v3 setObject:currentEstimatedDate forKey:*MEMORY[0x277CC1060]];
    }

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPlaybackBufferFull")}];
    [v3 setObject:v22 forKey:*MEMORY[0x277CC1080]];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isPlaybackBufferEmpty")}];
    [v3 setObject:v23 forKey:*MEMORY[0x277CC1078]];

    seekableTimeRanges = [v5 seekableTimeRanges];
    v25 = [(APRKMediaPlayer *)self _serializeTimeRanges:seekableTimeRanges];

    if (v25)
    {
      [v3 setObject:v25 forKey:*MEMORY[0x277CC10A8]];
    }

    loadedTimeRanges = [v5 loadedTimeRanges];
    v27 = [(APRKMediaPlayer *)self _serializeTimeRanges:loadedTimeRanges];

    if (v27)
    {
      [v3 setObject:v27 forKey:*MEMORY[0x277CC1070]];
    }

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:self->_stallCount];
    [v3 setObject:v28 forKey:*MEMORY[0x277CC10B0]];

    interstitialPlayer = self->_interstitialPlayer;
    if (interstitialPlayer)
    {
      _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)interstitialPlayer _currentPlaybackInfoDictionary];
      [v3 setObject:_currentPlaybackInfoDictionary forKey:*MEMORY[0x277CC1068]];
    }

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      uUIDString2 = [v5 UUIDString];
      [v5 duration];
      CMTimeGetSeconds(&time);
      [v5 currentTime];
      CMTimeGetSeconds(&time);
      LogPrintF();
    }

LABEL_30:
  }

LABEL_32:

  return v3;
}

- (id)_playerItemForUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  items = [(AVQueuePlayer *)self->_player items];
  v6 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(items);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      uUIDString = [v10 UUIDString];
      v12 = [dCopy isEqualToString:uUIDString];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [items countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
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

  return v10;
}

- (id)_frontPlayerItem
{
  items = [(AVQueuePlayer *)self->_player items];
  firstObject = [items firstObject];

  return firstObject;
}

- (void)processTLSInfoDictionary:(id)dictionary
{
  self->_cachedSSLProperties = [(APRKMediaPlayer *)self _SSLPropertiesforTLSInfo:dictionary];

  MEMORY[0x2821F96F8]();
}

- (id)_SSLPropertiesforTLSInfo:(id)info
{
  v12[3] = *MEMORY[0x277D85DE8];
  if (info)
  {
    infoCopy = info;
    v4 = [infoCopy objectForKey:@"tlsPSKClientIdentity"];
    v5 = [infoCopy objectForKey:@"tlsPSK"];

    v6 = 0;
    if (v4 && v5)
    {
      v10 = 174;
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:2];
      v8 = *MEMORY[0x277CBAEC0];
      v11[0] = *MEMORY[0x277CBAEB8];
      v11[1] = v8;
      v12[0] = v4;
      v12[1] = v5;
      v11[2] = *MEMORY[0x277CBAEA0];
      v12[2] = v7;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_ensureFairPlayHelper
{
  if (self->_fpHelper)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  v4 = APReceiverFairPlayHelperCreate();
  self->_fpHelper = v4;
  if (v4)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  if (gLogCategory_AirPlayReceiverKit > 90)
  {
LABEL_9:
    LOBYTE(v2) = 0;
    return v2;
  }

  if (gLogCategory_AirPlayReceiverKit != -1 || (v2 = _LogCategory_Initialize()) != 0)
  {
    [APRKMediaPlayer _ensureFairPlayHelper];
    goto LABEL_9;
  }

  return v2;
}

- (void)_updateAudioSessionMode:(id)mode
{
  v14[1] = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v6 = modeCopy;
  audioSessionMode = self->_audioSessionMode;
  if (audioSessionMode)
  {
    if (!modeCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _updateAudioSessionMode:];
    }

    objc_storeStrong(&self->_audioSessionMode, *MEMORY[0x277CC0DF8]);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (([v6 isEqualToString:self->_audioSessionMode] & 1) == 0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v11 = self->_audioSessionMode;
      v12 = v6;
      LogPrintF();
    }

    objc_storeStrong(&self->_audioSessionMode, mode);
    goto LABEL_19;
  }

LABEL_9:
  if (audioSessionMode)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _updateAudioSessionMode:];
    }

    goto LABEL_23;
  }

LABEL_19:
  v8 = self->_audioSessionMode;
  v13 = @"audioMode";
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:{1, v11, v12}];
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _updateAudioSessionMode:];
  }

  messagingDelegate = [(APRKMediaPlayer *)self messagingDelegate];
  [messagingDelegate mediaPlayer:self wantsToPostNotification:@"updateAudioMode" withPayload:v9];

LABEL_23:
}

- (void)_insertPlayQueueItemWithDictionary:(id)dictionary
{
  v74[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = *MEMORY[0x277CC08F0];
  *&v72.value = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v72.epoch = v6;
  v7 = 0x27E37F000uLL;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
  }

  v8 = MEMORY[0x277CBEB38];
  v9 = [dictionaryCopy objectForKey:@"item"];
  v10 = [v8 dictionaryWithDictionary:v9];

  if (v10)
  {
    v11 = *MEMORY[0x277CC0FA0];
    v12 = [v10 objectForKey:*MEMORY[0x277CC0FA0]];

    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CE6630]);
      v14 = [v10 objectForKey:v11];
      v15 = [v13 initWithSpecifiedName:v14];

      if (v15)
      {
        [(AVQueuePlayer *)self->_player setLoggingIdentifier:v15];
      }

      v7 = 0x27E37F000uLL;
    }

    v16 = [v10 objectForKey:@"IsTLSEnabled"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      messagingDelegate = [(APRKMediaPlayer *)self messagingDelegate];
      [messagingDelegate mediaPlayerNeedsTLSInfo:self];

      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
      }

      cachedSSLProperties = self->_cachedSSLProperties;
      if (cachedSSLProperties)
      {
        [v5 setObject:cachedSSLProperties forKey:*MEMORY[0x277CE6268]];
      }

      if (self->_isP2PWiFiSession)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v5 setObject:v20 forKey:*MEMORY[0x277CE6280]];
      }

      v21 = *MEMORY[0x277CC0F10];
      v22 = [v10 objectForKey:*MEMORY[0x277CC0F10]];
      v71 = 0;
      v23 = [(APRKMediaPlayer *)self _fixedIPContentLocationFromURLString:v22 error:&v71];
      v24 = v71;
      if (v23)
      {
        [v10 setObject:v23 forKey:v21];
      }

      v7 = 0x27E37F000;
    }

    else
    {
      v25 = self->_cachedSSLProperties;
      self->_cachedSSLProperties = 0;
    }

    v26 = [v10 objectForKey:@"Play-Info"];
    if (v26)
    {
      v27 = APReceiverFairPlayHelperProcessFPInfo();
      if (v27)
      {
        v28 = v27;
        v29 = v6;
        v30 = v26;
        v31 = *(v7 + 2968);
        if (v31 <= 30 && (v31 != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }

        v32 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA590];
        v73 = *MEMORY[0x277CCA450];
        v74[0] = @"Failed to process FP Info";
        v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
        v35 = [v32 errorWithDomain:v33 code:v28 userInfo:v34];
        [(APRKMediaPlayer *)self _sendUpstreamErrorMessageWithError:v35];

        v7 = 0x27E37F000uLL;
        v26 = v30;
        v6 = v29;
      }

      v36 = [v10 objectForKey:@"fpSessionID"];
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v37 setObject:v36 forKey:*MEMORY[0x277CE5CF0]];
      if ([v26 length])
      {
        [v37 setObject:v26 forKey:*MEMORY[0x277CE5CE8]];
      }

      else
      {
        v38 = *(v7 + 2968);
        if (v38 <= 30 && (v38 != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }
      }

      [v5 setObject:v37 forKey:*MEMORY[0x277CE61B0]];
    }

    v39 = MEMORY[0x277CBEB38];
    v40 = [v10 objectForKey:*MEMORY[0x277CC0EE0]];
    v41 = [v39 dictionaryWithDictionary:v40];

    if (v41)
    {
      [v5 setObject:v41 forKey:*MEMORY[0x277CE61E0]];
    }

    else
    {
      v42 = *(v7 + 2968);
      if (v42 <= 30 && (v42 != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
      }
    }

    v65 = v5;
    v43 = [[APRKPlayerItem alloc] initWithDictionary:v10 resourceLoaderHelper:self->_resourceLoaderHelper contentKeyHelper:self->_contentKeyHelper options:v5];
    v44 = [v10 objectForKey:*MEMORY[0x277CC0FF0]];
    if (APSSettingsIsFeatureEnabled() && v44)
    {
      [v44 BOOLValue];
    }

    v45 = *(v7 + 2968);
    if (!v43)
    {
      if (v45 <= 30 && (v45 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      goto LABEL_77;
    }

    if (v45 <= 30 && (v45 != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _insertPlayQueueItemWithDictionary:v43];
    }

    *&v72.value = v66;
    v72.epoch = v6;
    v46 = [v10 objectForKey:@"Start-Date"];
    if (v46)
    {
      [(APRKPlayerItem *)v43 setStartDate:v46];
    }

    v63 = v41;
    v47 = [v10 objectForKey:@"Start-Position"];
    v48 = v47;
    if (v47)
    {
      CMTimeMakeFromDictionary(&v72, v47);
      v70 = v72;
      [(APRKPlayerItem *)v43 setStartPosition:&v70];
    }

    v61 = v48;
    v62 = v46;
    v49 = [dictionaryCopy objectForKey:@"itemAfter"];
    v50 = v49;
    if (v49)
    {
      v51 = [v49 objectForKey:@"uuid"];
      v60 = [(APRKMediaPlayer *)self _playerItemForUUID:v51];
      if (v51)
      {
LABEL_60:
        v67 = v26;
        v53 = [v10 objectForKey:@"timeToPauseBuffering"];
        memset(&v70, 0, sizeof(v70));
        CMTimeMakeFromDictionary(&v70, v53);
        if ((v70.flags & 0x1D) == 1)
        {
          v69 = v70;
          [(APRKPlayerItem *)v43 setTimeToPauseBuffering:&v69];
        }

        v54 = [v10 objectForKey:@"timeToPausePlayback"];
        memset(&v69, 0, sizeof(v69));
        CMTimeMakeFromDictionary(&v69, v54);
        v64 = dictionaryCopy;
        if ((v69.flags & 0x1D) == 1)
        {
          v68 = v69;
          [(APRKPlayerItem *)v43 setTimeToPausePlayback:&v68];
          *&self->_cachedTimeToPausePlayback.value = *&v69.value;
          epoch = v69.epoch;
        }

        else
        {
          v56 = MEMORY[0x277CC0898];
          *&self->_cachedTimeToPausePlayback.value = *MEMORY[0x277CC0898];
          epoch = *(v56 + 16);
        }

        self->_cachedTimeToPausePlayback.epoch = epoch;
        v57 = [v10 objectForKey:@"snapTimeToPausePlayback"];
        v58 = v57;
        if (v57)
        {
          -[APRKPlayerItem setSnapTimeToPausePlayback:](v43, "setSnapTimeToPausePlayback:", [v57 BOOLValue]);
        }

        [(APRKPlayerItem *)v43 setAutomaticallyHandlesInterstitialEvents:0];
        v59 = [v10 objectForKey:*MEMORY[0x277CC10B8]];
        if (v59 && gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }

        if (self->_isInterestedInDateRange)
        {
          [(APRKMediaPlayer *)self addDateRangeCollectorToItem:v43];
        }

        [(APRKMediaPlayer *)self _registerNotificationHandlersAndInsertPlayerItem:v43 afterItem:v60];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }

        v41 = v63;
        dictionaryCopy = v64;
        v26 = v67;
LABEL_77:

        v5 = v65;
        goto LABEL_78;
      }
    }

    else
    {
      v60 = 0;
    }

    v52 = *(v7 + 2968);
    if (v52 <= 30 && (v52 != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
    }

    v51 = 0;
    goto LABEL_60;
  }

LABEL_78:
}

- (void)_removePlayQueueItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _removePlayQueueItemWithDictionary:];
  }

  v5 = [dictionaryCopy objectForKey:@"item"];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"item"];
    v7 = [v6 objectForKey:@"uuid"];
    v8 = [(APRKMediaPlayer *)self _playerItemForUUID:v7];
    if (v8)
    {
      v9 = v8;
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _removePlayQueueItemWithDictionary:v9];
      }

      items = [(AVQueuePlayer *)self->_player items];
      v11 = [items count];

      if (v11 == 1)
      {
        [(APRKResourceLoaderHelper *)self->_resourceLoaderHelper forgetAllActiveResourceLoadingRequests];
        [(APRKContentKeyHelper *)self->_contentKeyHelper forgetAllActiveContentKeyRequests];
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__APRKMediaPlayer__removePlayQueueItemWithDictionary___block_invoke;
      v13[3] = &unk_278C62788;
      v12 = v9;
      v14 = v12;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _removePlayQueueItemWithDictionary:];
      }

      v12 = 0;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v7 = 0;
  }
}

void __54__APRKMediaPlayer__removePlayQueueItemWithDictionary___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(*(a1 + 40) + 112);
    v3 = v4;
    [v2 unregisterAVURLAsset:v3];
    [*(*(a1 + 40) + 120) unregisterAVURLAsset:v3];
  }

  [*(a1 + 40) _unregisterNotificationHandlersAndRemovePlayerItem:*(a1 + 32)];
}

- (void)_setRateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23 = **&MEMORY[0x277CC0898];
  v22 = v23;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _setRateWithDictionary:];
  }

  v5 = [dictionaryCopy objectForKey:@"rate"];
  [v5 floatValue];
  v7 = v6;

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  cachedSetRateAndAnchor = self->_cachedSetRateAndAnchor;
  self->_cachedSetRateAndAnchor = 0;

  if (CFDictionaryGetValue(dictionaryCopy, @"networkClockTime"))
  {
    hostTime = 0;
    v19 = *MEMORY[0x277CEA280];
    v20 = *(MEMORY[0x277CEA280] + 16);
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setRateWithDictionary:];
    }

    APSNetworkTimeMakeFromDictionary();
    receiverNetworkClock = self->_receiverNetworkClock;
    if (receiverNetworkClock)
    {
      v17 = v19;
      v18 = v20;
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v11 && (v24 = v17, v25 = v18, !v11(receiverNetworkClock, &v24, &hostTime)))
      {
        CMClockMakeHostTimeFromSystemUnits(&v23, hostTime);
      }

      else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _setRateWithDictionary:];
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setRateWithDictionary:];
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__APRKMediaPlayer__setRateWithDictionary___block_invoke;
  v12[3] = &unk_278C627B0;
  v12[4] = self;
  v13 = v7;
  v16 = CMTimeIfPresent != 0;
  v14 = v22;
  v15 = v23;
  dispatch_sync(MEMORY[0x277D85CD0], v12);
}

void __42__APRKMediaPlayer__setRateWithDictionary___block_invoke(uint64_t a1, double a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if ((*(v3 + 177) & 1) == 0)
  {
    *(v3 + 177) = 1;
    v3 = *v4;
  }

  *(v3 + 180) = 0;
  v5 = (a1 + 40);
  if (*(a1 + 40) != 0.0)
  {
    [*(*v4 + 8) setDefaultRate:?];
  }

  if (*(a1 + 92) == 1)
  {
    v6 = [*(*(a1 + 32) + 8) currentItem];
    v7 = v6;
    if ((*(a1 + 56) & 1) != 0 && v6)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        time = *(a1 + 44);
        CMTimeGetSeconds(&time);
        time = *(a1 + 68);
        CMTimeGetSeconds(&time);
        LogPrintF();
      }

      v9 = objc_alloc_init(MEMORY[0x277CE65F0]);
      [v9 setPreferCoordinatedPlaybackBehavior:1];
      if ([*(*v4 + 8) status] == 1)
      {
        v11 = *(*(a1 + 32) + 8);
        LODWORD(v10) = *(a1 + 40);
        time = *(a1 + 44);
        v18 = *(a1 + 68);
        v19 = *(a1 + 84);
        [v11 setRate:&time time:&v18 atHostTime:v9 options:v10];
      }

      else
      {
        v21[0] = @"rate";
        LODWORD(v10) = *(a1 + 40);
        v12 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v22[0] = v12;
        v21[1] = @"time";
        time = *(a1 + 44);
        v13 = [MEMORY[0x277CCAE60] valueWithCMTime:&time];
        v22[1] = v13;
        v21[2] = @"hostTime";
        time = *(a1 + 68);
        v14 = [MEMORY[0x277CCAE60] valueWithCMTime:&time];
        v21[3] = @"options";
        v22[2] = v14;
        v22[3] = v9;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
        v16 = *(a1 + 32);
        v17 = *(v16 + 72);
        *(v16 + 72) = v15;
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      time = *(a1 + 44);
      CMTimeGetSeconds(&time);
      time = *(a1 + 68);
      CMTimeGetSeconds(&time);
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __42__APRKMediaPlayer__setRateWithDictionary___block_invoke_cold_1();
    }

    v8 = *(*v4 + 8);
    LODWORD(a2) = *v5;

    [v8 setRate:a2];
  }
}

- (void)_addPendingSeekID:(int)d withMessage:(id)message forItem:(id)item ignoreSeekCompletion:(BOOL)completion
{
  completionCopy = completion;
  v8 = *&d;
  messageCopy = message;
  itemCopy = item;
  uUIDString = [itemCopy UUIDString];
  v12 = [uUIDString length];

  if (v12)
  {
    uUIDString4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v8];
    pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
    uUIDString2 = [itemCopy UUIDString];
    dictionary = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:uUIDString2];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v18 = [MEMORY[0x277CCABB0] numberWithBool:completionCopy];
    [dictionary2 setObject:v18 forKeyedSubscript:@"ignoreSeekCompletion"];

    if (messageCopy)
    {
      [dictionary2 setObject:messageCopy forKeyedSubscript:@"message"];
    }

    [dictionary setObject:dictionary2 forKeyedSubscript:uUIDString4];
    v19 = self->_pendingSenderSeekMessages;
    uUIDString3 = [itemCopy UUIDString];
    [(NSMutableDictionary *)v19 setObject:dictionary forKeyedSubscript:uUIDString3];

    goto LABEL_7;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uUIDString4 = [itemCopy UUIDString];
    LogPrintF();
LABEL_7:
  }
}

- (void)_removePendingSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  itemCopy = item;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];
  v9 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:uUIDString];

  [v9 removeObjectForKey:v6];
  allKeys = [v9 allKeys];
  v11 = [allKeys count];

  if (!v11)
  {
    v12 = self->_pendingSenderSeekMessages;
    uUIDString2 = [itemCopy UUIDString];
    [(NSMutableDictionary *)v12 removeObjectForKey:uUIDString2];
  }
}

- (BOOL)_shouldIgnoreSeekCompletionForSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  v6 = MEMORY[0x277CCACA8];
  itemCopy = item;
  v8 = [v6 stringWithFormat:@"%d", v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];

  v11 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:uUIDString];
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [v12 objectForKeyedSubscript:@"ignoreSeekCompletion"];
  bOOLValue = [v13 BOOLValue];

  return bOOLValue;
}

- (id)_seekRequestMessageForSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  v6 = MEMORY[0x277CCACA8];
  itemCopy = item;
  v8 = [v6 stringWithFormat:@"%d", v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];

  v11 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:uUIDString];
  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = [v12 objectForKeyedSubscript:@"message"];

  return v13;
}

- (void)_seekWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    v20 = dictionaryCopy;
    LogPrintF();
  }

  v5 = [dictionaryCopy objectForKey:{@"item", v20}];
  v6 = [APRKPlayerItem UUIDFromItemDictionary:v5];
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke;
    block[3] = &unk_278C627D8;
    v43 = &v44;
    block[4] = self;
    v42 = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (v45[5])
  {
    v8 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1128]];
    _frontPlayerItem = [(APRKMediaPlayer *)self _frontPlayerItem];
    v10 = _frontPlayerItem;
    if (v8)
    {
      if (self->_disableAutoResumeAfterSeek && _frontPlayerItem == v45[5])
      {
        self->_isWaitingToSetRateFromSenderAfterSeek = 1;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_2;
        v38[3] = &unk_278C62800;
        v38[4] = self;
        v40 = &v44;
        v39 = v8;
        dispatch_async(MEMORY[0x277D85CD0], v38);
        v11 = v39;
      }

      else
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_3;
        v35[3] = &unk_278C62828;
        v37 = &v44;
        v36 = v8;
        dispatch_async(MEMORY[0x277D85CD0], v35);
        v11 = v36;
      }
    }

    v12 = [dictionaryCopy objectForKey:@"time"];

    if (v12)
    {
      memset(&v34, 0, sizeof(v34));
      CMTimeMakeFromDictionary(&v34, v12);
      if ((v34.flags & 0x11) == 1)
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          time = v34;
          Seconds = CMTimeGetSeconds(&time);
          uUIDString = [v45[5] UUIDString];
          v21 = Seconds;
          LogPrintF();
        }

        v14 = v45[5];
        time = v34;
        [v14 setStartPosition:{&time, *&v21, uUIDString}];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_4;
        aBlock[3] = &unk_278C62850;
        v29 = dictionaryCopy;
        selfCopy = self;
        v32 = v34;
        v31 = &v44;
        v15 = _Block_copy(aBlock);
        v16 = v15;
        if (self->_disableAutoResumeAfterSeek && v10 == v45[5])
        {
          self->_isWaitingToSetRateFromSenderAfterSeek = 1;
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5;
          v26[3] = &unk_278C62710;
          v26[4] = self;
          v27 = v15;
          v19 = v15;
          dispatch_async(MEMORY[0x277D85CD0], v26);
          v18 = v27;
        }

        else
        {
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_6;
          v24[3] = &unk_278C62878;
          v25 = v15;
          v17 = v15;
          dispatch_async(MEMORY[0x277D85CD0], v24);
          v18 = v25;
        }
      }

      else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        uUIDString2 = [v45[5] UUIDString];
        LogPrintF();
      }
    }
  }

  _Block_object_dispose(&v44, 8);
}

uint64_t __39__APRKMediaPlayer__seekWithDictionary___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _playerItemForUUID:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

uint64_t __39__APRKMediaPlayer__seekWithDictionary___block_invoke_2(void *a1)
{
  [*(a1[4] + 8) rate];
  if (v2 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __39__APRKMediaPlayer__seekWithDictionary___block_invoke_2_cold_1();
    }

    [*(a1[4] + 8) setRate:0.0];
  }

  v3 = a1[5];
  v4 = *(*(a1[6] + 8) + 40);

  return [v4 seekToDate:v3 completionHandler:0];
}

void __39__APRKMediaPlayer__seekWithDictionary___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277CD6370]];
  v3 = [*(*(*(a1 + 48) + 8) + 40) makeSeekID];
  if (v2)
  {
    v4 = [v2 intValue];
    if (v4)
    {
      v5 = *(a1 + 40);
      if (v4 == *(v5 + 248))
      {
        v6 = *(v5 + 256);
        v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
        v8 = [MEMORY[0x277CCABB0] numberWithInt:v3];
        [v6 setObject:v7 forKey:v8];
      }
    }
  }

  [*(a1 + 40) _addPendingSeekID:v3 withMessage:*(a1 + 32) forItem:*(*(*(a1 + 48) + 8) + 40) ignoreSeekCompletion:0];
  v9 = *(*(*(a1 + 48) + 8) + 40);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v12 = *MEMORY[0x277CC08F0];
  v13 = *(MEMORY[0x277CC08F0] + 16);
  v10 = v12;
  v11 = v13;
  [v9 seekToTime:&v14 toleranceBefore:&v12 toleranceAfter:&v10 seekID:v3];
}

uint64_t __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 8) rate];
  if (v2 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5_cold_1();
    }

    [*(*(a1 + 32) + 8) setRate:0.0];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups
{
  v32 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  groupsCopy = groups;
  _frontPlayerItem = [(APRKMediaPlayer *)self _frontPlayerItem];
  mediaDataCollectors = [_frontPlayerItem mediaDataCollectors];
  v12 = [mediaDataCollectors containsObject:collectorCopy];

  if (v12)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = groupsCopy;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          propertyList = [*(*(&v25 + 1) + 8 * v18) propertyList];
          [(NSArray *)array addObject:propertyList];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v16);
    }

    lastReportedDateRanges = self->_lastReportedDateRanges;
    self->_lastReportedDateRanges = array;
    v21 = array;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v22 setObject:@"notification" forKey:@"type"];
    [v22 setObject:*MEMORY[0x277CC0E88] forKey:@"name"];
    [v22 setObject:v21 forKey:*MEMORY[0x277CC0F28]];
    v29 = @"uuid";
    uUIDString = [_frontPlayerItem UUIDString];
    v30 = uUIDString;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

    [v22 setObject:v24 forKey:@"item"];
    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:v22];
  }
}

- (void)addDateRangeCollectorToItem:(id)item
{
  itemCopy = item;
  mediaDataCollectors = [itemCopy mediaDataCollectors];
  v5 = [mediaDataCollectors count];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE65B8]) initWithIdentifiers:0 classifyingLabels:0];
    [v6 setDelegate:self queue:MEMORY[0x277D85CD0]];
    [itemCopy addMediaDataCollector:v6];
  }
}

- (void)_setPropertyWithDictionary:(id)dictionary
{
  v84 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_15;
  }

  v6 = [dictionaryCopy objectForKey:@"property"];
  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

LABEL_15:
    v10 = 0;
    v11 = 0;
    v7 = 0;
    v12 = 0;
    goto LABEL_86;
  }

  v7 = v6;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _setPropertyWithDictionary:];
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1168]])
  {
    v8 = [v5 objectForKey:@"value"];
    bOOLValue = [v8 BOOLValue];

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__APRKMediaPlayer__setPropertyWithDictionary___block_invoke;
    block[3] = &unk_278C628A0;
    objc_copyWeak(&v81, &location);
    v82 = bOOLValue;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v81);
    objc_destroyWeak(&location);
    goto LABEL_59;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1150]])
  {
    v13 = [v5 objectForKey:@"value"];
    self->_isInterestedInDateRange = [v13 BOOLValue];

    if (!self->_isInterestedInDateRange)
    {
      goto LABEL_59;
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    items = [(AVQueuePlayer *)self->_player items];
    v15 = [items countByEnumeratingWithState:&v76 objects:v83 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v77;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v77 != v17)
          {
            objc_enumerationMutation(items);
          }

          [(APRKMediaPlayer *)self addDateRangeCollectorToItem:*(*(&v76 + 1) + 8 * i)];
        }

        v16 = [items countByEnumeratingWithState:&v76 objects:v83 count:16];
      }

      while (v16);
    }

    goto LABEL_58;
  }

  if (![v7 isEqualToString:@"metadata"])
  {
    v21 = *MEMORY[0x277CC0F20];
    if (![v7 isEqualToString:*MEMORY[0x277CC0F20]])
    {
      goto LABEL_59;
    }

    items = [v5 objectForKey:@"value"];
    v22 = [items objectForKey:v21];
    intValue = [v22 intValue];

    v24 = [items objectForKey:*MEMORY[0x277CC0F18]];
    if (self->_isInterstitialPlayer)
    {
      WeakRetained = objc_loadWeakRetained(&self->_interstitialEventControllerForInterstitialPlayer);
    }

    else
    {
      WeakRetained = self->_interstitialEventControllerForPrimaryPlayer;
    }

    v26 = WeakRetained;
    if (WeakRetained)
    {
      currentEvent = [(AVPlayerInterstitialEventController *)WeakRetained currentEvent];
      identifier = [currentEvent identifier];

      v29 = [items objectForKey:*MEMORY[0x277CC0F58]];
      v30 = v29;
      if (v29 == identifier || [v29 isEqualToString:identifier])
      {
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          if (self->_isInterstitialPlayer)
          {
            v31 = "interstitial";
          }

          else
          {
            v31 = "primary";
          }

          v71 = v31;
          LogPrintF();
          [(AVPlayerInterstitialEventController *)v26 setCurrentRemoteEventSkippableState:intValue withLabel:v24, v71, intValue, v24];
        }

        else
        {
          [(AVPlayerInterstitialEventController *)v26 setCurrentRemoteEventSkippableState:intValue withLabel:v24, v70, v72, v73];
        }
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        v70 = v30;
        v72 = identifier;
        LogPrintF();
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_57;
  }

  items = [v5 objectForKey:@"value"];
  if (items)
  {
    currentItemMetadata = [(APRKMediaPlayer *)self currentItemMetadata];

    if (currentItemMetadata)
    {
      [(APRKMediaPlayer *)self willChangeValueForKey:@"currentItemMetadata"];
      currentItemMetadata2 = [(APRKMediaPlayer *)self currentItemMetadata];
      [currentItemMetadata2 updateMedatataWithDictionary:items];

      [(APRKMediaPlayer *)self didChangeValueForKey:@"currentItemMetadata"];
      goto LABEL_58;
    }

    v24 = [[APRKMetadata alloc] initWithDictionary:items];
    [(APRKMediaPlayer *)self setCurrentItemMetadata:v24];
LABEL_57:
  }

LABEL_58:

LABEL_59:
  v11 = [(APRKMediaPlayer *)self _frontPlayerItem:v70];
  v12 = [v5 objectForKey:@"item"];
  if (v12)
  {
    v10 = [APRKPlayerItem UUIDFromItemDictionary:v12];
    v32 = [(APRKMediaPlayer *)self _playerItemForUUID:v10];

    v11 = v32;
  }

  else
  {
    v10 = 0;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1110]])
  {
    v33 = [v5 objectForKey:@"value"];
    integerValue = [v33 integerValue];

    [(AVQueuePlayer *)self->_player setActionAtItemEnd:integerValue];
    goto LABEL_86;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1138]])
  {
    v35 = [v5 valueForKey:@"trackID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v37 = [v5 objectForKey:@"trackID"];
      intValue2 = [v37 intValue];

      v39 = [v5 objectForKey:@"value"];
      bOOLValue2 = [v39 BOOLValue];

      [v11 setEnabledState:bOOLValue2 forTrackWithID:intValue2];
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_86;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1140]])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_86;
    }

    v41 = [v5 objectForKey:@"value"];
    memset(&location, 0, sizeof(location));
    CMTimeMakeFromDictionary(&location, v41);
    v74 = location;
    [v11 setForwardPlaybackEndTime:&v74];
LABEL_85:

    goto LABEL_86;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1180]])
  {
    v41 = [v5 objectForKey:@"value"];
    memset(&location, 0, sizeof(location));
    CMTimeMakeFromDictionary(&location, v41);
    if (location.flags)
    {
      v74 = location;
      [v11 setReversePlaybackEndTime:&v74];
    }

    goto LABEL_85;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1188]])
  {
    v42 = [v5 objectForKey:@"value"];
    p_cachedSelectedMediaArray = &self->_cachedSelectedMediaArray;
    cachedSelectedMediaArray = self->_cachedSelectedMediaArray;
    self->_cachedSelectedMediaArray = v42;

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    if ([(APRKMediaPlayer *)self _attemptToSetSelectedMediaArray:self->_cachedSelectedMediaArray])
    {
      v45 = *p_cachedSelectedMediaArray;
      *p_cachedSelectedMediaArray = 0;
    }

    goto LABEL_86;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1190]])
  {
    v41 = [v5 objectForKey:@"value"];
    [v11 setTextStyleRulesUsingArray:v41];
    goto LABEL_85;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1120]])
  {
    v46 = [v5 objectForKey:@"value"];
    [(APRKMediaPlayer *)self setCurrentInterstitialEventID:v46];
    if (self->_currentInterstitialEventID)
    {
      [(AVQueuePlayer *)self->_player _noteCurrentRemoteInterstitialEvent:?];
    }

    goto LABEL_90;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CC1148]])
  {
    v47 = [v5 objectForKey:@"value"];
    interstitialEvents = self->_interstitialEvents;
    self->_interstitialEvents = v47;

    v49 = self->_interstitialEvents;
    if (v49)
    {
      [(AVQueuePlayer *)self->_player _noteRemoteInterstitialEvents:v49 forItem:v11];
    }
  }

  else
  {
    if ([v7 isEqualToString:*MEMORY[0x277CC0FF8]])
    {
      v41 = [v5 objectForKey:@"value"];
      memset(&location, 0, sizeof(location));
      CMTimeMakeFromDictionary(&location, v41);
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKMediaPlayer *)&location.value _setPropertyWithDictionary:v50, v51, v52, v53, v54, v55, v56];
      }

      v74 = location;
      [v11 setTimeToPauseBuffering:&v74];
      goto LABEL_85;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CC1000]])
    {
      v46 = [v5 objectForKey:@"value"];
      memset(&location, 0, sizeof(location));
      CMTimeMakeFromDictionary(&location, v46);
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKMediaPlayer *)&location.value _setPropertyWithDictionary:v57, v58, v59, v60, v61, v62, v63];
      }

      v74 = location;
      [v11 setTimeToPausePlayback:&v74];
      self->_cachedTimeToPausePlayback = location;
      goto LABEL_90;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CC0FD8]])
    {
      v64 = [v5 objectForKey:@"value"];
      bOOLValue3 = [v64 BOOLValue];

      [v11 setSnapTimeToPausePlayback:bOOLValue3];
      goto LABEL_86;
    }

    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"audioMode"];
    v67 = [v7 isEqualToString:v66];

    if (v67)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _setPropertyWithDictionary:];
      }
    }

    else
    {
      if ([v7 isEqualToString:*MEMORY[0x277CC1130]])
      {
        v46 = [v5 objectForKey:@"value"];
        self->_disableAutoResumeAfterSeek = [(__CFDictionary *)v46 BOOLValue];
LABEL_90:

        goto LABEL_86;
      }

      if ([v7 isEqualToString:*MEMORY[0x277CC0F98]])
      {
        v68 = [v5 objectForKey:@"value"];
        integerValue2 = [v68 integerValue];

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _setPropertyWithDictionary:];
        }

        [v11 setRestrictions:integerValue2];
      }

      else if (([v7 isEqualToString:*MEMORY[0x277CC1160]] & 1) == 0)
      {
        [v7 isEqualToString:@"metadata"];
      }
    }
  }

LABEL_86:
}

void __46__APRKMediaPlayer__setPropertyWithDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[1] setMuted:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (id)_timedMetadataFromAVTimedMetadata:(id)metadata
{
  v28 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = metadataCopy;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v24;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v9 = [v7 key];
        keySpace = [v7 keySpace];
        locale = [v7 locale];
        if (v7)
        {
          [v7 time];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v12 = CMTimeCopyAsDictionary(&time, allocator);
        value = [v7 value];
        extraAttributes = [v7 extraAttributes];
        if (v9)
        {
          [dictionary setObject:v9 forKeyedSubscript:@"key"];
        }

        if (keySpace)
        {
          [dictionary setObject:keySpace forKeyedSubscript:@"keyspace"];
        }

        localeIdentifier = [locale localeIdentifier];

        if (localeIdentifier)
        {
          localeIdentifier2 = [locale localeIdentifier];
          [dictionary setObject:localeIdentifier2 forKeyedSubscript:@"locale"];
        }

        if (v12)
        {
          [dictionary setObject:v12 forKeyedSubscript:@"timestamp"];
          CFRelease(v12);
        }

        if (value)
        {
          [dictionary setObject:value forKeyedSubscript:@"value"];
        }

        if (extraAttributes)
        {
          [dictionary addEntriesFromDictionary:extraAttributes];
        }

        [array addObject:dictionary];
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)_getPropertyWithDictionary:(id)dictionary
{
  v42[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"property"];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:];
    }

    v12 = 0;
    localeIdentifier = 0;
    v15 = 0;
    v33 = 0;
    goto LABEL_37;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _getPropertyWithDictionary:];
  }

  v6 = [(APRKMediaPlayer *)self _playerItemForUUID:self->_currentItemUUID];
  if ([v5 isEqualToString:@"playbackErrorLog"])
  {
    playbackErrorLog = [v6 playbackErrorLog];
LABEL_13:
    v8 = playbackErrorLog;
    v9 = MEMORY[0x277CBEBF8];
    if (playbackErrorLog)
    {
      v9 = playbackErrorLog;
    }

    localeIdentifier = v9;

    v11 = 0;
    v33 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_16;
  }

  if ([v5 isEqualToString:@"playbackAccessLog"])
  {
    playbackErrorLog = [v6 playbackAccessLog];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:@"systemLanguageCode"])
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];

    v12 = 0;
    v33 = 0;
    goto LABEL_22;
  }

  v33 = [dictionaryCopy objectForKey:@"item"];
  if (v33)
  {
    v18 = [APRKPlayerItem UUIDFromItemDictionary:?];
    v19 = [(APRKMediaPlayer *)self _playerItemForUUID:v18];

    v6 = v19;
  }

  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:];
    }

    v15 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:dictionaryCopy];
    v12 = 0;
    localeIdentifier = 0;
LABEL_37:
    v6 = 0;
    goto LABEL_38;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CC1138]])
  {
    v20 = [dictionaryCopy valueForKey:@"trackID"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [dictionaryCopy objectForKey:@"trackID"];
      intValue = [v22 intValue];

      v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "enabledStateForTrackWithID:", intValue)}];
LABEL_57:
      v12 = 0;
      localeIdentifier = v24;
      goto LABEL_22;
    }

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:];
    }

    v11 = 0;
    v12 = 0;
    localeIdentifier = &unk_28513FF30;
    goto LABEL_60;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CC1178]])
  {
    playbackErrorLog2 = [v6 playbackErrorLog];
LABEL_46:
    localeIdentifier = playbackErrorLog2;
    v12 = 0;
    goto LABEL_22;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CC1170]])
  {
    playbackErrorLog2 = [v6 playbackAccessLog];
    goto LABEL_46;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CC1070]])
  {
    loadedTimeRanges = [v6 loadedTimeRanges];
    v29 = [(APRKMediaPlayer *)self _serializeTimeRanges:loadedTimeRanges];
LABEL_56:
    v24 = v29;

    goto LABEL_57;
  }

  if ([v5 isEqualToString:*MEMORY[0x277CC10A8]])
  {
    loadedTimeRanges = [v6 seekableTimeRanges];
    v29 = [(APRKMediaPlayer *)self _serializeTimeRanges:loadedTimeRanges];
    goto LABEL_56;
  }

  if (![v5 isEqualToString:*MEMORY[0x277CC1188]])
  {
    if (![v5 isEqualToString:*MEMORY[0x277CC0F28]])
    {
      if ([v5 isEqualToString:@"timedMetadataArray"])
      {
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy_;
        v39 = __Block_byref_object_dispose_;
        v40 = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__APRKMediaPlayer__getPropertyWithDictionary___block_invoke;
        block[3] = &unk_278C62828;
        block[4] = self;
        block[5] = &v35;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        v24 = [(APRKMediaPlayer *)self _timedMetadataFromAVTimedMetadata:v36[5]];
        _Block_object_dispose(&v35, 8);

        goto LABEL_57;
      }

      v12 = 0;
      goto LABEL_73;
    }

    lastReportedDateRanges = self->_lastReportedDateRanges;
    if (!lastReportedDateRanges)
    {
      lastReportedDateRanges = MEMORY[0x277CBEBF8];
    }

LABEL_68:
    localeIdentifier = lastReportedDateRanges;
    v11 = 0;
    v12 = 0;
    v13 = 1;
LABEL_16:
    v14 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:dictionaryCopy];
    v15 = v14;
    if (v13)
    {
      [v14 setObject:localeIdentifier forKey:@"value"];
    }

    else if (v11)
    {
      v16 = [APRKUtilities dictionaryForError:v12];
      [v15 setObject:v16 forKey:@"error"];
    }

    goto LABEL_24;
  }

  lastReportedDateRanges = self->_cachedSelectedMediaArray;
  if (lastReportedDateRanges)
  {
    goto LABEL_68;
  }

  localeIdentifier = [(APRKMediaPlayer *)self selectedMediaArrayForItem:v6];
  if (localeIdentifier)
  {
    v11 = 0;
    v12 = 0;
LABEL_60:
    v13 = 1;
    goto LABEL_16;
  }

  v31 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42[0] = @"Sender requested selectedMediaArray while mediaSelection is still loading at the receiver.";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v12 = [v31 errorWithDomain:*MEMORY[0x277CCA590] code:-6707 userInfo:v32];

LABEL_73:
  localeIdentifier = 0;
LABEL_22:
  v13 = localeIdentifier != 0;
  v11 = v12 != 0;
  if (localeIdentifier | v12)
  {
    goto LABEL_16;
  }

  localeIdentifier = 0;
  v12 = 0;
  v15 = 0;
LABEL_24:
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_38:
  v25 = v15;

  return v15;
}

void __46__APRKMediaPlayer__getPropertyWithDictionary___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) currentItem];
  v2 = [v5 timedMetadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_processStreamingKeyWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processStreamingKeyWithDictionary:];
  }

  contentKeyHelper = self->_contentKeyHelper;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__APRKMediaPlayer__processStreamingKeyWithDictionary___block_invoke;
  v7[3] = &unk_278C628C8;
  v8 = dictionaryCopy;
  selfCopy = self;
  v6 = dictionaryCopy;
  [(APRKContentKeyHelper *)contentKeyHelper processStreamingKeyRequestWithDictionary:v6 withCompletionBlock:v7];
}

void __54__APRKMediaPlayer__processStreamingKeyWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:*(a1 + 32)];
  if (v5)
  {
    v7 = [APRKUtilities dictionaryForError:v5];
    v8 = @"error";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [v9 base64EncodedStringWithOptions:0];
    v8 = @"key";
  }

  [v6 setObject:v7 forKey:v8];

LABEL_6:
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:v6];
}

- (void)_processUnhandledURLWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processUnhandledURLWithDictionary:];
  }

  v5 = [dictionaryCopy objectForKey:@"response"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277CC0960]];
    if ([(APRKContentKeyHelper *)self->_contentKeyHelper isHandlingContentKeyRequestWithURLString:v7])
    {
      contentKeyHelper = self->_contentKeyHelper;
      v13 = 0;
      v9 = &v13;
      v10 = &v13;
    }

    else
    {
      contentKeyHelper = self->_resourceLoaderHelper;
      v12 = 0;
      v9 = &v12;
      v10 = &v12;
    }

    [contentKeyHelper processUnhandledURLResponseWithDictionary:v6 error:{v10, v12, v13}];
    v11 = *v9;
    if (v11 && gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processUnhandledURLWithDictionary:];
    }
  }

  else
  {
    v11 = 0;
    v7 = 0;
  }
}

- (void)_stopWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _stopWithDictionary:];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__APRKMediaPlayer__stopWithDictionary___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __39__APRKMediaPlayer__stopWithDictionary___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setRate:0.0];
  v2 = *(*(a1 + 32) + 8);
  LODWORD(v3) = 1.0;

  return [v2 setDefaultRate:v3];
}

- (id)_processPlaybackInfoRequestWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)self _currentPlaybackInfoDictionary];
  if (_currentPlaybackInfoDictionary)
  {
    v6 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:dictionaryCopy];
    [v6 setObject:_currentPlaybackInfoDictionary forKey:@"info"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_processAuthorizeItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processAuthorizeItemWithDictionary:];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([(APRKMediaPlayer *)self _ensureFairPlayHelper])
  {
    v5 = [dictionaryCopy objectForKey:@"item"];
    v6 = [APRKPlayerItem UUIDFromItemDictionary:v5];

    if (APReceiverFairPlayHelperCopyAuthorizeItemResponseIntoDictionary())
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _processAuthorizeItemWithDictionary:];
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processAuthorizeItemWithDictionary:];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processAuthorizeItemWithDictionary:];
  }

  v7 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:dictionaryCopy];
  v8 = [dictionaryCopy objectForKey:@"item"];
  [v7 setObject:v8 forKey:@"item"];

  [v7 addEntriesFromDictionary:Mutable];

  return v7;
}

- (void)_processPlaybackCoordinationMediumWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"name"];
  if (!v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }

    goto LABEL_14;
  }

  v5 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0E20]];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  if (self->_playbackCoordinator)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v7 = v4;
      v8 = v6;
      LogPrintF();
    }

    if ([v4 isEqualToString:{*MEMORY[0x277CC0E28], v7, v8}])
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator handleNewParticipantStateDictionary:v6];
    }

    else if ([v4 isEqualToString:*MEMORY[0x277CC0E30]])
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator handleNewTransportControlStateDictionary:v6];
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
  }

LABEL_15:
}

- (void)_sendUpstreamMessageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    if (self->_isInterstitialPlayer)
    {
      v6 = dictionaryCopy;
      objc_opt_class();
      v5 = v6;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [v6 mutableCopy];
      }

      [v5 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CC0E58]];
    }

    messageQueue = self->_messageQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke;
    v9[3] = &unk_278C62788;
    v10 = v5;
    selfCopy = self;
    v8 = v5;
    dispatch_async(messageQueue, v9);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _sendUpstreamMessageWithDictionary:];
  }
}

void __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 40) messagingDelegate];
  [v2 mediaPlayer:*(a1 + 40) wantsToSendUpstreamMessageWithDictionary:*(a1 + 32)];
}

- (void)_sendUpstreamErrorMessageWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v5 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"error"];
    v6 = [APRKUtilities dictionaryForError:v7];
    [v5 setObject:v6 forKey:@"error"];

    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:v5];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _sendUpstreamErrorMessageWithError:];
  }

  MEMORY[0x2821F9730]();
}

- (void)_sendUpstreamPlaybackStateMessageWithPlaybackStateString:(id)string stoppedBecauseInterrupted:(BOOL)interrupted
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (string)
  {
    interruptedCopy = interrupted;
    stringCopy = string;
    v7 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"playbackState"];
    [v7 setObject:stringCopy forKey:@"name"];

    internalPlaybackState = self->_internalPlaybackState;
    if (internalPlaybackState == 3)
    {
      if (interruptedCopy)
      {
        v11 = @"interrupted";
      }

      else
      {
        v11 = *MEMORY[0x277CC11A8];
      }

      [v7 setObject:v11 forKey:*MEMORY[0x277CC0E60]];
    }

    else if (internalPlaybackState == 2)
    {
      currentItemUUID = self->_currentItemUUID;
      if (currentItemUUID)
      {
        uUIDString = currentItemUUID;
      }

      else
      {
        currentItem = [(AVQueuePlayer *)self->_player currentItem];
        uUIDString = [currentItem UUIDString];

        if (!uUIDString)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [APRKMediaPlayer _sendUpstreamPlaybackStateMessageWithPlaybackStateString:stoppedBecauseInterrupted:];
          }

          goto LABEL_13;
        }
      }

      v15 = @"uuid";
      v16[0] = uUIDString;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [v7 setObject:v13 forKey:@"item"];
      _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)self _currentPlaybackInfoDictionary];
      [v7 setObject:_currentPlaybackInfoDictionary forKey:@"params"];
    }

    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:v7];
LABEL_13:
  }
}

- (BOOL)_attemptToSetSelectedMediaArray:(id)array
{
  v81 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
    }

    goto LABEL_63;
  }

  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  selfCopy = self;
  status = [currentItem status];

  if (status != 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
    }

LABEL_63:
    v49 = 0;
    goto LABEL_64;
  }

  currentItem2 = [(AVQueuePlayer *)selfCopy->_player currentItem];
  asset = [currentItem2 asset];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v53 = arrayCopy;
  obj = arrayCopy;
  v10 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = selfCopy;
    v13 = *v75;
    v61 = selfCopy;
    v54 = *v75;
    v55 = asset;
    do
    {
      v14 = 0;
      v60 = v11;
      do
      {
        if (*v75 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v74 + 1) + 8 * v14);
        v73 = 0;
        v16 = [asset mediaSelectionGroupForPropertyList:v15 mediaSelectionOption:&v73];
        v17 = v73;
        if (v16)
        {
          v18 = asset;
          customMediaSelectionScheme = [v16 customMediaSelectionScheme];
          v20 = v12;
          currentItem3 = [(AVQueuePlayer *)v12->_player currentItem];
          mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes = [currentItem3 mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes];
          v62 = v16;
          _primaryMediaCharacteristic = [v16 _primaryMediaCharacteristic];
          v24 = [mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes containsObject:_primaryMediaCharacteristic];

          v26 = v24 == 0;
          v25 = customMediaSelectionScheme;
          v26 = v26 || customMediaSelectionScheme == 0;
          if (v26)
          {
            v16 = v62;
            if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              v51 = v17;
              v52 = v62;
              LogPrintF();
            }

            v12 = v20;
            v47 = [(AVQueuePlayer *)v20->_player currentItem:v51];
            [v47 selectMediaOption:v17 inMediaSelectionGroup:v62];
            asset = v18;
            v11 = v60;
          }

          else
          {
            extendedLanguageTag = [v17 extendedLanguageTag];
            v28 = extendedLanguageTag;
            if (extendedLanguageTag)
            {
              availableLanguages = [customMediaSelectionScheme availableLanguages];
              v30 = [availableLanguages containsObject:v28];

              if (v30)
              {
                if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
                {
                  [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
                }

                currentItem4 = [(AVQueuePlayer *)v20->_player currentItem];
                [currentItem4 selectMediaPresentationLanguage:v28 forMediaSelectionGroup:v62];
              }
            }

            v57 = v28;
            v58 = customMediaSelectionScheme;
            v59 = v14;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            selectors = [customMediaSelectionScheme selectors];
            v32 = [selectors countByEnumeratingWithState:&v69 objects:v79 count:16];
            if (v32)
            {
              v33 = v32;
              v64 = *v70;
              do
              {
                v34 = 0;
                do
                {
                  if (*v70 != v64)
                  {
                    objc_enumerationMutation(selectors);
                  }

                  v35 = *(*(&v69 + 1) + 8 * v34);
                  v65 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v68 = 0u;
                  settings = [v35 settings];
                  v37 = [settings countByEnumeratingWithState:&v65 objects:v78 count:16];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = *v66;
LABEL_30:
                    v40 = 0;
                    while (1)
                    {
                      if (*v66 != v39)
                      {
                        objc_enumerationMutation(settings);
                      }

                      v41 = *(*(&v65 + 1) + 8 * v40);
                      mediaCharacteristic = [v41 mediaCharacteristic];
                      v43 = [v17 hasMediaCharacteristic:mediaCharacteristic];

                      if (v43)
                      {
                        break;
                      }

                      if (v38 == ++v40)
                      {
                        v38 = [settings countByEnumeratingWithState:&v65 objects:v78 count:16];
                        if (v38)
                        {
                          goto LABEL_30;
                        }

                        goto LABEL_36;
                      }
                    }

                    v44 = v41;

                    if (!v44)
                    {
                      goto LABEL_43;
                    }

                    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
                    {
                      [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
                    }

                    currentItem5 = [(AVQueuePlayer *)v61->_player currentItem];
                    [currentItem5 selectMediaPresentationSetting:v44 forMediaSelectionGroup:v62];
                  }

                  else
                  {
LABEL_36:
                    v44 = settings;
                  }

LABEL_43:
                  ++v34;
                }

                while (v34 != v33);
                v46 = [selectors countByEnumeratingWithState:&v69 objects:v79 count:16];
                v33 = v46;
              }

              while (v46);
            }

            v11 = v60;
            v12 = v61;
            v13 = v54;
            asset = v55;
            v25 = v58;
            v14 = v59;
            v16 = v62;
            v47 = v57;
          }
        }

        ++v14;
      }

      while (v14 != v11);
      v48 = [obj countByEnumeratingWithState:&v74 objects:v80 count:16];
      v11 = v48;
    }

    while (v48);
  }

  v49 = 1;
  arrayCopy = v53;
LABEL_64:

  return v49;
}

- (id)selectedMediaArrayForItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  v18 = itemCopy;
  asset = [itemCopy asset];
  if ([asset statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:0] == 2)
  {
    availableMediaCharacteristicsWithMediaSelectionOptions = [asset availableMediaCharacteristicsWithMediaSelectionOptions];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(availableMediaCharacteristicsWithMediaSelectionOptions);
          }

          v11 = [asset mediaSelectionGroupForMediaCharacteristic:*(*(&v19 + 1) + 8 * i)];
          if (v11)
          {
            currentMediaSelection = [v18 currentMediaSelection];
            v13 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v11];
            propertyList = [v13 propertyList];
            if (propertyList)
            {
              [array addObject:propertyList];
            }
          }
        }

        v8 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = array;
  }

  else
  {
    v16 = [MEMORY[0x277CBEA60] arrayWithObject:@"availableMediaCharacteristicsWithMediaSelectionOptions"];
    [asset loadValuesAsynchronouslyForKeys:v16 completionHandler:&__block_literal_global_0];

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer selectedMediaArrayForItem:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)_pausePlayerIfNeededForState:(int64_t)state
{
  if (state == 2 && self->_isWaitingToSetRateFromSenderAfterSeek)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke;
    block[3] = &unk_278C626E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) rate];
  if (v3 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 8);

    return [v4 setRate:0.0];
  }

  return result;
}

- (id)_figPlaybackStateStringFrom:(int64_t)from
{
  if ((from & 0xFFFFFFFFFFFFFFFDLL) == 0 && self->_isWaitingToSetRateFromSenderAfterSeek)
  {
    fromCopy = 1;
  }

  else
  {
    fromCopy = from;
  }

  if (fromCopy > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = **(&unk_278C629B0 + fromCopy);
  }

  return v5;
}

- (void)_updatePlaybackStateWithState:(int64_t)state stoppedBecauseInterrupted:(BOOL)interrupted shouldSendUpstreamMessage:(BOOL)message
{
  messageCopy = message;
  interruptedCopy = interrupted;
  [(APRKMediaPlayer *)self _pausePlayerIfNeededForState:?];
  v9 = [(APRKMediaPlayer *)self _figPlaybackStateStringFrom:state];
  v10 = v9;
  self->_internalPlaybackState = state;
  if (self->_isFirstSetRateReceived && messageCopy)
  {
    v12 = v9;
    v9 = [(APRKMediaPlayer *)self _sendUpstreamPlaybackStateMessageWithPlaybackStateString:v9 stoppedBecauseInterrupted:interruptedCopy];
    v10 = v12;
  }

  MEMORY[0x2821F96F8](v9, v10);
}

- (id)_fixedIPContentLocationFromURLString:(id)string error:(id *)error
{
  stringCopy = string;
  if (stringCopy)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    absoluteString = [v6 absoluteString];
    host = [v6 host];
    [host cStringUsingEncoding:4];
    v9 = StringToSockAddr();
    if (v9)
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:v9 userInfo:0];
        if (gLogCategory_AirPlayReceiverKit > 10)
        {
          goto LABEL_7;
        }

        if (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize())
        {
          LogPrintF();
        }
      }
    }

    else
    {
      APSNetworkAddressGetSocketAddr();
    }
  }

  else
  {
    absoluteString = 0;
    host = 0;
    v6 = 0;
  }

  if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _fixedIPContentLocationFromURLString:error:];
  }

LABEL_7:

  return absoluteString;
}

- (void)_registerNotificationHandlersForPlayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__handleCurrentItemChangedNotification_ name:*MEMORY[0x277CE6080] object:*(*(a1 + 32) + 8)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__handleCurrentItemPlaybackStalledNotification_ name:*MEMORY[0x277CE6118] object:*(*(a1 + 32) + 8)];

  v4 = *(a1 + 32);
  if (*(v4 + 208) == 1)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277CE60B8];
    WeakRetained = objc_loadWeakRetained((v6 + 272));
    [v5 addObserver:v6 selector:sel__handleCurrentEventSkippedNotification_ name:v7 object:WeakRetained];

    v4 = *(a1 + 32);
  }

  [*(v4 + 8) addObserver:v4 forKeyPath:@"timeControlStatus" options:1 context:APRKMediaPlayerObservationContextPlayerTimeControlStatus];
  [*(*(a1 + 32) + 8) addObserver:*(a1 + 32) forKeyPath:@"rate" options:3 context:APRKMediaPlayerObservationContextPlayerRate];
  v9 = *(*(a1 + 32) + 8);

  return [v9 addObserver:? forKeyPath:? options:? context:?];
}

- (void)_unregisterNotificationHandlersForPlayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:*MEMORY[0x277CE6118] object:*(*(a1 + 32) + 8)];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:*MEMORY[0x277CE6080] object:*(*(a1 + 32) + 8)];

  v4 = *(a1 + 32);
  if (*(v4 + 208) == 1)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *(a1 + 32);
    v7 = *MEMORY[0x277CE60B8];
    WeakRetained = objc_loadWeakRetained((v6 + 272));
    [v5 removeObserver:v6 name:v7 object:WeakRetained];

    v4 = *(a1 + 32);
  }

  [*(v4 + 8) removeObserver:v4 forKeyPath:@"timeControlStatus" context:APRKMediaPlayerObservationContextPlayerTimeControlStatus];
  [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"rate" context:APRKMediaPlayerObservationContextPlayerRate];
  [*(*(a1 + 32) + 8) removeObserver:*(a1 + 32) forKeyPath:@"status" context:APRKMediaPlayerObservationContextPlayerStatus];
  v9 = *(*(a1 + 32) + 8);

  return [v9 pause];
}

- (void)_registerNotificationHandlersAndInsertPlayerItem:(id)item afterItem:(id)afterItem
{
  itemCopy = item;
  afterItemCopy = afterItem;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke;
  block[3] = &unk_278C628F0;
  v11 = itemCopy;
  selfCopy = self;
  v13 = afterItemCopy;
  v8 = afterItemCopy;
  v9 = itemCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

uint64_t __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_1();
    }
  }

  if (*(*(v1 + 40) + 178) == 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF();
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return LogPrintF();
      }
    }
  }

  else
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    v3 = (v1 + 32);
    [v2 addObserver:*(v1 + 40) selector:sel__handleTimeJumpedNotification_ name:*MEMORY[0x277CE6140] object:*(v1 + 32)];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:*(v1 + 40) selector:sel__handleCurrentItemPlayedToEndNotification_ name:*MEMORY[0x277CE60C0] object:*(v1 + 32)];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:*(v1 + 40) selector:sel__handleCurrentItemFailedToPlayToEndNotification_ name:*MEMORY[0x277CE60D0] object:*(v1 + 32)];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:*(v1 + 40) selector:sel__handleCurrentPlayerItemReachedTimeToPauseBufferingNotification_ name:*MEMORY[0x277CE6120] object:*(v1 + 32)];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:*(v1 + 40) selector:sel__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification_ name:*MEMORY[0x277CE6128] object:*(v1 + 32)];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:*(v1 + 40) selector:sel__handleCurrentPlayerItemMediaSelectionDidChangeNotification_ name:*MEMORY[0x277CE6100] object:*(v1 + 32)];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:*(v1 + 40) selector:sel__handleCurrentPlayerItemNewAccessLogEntryNotification_ name:*MEMORY[0x277CE6108] object:*(v1 + 32)];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:*(v1 + 40) selector:sel__handleSeekDidCompleteNotification_ name:*MEMORY[0x277CE6138] object:*(v1 + 32)];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:*(v1 + 40) selector:sel__handleSeekDidCompleteNotification_ name:*MEMORY[0x277CE6130] object:*(v1 + 32)];

    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"timedMetadata" options:1 context:APRKMediaPlayerObservationContextTimedMetadata];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"playbackBufferEmpty" options:1 context:APRKMediaPlayerObservationContextPlaybackBufferEmpty];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"playbackBufferFull" options:1 context:APRKMediaPlayerObservationContextPlaybackBufferFull];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"playbackLikelyToKeepUp" options:1 context:APRKMediaPlayerObservationContextPlaybackBufferLikelyToKeepUp];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"status" options:1 context:APRKMediaPlayerObservationContextCurrentItemStatus];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"loadedTimeRanges" options:1 context:APRKMediaPlayerObservationContextCurrentItemLoadableTimeRanges];
    [*(v1 + 32) addObserver:*(v1 + 40) forKeyPath:@"seekableTimeRanges" options:1 context:APRKMediaPlayerObservationContextCurrentItemSeekableTimeRanges];
    v12 = [*(v1 + 32) startDate];

    if (v12)
    {
      v13 = *v3;
      v14 = [v13 startDate];
      [v13 setInitialDate:v14];
    }

    else
    {
      v23 = 0uLL;
      v24 = 0;
      if (*v3 && ([*v3 startPosition], (BYTE12(v23) & 0x11) == 1))
      {
        v15 = [*(v1 + 32) makeSeekID];
        [*(v1 + 40) _addPendingSeekID:v15 withMessage:0 forItem:*(v1 + 32) ignoreSeekCompletion:1];
        v16 = *(v1 + 32);
        v21 = v23;
        v22 = v24;
        v19 = *MEMORY[0x277CC08F0];
        v20 = *(MEMORY[0x277CC08F0] + 16);
        v17 = v19;
        v18 = v20;
        [v16 seekToTime:&v21 toleranceBefore:&v19 toleranceAfter:&v17 seekID:v15];
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_2(&v23 + 12, (v1 + 32));
      }
    }

    return [*(*(v1 + 40) + 8) insertItem:*(v1 + 32) afterItem:*(v1 + 48)];
  }

  return result;
}

- (void)_unregisterNotificationHandlersAndRemovePlayerItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke;
  v6[3] = &unk_278C62788;
  v7 = itemCopy;
  selfCopy = self;
  v5 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_1();
  }

  v2 = [*(*(a1 + 40) + 8) items];
  v3 = [v2 containsObject:*(a1 + 32)];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6140] object:*(a1 + 32)];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE60C0] object:*(a1 + 32)];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE60D0] object:*(a1 + 32)];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6120] object:*(a1 + 32)];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6128] object:*(a1 + 32)];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6100] object:*(a1 + 32)];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6108] object:*(a1 + 32)];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6138] object:*(a1 + 32)];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:*(a1 + 40) name:*MEMORY[0x277CE6130] object:*(a1 + 32)];

    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"timedMetadata" context:APRKMediaPlayerObservationContextTimedMetadata];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"playbackBufferEmpty" context:APRKMediaPlayerObservationContextPlaybackBufferEmpty];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"playbackBufferFull" context:APRKMediaPlayerObservationContextPlaybackBufferFull];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"playbackLikelyToKeepUp" context:APRKMediaPlayerObservationContextPlaybackBufferLikelyToKeepUp];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"status" context:APRKMediaPlayerObservationContextCurrentItemStatus];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"loadedTimeRanges" context:APRKMediaPlayerObservationContextCurrentItemLoadableTimeRanges];
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:@"seekableTimeRanges" context:APRKMediaPlayerObservationContextCurrentItemSeekableTimeRanges];
    v13 = *(a1 + 32);
    v14 = *(*(a1 + 40) + 8);

    [v14 removeItem:v13];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_2();
  }
}

- (void)_handleTimeJumpedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleTimeJumpedNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__APRKMediaPlayer__handleTimeJumpedNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = object;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleTimeJumpedNotification:];
  }
}

void __49__APRKMediaPlayer__handleTimeJumpedNotification___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 216))
  {
    goto LABEL_9;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 timeToPausePlayback];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  v3 = floor(CMTimeGetSeconds(&v10));
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 currentTime];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  if (v3 != floor(CMTimeGetSeconds(&v10)))
  {
LABEL_9:
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [v5 setObject:@"notification" forKey:@"type"];
    [v5 setObject:*MEMORY[0x277CC0EC0] forKey:@"name"];
    v6 = *(a1 + 40);
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    v7 = CMTimeCopyAsDictionary(&v10, *MEMORY[0x277CBECE8]);
    [v5 setObject:v7 forKey:*MEMORY[0x277CC1090]];

    v11 = @"uuid";
    v8 = [*(a1 + 40) UUIDString];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [v5 setObject:v9 forKey:@"item"];
    [*(a1 + 32) _sendUpstreamMessageWithDictionary:v5];
  }
}

- (void)_handleCurrentItemChangedNotification:(id)notification
{
  notificationCopy = notification;
  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemChangedNotification:];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APRKMediaPlayer__handleCurrentItemChangedNotification___block_invoke;
  block[3] = &unk_278C628F0;
  block[4] = self;
  v10 = currentItem;
  v11 = notificationCopy;
  v7 = notificationCopy;
  v8 = currentItem;
  dispatch_async(messageQueue, block);
}

void __57__APRKMediaPlayer__handleCurrentItemChangedNotification___block_invoke(id *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  *(a1[4] + 5) = 0;
  [a1[4] _updatePlaybackStateWithState:1 stoppedBecauseInterrupted:0 shouldSendUpstreamMessage:1];
  objc_storeStrong(a1[4] + 2, *(a1[4] + 3));
  v2 = [a1[5] UUIDString];
  v3 = a1[4];
  v4 = v3[3];
  v3[3] = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:@"notification" forKey:@"type"];
  [v5 setObject:*MEMORY[0x277CC0E80] forKey:@"name"];
  v6 = a1[4];
  v7 = *(v6 + 2);
  if (v7)
  {
    v15 = @"uuid";
    v16[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v5 setObject:v8 forKey:@"itemBefore"];

    v6 = a1[4];
  }

  v9 = *(v6 + 3);
  if (v9)
  {
    v13 = @"uuid";
    v14 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v5 setObject:v10 forKey:@"itemCurrent"];

    v6 = a1[4];
  }

  [*(v6 + 15) setForwardsFPSSecureStopData:{objc_msgSend(a1[5], "expectsSecureStop")}];
  v11 = [a1[6] userInfo];
  v12 = [v11 objectForKey:*MEMORY[0x277CE6088]];

  [v5 setObject:v12 forKey:@"reason"];
  [a1[4] _sendUpstreamMessageWithDictionary:v5];
}

- (void)_handleCurrentItemPlayedToEndNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemPlayedToEndNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__APRKMediaPlayer__handleCurrentItemPlayedToEndNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = object;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemPlayedToEndNotification:];
  }
}

void __61__APRKMediaPlayer__handleCurrentItemPlayedToEndNotification___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0E98] forKey:@"name"];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  [v2 setObject:v4 forKey:@"uuid"];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:v2];
  [*(a1 + 40) _updatePlaybackStateWithState:3 stoppedBecauseInterrupted:0 shouldSendUpstreamMessage:1];
}

- (void)_handleCurrentItemFailedToPlayToEndNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemFailedToPlayToEndNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__APRKMediaPlayer__handleCurrentItemFailedToPlayToEndNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = notificationCopy;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemFailedToPlayToEndNotification:];
  }
}

void __67__APRKMediaPlayer__handleCurrentItemFailedToPlayToEndNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v9 = [v2 objectForKey:*MEMORY[0x277CE60C8]];

  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CCA9B8];
  v5 = [v9 domain];
  v6 = [v9 code];
  v7 = [v9 userInfo];
  v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];
  [v3 _sendUpstreamErrorMessageWithError:v8];

  [*(a1 + 40) _updatePlaybackStateWithState:3 stoppedBecauseInterrupted:0 shouldSendUpstreamMessage:1];
}

- (void)_handleCurrentItemPlaybackStalledNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(APRKMediaPlayer *)self _playerItemForUUID:self->_currentItemUUID];
  if (v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemPlaybackStalledNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__APRKMediaPlayer__handleCurrentItemPlaybackStalledNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = v5;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemPlaybackStalledNotification:];
  }
}

void __65__APRKMediaPlayer__handleCurrentItemPlaybackStalledNotification___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 40);
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:@"stallCountChanged" forKey:@"name"];
  v6 = @"uuid";
  v3 = [*(a1 + 40) UUIDString];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  [v2 setObject:v4 forKey:@"uuid"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(a1 + 32) + 40)];
  [v2 setObject:v5 forKey:@"value"];

  [*(a1 + 32) _sendUpstreamMessageWithDictionary:v2];
}

- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __83__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPauseBufferingNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = object;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:];
  }
}

void __83__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPauseBufferingNotification___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"notification"];
  [v2 setObject:@"loadedTimeRangesChanged" forKey:@"name"];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) loadedTimeRanges];
  v5 = [v3 _serializeTimeRanges:v4];

  [v2 setObject:v5 forKey:*MEMORY[0x277CC1070]];
  v9 = @"uuid";
  v6 = [*(a1 + 40) UUIDString];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v2 setObject:v7 forKey:@"item"];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:v2];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:@"notification" forKey:@"type"];
  [v8 setObject:*MEMORY[0x277CC0EA0] forKey:@"name"];
  [v8 setObject:v7 forKey:@"item"];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:v8];
}

- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:];
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke;
    block[3] = &unk_278C628F0;
    v8 = object;
    v9 = notificationCopy;
    selfCopy = self;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:];
  }
}

void __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke(id *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0EA8] forKey:@"name"];
  v13 = @"uuid";
  v3 = [a1[4] UUIDString];
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  [v2 setObject:v4 forKey:@"item"];
  v5 = [a1[5] userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277CE6148]];

  if (!v6)
  {
    v7 = a1[4];
    if (v7)
    {
      [v7 currentTime];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    v6 = CMTimeCopyAsDictionary(&v12, *MEMORY[0x277CBECE8]);
  }

  [v2 setObject:v6 forKey:{@"timeToPausePlayback", *&v12.value, v12.epoch}];
  v8 = a1[6];
  if (v8[100])
  {
    v9 = *MEMORY[0x277CBECE8];
    v12 = *(v8 + 88);
    v10 = CMTimeCopyAsDictionary(&v12, v9);
    [v2 setObject:v10 forKey:*MEMORY[0x277CC0FA8]];
  }

  v11 = [a1[4] currentDate];
  if (v11)
  {
    [v2 setObject:v11 forKey:*MEMORY[0x277CC1050]];
  }

  if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke_cold_1(a1 + 5);
  }

  [a1[6] _sendUpstreamMessageWithDictionary:v2];
}

- (void)_handleSeekDidCompleteNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleSeekDidCompleteNotification:];
    }

    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"AVPlayerItemSeekIDKey"];
    intValue = [v7 intValue];

    name = [notificationCopy name];
    v10 = [name isEqualToString:*MEMORY[0x277CE6138]];

    if (intValue)
    {
      if (self->_pendingIntegratedTimelineSeekID)
      {
        pendingIntegratedTimelineSeekIDMap = self->_pendingIntegratedTimelineSeekIDMap;
        v12 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
        v13 = [(NSMutableDictionary *)pendingIntegratedTimelineSeekIDMap objectForKey:v12];
        intValue2 = [v13 intValue];
        pendingIntegratedTimelineSeekID = self->_pendingIntegratedTimelineSeekID;

        if (intValue2 == pendingIntegratedTimelineSeekID)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [APRKMediaPlayer _handleSeekDidCompleteNotification:];
          }

          (*(self->_completeIntegratedTimelineSeek + 2))();
          v16 = self->_pendingIntegratedTimelineSeekIDMap;
          v17 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          [(NSMutableDictionary *)v16 removeObjectForKey:v17];

          self->_pendingIntegratedTimelineSeekID = 0;
        }
      }
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke;
    block[3] = &unk_278C62918;
    block[4] = self;
    v21 = intValue;
    v20 = object;
    v22 = v10;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleSeekDidCompleteNotification:];
  }
}

void __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) _shouldIgnoreSeekCompletionForSeekID:*(a1 + 48) forItem:*(a1 + 40)])
  {
    v5 = [*(a1 + 32) _seekRequestMessageForSeekID:*(a1 + 48) forItem:*(a1 + 40)];
    v6 = v5;
    v7 = *(a1 + 32);
    if (*(v7 + 179) == 1 && (*(a1 + 52) == 1 ? (v8 = v5 == 0) : (v8 = 0), v8))
    {
      *(v7 + 180) = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (v5)
    {
      v9 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:v5];
      v10 = *(a1 + 40);
      if (v10)
      {
        [v10 currentTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v12 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
      [v9 setObject:v12 forKey:*MEMORY[0x277CC1090]];

      LODWORD(v13) = *(*(a1 + 32) + 192);
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [v9 setObject:v14 forKey:*MEMORY[0x277CC1098]];

      [*(a1 + 32) _sendUpstreamMessageWithDictionary:v9];
      goto LABEL_24;
    }

    if (*(a1 + 52) != 1)
    {
LABEL_25:
      [*(a1 + 32) _removePendingSeekID:*(a1 + 48) forItem:*(a1 + 40)];

      return;
    }

    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    [v9 setObject:@"notification" forKey:@"type"];
    [v9 setObject:@"didSeek" forKey:@"name"];
    v11 = *(a1 + 40);
    if (v11)
    {
      [v11 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v15 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
    [v9 setObject:v15 forKey:*MEMORY[0x277CC1090]];

    LODWORD(v16) = *(*(a1 + 32) + 192);
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    [v9 setObject:v17 forKey:*MEMORY[0x277CC1098]];

    v22 = @"uuid";
    v18 = [*(a1 + 40) UUIDString];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    [v9 setObject:v19 forKey:@"item"];
    [*(a1 + 32) _sendUpstreamMessageWithDictionary:v9];

LABEL_24:
    goto LABEL_25;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_cold_1();
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  [v3 _removePendingSeekID:v2 forItem:v4];
}

uint64_t __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) rate];
  if (v3 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2_cold_1();
    }

    v4 = *(*(a1 + 32) + 8);

    return [v4 setRate:0.0];
  }

  return result;
}

- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemMediaSelectionDidChangeNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__APRKMediaPlayer__handleCurrentPlayerItemMediaSelectionDidChangeNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = object;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemMediaSelectionDidChangeNotification:];
  }
}

void __79__APRKMediaPlayer__handleCurrentPlayerItemMediaSelectionDidChangeNotification___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0EB0] forKey:@"name"];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  [v2 setObject:v4 forKey:@"item"];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:v2];
}

- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemNewAccessLogEntryNotification:];
  }

  messageQueue = self->_messageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__APRKMediaPlayer__handleCurrentPlayerItemNewAccessLogEntryNotification___block_invoke;
  v8[3] = &unk_278C62788;
  v9 = object;
  selfCopy = self;
  v7 = object;
  dispatch_async(messageQueue, v8);
}

void __73__APRKMediaPlayer__handleCurrentPlayerItemNewAccessLogEntryNotification___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0E78] forKey:@"name"];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  [v2 setObject:v4 forKey:@"item"];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:v2];
}

- (void)_handleCurrentEventSkippedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CE60B0]];
  identifier = [v6 identifier];

  currentInterstitialEventID = self->_currentInterstitialEventID;
  if (currentInterstitialEventID && [(NSString *)currentInterstitialEventID isEqualToString:identifier])
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentEventSkippedNotification:];
    }

    messageQueue = self->_messageQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__APRKMediaPlayer__handleCurrentEventSkippedNotification___block_invoke;
    v10[3] = &unk_278C62788;
    v11 = identifier;
    selfCopy = self;
    dispatch_async(messageQueue, v10);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentEventSkippedNotification:];
  }
}

void __58__APRKMediaPlayer__handleCurrentEventSkippedNotification___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0EB8] forKey:@"name"];
  v3 = *(a1 + 32);
  v5 = *MEMORY[0x277CC0F58];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 setObject:v4 forKey:@"value"];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:v2];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [(APRKMediaPlayer *)self _playerItemForUUID:self->_currentItemUUID];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_278C62968;
  block[4] = self;
  v20 = objectCopy;
  v21 = changeCopy;
  v22 = v13;
  v23 = pathCopy;
  contextCopy = context;
  v15 = pathCopy;
  v16 = v13;
  v17 = changeCopy;
  v18 = objectCopy;
  dispatch_async(messageQueue, block);
}

void __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 152) != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 72);
      if (v3 == APRKMediaPlayerObservationContextPlayerTimeControlStatus)
      {
        v15 = [*(*v1 + 1) timeControlStatus];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_8();
        }

        if (v15 >= 3)
        {
          v16 = 3;
        }

        else
        {
          v16 = v15;
        }

        [*v1 _updatePlaybackStateWithState:v16 stoppedBecauseInterrupted:0 shouldSendUpstreamMessage:1];
        goto LABEL_35;
      }

      if (v3 != APRKMediaPlayerObservationContextPlayerRate)
      {
        if (v3 == APRKMediaPlayerObservationContextPlayerStatus && *(*v1 + 9) && [*(*v1 + 1) status] == 1)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2();
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
          block[3] = &unk_278C626E8;
          block[4] = *v1;
          dispatch_sync(MEMORY[0x277D85CD0], block);
          v4 = *(*v1 + 9);
          *(*v1 + 9) = 0;
        }

        goto LABEL_35;
      }

      v17 = [*(a1 + 48) objectForKey:*MEMORY[0x277CCA300]];
      [v17 floatValue];
      v19 = v18;

      v20 = [*(a1 + 48) objectForKey:*MEMORY[0x277CCA2F0]];
      [v20 floatValue];
      v22 = v21;

      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_3();
      }

      if (v22 != 0.0)
      {
        *(*v1 + 48) = v22;
      }

      v23 = *v1;
      if (*(*v1 + 179) != 1 || v19 == v22)
      {
        if (v19 == v22)
        {
          goto LABEL_35;
        }

        if (v22 < 2.0 && v22 > -1.0)
        {
          goto LABEL_35;
        }

        v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v24 setObject:@"notification" forKey:@"type"];
        [v24 setObject:@"rateChanged" forKey:@"name"];
        v27 = *(*v1 + 1);
        if (v27)
        {
          [v27 currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v42 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
        [v24 setObject:v42 forKey:*MEMORY[0x277CC1090]];

        v43 = [*v1 _figPlaybackStateStringFrom:*(*v1 + 19)];
        [v24 setObject:v43 forKey:@"playbackState"];

        v44 = MEMORY[0x277CCABB0];
        [*(*v1 + 1) rate];
        v45 = [v44 numberWithFloat:?];
        [v24 setObject:v45 forKey:*MEMORY[0x277CC0FB0]];

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_4();
        }

        [*v1 _sendUpstreamMessageWithDictionary:v24];
        goto LABEL_89;
      }

      if ((v23[49] & 1) == 0)
      {
        if (v22 >= 2.0 || v22 <= -1.0)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_5();
          }

          v6 = 0;
          *(*v1 + 196) = 1;
          *(*v1 + 50) = v19;
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v22 == v23[50])
      {
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_6();
        }

        *(*v1 + 196) = 0;
        *(*v1 + 50) = 0;
        *(*v1 + 180) = 1;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v56[3] = &unk_278C62940;
        v57 = v22;
        v56[4] = *v1;
        dispatch_async(MEMORY[0x277D85CD0], v56);
        v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
        [v24 setObject:@"notification" forKey:@"type"];
        [v24 setObject:@"didSeek" forKey:@"name"];
        v25 = *(*v1 + 1);
        if (v25)
        {
          [v25 currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v46 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
        [v24 setObject:v46 forKey:*MEMORY[0x277CC1090]];

        *&v47 = v22;
        v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
        [v24 setObject:v48 forKey:*MEMORY[0x277CC1098]];

        v72 = @"uuid";
        v49 = [*(*v1 + 1) currentItem];
        v50 = [v49 UUIDString];
        v73[0] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];

        [v24 setObject:v51 forKey:@"item"];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_7();
        }

        [*v1 _sendUpstreamMessageWithDictionary:v24];

LABEL_89:
      }

LABEL_35:
      v6 = 0;
LABEL_36:

      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v52.receiver = *(a1 + 32);
      v52.super_class = APRKMediaPlayer;
      objc_msgSendSuper2(&v52, sel_observeValueForKeyPath_ofObject_change_context_, v13, v11, v12, v14);
      goto LABEL_35;
    }

    if (!*(a1 + 56))
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
      }

      goto LABEL_35;
    }

    v5 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"notification"];
    v6 = v5;
    v7 = *(a1 + 72);
    if (v7 == APRKMediaPlayerObservationContextTimedMetadata)
    {
      v70 = @"uuid";
      v28 = [*(a1 + 56) UUIDString];
      v71 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

      [v6 setObject:v29 forKey:@"item"];
      v30 = *MEMORY[0x277CC0EC8];
      v31 = @"name";
      v32 = v6;
    }

    else
    {
      if (v7 == APRKMediaPlayerObservationContextPlaybackBufferEmpty)
      {
        [v5 setObject:*MEMORY[0x277CC1078] forKey:@"name"];
        v68 = @"uuid";
        v33 = [*(a1 + 56) UUIDString];
        v69 = v33;
        v34 = MEMORY[0x277CBEAC0];
        v35 = &v69;
        v36 = &v68;
      }

      else if (v7 == APRKMediaPlayerObservationContextPlaybackBufferFull)
      {
        [v5 setObject:*MEMORY[0x277CC1080] forKey:@"name"];
        v66 = @"uuid";
        v33 = [*(a1 + 56) UUIDString];
        v67 = v33;
        v34 = MEMORY[0x277CBEAC0];
        v35 = &v67;
        v36 = &v66;
      }

      else if (v7 == APRKMediaPlayerObservationContextPlaybackBufferLikelyToKeepUp)
      {
        [v5 setObject:*MEMORY[0x277CC1088] forKey:@"name"];
        v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 56), "isPlaybackLikelyToKeepUp")}];
        [v6 setObject:v38 forKey:@"value"];

        v64 = @"uuid";
        v33 = [*(a1 + 56) UUIDString];
        v65 = v33;
        v34 = MEMORY[0x277CBEAC0];
        v35 = &v65;
        v36 = &v64;
      }

      else
      {
        if (v7 == APRKMediaPlayerObservationContextCurrentItemStatus)
        {
          if ([*(a1 + 56) status] != 1)
          {
            goto LABEL_36;
          }

          [v6 setObject:*MEMORY[0x277CC10A0] forKey:@"name"];
          v62 = @"uuid";
          v39 = [*(a1 + 56) UUIDString];
          v63 = v39;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

          [v6 setObject:v29 forKey:@"item"];
          v40 = *(a1 + 32);
          if (v40[8] && [v40 _attemptToSetSelectedMediaArray:?])
          {
            v41 = *(*v1 + 8);
            *(*v1 + 8) = 0;
          }

          goto LABEL_95;
        }

        if (v7 == APRKMediaPlayerObservationContextCurrentItemLoadableTimeRanges)
        {
          [v5 setObject:@"loadedTimeRangesChanged" forKey:@"name"];
          v60 = @"uuid";
          v33 = [*(a1 + 56) UUIDString];
          v61 = v33;
          v34 = MEMORY[0x277CBEAC0];
          v35 = &v61;
          v36 = &v60;
        }

        else
        {
          if (v7 != APRKMediaPlayerObservationContextCurrentItemSeekableTimeRanges)
          {
            v8 = *(a1 + 64);
            v9 = *(a1 + 40);
            v10 = *(a1 + 48);
            v53.receiver = *(a1 + 32);
            v53.super_class = APRKMediaPlayer;
            objc_msgSendSuper2(&v53, sel_observeValueForKeyPath_ofObject_change_context_, v8, v9, v10);
            goto LABEL_96;
          }

          [v5 setObject:@"seekableTimeRangesChanged" forKey:@"name"];
          v58 = @"uuid";
          v33 = [*(a1 + 56) UUIDString];
          v59 = v33;
          v34 = MEMORY[0x277CBEAC0];
          v35 = &v59;
          v36 = &v58;
        }
      }

      v29 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];

      v31 = @"item";
      v32 = v6;
      v30 = v29;
    }

    [v32 setObject:v30 forKey:v31];
LABEL_95:

LABEL_96:
    if (v6)
    {
      [*v1 _sendUpstreamMessageWithDictionary:v6];
    }

    goto LABEL_36;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

uint64_t __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t result)
{
  if (*(result + 40) != 0.0)
  {
    v2 = result;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1();
    }

    v3 = *(*(v2 + 32) + 8);

    return [v3 setRate:0.0];
  }

  return result;
}

void __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = [*(v2 + 72) objectForKeyedSubscript:@"rate"];
  [v4 floatValue];
  v6 = v5;
  v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:@"time"];
  v8 = v7;
  if (v7)
  {
    [v7 CMTimeValue];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v9 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:@"hostTime"];
  v10 = v9;
  if (v9)
  {
    [v9 CMTimeValue];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v11 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:{@"options", v13, v14, v15, v16, v17, v18}];
  LODWORD(v12) = v6;
  [v3 setRate:&v16 time:&v13 atHostTime:v11 options:v12];
}

- (void)contentKeyHelper:(id)helper wantsToPerformContentKeyRequestWithDictionary:(id)dictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"type";
  v8[1] = @"kind";
  v9[0] = @"unhandledURL";
  v9[1] = @"request";
  v8[2] = *MEMORY[0x277CC11D0];
  v9[2] = dictionary;
  v5 = MEMORY[0x277CBEAC0];
  dictionaryCopy = dictionary;
  v7 = [v5 dictionaryWithObjects:v9 forKeys:v8 count:3];

  [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:v7];
}

- (void)contentKeyHelper:(id)helper didGenerateSecureStopRecordPayload:(id)payload
{
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);
  [WeakRetained mediaPlayer:self didGenerateFPSSecureStopRecordPayload:payloadCopy];
}

- (void)resourceLoaderHelper:(id)helper wantsToPerformUnhandledURLRequestWithDictionary:(id)dictionary forRequestID:(id)d
{
  v12[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"unhandledURL";
  v12[1] = @"request";
  v7 = MEMORY[0x277CCACA8];
  dictionaryCopy = dictionary;
  v9 = [v7 stringWithFormat:@"%lu", objc_msgSend(d, "integerValue"), @"type", @"kind", @"messageID"];
  v11[3] = *MEMORY[0x277CC11D0];
  v12[2] = v9;
  v12[3] = dictionaryCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:v10];
}

- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer localParticipantUUIDForPlaybackCoordinator:];
  }

  localParticipantID = self->_localParticipantID;
  v6 = localParticipantID;

  return localParticipantID;
}

- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary
{
  coordinatorCopy = coordinator;
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer playbackCoordinator:broadcastLocalParticipantStateDictionary:];
  }

  messageQueue = self->_messageQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__APRKMediaPlayer_playbackCoordinator_broadcastLocalParticipantStateDictionary___block_invoke;
  v10[3] = &unk_278C62788;
  v11 = dictionaryCopy;
  selfCopy = self;
  v9 = dictionaryCopy;
  dispatch_async(messageQueue, v10);
}

void __80__APRKMediaPlayer_playbackCoordinator_broadcastLocalParticipantStateDictionary___block_invoke(uint64_t a1)
{
  v3 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"playbackCoordinationMedium"];
  [v3 setObject:*MEMORY[0x277CC0E28] forKey:*MEMORY[0x277CC0E38]];
  [v3 setObject:*(a1 + 32) forKey:*MEMORY[0x277CC0E20]];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 40) _sendUpstreamMessageWithDictionary:v3];
    v2 = v3;
  }
}

- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier
{
  coordinatorCopy = coordinator;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer playbackCoordinator:broadcastTransportControlStateDictionary:forItemWithIdentifier:];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__APRKMediaPlayer_playbackCoordinator_broadcastTransportControlStateDictionary_forItemWithIdentifier___block_invoke;
  block[3] = &unk_278C628F0;
  v15 = dictionaryCopy;
  v16 = identifierCopy;
  selfCopy = self;
  v12 = identifierCopy;
  v13 = dictionaryCopy;
  dispatch_async(messageQueue, block);
}

void __102__APRKMediaPlayer_playbackCoordinator_broadcastTransportControlStateDictionary_forItemWithIdentifier___block_invoke(uint64_t a1)
{
  v3 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:@"playbackCoordinationMedium"];
  [v3 setObject:*MEMORY[0x277CC0E30] forKey:*MEMORY[0x277CC0E38]];
  [v3 setObject:*(a1 + 32) forKey:*MEMORY[0x277CC0E20]];
  [v3 setObject:*(a1 + 40) forKey:*MEMORY[0x277CC0E18]];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 48) _sendUpstreamMessageWithDictionary:v3];
    v2 = v3;
  }
}

- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  handlerCopy[2](handlerCopy);
}

- (void)integratedTimeline:(id)timeline didRequestSeekToTime:(id *)time seekID:(int)d toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  v9 = *&d;
  timelineCopy = timeline;
  currentItem = [(APRKMediaPlayer *)self currentItem];
  if (currentItem)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      v14 = *MEMORY[0x277CBECE8];
      time = *time;
      CMTimeCopyDescription(v14, &time);
      time = *before;
      CMTimeCopyDescription(v14, &time);
      time = *after;
      CMTimeCopyDescription(v14, &time);
      LogPrintF();
    }

    self->_pendingIntegratedTimelineSeekID = v9;
    interstitialPlayer = self->_interstitialPlayer;
    if (interstitialPlayer)
    {
      [(APRKMediaPlayer *)interstitialPlayer setPendingIntegratedTimelineSeekID:v9];
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__APRKMediaPlayer_integratedTimeline_didRequestSeekToTime_seekID_toleranceBefore_toleranceAfter___block_invoke;
    block[3] = &unk_278C62990;
    v20 = v9;
    block[4] = self;
    v21 = *&time->var0;
    var3 = time->var3;
    v18 = timelineCopy;
    v23 = *&before->var0;
    v24 = before->var3;
    v25 = *&after->var0;
    v26 = after->var3;
    v19 = currentItem;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer integratedTimeline:didRequestSeekToTime:seekID:toleranceBefore:toleranceAfter:];
  }
}

void __97__APRKMediaPlayer_integratedTimeline_didRequestSeekToTime_seekID_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277CC0E58]];
  [v2 setObject:@"notification" forKey:@"type"];
  [v2 setObject:*MEMORY[0x277CC0E90] forKey:@"name"];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  [v2 setObject:v3 forKey:*MEMORY[0x277CC0FC8]];

  v4 = MEMORY[0x277CCABB0];
  [*(*(a1 + 32) + 8) rate];
  v5 = [v4 numberWithFloat:?];
  [v2 setObject:v5 forKey:*MEMORY[0x277CC0FB0]];

  v6 = *MEMORY[0x277CBECE8];
  v14 = *(a1 + 60);
  v7 = CMTimeCopyAsDictionary(&v14, v6);
  [v2 setObject:v7 forKey:*MEMORY[0x277CC0FD0]];

  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 currentTime];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  v9 = CMTimeCopyAsDictionary(&v14, v6);
  [v2 setObject:v9 forKey:*MEMORY[0x277CC1090]];

  v14 = *(a1 + 84);
  v10 = CMTimeCopyAsDictionary(&v14, v6);
  [v2 setObject:v10 forKey:*MEMORY[0x277CC1010]];

  v14 = *(a1 + 108);
  v11 = CMTimeCopyAsDictionary(&v14, v6);
  [v2 setObject:v11 forKey:*MEMORY[0x277CC1008]];

  v15 = @"uuid";
  v12 = [*(a1 + 48) UUIDString];
  v16[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [v2 setObject:v13 forKey:@"item"];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:v2];
}

void __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*(*a1 + 8) + 40) objectForKey:@"type"];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_insertPlayQueueItemWithDictionary:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_removePlayQueueItemWithDictionary:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (uint64_t)_setPropertyWithDictionary:(CMTime *)a3 .cold.5(__int128 *a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

- (uint64_t)_setPropertyWithDictionary:(CMTime *)a3 .cold.6(__int128 *a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_4(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

- (uint64_t)_setPropertyWithDictionary:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

void __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) objectForKey:@"type"];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

void __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_2(uint64_t a1, id *a2)
{
  v2 = [*a2 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

uint64_t __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  return LogPrintF();
}

- (void)_handleTimeJumpedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentItemChangedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 name];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentItemPlayedToEndNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 name];
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentItemFailedToPlayToEndNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentItemPlaybackStalledNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

void __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 name];
  OUTLINED_FUNCTION_6();
}

- (void)_handleSeekDidCompleteNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

- (void)_handleCurrentEventSkippedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF();
}

@end
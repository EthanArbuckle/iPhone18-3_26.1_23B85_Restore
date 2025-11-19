@interface AVPlayer
+ (AVPlayer)playerWithFigPlayer:(OpaqueFigPlayer *)a3;
+ (AVPlayer)playerWithPlayerItem:(AVPlayerItem *)item;
+ (AVPlayer)playerWithURL:(NSURL *)URL;
+ (AVPlayerHDRMode)availableHDRModes;
+ (BOOL)eligibleForHDRPlayback;
+ (BOOL)isIAPDExtendedModeActive;
+ (BOOL)isObservationEnabled;
+ (id)makePlayerLoggingIdentifier;
+ (int)_createFigPlayerWithType:(int64_t)a3 options:(__CFDictionary *)a4 player:(OpaqueFigPlayer *)a5;
+ (void)checkForAvailableHDRModesChanges;
+ (void)fireAvailableHDRModesDidChangeNotification;
+ (void)fireEligibleForHDRPlaybackDidChangeNotification;
+ (void)initialize;
+ (void)playbackObjectCreated;
+ (void)registerForScreenConnectionChanges;
+ (void)setObservationEnabled:(BOOL)a3;
+ (void)setSupportsSharedNetworkCoordination:(BOOL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentUnfoldedTime;
- (AVAudioSession)audioSession;
- (AVLayerVideoGravity)externalPlaybackVideoGravity;
- (AVLoggingIdentifier)loggingIdentifier;
- (AVPlayer)init;
- (AVPlayer)initWithDispatchQueue:(id)a3;
- (AVPlayer)initWithFigPlayer:(OpaqueFigPlayer *)a3;
- (AVPlayer)initWithPlayerItem:(AVPlayerItem *)item;
- (AVPlayer)initWithURL:(NSURL *)URL;
- (AVPlayerActionAtItemEnd)actionAtItemEnd;
- (AVPlayerAudiovisualBackgroundPlaybackPolicy)audiovisualBackgroundPlaybackPolicy;
- (AVPlayerItem)currentItem;
- (AVPlayerMediaSelectionCriteria)legibleFallbackMediaSelectionCriteria;
- (AVPlayerMediaSelectionCriteria)mediaSelectionCriteriaForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (AVPlayerPlaybackCoordinator)playbackCoordinator;
- (AVPlayerStatus)status;
- (AVPlayerTimeControlStatus)timeControlStatus;
- (AVPlayerVideoOutput)videoOutput;
- (AVPlayerWaitingReason)reasonForWaitingToPlay;
- (BOOL)_CALayerDestinationIsTVOut;
- (BOOL)_addVideoLayer:(id)a3;
- (BOOL)_airPlayVideoActive;
- (BOOL)_applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock;
- (BOOL)_cachedNonForcedSubtitleDisplayEnabledForCurrentItem;
- (BOOL)_canContinuePlaybackInBackgrounBasedOnAudiovisualBackgroundPlaybackPolicy:(int64_t)a3;
- (BOOL)_clientRequestedPlaybackCoordinator;
- (BOOL)_disallowsAutoPauseOnRouteRemovalIfNoAudio;
- (BOOL)_disallowsVideoLayerDisplayCompositing;
- (BOOL)_ensuresActiveAudioSessionWhenStartingPlayback;
- (BOOL)_externalPlaybackActive;
- (BOOL)_getDisplayVideoRange:(id *)a3 displaySize:(CGSize *)a4 refreshRate:(id *)a5;
- (BOOL)_handleSetRate:(float)a3 withVolumeRampDuration:(id *)a4 playImmediately:(BOOL)a5 rateChangeReason:(int)a6 affectsCoordinatedPlayback:(BOOL)a7;
- (BOOL)_hasAssociatedAVPlayerLayerInPIPMode;
- (BOOL)_hasAssociatedOnscreenAVPlayerLayer;
- (BOOL)_hasCurrentInterstitialEvent;
- (BOOL)_hasForegroundVideoDestinations;
- (BOOL)_hasVideoDestinations;
- (BOOL)_isAirPlayVideoActive;
- (BOOL)_isBufferedAirPlayActive;
- (BOOL)_isConnectedToPhysicalSecondScreen;
- (BOOL)_isDisplayingClosedCaptions;
- (BOOL)_isIAPDExtendedModeActive;
- (BOOL)_isInterstitialPlayer;
- (BOOL)_isMuted;
- (BOOL)_isPIPModePossible;
- (BOOL)_limitsBandwidthForCellularAccess;
- (BOOL)_participatesInAudioSession;
- (BOOL)_preservesAudioSessionSampleRate;
- (BOOL)_rateDidChangeNotificationIncludesExtendedDiagnosticPayload;
- (BOOL)_removeVideoLayer:(id)a3;
- (BOOL)_resumePlayback:(double)a3 error:(id *)a4;
- (BOOL)_runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:(id)a3 modificationBlock:(id)a4 error:(id *)a5;
- (BOOL)_setRate:(float)a3 rateChangeReason:(int)a4 figPlayerSetRateHandler:(id)a5;
- (BOOL)_shouldAttachVideoDestinationsToFigPlayerOnStateQueue;
- (BOOL)_shouldDetachVideoLayersFromFigPlayer;
- (BOOL)_silencesOtherPlaybackDuringPIP;
- (BOOL)_startupSyncIgnoresAudioDeviceLatency;
- (BOOL)_supportsAdvanceTimeForOverlappedPlayback;
- (BOOL)_suppressesAudioRendering;
- (BOOL)_usesLegacyAutomaticWaitingBehavior;
- (BOOL)allowsExternalPlayback;
- (BOOL)allowsLegibleFallbackForAllAudibleMediaSelections;
- (BOOL)allowsOutOfBandTextTrackRendering;
- (BOOL)allowsPixelBufferPoolSharing;
- (BOOL)appliesMediaSelectionCriteriaAutomatically;
- (BOOL)audioOutputSuppressedDueToNonMixableAudioRoute;
- (BOOL)autoSwitchStreamVariants;
- (BOOL)automaticallyWaitsToMinimizeStalling;
- (BOOL)canPlaySpeedRamp;
- (BOOL)disallowsAMRAudio;
- (BOOL)disallowsHardwareAcceleratedVideoDecoder;
- (BOOL)externalPlaybackPriority;
- (BOOL)isAudioPlaybackEnabledAtAllRates;
- (BOOL)isClosedCaptionDisplayEnabled;
- (BOOL)isDefunct;
- (BOOL)isDisplayingClosedCaptions;
- (BOOL)isExternalPlaybackActive;
- (BOOL)isLocalCoplaybackEnabled;
- (BOOL)isMuted;
- (BOOL)isSilencedDueToConflictWithOtherPlayback;
- (BOOL)nonMixableAudioPriority;
- (BOOL)outputObscuredDueToInsufficientExternalProtection;
- (BOOL)prefersPlayingSilentlyWhenConflictingWithOtherPlayback;
- (BOOL)preparesItemsForPlaybackAsynchronously;
- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (BOOL)preventsDisplaySleepDuringVideoPlayback;
- (BOOL)shouldReduceResourceUsage;
- (BOOL)shouldWaitForVideoTarget;
- (BOOL)supportsSpeedRamps;
- (BOOL)usesAudioOnlyModeForExternalPlayback;
- (BOOL)usesDedicatedNotificationQueueForMediaServices;
- (BOOL)usesExternalPlaybackWhileExternalScreenIsActive;
- (CGSize)_cachedPresentationSizeOfCurrentItem;
- (CGSize)_maximumAVPlayerLayerDisplaySize;
- (CGSize)dimensionsOfReservedVideoMemory;
- (CMClockRef)masterClock;
- (CMClockRef)sourceClock;
- (CMTime)currentTime;
- (NSArray)_attachedPlayerLayers;
- (NSArray)_displaysUsedForPlayback;
- (NSArray)taggedBufferOutputs;
- (NSArray)videoTargets;
- (NSError)error;
- (NSNumber)mxSessionID;
- (NSString)_STSLabel;
- (NSString)audioOutputDeviceUniqueID;
- (NSString)backgroundPIPAuthorizationToken;
- (NSString)captionPipelineStrategy;
- (NSString)multichannelAudioStrategy;
- (OpaqueFigPlayer)_copyFigPlayer;
- (OpaqueFigPlayerInterstitialCoordinator)_copyInterstitialCoordinatorIfCreated;
- (OpaqueFigPlayerInterstitialCoordinator)_copyInterstitialEventCoordinatorEnsuringItIsRemote:(BOOL)a3;
- (OpaqueFigVideoTarget)_interstitialVideoTargetForPrimaryVideoTarget:(OpaqueFigVideoTarget *)a3;
- (__CFDictionary)_createDictionaryWithDimensionsOfReservedVideoMemory:(CGSize)a3;
- (__CFString)figPlayerActionForActionAtItemEnd:(int64_t)a3;
- (__CVBuffer)_copyDisplayedPixelBuffer:(id)a3;
- (float)_playerVolume;
- (float)_rate;
- (float)_userVolume;
- (float)defaultRate;
- (float)localCoplaybackVolume;
- (float)maxRateForAudioPlayback;
- (float)minRateForAudioPlayback;
- (float)rate;
- (float)volume;
- (id)_acquireBackgroundAssertion;
- (id)_allClientAndVideoLayerVideoTargets;
- (id)_allVideoTargetsForVideoLayers;
- (id)_ancillaryPerformanceInformationForDisplay;
- (id)_avPlayerLayers;
- (id)_cachedMediaSelectionCriteria;
- (id)_clientName;
- (id)_closedCaptionLayers;
- (id)_copyPerformanceDataForCurrentItem;
- (id)_externalPlaybackVideoGravity;
- (id)_interstitialPlayerIfCreated;
- (id)_items;
- (id)_itemsToPrebuffer;
- (id)_items_invokeOnIvarAccessQueue;
- (id)_nameForLogging;
- (id)_nameForLogging_fromIvarAccessQueue;
- (id)_pendingFigPlayerProperties;
- (id)_pendingFigPlayerPropertyForKey:(id)a3;
- (id)_performanceDictionary;
- (id)_playbackCoordinatorWithoutTriggeringFullSetup;
- (id)_playbackDisplaysForFigPlayer;
- (id)_playerCaptionLayers;
- (id)_rateDidChangeNotificationPayloadForAVFRateChangeReason:(id)a3 reasonIsExtendedDiagnostic:(BOOL)a4 rateChangeIdentifier:(id)a5 rateChangeOriginator:(id)a6;
- (id)_rateDidChangeNotificationPayloadForFigRateChangeReason:(int)a3 rateChangeIdentifier:(id)a4 rateChangeOriginator:(id)a5;
- (id)_rateState;
- (id)_routingPlaybackArbiter;
- (id)_subtitleLayers;
- (id)_synchronizeWithNewCurrentItem;
- (id)_unregisterAndReturnRetainedPrerollCompletionHandler;
- (id)_updateAudioSessionOnFigPlayer;
- (id)_videoLayers;
- (id)_weakReferenceToPrimaryPlayer;
- (id)addBoundaryTimeObserverForTimes:(NSArray *)times queue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (id)addPeriodicTimeObserverForInterval:(CMTime *)interval queue:(dispatch_queue_t)queue usingBlock:(void *)block;
- (id)defaultMediaSelectionCriteriaForMediaCharacteristic:(id)a3;
- (id)interstitialPlayer;
- (id)outputContext;
- (id)playerRole;
- (id)valueForUndefinedKey:(id)a3;
- (id)vibrationPattern;
- (int)_cancelPendingPrerollAndRegisterPrerollCompletionHandler:(id)a3;
- (int)_createPrerollID;
- (int)_reevaluateVideoLayersAndTargetsForPresentationState:(int64_t)a3 withCompletionHandler:(id)a4;
- (int64_t)_clientPriority;
- (int64_t)_externalProtectionStatus;
- (int64_t)_externalProtectionStatusCopiedFromFig;
- (int64_t)_extractFPExternalProtectionStatus:(id)a3;
- (int64_t)_itemOkayToPlayWhileTransitioningToBackground:(id)a3;
- (int64_t)externalPlaybackInterstitialSchedulingStrategy;
- (int64_t)externalPlaybackType;
- (int64_t)networkResourcePriority;
- (int64_t)resourceConservationLevelWhilePaused;
- (uint64_t)preferredVideoDecoderGPURegistryID;
- (void)_addCoordinatedPlaybackSuspension:(id)a3;
- (void)_addCoordinatedPlaybackSuspensionWithReasonOnQueue:(id)a3;
- (void)_addFPListeners;
- (void)_addItemToLinkedList_invokeOnIvarAccessQueue:(id)a3 afterItem:(id)a4;
- (void)_addLayer:(id)a3;
- (void)_addPlayerCaptionLayer:(id)a3;
- (void)_advanceCurrentItemAccordingToFigPlaybackItem:(OpaqueFigPlaybackItem *)a3;
- (void)_advanceToNextItem;
- (void)_applyLinkedListOfItemsToFigPlayerUsingBlock:(id)a3;
- (void)_applyPlayQueueChangesToFigPlayerWithCompletionHandler:(id)a3;
- (void)_attachClosedCaptionLayersToFigPlayer;
- (void)_attachFigPlayerToSubtitleLayers;
- (void)_canPlaySpeedRampChanged;
- (void)_changeStatusToFailedWithError:(id)a3;
- (void)_createAndConfigureFigPlayerWithType:(int64_t)a3 completionHandler:(id)a4;
- (void)_createPlayerForTypeOfItem:(id)a3 withCompletionHandler:(id)a4;
- (void)_detachClosedCaptionLayersFromFigPlayer:(OpaqueFigPlayer *)a3;
- (void)_detachFigPlayerFromSubtitleLayers;
- (void)_detachVideoDestinationsForSuspensionWithCompletionHandler:(id)a3;
- (void)_didEnterBackground:(id)a3;
- (void)_enqueuePlayQueueModification_invokeOnIvarAccessQueue:(id)a3;
- (void)_ensureFigPlaybackCoordinatorIsConnected;
- (void)_ensureVideoDestinationsAreAttached;
- (void)_enumerateItemsUsingBlock:(id)a3;
- (void)_evaluateDisplaySizeOfAllAttachedLayers;
- (void)_insertItem:(id)a3 afterItem:(id)a4;
- (void)_itemIsReadyToPlay:(id)a3;
- (void)_layerForegroundStateChanged:(id)a3;
- (void)_linkAndSyncAudioSessionWithInterstitialPlayer:(id)a3;
- (void)_logPerformanceDataForCurrentItem;
- (void)_logPerformanceDataForPreviousItem;
- (void)_noteCurrentRemoteInterstitialEvent:(id)a3;
- (void)_noteNewNonForcedSubtitleDisplayEnabledForPlayerItem:(id)a3;
- (void)_noteNewPresentationSizeForPlayerItem:(id)a3;
- (void)_noteRemoteInterstitialEvents:(id)a3 forItem:(id)a4;
- (void)_populateInterstitialAssetOptions:(id)a3 fromPrimaryAsset:(id)a4;
- (void)_removeAllItems;
- (void)_removeAllLayersAndVideoTargets;
- (void)_removeCoordinatedPlaybackSuspensionWithReason:(id)a3 requiringSuspensionEnd:(unsigned __int8)a4;
- (void)_removeCoordinatedPlaybackSuspensionWithReasonOnQueue:(id)a3 requiringSuspensionEnd:(unsigned __int8)a4;
- (void)_removeFPListeners;
- (void)_removeItem:(id)a3;
- (void)_removeItemFromLinkedList_invokeOnIvarAccessQueue:(id)a3;
- (void)_removeLayer:(id)a3;
- (void)_removeLayer:(id)a3 videoLayer:(id)a4 closedCaptionLayer:(id)a5 subtitleLayer:(id)a6 interstitialLayer:(id)a7;
- (void)_removePlayerCaptionLayer:(id)a3;
- (void)_removePropertyObserversOfCurrentItemCalledOnStateDispatchQueueChecked:(id)a3;
- (void)_setActionAtItemEnd:(int64_t)a3 allowingAdvance:(BOOL)a4;
- (void)_setAncillaryPerformanceInformationForDisplay:(id)a3;
- (void)_setCALayerDestinationIsTVOut:(BOOL)a3;
- (void)_setClientName:(id)a3;
- (void)_setClientPriority:(int64_t)a3;
- (void)_setCurrentItem:(id)a3;
- (void)_setDisallowsAutoPauseOnRouteRemovalIfNoAudio:(BOOL)a3;
- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)a3;
- (void)_setDisplaysUsedForPlayback:(id)a3;
- (void)_setEQPreset:(int)a3;
- (void)_setEnsuresActiveAudioSessionWhenStartingPlayback:(BOOL)a3;
- (void)_setExternalPlaybackInterstitialSchedulingStrategyOnCoordinator_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3;
- (void)_setExternalPlaybackPriorityInternal:(BOOL)a3;
- (void)_setInterstitialEventCoordinator:(OpaqueFigPlayerInterstitialCoordinator *)a3;
- (void)_setInterstitialEventCoordinatorOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3;
- (void)_setInterstitialEventCoordinator_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3;
- (void)_setInterstitialPlayer:(id)a3;
- (void)_setInterstitialPlayerGuts_invokeOnIvarAccessQueue:(id)a3;
- (void)_setInterstitialPlayerOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:(id)a3;
- (void)_setIsInterstitialPlayer:(BOOL)a3;
- (void)_setItemsToPrebuffer:(id)a3;
- (void)_setLimitsBandwidthForCellularAccess:(BOOL)a3;
- (void)_setNeroVideoGravityOnFigPlayer;
- (void)_setNonMixableAudioPriorityInternal:(BOOL)a3;
- (void)_setOptions:(id)a3 onClosedCaptionLayer:(id)a4;
- (void)_setParticipatesInAudioSession:(BOOL)a3;
- (void)_setPausesAudioVisualPlaybackInBackground:(BOOL)a3;
- (void)_setPendingFigPlayerProperty:(id)a3 forKey:(id)a4;
- (void)_setPreferredLanguageList:(id)a3;
- (void)_setPreservesAudioSessionSampleRate:(BOOL)a3;
- (void)_setRate:(float)a3 withVolumeRampDuration:(id *)a4 playImmediately:(BOOL)a5 rateChangeReason:(int)a6 affectsCoordinatedPlayback:(BOOL)a7;
- (void)_setRateDidChangeNotificationIncludesExtendedDiagnosticPayload:(BOOL)a3;
- (void)_setSTSLabel:(id)a3;
- (void)_setSeparated:(BOOL)a3 onClosedCaptionLayer:(id)a4;
- (void)_setSilencesOtherPlaybackDuringPIP:(BOOL)a3;
- (void)_setStartupSyncIgnoresAudioDeviceLatency:(BOOL)a3;
- (void)_setStoppingFadeOutDuration:(float)a3;
- (void)_setSupportsAdvanceTimeForOverlappedPlayback:(BOOL)a3;
- (void)_setSuppressesAudioRendering:(BOOL)a3;
- (void)_setUserVolume:(float)a3;
- (void)_setUsesLegacyAutomaticWaitingBehavior:(BOOL)a3;
- (void)_setWantsVolumeChangesWhenPausedOrInactive:(BOOL)a3;
- (void)_setWeakReferenceToPrimaryPlayer:(id)a3;
- (void)_startObservingPropertiesOfCurrentItem:(id)a3;
- (void)_updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer;
- (void)_updateClosedCaptionLayerBounds:(id)a3 videoRelativeToViewport:(const CGRect *)a4 captionsAvoidanceMargins:(const NSEdgeInsets *)a5;
- (void)_updateConnectionToSecondScreen;
- (void)_updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression;
- (void)_updateDecoderPixelBufferAttributes:(id)a3 onFigPlayer:(OpaqueFigPlayer *)a4;
- (void)_updateFigPlayerItemsToPrebufferArray;
- (void)_updatePixelBufferAttributesForLayer:(id)a3;
- (void)_updateProxyTimebaseFromNewCurrentItem;
- (void)_updateSharedNetworkCoordinationOnFigPlayer;
- (void)_updateVideoTargetsOnFigPlayer:(id)a3 withCompletionHandler:(id)a4;
- (void)_willEnterForeground:(id)a3;
- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)addTaggedBufferOutput:(id)a3;
- (void)addVideoTarget:(OpaqueFigVideoTarget *)a3;
- (void)dealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)pause;
- (void)pauseWithoutAffectingCoordinatedPlayback;
- (void)play;
- (void)playImmediatelyAtRate:(float)rate;
- (void)prepareItem:(id)a3 withCompletionHandler:(id)a4;
- (void)prerollAtRate:(float)rate completionHandler:(void *)completionHandler;
- (void)prerollOperationDidComplete:(BOOL)a3 notificationPayload:(__CFDictionary *)a4;
- (void)removeAudioPlaybackRateLimits;
- (void)removeTaggedBufferOutput:(id)a3;
- (void)removeTimeObserver:(id)observer;
- (void)removeVideoTarget:(OpaqueFigVideoTarget *)a3;
- (void)replaceCurrentItemWithPlayerItem:(AVPlayerItem *)item;
- (void)seekToDate:(NSDate *)date;
- (void)seekToDate:(NSDate *)date completionHandler:(void *)completionHandler;
- (void)seekToTime:(CMTime *)time;
- (void)seekToTime:(CMTime *)time completionHandler:(void *)completionHandler;
- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter;
- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter completionHandler:(void *)completionHandler;
- (void)setActionAtItemEnd:(AVPlayerActionAtItemEnd)actionAtItemEnd;
- (void)setActiveVideoTargetsForInterstitials:(unsigned __int8)a3;
- (void)setAllowsExternalPlayback:(BOOL)allowsExternalPlayback;
- (void)setAllowsLegibleFallbackForAllAudibleMediaSelections:(BOOL)a3;
- (void)setAllowsOutOfBandTextTrackRendering:(BOOL)a3;
- (void)setAllowsPixelBufferPoolSharing:(BOOL)a3;
- (void)setAppliesMediaSelectionCriteriaAutomatically:(BOOL)appliesMediaSelectionCriteriaAutomatically;
- (void)setAudioOutputDeviceUniqueID:(NSString *)audioOutputDeviceUniqueID;
- (void)setAudioSession:(id)a3;
- (void)setAudiovisualBackgroundPlaybackPolicy:(AVPlayerAudiovisualBackgroundPlaybackPolicy)audiovisualBackgroundPlaybackPolicy;
- (void)setAutoSwitchStreamVariants:(BOOL)a3;
- (void)setAutomaticallyWaitsToMinimizeStalling:(BOOL)automaticallyWaitsToMinimizeStalling;
- (void)setBackgroundPIPAuthorizationToken:(id)a3;
- (void)setCaptionPipelineStrategy:(id)a3;
- (void)setCaptionRenderingStrategy:(id)a3;
- (void)setClosedCaptionDisplayEnabled:(BOOL)closedCaptionDisplayEnabled;
- (void)setDefaultExternalPlaybackPriority;
- (void)setDefaultNonMixableAudioPriority;
- (void)setDefaultRate:(float)defaultRate;
- (void)setDimensionsOfReservedVideoMemory:(CGSize)a3;
- (void)setDisallowsAMRAudio:(BOOL)a3;
- (void)setDisallowsHardwareAcceleratedVideoDecoder:(BOOL)a3;
- (void)setExpectedAssetTypes:(id)a3;
- (void)setExternalPlaybackInterstitialSchedulingStrategy:(int64_t)a3;
- (void)setExternalPlaybackPriority:(BOOL)a3;
- (void)setExternalPlaybackVideoGravity:(AVLayerVideoGravity)externalPlaybackVideoGravity;
- (void)setLegibleFallbackMediaSelectionCriteria:(id)a3;
- (void)setLocalCoplaybackEnabled:(BOOL)a3;
- (void)setLocalCoplaybackVolume:(float)a3;
- (void)setLoggingIdentifier:(id)a3;
- (void)setMasterClock:(CMClockRef)masterClock;
- (void)setMaxRateForAudioPlayback:(float)a3;
- (void)setMediaSelectionCriteria:(AVPlayerMediaSelectionCriteria *)criteria forMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (void)setMinRateForAudioPlayback:(float)a3;
- (void)setMultichannelAudioStrategy:(id)a3;
- (void)setMuted:(BOOL)muted;
- (void)setNetworkResourcePriority:(int64_t)a3;
- (void)setNonMixableAudioPriority:(BOOL)a3;
- (void)setOutputContext:(id)a3;
- (void)setPlayerRole:(id)a3 synchronously:(BOOL)a4;
- (void)setPreferredVideoDecoderGPURegistryID:(uint64_t)preferredVideoDecoderGPURegistryID;
- (void)setPrefersPlayingSilentlyWhenConflictingWithOtherPlayback:(BOOL)a3;
- (void)setPreparesItemsForPlaybackAsynchronously:(BOOL)a3;
- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)preventsAutomaticBackgroundingDuringVideoPlayback;
- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)preventsDisplaySleepDuringVideoPlayback;
- (void)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5 options:(id)a6;
- (void)setRate:(float)rate;
- (void)setRate:(float)rate time:(CMTime *)itemTime atHostTime:(CMTime *)hostClockTime;
- (void)setResourceConservationLevelWhilePaused:(int64_t)a3;
- (void)setShouldReduceResourceUsage:(BOOL)a3;
- (void)setShouldWaitForVideoTarget:(BOOL)a3;
- (void)setSourceClock:(CMClockRef)sourceClock;
- (void)setSupportsSpeedRamps:(BOOL)a3;
- (void)setUsesAirPlayVideoWhileAirPlayScreenIsActive:(BOOL)usesAirPlayVideoWhileAirPlayScreenIsActive;
- (void)setUsesAudioOnlyModeForExternalPlayback:(BOOL)a3;
- (void)setUsesDedicatedNotificationQueueForMediaServices:(BOOL)a3;
- (void)setUsesExternalPlaybackWhileExternalScreenIsActive:(BOOL)usesExternalPlaybackWhileExternalScreenIsActive;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setVibrationPattern:(id)a3;
- (void)setVideoOutput:(id)a3;
- (void)setVideoOutput:(id)a3 withOwningTaggedBufferOutput:(id)a4;
- (void)setVolume:(float)volume;
- (void)syncAudioSessionToInterstitialPlayer:(id)a3;
- (void)willChangeValueForKey:(id)a3;
@end

@implementation AVPlayer

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();
    fig_note_initialize_category_with_default_work();
    FigKTraceInit();
    if (dyld_program_sdk_at_least())
    {
      sWaitsToMinimizeStallingByDefault = 1;
      sSetRateAtHostTimeThrowsWhenWaitingToMinimizeStalling = 1;
    }

    [a1 registerForScreenConnectionChanges];
  }
}

+ (void)registerForScreenConnectionChanges
{
  CMNotificationCenterGetDefaultLocalCenter();
  objc_opt_class();
  FPSupport_GetDisplayVideoRangeNotificationSingleton();

  CMNotificationCenterAddListener();
}

- (AVPlayerItem)currentItem
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:95];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"currentItem" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__AVPlayer_currentItem__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

- (AVPlayer)init
{
  v33.receiver = self;
  v33.super_class = AVPlayer;
  v34 = [[AVTelemetryInterval alloc] initAndStartWith:83];
  v2 = [(AVPlayer *)&v33 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVPlayerInternal);
    v2->_player = v3;
    if (v3)
    {
      v2->_player->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v2];
      v2->_player->stateDispatchQueue = MEMORY[0x1E69E96A0];
      dispatch_retain(v2->_player->stateDispatchQueue);
      v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_player->figConfigurationQueue = dispatch_queue_create("com.apple.avplayer.figplayer", v4);
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_player->layerInteractionQueue = dispatch_queue_create("com.apple.avplayer.playerlayer", v5);
      v2->_player->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayer.ivars");
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_player->currentItemPropertyUpdateQueue = dispatch_queue_create("com.apple.avplayer.current-item-properties", v6);
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_player->configurationQueue = dispatch_queue_create("com.apple.avplayer.configuration", v7);
      if ([objc_opt_class() worksAroundConcurrentKVOCrash])
      {
        v8 = AVMakeBlockSchedulerThatSerializesBlocksPrefersSynchronousExecutionAndAllowsReentrantExecution();
      }

      else
      {
        v8 = AVMakeBlockSchedulerThatExecutesBlocksSynchronously();
      }

      v2->_player->KVOChangeSerializer = v8;
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_player->layersQ = dispatch_queue_create("com.apple.avplayer.layers", v9);
      v2->_player->closedCaptionLayers = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2->_player->subtitleLayers = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2->_player->avPlayerLayers = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v2->_player->videoTargets = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v2->_player->videoLayers = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *MEMORY[0x1E695E480];
      v2->_player->videoTargetsForInterstitialPlayer = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v2->_player->playerCaptionLayers = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v2->_player->items = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
      v2->_player->itemsInFigPlayQueue = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v2->_player->queueModifications = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v2->_player->externalPlaybackVideoGravity = @"AVLayerVideoGravityResizeAspect";
      v2->_player->pixelBufferAttributeMediator = objc_alloc_init(AVPixelBufferAttributeMediator);
      v2->_player->volume = 1.0;
      v2->_player->minRateForAudioPlayback = -INFINITY;
      v2->_player->maxRateForAudioPlayback = INFINITY;
      v2->_player->currentItemPresentationSize = *MEMORY[0x1E695F060];
      v2->_player->currentItemNonForcedSubtitlesEnabled = 0;
      v2->_player->itemsToPrebuffer = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2->_player->itemsToPrebufferRequireUpdate = 0;
      v2->_player->pendingFigPlayerProperties = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_player->preventsDisplaySleepDuringVideoPlayback = 1;
      v2->_player->preventsAutomaticBackgroundingDuringVideoPlayback = 1;
      v2->_player->handlersToCallWhenReadyToPlay = objc_alloc_init(MEMORY[0x1E695DF70]);
      v2->_player->displaysUsedForPlayback = 0;
      v2->_player->needsToCreateFigPlayer = 1;
      timebaseOut[0] = 0;
      HostTimeClock = CMClockGetHostTimeClock();
      if (!CMTimebaseCreateWithSourceClock(v10, HostTimeClock, timebaseOut))
      {
        CMTimebaseCreateReadOnlyTimebase();
      }

      if (timebaseOut[0])
      {
        CFRelease(timebaseOut[0]);
      }

      v2->_player->loggingIdentifier = +[AVPlayer makePlayerLoggingIdentifier];
      v2->_player->audiovisualBackgroundPlaybackPolicy = 1;
      v2->_player->ensuresActiveAudioSessionWhenStartingPlayback = 1;
      v2->_player->prerollIDMutex = FigSimpleMutexCreate();
      v2->_player->nextPrerollIDToGenerate = 0;
      v2->_player->pendingPrerollID = 0;
      v2->_player->prerollCompletionHandler = 0;
      v2->_player->rateChangeIdentifier = 0;
      [(AVPlayer *)v2 setActionAtItemEnd:1];
      [(AVPlayer *)v2 setAllowsExternalPlayback:dyld_program_sdk_at_least()];
      v2->_player->routingPlaybackArbiter = [MEMORY[0x1E6958820] sharedRoutingPlaybackArbiter];
      [(AVRoutingPlaybackArbiter *)v2->_player->routingPlaybackArbiter registerParticipant:v2];
      if (dyld_program_sdk_at_least())
      {
        [(AVPlayer *)v2 setAppliesMediaSelectionCriteriaAutomatically:1];
      }

      [(AVPlayer *)v2 _setPendingFigPlayerProperty:&unk_1F0AD3388 forKey:*MEMORY[0x1E6973368]];
      v2->_player->rateState = [[AVPlayerRateState alloc] initWithAutomaticallyWaitsToMinimizeStalling:sWaitsToMinimizeStallingByDefault usesLegacyAutomaticWaitingBehavior:sWaitsToMinimizeStallingByDefault ^ 1u timeControlStatus:0];
      [(AVPlayer *)v2 _updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer];
      v2->_player->playbackCoordinator = [[AVPlayerPlaybackCoordinator alloc] initWithPlayer:v2];
      v2->_player->applicationStateMonitor = +[AVApplicationStateMonitor sharedApplicationStateMonitor];
      objc_initWeak(timebaseOut, v2);
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __16__AVPlayer_init__block_invoke;
      v31[3] = &unk_1E7460BB0;
      objc_copyWeak(&v32, timebaseOut);
      v2->_player->didFinishSuspensionNotificationToken = [v12 addObserverForName:@"_UIApplicationDidFinishSuspensionSnapshotNotification" object:0 queue:0 usingBlock:v31];
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __16__AVPlayer_init__block_invoke_2;
      v29[3] = &unk_1E7460BB0;
      objc_copyWeak(&v30, timebaseOut);
      v2->_player->didEnterBackgroundNotificationToken = [v13 addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v29];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __16__AVPlayer_init__block_invoke_3;
      v27[3] = &unk_1E7460BB0;
      objc_copyWeak(&v28, timebaseOut);
      v2->_player->willEnterForegroundNotificationToken = [v14 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v27];
      v15 = [MEMORY[0x1E696AD88] defaultCenter];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __16__AVPlayer_init__block_invoke_4;
      v25[3] = &unk_1E7460BB0;
      objc_copyWeak(&v26, timebaseOut);
      v2->_player->layerForegroundingChangeToken = [v15 addObserverForName:@"AVPlayerLayerIsPartOfForegroundSceneDidChangeNotification" object:0 queue:0 usingBlock:v25];
      v2->_player->IAPDCallbackToken = [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2->_player->IAPDCallbackToken, avplayer_iapdNotificationCallback, @"com.apple.iapd.notify.extendedMode", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v17 = [MEMORY[0x1E696AD88] defaultCenter];
      v18 = objc_opt_class();
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __16__AVPlayer_init__block_invoke_5;
      v23 = &unk_1E7460BB0;
      objc_copyWeak(&v24, timebaseOut);
      v2->_player->supportsSharedNetworkCoordinationToken = [v17 addObserverForName:@"sharedNetworkCoordinationChanged" object:v18 queue:0 usingBlock:&v20];
      v2->_player->logPerformanceData = CFPreferencesGetAppBooleanValue(@"avplayer_logperformance", @"com.apple.avfoundation", 0) == 1;
      v2->_player->fullyInitializedAndNotDeallocating = 1;
      v2->_player->defaultRate = 1.0;
      v2->_player->coPlaybackEnabled = 0;
      v2->_player->coPlaybackVolume = 1.0;
      v2->_player->participatesInAudioSession = 1;
      [objc_opt_class() playbackObjectCreated];
      if (+[AVPlayer isObservationEnabled])
      {
        v2->_player->observationRegistrar = objc_alloc_init(AVPlayerObservationRegistrar);
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&v32);
      objc_destroyWeak(timebaseOut);
    }

    else
    {

      v2 = 0;
    }
  }

  AVTelemetryIntervalEnd(&v34);
  return v2;
}

+ (id)makePlayerLoggingIdentifier
{
  v2 = [[AVCommonLoggingIdentifier alloc] initWithIdentifierSuffix:0x1F0A91870 prefixlength:2];

  return v2;
}

- (OpaqueFigPlayer)_copyFigPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__AVPlayer__copyFigPlayer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __26__AVPlayer__copyFigPlayer__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 784);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __84__AVPlayer__updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  v3 = [*(a1 + 32) _copyFigPlayer];
  if (v2)
  {
    v4 = [v2 _preferredPixelBufferAttributes];
    v5 = [v2 _suppressesVideoLayers];
    [*(*(*(a1 + 32) + 8) + 24) setRequestedPixelBufferAttributes:v4 forKey:@"currentItem"];
    [*(*(*(a1 + 32) + 8) + 24) setLayersAreSuppressed:v5];
  }

  else
  {
    [*(*(*(a1 + 32) + 8) + 24) removeRequestedPixelBufferAttributesAttributesForKey:@"currentItem"];
  }

  [*(a1 + 32) _updateDecoderPixelBufferAttributes:objc_msgSend(*(*(*(a1 + 32) + 8) + 24) onFigPlayer:{"mediatedPixelBufferAttributes"), v3}];
  if (v3)
  {

    CFRelease(v3);
  }
}

id __23__AVPlayer_currentItem__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 176);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression
{
  figConfigurationQueue = self->_player->figConfigurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AVPlayer__updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figConfigurationQueue, block);
}

id __32__AVPlayer__closedCaptionLayers__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 728)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_closedCaptionLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  layersQ = self->_player->layersQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVPlayer__closedCaptionLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(layersQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (OpaqueFigPlayerInterstitialCoordinator)_copyInterstitialCoordinatorIfCreated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__AVPlayer_AVPlayerInterstitialSupport_Internal___copyInterstitialCoordinatorIfCreated__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __87__AVPlayer_AVPlayerInterstitialSupport_Internal___copyInterstitialCoordinatorIfCreated__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 264);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_interstitialPlayerIfCreated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AVPlayer_AVPlayerInterstitialSupport_Internal___interstitialPlayerIfCreated__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __78__AVPlayer_AVPlayerInterstitialSupport_Internal___interstitialPlayerIfCreated__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 248);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer
{
  figConfigurationQueue = self->_player->figConfigurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVPlayer__updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figConfigurationQueue, block);
}

uint64_t __66__AVPlayer__updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) automaticallyWaitsToMinimizeStalling];
  v3 = *MEMORY[0x1E695E4C0];
  if (v2)
  {
    v4 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = *MEMORY[0x1E695E4C0];
  }

  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E69731C8];
  if (*(v5[1] + 784))
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(FigBaseObject, v6, v4);
    }

    v9 = FigPlayerGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v12 = *(VTable + 8);
    result = VTable + 8;
    v13 = *(v12 + 56);
    if (v13)
    {
      v14 = *MEMORY[0x1E69731A0];

      return v13(v9, v14, v3);
    }
  }

  else
  {
    [v5 _setPendingFigPlayerProperty:v4 forKey:*MEMORY[0x1E69731C8]];
    v15 = *(a1 + 32);
    v16 = *MEMORY[0x1E69731A0];

    return [v15 _setPendingFigPlayerProperty:v3 forKey:v16];
  }

  return result;
}

- (BOOL)automaticallyWaitsToMinimizeStalling
{
  v4 = [[AVTelemetryInterval alloc] initAndStartWith:101];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"automaticallyWaitsToMinimizeStalling" on:self];
  LOBYTE(self) = [-[AVPlayer _rateState](self "_rateState")];
  AVTelemetryIntervalEnd(&v4);
  return self;
}

- (id)_rateState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__AVPlayer__rateState__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __22__AVPlayer__rateState__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 504);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (void)playbackObjectCreated
{
  if (sStaticGetQueueOnce != -1)
  {
    +[AVPlayer(AVPlayerObservation) isObservationEnabled];
  }

  v3 = sStaticQueue;

  dispatch_sync(v3, &__block_literal_global_1388);
}

+ (BOOL)isObservationEnabled
{
  if (sStaticGetQueueOnce != -1)
  {
    +[AVPlayer(AVPlayerObservation) isObservationEnabled];
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVPlayer_AVPlayerObservation__isObservationEnabled__block_invoke;
  block[3] = &unk_1E7462C30;
  block[4] = &v5;
  dispatch_sync(sStaticQueue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)dealloc
{
  v34 = *MEMORY[0x1E69E9840];
  player = self->_player;
  if (player)
  {
    player->fullyInitializedAndNotDeallocating = 0;
    v4 = self->_player;
    if (v4->didFinishSuspensionNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_player;
    }

    if (v4->didEnterBackgroundNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_player;
    }

    if (v4->willEnterForegroundNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v4 = self->_player;
    }

    if (v4->layerForegroundingChangeToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self->_player->IAPDCallbackToken, @"com.apple.iapd.notify.extendedMode", 0);
    [+[AVCallbackContextRegistry sharedCallbackContextRegistry](AVCallbackContextRegistry "sharedCallbackContextRegistry")];
    if (self->_player->supportsSharedNetworkCoordinationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    }

    [(AVPlayer *)self _removeFPListeners];
    [(AVPlayer *)self _removePropertyObserversOfCurrentItemCalledOnStateDispatchQueueChecked:self->_player->currentItem];
    [(AVPlayer *)self _removeAllLayersAndVideoTargets];
    v6 = self->_player;
    if (v6->figPlayer)
    {
      if (v6->IOwnTheFigPlayer)
      {
        FigBaseObject = FigPlayerGetFigBaseObject();
        if (FigBaseObject)
        {
          v8 = FigBaseObject;
          v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
          if (v9)
          {
            v9(v8);
          }
        }
      }
    }

    v10 = self->_player;
    videoTargetsForInterstitialPlayer = v10->videoTargetsForInterstitialPlayer;
    if (videoTargetsForInterstitialPlayer)
    {
      CFRelease(videoTargetsForInterstitialPlayer);
      v10 = self->_player;
    }

    v12 = self->_player;
    proxyTimebase = v12->proxyTimebase;
    if (proxyTimebase)
    {
      CFRelease(proxyTimebase);
      v12 = self->_player;
    }

    if (v12->currentItemSuppressesVideoLayersNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v12 = self->_player;
    }

    if (v12->currentItemPreferredPixelBufferAttributesNotificationToken)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      v12 = self->_player;
    }

    v14 = self->_player;
    layersQ = v14->layersQ;
    if (layersQ)
    {
      dispatch_release(layersQ);
      v14 = self->_player;
    }

    routingPlaybackArbiter = self->_player->routingPlaybackArbiter;
    if (routingPlaybackArbiter)
    {
      [(AVRoutingPlaybackArbiter *)routingPlaybackArbiter deregisterParticipant:self];
    }

    if (dword_1ED5AC2F8)
    {
      v33 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v18 = self->_player;
    figPlayer = v18->figPlayer;
    if (figPlayer)
    {
      CFRelease(figPlayer);
      v18 = self->_player;
    }

    figSourceClock = v18->figSourceClock;
    if (figSourceClock)
    {
      CFRelease(figSourceClock);
      v18 = self->_player;
    }

    if (self->_player->prerollCompletionHandler)
    {
      NSLog(&cfstr_AvplayerPDeall.isa, self);
    }

    FigSimpleMutexDestroy();
    v21 = self->_player;
    stateDispatchQueue = v21->stateDispatchQueue;
    if (stateDispatchQueue)
    {
      dispatch_release(stateDispatchQueue);
      v21 = self->_player;
    }

    figConfigurationQueue = v21->figConfigurationQueue;
    if (figConfigurationQueue)
    {
      dispatch_release(figConfigurationQueue);
      v21 = self->_player;
    }

    layerInteractionQueue = v21->layerInteractionQueue;
    if (layerInteractionQueue)
    {
      dispatch_release(layerInteractionQueue);
      v21 = self->_player;
    }

    ivarAccessQueue = v21->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      v21 = self->_player;
    }

    currentItemPropertyUpdateQueue = v21->currentItemPropertyUpdateQueue;
    if (currentItemPropertyUpdateQueue)
    {
      dispatch_release(currentItemPropertyUpdateQueue);
      v21 = self->_player;
    }

    configurationQueue = v21->configurationQueue;
    if (configurationQueue)
    {
      dispatch_release(configurationQueue);
      v21 = self->_player;
    }

    v28 = self->_player;
    interstitialEventCoordinator = v28->interstitialEventCoordinator;
    if (interstitialEventCoordinator)
    {
      CFRelease(interstitialEventCoordinator);
      v28 = self->_player;
    }
  }

  v31.receiver = self;
  v31.super_class = AVPlayer;
  [(AVPlayer *)&v31 dealloc];
}

- (void)_removeFPListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_player->figPlayer)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVPlayer *)self _weakReference];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(AVPlayer *)self _fpNotificationNames];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v3 removeListenerWithWeakReference:v4 callback:avplayer_fpNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_player->figPlayer];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_removeAllLayersAndVideoTargets
{
  player = self->_player;
  if (player->figPlayer)
  {
    [(AVPlayer *)self _reevaluateVideoLayersAndTargetsForPresentationState:3];
    [(AVPlayer *)self _detachClosedCaptionLayersFromFigPlayer:self->_player->figPlayer];
    [(AVPlayer *)self _detachFigPlayerFromSubtitleLayers];
    player = self->_player;
  }

  [(NSMutableArray *)player->videoLayers removeAllObjects];
  [(NSMutableArray *)self->_player->closedCaptionLayers removeAllObjects];
  [(NSMutableArray *)self->_player->subtitleLayers removeAllObjects];
  [(NSHashTable *)self->_player->avPlayerLayers removeAllObjects];
  playerCaptionLayers = self->_player->playerCaptionLayers;

  [(NSHashTable *)playerCaptionLayers removeAllObjects];
}

- (id)_nameForLogging
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayer__nameForLogging__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__AVPlayer__nameForLogging__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nameForLogging_fromIvarAccessQueue")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_nameForLogging_fromIvarAccessQueue
{
  if (!self->_player->loggingIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  loggingIdentifier = self->_player->loggingIdentifier;

  return [(AVLoggingIdentifier *)loggingIdentifier name];
}

- (BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:126];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"preventsDisplaySleepDuringVideoPlayback" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AVPlayer_AVPlayerVideoDisplaySleepPrevention__preventsDisplaySleepDuringVideoPlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (BOOL)_hasCurrentInterstitialEvent
{
  v3 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  [(AVPlayer *)self _nameForLogging];
  if (!v3)
  {
    return 0;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v4)
  {
    v5 = v4(v3);
    v6 = v5 != 0;
    if (v5)
    {
      CFRelease(v5);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

- (id)_synchronizeWithNewCurrentItem
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  [(AVPlayer *)self willChangeValueForKey:@"cachedPresentationSizeOfCurrentItem"];
  currentItemPropertyUpdateQueue = self->_player->currentItemPropertyUpdateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(currentItemPropertyUpdateQueue, v6);
  [(AVPlayer *)self didChangeValueForKey:@"cachedPresentationSizeOfCurrentItem"];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentItem];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    if (![v2 _isReadyForInspectionOfPresentationSize])
    {
      return;
    }

    v3 = [*(*(*(a1 + 40) + 8) + 40) isNonForcedSubtitleDisplayEnabled];
    v12 = *MEMORY[0x1E695F060];
    [*(*(*(a1 + 40) + 8) + 40) _getCachedPresentationSize:&v12];
    v4 = *(a1 + 32);
    v5 = *(*(v4 + 8) + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke_2;
    v9[3] = &unk_1E74624E8;
    v9[4] = v4;
    v10 = v12;
    v11 = v3;
    v6 = v9;
  }

  else
  {
    v7 = *(a1 + 32);
    v5 = *(*(v7 + 8) + 56);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke_3;
    v8[3] = &unk_1E7460C00;
    v8[4] = v7;
    v6 = v8;
  }

  av_readwrite_dispatch_queue_write(v5, v6);
}

- (void)_updateProxyTimebaseFromNewCurrentItem
{
  figConfigurationQueue = self->_player->figConfigurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AVPlayer__updateProxyTimebaseFromNewCurrentItem__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figConfigurationQueue, block);
}

void __50__AVPlayer__updateProxyTimebaseFromNewCurrentItem__block_invoke(uint64_t a1)
{
  timebaseOut = [objc_msgSend(*(a1 + 32) "currentItem")];
  if (!timebaseOut)
  {
    v2 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v2, HostTimeClock, &timebaseOut);
    v4 = timebaseOut;
    CMTimebaseGetTime(&v5, *(*(*(a1 + 32) + 8) + 80));
    CMTimebaseSetTime(v4, &v5);
  }

  FigReadOnlyTimebaseSetTargetTimebase();
  if (timebaseOut)
  {
    CFRelease(timebaseOut);
  }
}

- (BOOL)_preservesAudioSessionSampleRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__AVPlayer_AVPlayerAudioSessionParticipant___preservesAudioSessionSampleRate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_participatesInAudioSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayer_AVPlayerAudioSessionParticipant___participatesInAudioSession__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_supportsAdvanceTimeForOverlappedPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__AVPlayer_AVPlayerAdvanceWithOverlap___supportsAdvanceTimeForOverlappedPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)supportsSpeedRamps
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayer_AVPlayerSpeedRamp__supportsSpeedRamps__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (AVAudioSession)audioSession
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVPlayer_AVPlayerAudioSessionParticipant__audioSession__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __57__AVPlayer_AVPlayerAudioSessionParticipant__audioSession__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 216);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)shouldWaitForVideoTarget
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayer_FigVideoTargetSupport__shouldWaitForVideoTarget__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)outputObscuredDueToInsufficientExternalProtection
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"isOutputObscuredDueToInsufficientExternalProtection" on:self];
  ivarAccessQueue = v2->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__AVPlayer_AVPlayerProtectedContentPrivate__outputObscuredDueToInsufficientExternalProtection__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = v2;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (AVPlayer)playerWithURL:(NSURL *)URL
{
  v3 = [[a1 alloc] initWithURL:URL];

  return v3;
}

+ (AVPlayer)playerWithPlayerItem:(AVPlayerItem *)item
{
  v3 = [[a1 alloc] initWithPlayerItem:item];

  return v3;
}

- (AVPlayer)initWithPlayerItem:(AVPlayerItem *)item
{
  v18 = [[AVTelemetryInterval alloc] initAndStartWith:85];
  v6 = [(AVPlayer *)self init];
  v7 = v6;
  if (item && v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v7;
      v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v7 userInfo:{a2, @"Item must be an instance of AVPlayerItem.", v10, v11, v12, v13, v14, v16), 0}];
      objc_exception_throw(v15);
    }

    [(AVPlayerItem *)item _attachToPlayer:v7];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31__AVPlayer_initWithPlayerItem___block_invoke_2;
    v17[3] = &unk_1E7460DF0;
    v17[4] = v7;
    v17[5] = item;
    [(AVPlayer *)v7 _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:&__block_literal_global_5 modificationBlock:v17 error:0];
  }

  AVTelemetryIntervalEnd(&v18);
  return v7;
}

- (AVPlayer)initWithURL:(NSURL *)URL
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:84];
  v5 = [(AVPlayer *)self initWithPlayerItem:[AVPlayerItem playerItemWithURL:URL]];
  AVTelemetryIntervalEnd(&v7);
  return v5;
}

uint64_t __16__AVPlayer_init__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didFinishSuspension:a2 withCompletionHandler:0];
}

uint64_t __16__AVPlayer_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didEnterBackground:a2];
}

uint64_t __16__AVPlayer_init__block_invoke_3(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _willEnterForeground:a2];
}

uint64_t __16__AVPlayer_init__block_invoke_4(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _layerForegroundStateChanged:a2];
}

uint64_t __16__AVPlayer_init__block_invoke_5(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateSharedNetworkCoordinationOnFigPlayer];
}

- (AVPlayer)initWithDispatchQueue:(id)a3
{
  v4 = [(AVPlayer *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    player = v4->_player;
    stateDispatchQueue = player->stateDispatchQueue;
    if (stateDispatchQueue)
    {
      dispatch_release(stateDispatchQueue);
      player = v5->_player;
    }

    player->stateDispatchQueue = a3;
    dispatch_retain(v5->_player->stateDispatchQueue);
  }

  return v5;
}

- (AVPlayer)initWithFigPlayer:(OpaqueFigPlayer *)a3
{
  v4 = [(AVPlayer *)self init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      v4->_player->figPlayer = CFRetain(a3);
      v5->_player->needsToCreateFigPlayer = 0;
      v5->_player->IOwnTheFigPlayer = 0;
      v5->_player->status = 1;
      [(AVPlayer *)v5 _addFPListeners];
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

+ (AVPlayer)playerWithFigPlayer:(OpaqueFigPlayer *)a3
{
  v3 = [[a1 alloc] initWithFigPlayer:a3];

  return v3;
}

- (void)didChangeValueForKey:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVPlayer;
  [(AVPlayer *)&v5 didChangeValueForKey:?];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:a3 on:self];
}

- (void)willChangeValueForKey:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVPlayer;
  [(AVPlayer *)&v5 willChangeValueForKey:?];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:a3 on:self];
}

- (void)addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v13.receiver = self;
  v13.super_class = AVPlayer;
  [(AVPlayer *)&v13 addObserver:a3 forKeyPath:a4 options:a5 & 0xFFFFFFFFFFFFFFFBLL context:?];
  if ((a5 & 4) != 0)
  {
    v12.receiver = self;
    v12.super_class = AVPlayer;
    [(AVPlayer *)&v12 addObserver:a3 forKeyPath:a4 options:a5 context:a6];
    v11.receiver = self;
    v11.super_class = AVPlayer;
    [(AVPlayer *)&v11 removeObserver:a3 forKeyPath:a4 context:a6];
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"masterClock"])
  {

    return [(AVPlayer *)self masterClock];
  }

  else if ([a3 isEqualToString:@"sourceClock"])
  {

    return [(AVPlayer *)self sourceClock];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVPlayer;
    return [(AVPlayer *)&v6 valueForUndefinedKey:a3];
  }
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if ([a4 isEqualToString:@"masterClock"])
  {

    [(AVPlayer *)self setMasterClock:a3];
  }

  else if ([a4 isEqualToString:@"sourceClock"])
  {

    [(AVPlayer *)self setSourceClock:a3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AVPlayer;
    [(AVPlayer *)&v7 setValue:a3 forUndefinedKey:a4];
  }
}

- (AVPlayerStatus)status
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:86];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"status" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__AVPlayer_status__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

- (NSError)error
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"error" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __17__AVPlayer_error__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __17__AVPlayer_error__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 168);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_changeStatusToFailedWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  [(AVPlayer *)self willChangeValueForKey:@"error"];
  [(AVPlayer *)self willChangeValueForKey:@"rate"];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AVPlayer__changeStatusToFailedWithError___block_invoke;
  v10[3] = &unk_1E7460F30;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = &v13;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (*(v14 + 24) == 1)
  {
    [-[AVPlayer _items](self "_items")];
  }

  [(AVPlayer *)self didChangeValueForKey:@"rate", v8, v9];
  v7 = [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:@"AVPlayerRateDidChangeReasonStatusChanged" reasonIsExtendedDiagnostic:1 rateChangeIdentifier:0 rateChangeOriginator:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVPlayer *)self didChangeValueForKey:@"error"];
  _Block_object_dispose(&v13, 8);
}

uint64_t __43__AVPlayer__changeStatusToFailedWithError___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 160) != 2)
  {
    v2 = result;
    *(v1 + 160) = 2;
    result = [*(result + 40) copy];
    *(*(*(v2 + 32) + 8) + 168) = result;
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateDecoderPixelBufferAttributes:(id)a3 onFigPlayer:(OpaqueFigPlayer *)a4
{
  if (a4)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E6973238];

      v6(FigBaseObject, v7, a3);
    }
  }
}

- (id)_updateAudioSessionOnFigPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  figConfigurationQueue = self->_player->figConfigurationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayer__updateAudioSessionOnFigPlayer__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(figConfigurationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__AVPlayer__updateAudioSessionOnFigPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) audioSession];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (v4)
    {
      [v4 opaqueSessionID];
      SInt32 = FigCFNumberCreateSInt32();
      if (SInt32)
      {
        v6 = SInt32;
        FigBaseObject = FigPlayerGetFigBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v8)
        {
          v8(FigBaseObject, *MEMORY[0x1E69731B0], v6);
        }

        if (dword_1ED5AC2F8)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(v6);
      }

      else
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    CFRelease(v3);
  }
}

- (void)_setCurrentItem:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  currentItem = self->_player->currentItem;
  if (currentItem != a3)
  {
    v6 = currentItem;
    if (dword_1ED5AC2F8)
    {
      v12 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v8 = a3;

    self->_player->currentItem = a3;
    configurationQueue = self->_player->configurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__AVPlayer__setCurrentItem___block_invoke;
    block[3] = &unk_1E7460E90;
    block[4] = v6;
    block[5] = self;
    block[6] = a3;
    dispatch_async(configurationQueue, block);
  }
}

void __28__AVPlayer__setCurrentItem___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _stopObservingPropertiesOfCurrentItem:?];
  }

  if (*(a1 + 48))
  {
    [*(a1 + 40) _startObservingPropertiesOfCurrentItem:?];
  }

  v2 = *(a1 + 32);
}

__n128 __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 520) = result;
  *(*(*(a1 + 32) + 8) + 536) = *(a1 + 56);
  return result;
}

__n128 __42__AVPlayer__synchronizeWithNewCurrentItem__block_invoke_3(uint64_t a1)
{
  result = *MEMORY[0x1E695F060];
  *(*(*(a1 + 32) + 8) + 520) = *MEMORY[0x1E695F060];
  *(*(*(a1 + 32) + 8) + 536) = 0;
  return result;
}

- (BOOL)_runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:(id)a3 modificationBlock:(id)a4 error:(id *)a5
{
  [(AVPlayer *)self willChangeItems];
  v9 = objc_alloc_init(AVResult);
  v30 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__6;
  v24 = __Block_byref_object_dispose__6;
  v25 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke;
  v19[3] = &unk_1E7462510;
  v19[8] = &v26;
  v19[9] = &v20;
  v19[4] = v9;
  v19[5] = self;
  v19[6] = a3;
  v19[7] = a4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v19);
  v11 = v21[5];
  if (![(AVResult *)v9 isFailed])
  {
    player = self->_player;
    if (*(v27 + 24) == 1)
    {
      KVOChangeSerializer = player->KVOChangeSerializer;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_2;
      v18[3] = &unk_1E7462588;
      v18[4] = self;
      v18[5] = v9;
      v18[6] = a3;
      v18[7] = a4;
      v18[8] = &v20;
      [(AVBlockScheduler *)KVOChangeSerializer scheduleBlock:v18];
      if ([(AVResult *)v9 isFailed])
      {
        goto LABEL_7;
      }
    }

    else
    {
      stateDispatchQueue = player->stateDispatchQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_3;
      v17[3] = &unk_1E7460C00;
      v17[4] = self;
      AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v17);
    }

    [(AVResult *)v9 markAsCompleted];
  }

LABEL_7:
  [(AVResult *)v9 getStatus:&v30 error:a5];

  [(AVPlayer *)self didChangeItems];
  v15 = v30 == 1;
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v15;
}

id __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke(uint64_t a1)
{
  v3 = 0;
  if (((*(*(a1 + 48) + 16))() & 1) == 0)
  {
    return [*(a1 + 32) markAsFailedWithError:v3];
  }

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    return (*(*(a1 + 56) + 16))();
  }

  result = *(*(*(a1 + 40) + 8) + 176);
  *(*(*(a1 + 72) + 8) + 40) = result;
  return result;
}

void __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_2(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v2 = [*(a1 + 32) _hasCurrentInterstitialEvent];
  v3 = [*(a1 + 32) _nameForLogging];
  if (dword_1ED5AC2F8)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) willChangeValueForKey:{@"currentItem", v17, v21}];
  if (dword_1ED5AC2F8)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) willChangeValueForKey:{@"timeControlStatus", v18, v22}];
  [*(a1 + 32) willChangeValueForKey:@"reasonForWaitingToPlay"];
  v26[0] = MEMORY[0x1E69E9820];
  v6 = *(a1 + 48);
  v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v8 = *(*(*(a1 + 32) + 8) + 56);
  v26[1] = 3221225472;
  v26[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_453;
  v26[3] = &unk_1E7462538;
  v30 = &v34;
  v29 = v6;
  v27 = v7;
  v31 = v2;
  v28 = v3;
  av_readwrite_dispatch_queue_write(v8, v26);
  if (([*(a1 + 40) isFailed] & 1) == 0 && *(v35 + 24) == 1)
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) _synchronizeWithNewCurrentItem];
    [*(a1 + 32) _updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression];
  }

  if (dword_1ED5AC2F8)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v33;
    if (os_log_type_enabled(v9, type))
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFE;
    }

    if (v11)
    {
      v38 = 136315394;
      v39 = "[AVPlayer _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:]_block_invoke";
      v40 = 2114;
      v41 = v3;
      LODWORD(v23) = 22;
      v19 = &v38;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) didChangeValueForKey:{@"currentItem", v19, v23}];
  if (dword_1ED5AC2F8)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v13 = v33;
    if (os_log_type_enabled(v12, type))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v38 = 136315394;
      v39 = "[AVPlayer _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:]_block_invoke";
      v40 = 2114;
      v41 = v3;
      LODWORD(v24) = 22;
      v20 = &v38;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 32) didChangeValueForKey:{@"timeControlStatus", v20, v24}];
  [*(a1 + 32) didChangeValueForKey:@"reasonForWaitingToPlay"];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (([*(a1 + 40) isFailed] & 1) == 0)
  {
    v15 = *(a1 + 32);
    v16 = *(*(v15 + 8) + 32);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_454;
    v25[3] = &unk_1E7460C00;
    v25[4] = v15;
    AVSerializeOnQueueAsyncIfNecessary(v16, v25);
    if (*(v35 + 24) == 1)
    {
      [*(a1 + 32) _updateProxyTimebaseFromNewCurrentItem];
    }
  }

  _Block_object_dispose(&v34, 8);
}

void __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_453(uint64_t a1)
{
  if ((*(*(a1 + 56) + 16))())
  {
    (*(*(a1 + 64) + 16))();
    if (*(*(*(a1 + 72) + 8) + 24) == 1)
    {
      v2 = [*(*(*(a1 + 40) + 8) + 504) rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:*(*(*(a1 + 40) + 8) + 176) != 0 hasCurrentInterstitialEvent:*(a1 + 80) nameForLogging:*(a1 + 48)];
      if (dword_1ED5AC2F8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = v2;

      *(*(*(a1 + 40) + 8) + 504) = v2;
    }
  }

  else
  {
    [*(a1 + 32) markAsFailedWithError:0];
  }
}

uint64_t __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_454(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_2_455;
  v3[3] = &unk_1E7462560;
  v3[4] = v1;
  return [v1 _applyPlayQueueChangesToFigPlayerWithCompletionHandler:v3];
}

uint64_t __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_2_455(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) _removeItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_4;
  v3[3] = &unk_1E7462560;
  v3[4] = v1;
  return [v1 _applyPlayQueueChangesToFigPlayerWithCompletionHandler:v3];
}

uint64_t __109__AVPlayer__runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock_modificationBlock_error___block_invoke_4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) _removeItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (CGSize)_cachedPresentationSizeOfCurrentItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVPlayer__cachedPresentationSizeOfCurrentItem__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __48__AVPlayer__cachedPresentationSizeOfCurrentItem__block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 520);
  result = *v1;
  *(*(*(a1 + 40) + 8) + 32) = *v1;
  return result;
}

- (void)_noteNewPresentationSizeForPlayerItem:(id)a3
{
  [(AVPlayer *)self willChangeValueForKey:@"cachedPresentationSizeOfCurrentItem"];
  currentItemPropertyUpdateQueue = self->_player->currentItemPropertyUpdateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVPlayer__noteNewPresentationSizeForPlayerItem___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(currentItemPropertyUpdateQueue, v6);
  [(AVPlayer *)self didChangeValueForKey:@"cachedPresentationSizeOfCurrentItem"];
}

void __50__AVPlayer__noteNewPresentationSizeForPlayerItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  if (*(a1 + 40) == v2)
  {
    v7 = *MEMORY[0x1E695F060];
    [v2 _getCachedPresentationSize:&v7];
    v3 = *(a1 + 32);
    v4 = *(*(v3 + 8) + 56);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__AVPlayer__noteNewPresentationSizeForPlayerItem___block_invoke_2;
    v5[3] = &unk_1E74625B0;
    v5[4] = v3;
    v6 = v7;
    av_readwrite_dispatch_queue_write(v4, v5);
  }
}

__n128 __50__AVPlayer__noteNewPresentationSizeForPlayerItem___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 520) = result;
  return result;
}

- (BOOL)_cachedNonForcedSubtitleDisplayEnabledForCurrentItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AVPlayer__cachedNonForcedSubtitleDisplayEnabledForCurrentItem__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_noteNewNonForcedSubtitleDisplayEnabledForPlayerItem:(id)a3
{
  currentItemPropertyUpdateQueue = self->_player->currentItemPropertyUpdateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AVPlayer__noteNewNonForcedSubtitleDisplayEnabledForPlayerItem___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(currentItemPropertyUpdateQueue, v4);
}

void __65__AVPlayer__noteNewNonForcedSubtitleDisplayEnabledForPlayerItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentItem];
  if (*(a1 + 40) == v2)
  {
    v3 = [v2 isNonForcedSubtitleDisplayEnabled];
    v4 = *(a1 + 32);
    v5 = *(*(v4 + 8) + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AVPlayer__noteNewNonForcedSubtitleDisplayEnabledForPlayerItem___block_invoke_2;
    v6[3] = &unk_1E7460E40;
    v6[4] = v4;
    v7 = v3;
    av_readwrite_dispatch_queue_write(v5, v6);
  }
}

- (void)_startObservingPropertiesOfCurrentItem:(id)a3
{
  v5 = [(AVPlayer *)self _weakReference];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AVPlayer__startObservingPropertiesOfCurrentItem___block_invoke;
  v9[3] = &unk_1E74625D8;
  v9[4] = v5;
  self->_player->currentItemSuppressesVideoLayersNotificationToken = [v6 addObserverForName:@"AVPlayerItemSuppressesVideoLayersDidChangeNotification" object:a3 queue:0 usingBlock:v9];
  [(AVPlayer *)self _updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AVPlayer__startObservingPropertiesOfCurrentItem___block_invoke_2;
  v8[3] = &unk_1E74625D8;
  v8[4] = v5;
  self->_player->currentItemPreferredPixelBufferAttributesNotificationToken = [v7 addObserverForName:0x1F0A90750 object:a3 queue:0 usingBlock:v8];
  [(AVPlayer *)self _updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression];
}

uint64_t __51__AVPlayer__startObservingPropertiesOfCurrentItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 _updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression];
}

uint64_t __51__AVPlayer__startObservingPropertiesOfCurrentItem___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 _updateCurrentItemPreferredPixelBufferAttributesAndVideoLayerSuppression];
}

- (void)_removePropertyObserversOfCurrentItemCalledOnStateDispatchQueueChecked:(id)a3
{
  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];

  self->_player->currentItemSuppressesVideoLayersNotificationToken = 0;
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  self->_player->currentItemPreferredPixelBufferAttributesNotificationToken = 0;
}

- (void)_itemIsReadyToPlay:(id)a3
{
  v5 = [(AVPlayer *)self currentItem];
  if (v5 == a3 && [(AVPlayerItem *)v5 status]== AVPlayerItemStatusReadyToPlay && self->_player->reevaluateBackgroundPlayback)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__AVPlayer__itemIsReadyToPlay___block_invoke;
    v6[3] = &unk_1E7460C00;
    v6[4] = self;
    AVEnsureNotOnMainThread(v6);
    self->_player->reevaluateBackgroundPlayback = 0;
  }
}

void __31__AVPlayer__itemIsReadyToPlay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemOkayToPlayWhileTransitioningToBackground:{objc_msgSend(*(a1 + 32), "currentItem")}];
  v3 = *(a1 + 32);
  v4 = *(*(v3 + 8) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVPlayer__itemIsReadyToPlay___block_invoke_2;
  v5[3] = &unk_1E7460FA8;
  v5[4] = v3;
  v5[5] = v2;
  AVSerializeOnQueueAsyncIfNecessary(v4, v5);
}

uint64_t __31__AVPlayer__itemIsReadyToPlay___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground];
  if ((result & 1) == 0 && !*(a1 + 40))
  {
    v3 = *(a1 + 32);

    return [v3 pause];
  }

  return result;
}

- (void)_advanceCurrentItemAccordingToFigPlaybackItem:(OpaqueFigPlaybackItem *)a3
{
  v25[16] = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC2F8)
  {
    v22 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = [(NSArray *)self->_player->itemsInFigPlayQueue copy:v15];
  v7 = v6;
  v25[0] = MEMORY[0x1E695E0F0];
  if (!a3 || !AVPlayerFindItemMatchingFigPlaybackItem(v6, a3, v25))
  {
    v8 = [(AVPlayer *)self _copyFigPlayer];
    cf = 0;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9)
    {
      v9(v8, 0, &cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (cf)
    {
      if (!AVPlayerFindItemMatchingFigPlaybackItem(v7, cf, v25))
      {
        v25[0] = v7;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v25[0] = v7;
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v25[0];
  v11 = [v25[0] countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AVPlayer *)self _removeItem:*(*(&v17 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)_advanceToNextItem
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC2F8)
  {
    v9 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__AVPlayer__advanceToNextItem__block_invoke;
  v7[3] = &unk_1E7462600;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AVPlayer__advanceToNextItem__block_invoke_2;
  v6[3] = &unk_1E7460C00;
  v6[4] = self;
  [(AVPlayer *)self _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:v7 modificationBlock:v6 error:0, v4, v5];
}

- (void)_createPlayerForTypeOfItem:(id)a3 withCompletionHandler:(id)a4
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke;
  v5[3] = &unk_1E74626A0;
  v5[5] = a3;
  v5[6] = a4;
  v5[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v5);
}

void __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (*(v3 + 784))
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else if (*(a1 + 40))
  {
    v5 = *(v3 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_2;
    v10[3] = &unk_1E7462650;
    v6 = *(a1 + 48);
    v10[4] = v2;
    v10[5] = v6;
    av_readwrite_dispatch_queue_write(v5, v10);
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 800) == 1)
    {
      *(v7 + 800) = 0;
      v8 = [*(a1 + 40) asset];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_4;
      v9[3] = &unk_1E7462678;
      v9[4] = *(a1 + 32);
      AVPlayerGetFigPlayerTypeForAsset(v8, v9);
    }
  }
}

void __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_3;
  v3[3] = &unk_1E7462628;
  v3[4] = *(a1 + 40);
  v2 = [v3 copy];
  [*(*(*(a1 + 32) + 8) + 296) addObject:v2];
}

uint64_t __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_5;
  v4[3] = &unk_1E7462560;
  v4[4] = v2;
  return [v2 _createAndConfigureFigPlayerWithType:a2 completionHandler:v4];
}

uint64_t __61__AVPlayer__createPlayerForTypeOfItem_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) _removeItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)prepareItem:(id)a3 withCompletionHandler:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Item must be a non-nil instance of AVPlayerItem.", v8, v9, v10, v11, v12, v14[0]), 0}];
    objc_exception_throw(v13);
  }

  [a3 _attachToPlayer:self];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__AVPlayer_prepareItem_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E74626C8;
  v14[4] = a3;
  v14[5] = a4;
  [(AVPlayer *)self _createPlayerForTypeOfItem:a3 withCompletionHandler:v14];
}

- (void)_insertItem:(id)a3 afterItem:(id)a4
{
  v14[24] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  if (dword_1ED5AC2F8)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [a3 _attachToPlayer:{self, v8, v9}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__AVPlayer__insertItem_afterItem___block_invoke;
  v11[3] = &unk_1E74626F0;
  v11[4] = self;
  v11[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__AVPlayer__insertItem_afterItem___block_invoke_2;
  v10[3] = &unk_1E7460E90;
  v10[4] = a4;
  v10[5] = self;
  v10[6] = a3;
  if (!-[AVPlayer _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:](self, "_runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:", v11, v10, v14) && [v14[0] code] == -11999)
  {
    objc_exception_throw([objc_msgSend(v14[0] "userInfo")]);
  }
}

uint64_t __34__AVPlayer__insertItem_afterItem___block_invoke(uint64_t a1, BOOL *a2, uint64_t *a3)
{
  v6 = [*(*(*(a1 + 32) + 8) + 192) containsObject:*(a1 + 40)];
  if (v6)
  {
    *a3 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An AVPlayerItem can occupy only one position in a player's queue at a time." userInfo:0]);
  }

  else
  {
    *a2 = *(*(*(a1 + 32) + 8) + 176) == 0;
  }

  return v6 ^ 1u;
}

uint64_t __34__AVPlayer__insertItem_afterItem___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    result = [*(*(a1[5] + 8) + 192) containsObject:?];
    if (!result)
    {
      return result;
    }

    v3 = a1[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[5];
  v5 = a1[6];

  return [v4 _addItemToLinkedList_invokeOnIvarAccessQueue:v5 afterItem:v3];
}

- (id)_pendingFigPlayerProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayer__pendingFigPlayerProperties__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __39__AVPlayer__pendingFigPlayerProperties__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 208) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_pendingFigPlayerPropertyForKey:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVPlayer__pendingFigPlayerPropertyForKey___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __44__AVPlayer__pendingFigPlayerPropertyForKey___block_invoke(void *a1)
{
  result = [*(*(a1[4] + 8) + 208) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_setPendingFigPlayerProperty:(id)a3 forKey:(id)a4
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayer__setPendingFigPlayerProperty_forKey___block_invoke;
  v5[3] = &unk_1E7460E90;
  v5[4] = a3;
  v5[5] = self;
  v5[6] = a4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

uint64_t __48__AVPlayer__setPendingFigPlayerProperty_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 208);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

+ (int)_createFigPlayerWithType:(int64_t)a3 options:(__CFDictionary *)a4 player:(OpaqueFigPlayer *)a5
{
  [a1 _enableCelestePlayer];
  v6 = FigSharedPlayerCreateWithOptions();
  if (a5)
  {
    *a5 = 0;
  }

  return v6;
}

- (void)_createAndConfigureFigPlayerWithType:(int64_t)a3 completionHandler:(id)a4
{
  v29 = 0;
  v7 = +[AVPlayer _makePlayerName];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6973098], [(AVPlayer *)self _nameForLogging]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69730A8], v7);
  v9 = *MEMORY[0x1E69730B0];
  v10 = [(AVPlayer *)self _preservesAudioSessionSampleRate];
  v11 = *MEMORY[0x1E695E4D0];
  v12 = *MEMORY[0x1E695E4C0];
  if (v10)
  {
    v13 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v13 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, v9, v13);
  v14 = *MEMORY[0x1E69730A0];
  if ([(AVPlayer *)self _participatesInAudioSession])
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  CFDictionarySetValue(Mutable, v14, v15);
  v16 = *MEMORY[0x1E6973090];
  v17 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973090]];
  if (v17)
  {
    CFDictionarySetValue(Mutable, v16, v17);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6973078], v12);
  }

  v18 = *MEMORY[0x1E69730C0];
  if ([(AVPlayer *)self _supportsAdvanceTimeForOverlappedPlayback])
  {
    v19 = v11;
  }

  else
  {
    v19 = v12;
  }

  CFDictionarySetValue(Mutable, v18, v19);
  v20 = *MEMORY[0x1E6973088];
  if ([(AVPlayer *)self supportsSpeedRamps])
  {
    v21 = v11;
  }

  else
  {
    v21 = v12;
  }

  CFDictionarySetValue(Mutable, v20, v21);
  v22 = [(AVPlayer *)self audioSession];
  v23 = v22;
  if (v22)
  {
    [(AVAudioSession *)v22 opaqueSessionID];
    FigCFDictionarySetInt32();
  }

  if ([(AVPlayer *)self shouldWaitForVideoTarget])
  {
    v24 = v11;
  }

  else
  {
    v24 = v12;
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E69730B8], v24);
  v25 = [objc_opt_class() _createFigPlayerWithType:a3 options:Mutable player:&v29];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRetain(v29);
    v26 = v29;
  }

  else
  {
    v26 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke;
  v27[3] = &unk_1E7462768;
  v27[7] = a4;
  v27[8] = v26;
  v28 = v25;
  v27[4] = self;
  v27[5] = v7;
  v27[6] = v23;
  AVEnsureNotOnMainThread(v27);
  if (v29)
  {
    CFRelease(v29);
  }
}

__n128 __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke(uint64_t a1)
{
  v61[4] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v2 = *(a1 + 64);
  if (v2 && !*(a1 + 72))
  {
    BOOLean = 0;
    v9 = *MEMORY[0x1E695E480];
    FigBaseObject = FigPlayerGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v12 = v11(FigBaseObject, *MEMORY[0x1E69732C8], v9, &BOOLean);
      v13 = BOOLean;
      if (v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = BOOLean == 0;
      }

      if (v14)
      {
        v8 = 0;
      }

      else
      {
        v8 = CFBooleanGetValue(BOOLean) != 0;
        v13 = BOOLean;
      }

      if (v13)
      {
        CFRelease(v13);
        BOOLean = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v57 = 0;
    v15 = FigPlayerGetFigBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v17 = v16(v15, *MEMORY[0x1E69732D0], v9, &v57);
      v18 = v57;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = v57 == 0;
      }

      if (v19)
      {
        v5 = 0;
      }

      else
      {
        v5 = CFBooleanGetValue(v57) != 0;
        v18 = v57;
      }

      if (v18)
      {
        CFRelease(v18);
        v57 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (v8)
    {
      v4 = 1;
    }

    else
    {
      v56 = 0;
      v20 = FigPlayerGetFigBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v21)
      {
        v22 = v21(v20, *MEMORY[0x1E69732D8], v9, &v56);
        v23 = v56;
        if (v22)
        {
          v24 = 1;
        }

        else
        {
          v24 = v56 == 0;
        }

        if (v24)
        {
          v4 = 0;
        }

        else
        {
          v4 = CFBooleanGetValue(v56) != 0;
          v23 = v56;
        }

        if (v23)
        {
          CFRelease(v23);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    v25 = FigPlayerGetFigBaseObject();
    v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v26)
    {
      v26(v25, *MEMORY[0x1E6973308], v9, &v59);
    }

    v56 = 0;
    v27 = FigPlayerGetFigBaseObject();
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v28)
    {
      v29 = v28(v27, *MEMORY[0x1E6973380], v9, &v56);
      v30 = v56;
      if (v29)
      {
        v31 = 1;
      }

      else
      {
        v31 = v56 == 0;
      }

      if (v31)
      {
        v6 = 0;
        if (v29 == -12784)
        {
          v7 = 0;
        }

        else
        {
          v7 = v29;
        }
      }

      else
      {
        v7 = 0;
        v6 = CFBooleanGetValue(v56) != 0;
        v30 = v56;
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    else
    {
      v6 = 0;
      v7 = -12782;
    }

    v32 = *MEMORY[0x1E695E4D0];
    v33 = *MEMORY[0x1E6973220];
    v60[0] = *MEMORY[0x1E6973160];
    v60[1] = v33;
    v61[0] = v32;
    v61[1] = v32;
    v34 = *MEMORY[0x1E6973260];
    v60[2] = *MEMORY[0x1E6973288];
    v60[3] = v34;
    v61[2] = v32;
    v61[3] = v32;
    v35 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:{4), "mutableCopy"}];
    v36 = v35;
    if (*(*(*(a1 + 32) + 8) + 88) == 1)
    {
      [v35 setObject:v32 forKey:*MEMORY[0x1E69732B0]];
    }

    v37 = *(a1 + 64);
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v38)
    {
      v38(v37, v36, 0);
    }

    v2 = *(a1 + 64);
    v3 = v59;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v39 = *(a1 + 32);
  v40 = *(a1 + 48);
  v41 = *(*(a1 + 32) + 8);
  v45[1] = 3221225472;
  v42 = *(a1 + 72);
  v43 = *(v41 + 32);
  v45[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_2;
  v45[3] = &unk_1E7462740;
  v50 = v7;
  v51 = v42;
  v52 = v8;
  v53 = v4;
  v54 = v5;
  v48 = v2;
  v49 = v3;
  v55 = v6;
  v46 = v39;
  v47 = v40;
  AVSerializeOnQueueAsyncIfNecessary(v43, v45);
  return result;
}

void __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_2(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v86 = 0;
  v87 = &v86;
  v88 = 0x3052000000;
  v89 = __Block_byref_object_copy__6;
  v90 = __Block_byref_object_dispose__6;
  v91 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 32) willChangeValueForKey:@"status"];
  v2 = *(a1 + 64);
  if (!v2)
  {
    goto LABEL_42;
  }

  v3 = (a1 + 80);
  if (*(a1 + 80))
  {
    goto LABEL_42;
  }

  if (!*(a1 + 84))
  {
    v83[0] = MEMORY[0x1E69E9820];
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 32) + 8) + 56);
    v83[1] = 3221225472;
    v83[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_3;
    v83[3] = &unk_1E7460FF0;
    v85 = v2;
    v84 = v4;
    av_readwrite_dispatch_queue_write(v5, v83);
    [*(a1 + 32) _addFPListeners];
    number = 0;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = CMBaseObjectCopyProperty(FigBaseObject, *MEMORY[0x1E6973420], *MEMORY[0x1E695E480], &number);
    v8 = number;
    if (!v7 && number)
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, (a1 + 80));
      v8 = number;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (!*v3)
    {
      v9 = *(a1 + 88);
      if (v9 != [*(a1 + 32) _isAirPlayVideoActive])
      {
        [*(a1 + 32) willChangeValueForKey:@"airPlayVideoActive"];
        v10 = *(a1 + 32);
        v11 = *(*(v10 + 8) + 56);
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v80[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_4;
        v80[3] = &unk_1E7460E40;
        v80[4] = v10;
        v81 = *(a1 + 88);
        av_readwrite_dispatch_queue_write(v11, v80);
        [*(a1 + 32) didChangeValueForKey:@"airPlayVideoActive"];
      }

      v12 = *(a1 + 89);
      if (v12 != [*(a1 + 32) isExternalPlaybackActive])
      {
        [*(a1 + 32) willChangeValueForKey:@"externalPlaybackActive"];
        v13 = *(a1 + 32);
        v14 = *(*(v13 + 8) + 56);
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_5;
        v78[3] = &unk_1E7460E40;
        v78[4] = v13;
        v79 = *(a1 + 89);
        av_readwrite_dispatch_queue_write(v14, v78);
        [*(a1 + 32) didChangeValueForKey:@"externalPlaybackActive"];
      }

      v15 = *(a1 + 32);
      v16 = *(*(v15 + 8) + 56);
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_6;
      v76[3] = &unk_1E7460E40;
      v76[4] = v15;
      v77 = *(a1 + 90);
      av_readwrite_dispatch_queue_write(v16, v76);
      if (*(a1 + 72))
      {
        [*(a1 + 32) willChangeValueForKey:@"mxSessionID"];
        v17 = *(a1 + 32);
        v18 = *(*(v17 + 8) + 56);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_7;
        v75[3] = &unk_1E7460FA8;
        v19 = *(a1 + 72);
        v75[4] = v17;
        v75[5] = v19;
        av_readwrite_dispatch_queue_write(v18, v75);
        [*(a1 + 32) didChangeValueForKey:@"mxSessionID"];
      }

      if ([*(a1 + 32) _updateAudioSessionOnFigPlayer] != *(a1 + 48) && dword_1ED5AC2F8)
      {
        v74 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v21 = *(a1 + 91);
      if (v21 != [*(a1 + 32) _isPIPModePossible])
      {
        [*(a1 + 32) willChangeValueForKey:@"PIPModePossible"];
        v22 = *(a1 + 32);
        v23 = *(*(v22 + 8) + 56);
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_478;
        v71[3] = &unk_1E7460E40;
        v71[4] = v22;
        v72 = *(a1 + 91);
        av_readwrite_dispatch_queue_write(v23, v71);
        [*(a1 + 32) didChangeValueForKey:@"PIPModePossible"];
      }

      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"avplaybackcoordinator_always", @"com.apple.avfoundation", 0);
      v25 = [*(a1 + 32) _clientRequestedPlaybackCoordinator];
      if (AppBooleanValue == 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      if (v26 == 1)
      {
        [*(a1 + 32) _ensureFigPlaybackCoordinatorIsConnected];
      }

      v27 = *(a1 + 32);
      v28 = *(*(v27 + 8) + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_2_482;
      block[3] = &unk_1E7460C00;
      block[4] = v27;
      dispatch_sync(v28, block);
      v29 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6973490], *MEMORY[0x1E6973340], *MEMORY[0x1E6973158], *MEMORY[0x1E6973250], *MEMORY[0x1E69733F8], *MEMORY[0x1E69733C0], *MEMORY[0x1E6973320], *MEMORY[0x1E69731D0], *MEMORY[0x1E6973178], *MEMORY[0x1E6973460], *MEMORY[0x1E69732E0], *MEMORY[0x1E6973188], *MEMORY[0x1E6973468], *MEMORY[0x1E6973290], *MEMORY[0x1E69732E8], *MEMORY[0x1E6973450], *MEMORY[0x1E6973360], *MEMORY[0x1E6973448], *MEMORY[0x1E6973388], *MEMORY[0x1E6973300], *MEMORY[0x1E6973330], *MEMORY[0x1E6973318], *MEMORY[0x1E69731F0], *MEMORY[0x1E6973408], *MEMORY[0x1E69732C0], *MEMORY[0x1E69731B8], *MEMORY[0x1E69731F8], *MEMORY[0x1E6973480], *MEMORY[0x1E6973248], *MEMORY[0x1E6973170], *MEMORY[0x1E69733F0], *MEMORY[0x1E6973288], *MEMORY[0x1E6973190], *MEMORY[0x1E69731A8], *MEMORY[0x1E69731C0], *MEMORY[0x1E69733D0], *MEMORY[0x1E6973168], *MEMORY[0x1E6973338], *MEMORY[0x1E69733C8], *MEMORY[0x1E69731C8], *MEMORY[0x1E69731A0], *MEMORY[0x1E6973418], 0, *MEMORY[0x1E69732E8], *MEMORY[0x1E6973290], *MEMORY[0x1E6973468], *MEMORY[0x1E6973188], *MEMORY[0x1E69732E0], *MEMORY[0x1E6973460], *MEMORY[0x1E6973178], *MEMORY[0x1E69731D0], *MEMORY[0x1E6973320], *MEMORY[0x1E69733C0], *MEMORY[0x1E69733F8], *MEMORY[0x1E6973250], *MEMORY[0x1E6973158], *MEMORY[0x1E6973340], *MEMORY[0x1E6973490], MEMORY[0x1E695DFD8]}];
      v30 = *(a1 + 32);
      v31 = *(*(v30 + 8) + 40);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_3_490;
      v69[3] = &unk_1E7460FF0;
      v69[4] = v29;
      v69[5] = v30;
      v69[6] = *(a1 + 64);
      dispatch_sync(v31, v69);
      v32 = [*(a1 + 32) _pendingFigPlayerProperties];
      v33 = *(*(*(a1 + 32) + 8) + 784);
      v34 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v34)
      {
        v34(v33, v32, 0);
      }

      if ([*(a1 + 32) _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973470]])
      {
        v35 = *(*(*(a1 + 32) + 8) + 784);
        v36 = *(CMBaseObjectGetVTable() + 24);
        if (v36)
        {
          v37 = *(v36 + 8);
          if (v37)
          {
            v37(v35);
          }
        }
      }

      v38 = *(a1 + 32);
      v39 = *(*(v38 + 8) + 40);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_4_491;
      v68[3] = &unk_1E7460FA8;
      v40 = *(a1 + 64);
      v68[4] = v38;
      v68[5] = v40;
      dispatch_sync(v39, v68);
      v41 = FigPlayerGetFigBaseObject();
      v42 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v42)
      {
        v42(v41, *MEMORY[0x1E6973410], *MEMORY[0x1E695E4C0]);
      }

      v43 = FigPlayerGetFigBaseObject();
      v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v44)
      {
        v44(v43, *MEMORY[0x1E6973198], *MEMORY[0x1E695E4D0]);
      }

      if ([*(a1 + 32) _shouldAttachVideoDestinationsToFigPlayerOnStateQueue])
      {
        [*(a1 + 32) _hasForegroundVideoDestinations];
        [*(a1 + 32) _isVideoPlaybackAllowedWhileInBackground];
        [*(a1 + 32) _hasAssociatedAVPlayerLayerInPIPMode];
        [*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground];
        [*(a1 + 32) _reevaluateVideoLayersAndTargetsForPresentationState:0];
      }

      [*(a1 + 32) _attachClosedCaptionLayersToFigPlayer];
      [*(a1 + 32) _attachFigPlayerToSubtitleLayers];
      [*(a1 + 32) _setNeroVideoGravityOnFigPlayer];
      [*(a1 + 32) _updateSharedNetworkCoordinationOnFigPlayer];
      v45 = *(a1 + 32);
      v46 = *(*(v45 + 8) + 56);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_5_498;
      v67[3] = &unk_1E7460C00;
      v67[4] = v45;
      av_readwrite_dispatch_queue_write(v46, v67);
      v47 = *(a1 + 32);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_6_499;
      v66[3] = &unk_1E7462718;
      v66[4] = v47;
      v66[5] = &v86;
      [v47 _applyLinkedListOfItemsToFigPlayerUsingBlock:v66];
    }

    if (!*(a1 + 64))
    {
      goto LABEL_42;
    }
  }

  if (*v3 || *(a1 + 84))
  {
LABEL_42:
    [*(a1 + 32) _changeStatusToFailedWithError:{AVLocalizedErrorWithUnderlyingOSStatus(*(a1 + 80), 0)}];
  }

  [*(a1 + 32) didChangeValueForKey:@"status"];
  v48 = *(a1 + 56);
  if (v48)
  {
    (*(v48 + 16))(v48, v87[5]);
  }

  if ([*(a1 + 32) status] == 1)
  {
    v93 = 0;
    v94 = &v93;
    v95 = 0x3052000000;
    v96 = __Block_byref_object_copy__6;
    v97 = __Block_byref_object_dispose__6;
    v98 = 0;
    v49 = *(a1 + 32);
    v50 = *(*(v49 + 8) + 56);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_7_501;
    v65[3] = &unk_1E7460E68;
    v65[5] = &v93;
    v65[4] = v49;
    av_readwrite_dispatch_queue_read(v50, v65);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v51 = v94[5];
    v52 = [v51 countByEnumeratingWithState:&v61 objects:v92 count:16];
    if (v52)
    {
      v53 = *v62;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v62 != v53)
          {
            objc_enumerationMutation(v51);
          }

          (*(*(*(&v61 + 1) + 8 * i) + 16))();
        }

        v52 = [v51 countByEnumeratingWithState:&v61 objects:v92 count:16];
      }

      while (v52);
    }

    _Block_object_dispose(&v93, 8);
  }

  [objc_msgSend(*(a1 + 32) "_interstitialPlayerIfCreated")];
  v55 = [*(a1 + 32) _copyInterstitialCoordinatorIfCreated];
  if (v55)
  {
    v56 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v56)
    {
      v56(v55);
    }

    CFRelease(v55);
  }

  v57 = *(a1 + 64);
  if (v57)
  {
    CFRelease(v57);
  }

  v58 = *(a1 + 72);
  if (v58)
  {
    CFRelease(v58);
  }

  _Block_object_dispose(&v86, 8);
}

void __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  *(*(a1[4] + 8) + 784) = v2;
  *(*(a1[4] + 8) + 240) = 1;
  v3 = a1[5];
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 280);
  *(v4 + 280) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

id __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 576) = result;
  return result;
}

uint64_t __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_2_482(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingFigPlayerPropertyForKey:@"AVPlayer_FigPlayerProperty_Rate"];
  if (v2)
  {
    [v2 floatValue];
    v4 = v3;
    v5 = [*(a1 + 32) _pendingFigPlayerPropertyForKey:@"AVPlayer_FigPlayerProperty_RateOptions"];
    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      v6 = *(*(*(a1 + 32) + 8) + 784);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v7)
      {
        v7(v6, v5, v4);
      }
    }

    else if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v15 = *MEMORY[0x1E6960C70];
      v16 = *(MEMORY[0x1E6960C70] + 16);
      FigCFDictionaryGetCMTimeIfPresent();
      v8 = *(*(*(a1 + 32) + 8) + 784);
      v13 = v15;
      v14 = v16;
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v9)
      {
        v17 = v15;
        v18 = v16;
        v9(v8, &v17, v4);
      }
    }

    else
    {
      v10 = *(*(*(a1 + 32) + 8) + 784);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v11)
      {
        v11(v10, v4);
      }
    }
  }

  [*(a1 + 32) _setPendingFigPlayerProperty:0 forKey:{@"AVPlayer_FigPlayerProperty_Rate", v13, v14}];
  return [*(a1 + 32) _setPendingFigPlayerProperty:0 forKey:@"AVPlayer_FigPlayerProperty_RateOptions"];
}

uint64_t __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_3_490(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [*(a1 + 40) _pendingFigPlayerPropertyForKey:v8];
        if (v9)
        {
          [v2 setObject:v9 forKey:v8];
        }

        [*(a1 + 40) _setPendingFigPlayerProperty:0 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v10 = *(*(*(a1 + 40) + 8) + 784);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v11)
  {
    v11(v10, v2, 0);
  }

  v12 = [*(a1 + 40) _cachedMediaSelectionCriteria];
  if (v12)
  {
    v13 = v12;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(FigBaseObject, *MEMORY[0x1E6973328], v13);
    }
  }

  v16 = [*(a1 + 40) legibleFallbackMediaSelectionCriteria];
  if (v16)
  {
    v17 = [v16 figDictionary];
    v18 = FigPlayerGetFigBaseObject();
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v19)
    {
      v19(v18, *MEMORY[0x1E69732F8], v17);
    }
  }

  if ([*(a1 + 40) allowsLegibleFallbackForAllAudibleMediaSelections])
  {
    v20 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v20 = MEMORY[0x1E695E4C0];
  }

  v21 = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v24 = *(VTable + 8);
  result = VTable + 8;
  v25 = *(v24 + 56);
  if (v25)
  {
    return v25(v21, *MEMORY[0x1E6973180], *v20);
  }

  return result;
}

uint64_t __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_4_491(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 24) mediatedPixelBufferAttributes];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updateDecoderPixelBufferAttributes:v2 onFigPlayer:v4];
}

uint64_t __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_6_499(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (([v8 _addToPlayQueueOfFigPlayerOfPlayer:*(a1 + 32) afterFigPlaybackItemOfItem:0] & 1) == 0)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __67__AVPlayer__createAndConfigureFigPlayerWithType_completionHandler___block_invoke_7_501(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(*(a1 + 32) + 8) + 296) copy];
  v2 = *(*(*(a1 + 32) + 8) + 296);

  return [v2 removeAllObjects];
}

- (void)setExpectedAssetTypes:(id)a3
{
  if (!self->_player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayer's expectedAssetTypes can't be after any AVPlayerItems have been enqueued or after the AVPlayer's status changes from AVPlayerStatusUnknown." userInfo:0]);
  }

  v5 = a3;

  self->_player->expectedAssetTypes = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AVPlayer_setExpectedAssetTypes___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = a3;
  v6[5] = self;
  AVEnsureNotOnMainThread(v6);
}

void __34__AVPlayer_setExpectedAssetTypes___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v6 |= [+[AVURLAsset _fileUTTypes](AVURLAsset "_fileUTTypes")];
        v5 |= [+[AVURLAsset _streamingUTTypes](AVURLAsset "_streamingUTTypes")];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
    LOBYTE(v6) = 0;
  }

  v10 = *(a1 + 40);
  v11 = *(*(v10 + 8) + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __34__AVPlayer_setExpectedAssetTypes___block_invoke_2;
  v12[3] = &unk_1E7462790;
  v13 = v6 & 1;
  v14 = v5 & 1;
  v12[4] = v10;
  dispatch_async(v11, v12);
}

uint64_t __34__AVPlayer_setExpectedAssetTypes___block_invoke_2(uint64_t result)
{
  v1 = *(result + 41);
  if (*(result + 40) != v1)
  {
    v2 = result;
    result = *(result + 32);
    if (*(*(result + 8) + 800) == 1)
    {
      v3 = MEMORY[0x1E6971508];
      if (!v1)
      {
        v3 = MEMORY[0x1E6971500];
      }

      [result _setPendingFigPlayerProperty:*v3 forKey:*MEMORY[0x1E6973298]];
      *(*(*(v2 + 32) + 8) + 800) = 0;
      v4 = *(v2 + 32);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __34__AVPlayer_setExpectedAssetTypes___block_invoke_3;
      v5[3] = &unk_1E7462560;
      v5[4] = v4;
      return [v4 _createAndConfigureFigPlayerWithType:v1 completionHandler:v5];
    }
  }

  return result;
}

uint64_t __34__AVPlayer_setExpectedAssetTypes___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) _removeItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)_setAncillaryPerformanceInformationForDisplay:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVPlayer__setAncillaryPerformanceInformationForDisplay___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __58__AVPlayer__setAncillaryPerformanceInformationForDisplay___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 496) = result;
  return result;
}

- (id)_ancillaryPerformanceInformationForDisplay
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVPlayer__ancillaryPerformanceInformationForDisplay__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addItemToLinkedList_invokeOnIvarAccessQueue:(id)a3 afterItem:(id)a4
{
  if (!a3)
  {
    [AVPlayer _addItemToLinkedList_invokeOnIvarAccessQueue:a2 afterItem:self];
  }

  [(NSMutableSet *)self->_player->items addObject:a3];
  lastItem = a4;
  if (!a4 && (player = self->_player, (lastItem = player->lastItem) == 0) || ([a3 _insertAfterItem:lastItem], player = self->_player, lastItem == player->lastItem))
  {
    player->lastItem = a3;
    player = self->_player;
  }

  if (!player->currentItem)
  {
    [(AVPlayer *)self _setCurrentItem:a3];
  }

  v9 = [AVPlayerQueueModificationDescription modificationForInsertingItem:a3 afterItem:a4];

  [(AVPlayer *)self _enqueuePlayQueueModification_invokeOnIvarAccessQueue:v9];
}

- (void)_applyLinkedListOfItemsToFigPlayerUsingBlock:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__AVPlayer__applyLinkedListOfItemsToFigPlayerUsingBlock___block_invoke;
  v6[3] = &unk_1E74627B8;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  (*(a3 + 2))(a3, v8[5], v14[5]);

  self->_player->itemsInFigPlayQueue = [v8[5] copy];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v13, 8);
}

uint64_t __57__AVPlayer__applyLinkedListOfItemsToFigPlayerUsingBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 32) + 8) + 200);
  *(*(*(a1 + 32) + 8) + 200) = objc_alloc_init(MEMORY[0x1E695DEC8]);
  result = [objc_msgSend(*(a1 + 32) "_items_invokeOnIvarAccessQueue")];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (void)_applyPlayQueueChangesToFigPlayerWithCompletionHandler:(id)a3
{
  player = self->_player;
  if (player->figPlayer)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = [MEMORY[0x1E695DF70] array];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __67__AVPlayer__applyPlayQueueChangesToFigPlayerWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E7462718;
    v13[4] = self;
    v13[5] = &v14;
    [(AVPlayer *)self _applyLinkedListOfItemsToFigPlayerUsingBlock:v13];
    (*(a3 + 2))(a3, v15[5]);
LABEL_11:
    _Block_object_dispose(&v14, 8);
    return;
  }

  if (player->needsToCreateFigPlayer)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3052000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = 0;
    ivarAccessQueue = player->ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__AVPlayer__applyPlayQueueChangesToFigPlayerWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v14;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    v7 = v15[5];
    if (v7)
    {
      v8 = [objc_msgSend(v7 "item")];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __67__AVPlayer__applyPlayQueueChangesToFigPlayerWithCompletionHandler___block_invoke_3;
      v11[3] = &unk_1E74627E0;
      v11[4] = self;
      v11[5] = a3;
      AVPlayerGetFigPlayerTypeForAsset(v8, v11);
      self->_player->needsToCreateFigPlayer = 0;
    }

    else
    {
      (*(a3 + 2))(a3, [MEMORY[0x1E695DEC8] array]);
    }

    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E695DEC8] array];
  v10 = *(a3 + 2);

  v10(a3, v9);
}

uint64_t __67__AVPlayer__applyPlayQueueChangesToFigPlayerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [v9 item];
        v11 = [v9 modificationType];
        if (v11 == 1)
        {
          [v10 _removeFromPlayQueueOfFigPlayerOfAttachedPlayer];
        }

        else if (!v11 && ([v10 _addToPlayQueueOfFigPlayerOfPlayer:*(a1 + 32) afterFigPlaybackItemOfItem:{objc_msgSend(v9, "afterItem")}] & 1) == 0)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

id __67__AVPlayer__applyPlayQueueChangesToFigPlayerWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 200) firstObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_enqueuePlayQueueModification_invokeOnIvarAccessQueue:(id)a3
{
  v4 = [(NSArray *)self->_player->queueModifications arrayByAddingObject:a3];

  self->_player->queueModifications = [(NSArray *)v4 copy];
}

- (void)_removeItemFromLinkedList_invokeOnIvarAccessQueue:(id)a3
{
  if (!a3)
  {
    [(AVPlayer *)a2 _removeItemFromLinkedList_invokeOnIvarAccessQueue:?];
  }

  player = self->_player;
  currentItem = player->currentItem;
  lastItem = player->lastItem;
  if (currentItem == a3)
  {
    v8 = [a3 _nextItem];
  }

  else
  {
    v8 = 0;
  }

  if (lastItem == a3)
  {
    v9 = [a3 _previousItem];
  }

  else
  {
    v9 = 0;
  }

  [(NSMutableSet *)self->_player->items removeObject:a3];
  [a3 _removeFromItems];
  if (lastItem == a3)
  {
    self->_player->lastItem = v9;
  }

  if (currentItem == a3)
  {
    [(AVPlayer *)self _setCurrentItem:v8];
  }

  v10 = [AVPlayerQueueModificationDescription modificationForRemovingItem:a3];

  [(AVPlayer *)self _enqueuePlayQueueModification_invokeOnIvarAccessQueue:v10];
}

uint64_t __24__AVPlayer__removeItem___block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 192) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _removeItemFromLinkedList_invokeOnIvarAccessQueue:v4];
  }

  return result;
}

- (void)replaceCurrentItemWithPlayerItem:(AVPlayerItem *)item
{
  v20[22] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20[0] = [[AVTelemetryInterval alloc] initAndStartWith:96];
  if (item)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Item must be an instance of AVPlayerItem.", v6, v7, v8, v9, v10, v13), 0}];
      goto LABEL_10;
    }
  }

  if (dword_1ED5AC2F8)
  {
    v18 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVPlayerItem *)item _attachToPlayer:self, v13, v14];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __45__AVPlayer_replaceCurrentItemWithPlayerItem___block_invoke;
  v16[3] = &unk_1E7462808;
  v16[4] = item;
  v16[5] = self;
  v16[6] = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__AVPlayer_replaceCurrentItemWithPlayerItem___block_invoke_2;
  v15[3] = &unk_1E7460DF0;
  v15[4] = self;
  v15[5] = item;
  if (!-[AVPlayer _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:](self, "_runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:modificationBlock:error:", v16, v15, &v19) && [v19 code] == -11999)
  {
    v12 = [objc_msgSend(v19 "userInfo")];
LABEL_10:
    objc_exception_throw(v12);
  }

  AVTelemetryIntervalEnd(v20);
}

uint64_t __45__AVPlayer_replaceCurrentItemWithPlayerItem___block_invoke(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  if (v5 == *(v6 + 176))
  {
    *a2 = 0;
    return 1;
  }

  else if (v5 && [*(v6 + 192) containsObject:?])
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(*(a1 + 40) userInfo:{*(a1 + 48), @"An AVPlayerItem can occupy only one position in a player's queue at a time.", v8, v9, v10, v11, v12, v16), 0}];
    v14 = AVErrorForClientProgrammingError(v13);
    result = 0;
    *a3 = v14;
  }

  else
  {
    result = 1;
    *a2 = 1;
  }

  return result;
}

- (void)_enumerateItemsUsingBlock:(id)a3
{
  currentItem = self->_player->currentItem;
  do
  {
    if (!currentItem)
    {
      break;
    }

    v5 = [(AVPlayerItem *)currentItem _nextItem];
    v6 = 0;
    (*(a3 + 2))(a3, currentItem, &v6);
    currentItem = v5;
  }

  while (v6 != 1);
}

- (id)_items_invokeOnIvarAccessQueue
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_player->items, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayer__items_invokeOnIvarAccessQueue__block_invoke;
  v5[3] = &unk_1E7462830;
  v5[4] = v3;
  [(AVPlayer *)self _enumerateItemsUsingBlock:v5];
  return v3;
}

- (id)_items
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__AVPlayer__items__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __18__AVPlayer__items__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_items_invokeOnIvarAccessQueue")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_removeAllItems
{
  v3 = MEMORY[0x1E69E9820];
  while (1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3052000000;
    v9 = __Block_byref_object_copy__6;
    v10 = __Block_byref_object_dispose__6;
    v11 = 0;
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __27__AVPlayer__removeAllItems__block_invoke;
    v5[3] = &unk_1E7460E68;
    v5[4] = self;
    v5[5] = &v6;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
    if (!v7[5])
    {
      break;
    }

    [(AVPlayer *)self _removeItem:?];

    _Block_object_dispose(&v6, 8);
  }

  _Block_object_dispose(&v6, 8);
}

id __27__AVPlayer__removeAllItems__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 184);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_itemsToPrebuffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVPlayer__itemsToPrebuffer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__AVPlayer__itemsToPrebuffer__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 696) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateFigPlayerItemsToPrebufferArray
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = __Block_byref_object_copy__6;
  v36 = __Block_byref_object_dispose__6;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__AVPlayer__updateFigPlayerItemsToPrebufferArray__block_invoke;
  v27[3] = &unk_1E74627B8;
  v27[4] = self;
  v27[5] = &v32;
  v27[6] = &v28;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v27);
  if (!v29[3])
  {
    goto LABEL_27;
  }

  if ([v33[5] count])
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v33[5];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v39 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          [v9 _attachToFigPlayer];
          v10 = [v9 _copyFigPlaybackItem];
          if (v10)
          {
            CFArrayAppendValue(Mutable, v10);
            CFRelease(v10);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v23 objects:v39 count:16];
      }

      while (v6);
    }
  }

  else
  {
    Mutable = 0;
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v12)
  {
    v13 = v12(FigBaseObject, *MEMORY[0x1E69732F0], Mutable);
    if (!Mutable)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v13 = -12782;
  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

LABEL_19:
  CFRelease(v29[3]);
  if (v13)
  {
    v14 = AVLocalizedErrorWithUnderlyingOSStatus(v13, 0);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = v33[5];
    v16 = [v15 countByEnumeratingWithState:&v19 objects:v38 count:16];
    if (v16)
    {
      v17 = *v20;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v19 + 1) + 8 * j) _playerChangeStatusToFailedWithError:v14];
        }

        v16 = [v15 countByEnumeratingWithState:&v19 objects:v38 count:16];
      }

      while (v16);
    }
  }

LABEL_27:
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

CFTypeRef __49__AVPlayer__updateFigPlayerItemsToPrebufferArray__block_invoke(void *a1)
{
  result = [*(*(a1[4] + 8) + 696) copy];
  *(*(a1[5] + 8) + 40) = result;
  v3 = *(a1[4] + 8);
  if (*(v3 + 704) == 1)
  {
    result = *(v3 + 784);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(a1[6] + 8) + 24) = result;
    v3 = *(a1[4] + 8);
  }

  *(v3 + 704) = 0;
  return result;
}

- (void)_setItemsToPrebuffer:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = [a3 copy];
  v5 = [a3 firstObject];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __33__AVPlayer__setItemsToPrebuffer___block_invoke;
  v15[3] = &unk_1E74627B8;
  v15[4] = self;
  v15[5] = &v16;
  v15[6] = &v22;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v15);
  if (*(v23 + 24))
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v11 objects:v26 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(a3);
          }

          [*(*(&v11 + 1) + 8 * i) _attachToPlayer:self];
        }

        v7 = [a3 countByEnumeratingWithState:&v11 objects:v26 count:16];
      }

      while (v7);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __33__AVPlayer__setItemsToPrebuffer___block_invoke_2;
    v10[3] = &unk_1E7460C00;
    v10[4] = self;
    [(AVPlayer *)self _createPlayerForTypeOfItem:v5 withCompletionHandler:v10];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __33__AVPlayer__setItemsToPrebuffer___block_invoke(void *a1)
{
  result = [*(*(a1[5] + 8) + 40) isEqualToArray:*(*(a1[4] + 8) + 696)];
  if ((result & 1) == 0)
  {

    result = *(*(a1[5] + 8) + 40);
    *(*(a1[4] + 8) + 696) = result;
    *(*(a1[4] + 8) + 704) = 1;
    *(*(a1[6] + 8) + 24) = 1;
  }

  return result;
}

- (id)_rateDidChangeNotificationPayloadForAVFRateChangeReason:(id)a3 reasonIsExtendedDiagnostic:(BOOL)a4 rateChangeIdentifier:(id)a5 rateChangeOriginator:(id)a6
{
  if (!a3)
  {
    return 0;
  }

  v8 = a4;
  v11 = [(AVPlayer *)self _rateDidChangeNotificationIncludesExtendedDiagnosticPayload];
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (!v8 || v11)
  {
    [v12 setObject:a3 forKeyedSubscript:@"AVPlayerRateDidChangeReasonKey"];
  }

  if (a5 != 0 && v11)
  {
    [v13 setObject:a5 forKeyedSubscript:@"AVPlayerRateDidChangeRateChangeIdentifierKey"];
  }

  if (a6)
  {
    [v13 setObject:objc_msgSend(-[AVPlayer _playbackCoordinatorWithoutTriggeringFullSetup](self forKeyedSubscript:{"_playbackCoordinatorWithoutTriggeringFullSetup"), "participantForIdentifier:", a6), @"AVPlayerRateDidChangeOriginatingParticipantKey"}];
  }

  return v13;
}

- (id)_rateDidChangeNotificationPayloadForFigRateChangeReason:(int)a3 rateChangeIdentifier:(id)a4 rateChangeOriginator:(id)a5
{
  if (a3 <= 12)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v7 = 1;
        v8 = @"AVPlayerRateDidChangeReasonPlaybackStalled";
        return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
      }

      if (a3 == 12)
      {
        v7 = 1;
        v8 = @"AVPlayerRateDidChangeReasonRouteChanged";
        return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
      }
    }

    else
    {
      if (a3 == 1)
      {
        v7 = 1;
        v8 = @"AVPlayerRateDidChangeReasonPauseAtItemEnd";
        return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
      }

      if (a3 == 2)
      {
        v7 = 0;
        v8 = @"AVPlayerRateDidChangeReasonSetRateFailed";
        return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
      }
    }

LABEL_23:
    v8 = 0;
    v7 = 1;
    return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
  }

  if (a3 <= 23)
  {
    if (a3 == 13)
    {
      v7 = 0;
      v8 = @"AVPlayerRateDidChangeReasonAudioSessionInterrupted";
      return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
    }

    if (a3 == 23)
    {
      v7 = 0;
      v8 = @"AVPlayerRateDidChangeReasonSetRateCalled";
      return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
    }

    goto LABEL_23;
  }

  if (a3 == 24)
  {
    v7 = 1;
    v8 = @"AVPlayerRateDidChangeReasonPlaybackResumed";
    return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
  }

  if (a3 == 25)
  {
    v7 = 0;
    v8 = @"AVPlayerRateDidChangeReasonAppBackgrounded";
    return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
  }

  if (a3 != 33)
  {
    goto LABEL_23;
  }

  v7 = 1;
  v8 = @"AVPlayerRateDidChangeReasonCoordinatedPlayback";
  return [(AVPlayer *)self _rateDidChangeNotificationPayloadForAVFRateChangeReason:v8 reasonIsExtendedDiagnostic:v7 rateChangeIdentifier:a4 rateChangeOriginator:a5];
}

- (float)_rate
{
  v8 = 0.0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(v4, &v8);
    }

    CFRelease(v4);
    return v8;
  }

  else
  {
    v7 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:@"AVPlayer_FigPlayerProperty_Rate"];
    if (v7)
    {

      [v7 floatValue];
    }

    else
    {
      return 0.0;
    }
  }

  return result;
}

- (float)rate
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:87];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"rate" on:self];
  [-[AVPlayer _rateState](self "_rateState")];
  v4 = v3;
  AVTelemetryIntervalEnd(&v6);
  return v4;
}

- (BOOL)_setRate:(float)a3 rateChangeReason:(int)a4 figPlayerSetRateHandler:(id)a5
{
  v6 = *&a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v9 = [(AVPlayer *)self _hasCurrentInterstitialEvent];
  v10 = [(AVPlayer *)self _nameForLogging];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  [(AVPlayer *)self willChangeValueForKey:@"rate"];
  [(AVPlayer *)self willChangeValueForKey:@"timeControlStatus"];
  [(AVPlayer *)self willChangeValueForKey:@"reasonForWaitingToPlay"];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__AVPlayer__setRate_rateChangeReason_figPlayerSetRateHandler___block_invoke;
  v17[3] = &unk_1E7462858;
  v17[5] = v10;
  v17[6] = &v20;
  v18 = a3;
  v17[4] = self;
  v19 = v9;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v17);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    strncpy(__dst, [v10 UTF8String], 8uLL);
    kdebug_trace();
  }

  figConfigurationQueue = self->_player->figConfigurationQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__AVPlayer__setRate_rateChangeReason_figPlayerSetRateHandler___block_invoke_518;
  v16[3] = &unk_1E7462880;
  v16[6] = a5;
  v16[7] = &v20;
  v16[8] = &v24;
  v16[4] = self;
  v16[5] = v10;
  dispatch_sync(figConfigurationQueue, v16);
  [(AVPlayer *)self didChangeValueForKey:@"rate"];
  [(AVPlayer *)self didChangeValueForKey:@"timeControlStatus"];
  [(AVPlayer *)self didChangeValueForKey:@"reasonForWaitingToPlay"];
  v13 = -[AVPlayer _rateDidChangeNotificationPayloadForFigRateChangeReason:rateChangeIdentifier:rateChangeOriginator:](self, "_rateDidChangeNotificationPayloadForFigRateChangeReason:rateChangeIdentifier:rateChangeOriginator:", v6, [MEMORY[0x1E696AD98] numberWithInt:*(v21 + 6)], 0);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v14 = *(v25 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  return v14;
}

void __62__AVPlayer__setRate_rateChangeReason_figPlayerSetRateHandler___block_invoke(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 512) + 1;
  *(v3 + 512) = v4;
  *(*(*(a1 + 48) + 8) + 24) = v4;
  LODWORD(a2) = *(a1 + 56);
  v5 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 504) rateStateBySettingRate:*(a1 + 40) nameForLogging:{a2), "rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:hasCurrentInterstitialEvent:nameForLogging:", *(*(*(a1 + 32) + 8) + 176) != 0, *(a1 + 60), *(a1 + 40)}];
  if (dword_1ED5AC2F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = v5;

  *(*(*(a1 + 32) + 8) + 504) = v5;
}

void __62__AVPlayer__setRate_rateChangeReason_figPlayerSetRateHandler___block_invoke_518(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = a1[4];
  v3 = *(*(v2 + 8) + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVPlayer__setRate_rateChangeReason_figPlayerSetRateHandler___block_invoke_2;
  block[3] = &unk_1E7460E68;
  block[4] = v2;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(v3, block);
  if (*(v8 + 6) == *(*(a1[7] + 8) + 24))
  {
    (*(a1[6] + 16))();
    v4 = 1;
  }

  else
  {
    v4 = dword_1ED5AC2F8;
    if (dword_1ED5AC2F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = 0;
    }
  }

  *(*(a1[8] + 8) + 24) = v4;
  _Block_object_dispose(&v7, 8);
}

- (BOOL)_handleSetRate:(float)a3 withVolumeRampDuration:(id *)a4 playImmediately:(BOOL)a5 rateChangeReason:(int)a6 affectsCoordinatedPlayback:(BOOL)a7
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __110__AVPlayer__handleSetRate_withVolumeRampDuration_playImmediately_rateChangeReason_affectsCoordinatedPlayback___block_invoke;
  v8[3] = &unk_1E74628A8;
  v12 = a5;
  v9 = *a4;
  v10 = a6;
  v13 = a7;
  v8[4] = self;
  v11 = a3;
  return [(AVPlayer *)self _setRate:*&a6 rateChangeReason:v8 figPlayerSetRateHandler:?];
}

uint64_t __110__AVPlayer__handleSetRate_withVolumeRampDuration_playImmediately_rateChangeReason_affectsCoordinatedPlayback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v26[0] = *MEMORY[0x1E69734C8];
  v27[0] = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v26[1] = *MEMORY[0x1E69734B8];
  v25 = *(a1 + 40);
  v27[1] = NSDictionaryFromCMTime(&v25);
  v26[2] = *MEMORY[0x1E69734D8];
  v27[2] = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 64)];
  v26[3] = *MEMORY[0x1E69734D0];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v26[4] = *MEMORY[0x1E69734C0];
  if (*(a1 + 73))
  {
    v7 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;
  v27[3] = v6;
  v27[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:5];
  if (a2)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      v11 = *(a1 + 68);
      VTable = CMBaseObjectGetVTable();
      v14 = *(VTable + 16);
      result = VTable + 16;
      v15 = *(v14 + 104);
      if (v15)
      {
        return v15(a2, v9, v11);
      }
    }

    else if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      v16 = *(a1 + 68);
      *&v24.value = *(a1 + 40);
      v24.epoch = *(a1 + 56);
      v17 = CMBaseObjectGetVTable();
      v18 = *(v17 + 16);
      result = v17 + 16;
      v19 = *(v18 + 56);
      if (v19)
      {
        v25 = v24;
        return v19(a2, &v25, v16);
      }
    }

    else
    {
      v20 = *(a1 + 68);
      v21 = CMBaseObjectGetVTable();
      v22 = *(v21 + 16);
      result = v21 + 16;
      v23 = *(v22 + 40);
      if (v23)
      {
        return v23(a2, v20);
      }
    }
  }

  else
  {
    LODWORD(v10) = *(a1 + 68);
    [*(a1 + 32) _setPendingFigPlayerProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v10), @"AVPlayer_FigPlayerProperty_Rate"}];
    return [*(a1 + 32) _setPendingFigPlayerProperty:v9 forKey:@"AVPlayer_FigPlayerProperty_RateOptions"];
  }

  return result;
}

- (void)_setRate:(float)a3 withVolumeRampDuration:(id *)a4 playImmediately:(BOOL)a5 rateChangeReason:(int)a6 affectsCoordinatedPlayback:(BOOL)a7
{
  v19 = *a4;
  if ([AVPlayer _handleSetRate:"_handleSetRate:withVolumeRampDuration:playImmediately:rateChangeReason:affectsCoordinatedPlayback:" withVolumeRampDuration:&v19 playImmediately:? rateChangeReason:? affectsCoordinatedPlayback:?])
  {
    stateDispatchQueue = self->_player->stateDispatchQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __104__AVPlayer__setRate_withVolumeRampDuration_playImmediately_rateChangeReason_affectsCoordinatedPlayback___block_invoke;
    v13[3] = &unk_1E74628D0;
    v13[4] = self;
    v14 = *&a4->var0;
    var3 = a4->var3;
    v17 = a5;
    v16 = a6;
    v18 = a7;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v13);
  }
}

void __104__AVPlayer__setRate_withVolumeRampDuration_playImmediately_rateChangeReason_affectsCoordinatedPlayback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _interstitialPlayerIfCreated];
  v3 = [*(a1 + 32) _copyInterstitialCoordinatorIfCreated];
  v4 = v3;
  if (v3)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v7 = v6(v4);
      if (v7)
      {
        v8 = v7;
        [*(a1 + 32) rate];
        v10 = v9;
        v11 = [v8 restrictions] & 4;
        if (v10 >= 1.0 && v11 != 0)
        {
          v10 = 1.0;
        }

        CFRelease(v8);
        v13 = *(a1 + 68);
        v14 = *(a1 + 64);
        v15 = *(a1 + 69);
        v16 = *(a1 + 40);
        v17 = *(a1 + 56);
        [v2 _setRate:&v16 withVolumeRampDuration:v13 playImmediately:v14 rateChangeReason:v15 affectsCoordinatedPlayback:{COERCE_DOUBLE(__PAIR64__(DWORD1(v16), LODWORD(v10)))}];
      }
    }

    goto LABEL_16;
  }

  if (v3)
  {
LABEL_16:
    CFRelease(v4);
  }
}

- (void)setRate:(float)rate
{
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  [(AVPlayer *)self _setRate:&v3 withVolumeRampDuration:0 playImmediately:23 rateChangeReason:1 affectsCoordinatedPlayback:?];
}

- (float)defaultRate
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:88];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1065353216;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"defaultRate" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__AVPlayer_defaultRate__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

float __23__AVPlayer_defaultRate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 516);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setDefaultRate:(float)defaultRate
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:89];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"defaultRate" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__AVPlayer_setDefaultRate___block_invoke;
  v6[3] = &unk_1E74628F8;
  v6[4] = self;
  v7 = defaultRate;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"defaultRate" on:self];
  AVTelemetryIntervalEnd(&v8);
}

float __27__AVPlayer_setDefaultRate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 516) = result;
  return result;
}

- (void)playImmediatelyAtRate:(float)rate
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:94];
  v5 = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  [(AVPlayer *)self _setRate:&v5 withVolumeRampDuration:1 playImmediately:23 rateChangeReason:1 affectsCoordinatedPlayback:COERCE_DOUBLE(__PAIR64__(DWORD1(v5), LODWORD(rate)))];
  AVTelemetryIntervalEnd(&v7);
}

- (void)pauseWithoutAffectingCoordinatedPlayback
{
  v2 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  [(AVPlayer *)self _setRate:&v2 withVolumeRampDuration:0 playImmediately:23 rateChangeReason:0 affectsCoordinatedPlayback:0.0];
}

- (BOOL)_rateDidChangeNotificationIncludesExtendedDiagnosticPayload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVPlayer__rateDidChangeNotificationIncludesExtendedDiagnosticPayload__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setRateDidChangeNotificationIncludesExtendedDiagnosticPayload:(BOOL)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVPlayer__setRateDidChangeNotificationIncludesExtendedDiagnosticPayload___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (AVPlayerTimeControlStatus)timeControlStatus
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:92];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"timeControlStatus" on:self];
  v3 = [-[AVPlayer _rateState](self "_rateState")];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (AVPlayerWaitingReason)reasonForWaitingToPlay
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:93];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"reasonForWaitingToPlay" on:self];
  v3 = [-[AVPlayer _rateState](self "_rateState")];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (void)setAutomaticallyWaitsToMinimizeStalling:(BOOL)automaticallyWaitsToMinimizeStalling
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:102];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"automaticallyWaitsToMinimizeStalling" on:self];
  v5 = [(AVPlayer *)self _hasCurrentInterstitialEvent];
  v6 = [(AVPlayer *)self _nameForLogging];
  [(AVPlayer *)self willChangeValueForKey:@"timeControlStatus"];
  [(AVPlayer *)self willChangeValueForKey:@"reasonForWaitingToPlay"];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__AVPlayer_setAutomaticallyWaitsToMinimizeStalling___block_invoke;
  v8[3] = &unk_1E7462920;
  v9 = v5;
  v8[4] = self;
  v8[5] = v6;
  v10 = automaticallyWaitsToMinimizeStalling;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  [(AVPlayer *)self _updateAutomaticallyWaitsToMinimizeStallingOnFigPlayer];
  [(AVPlayer *)self didChangeValueForKey:@"timeControlStatus"];
  [(AVPlayer *)self didChangeValueForKey:@"reasonForWaitingToPlay"];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"automaticallyWaitsToMinimizeStalling" on:self];
  AVTelemetryIntervalEnd(&v11);
}

void __52__AVPlayer_setAutomaticallyWaitsToMinimizeStalling___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 504) rateStateByInferringTimeControlStatusAndWaitingReasonBasedOnPresenceOfCurrentItem:*(*(*(a1 + 32) + 8) + 176) != 0 hasCurrentInterstitialEvent:*(a1 + 48) nameForLogging:{*(a1 + 40)), "rateStateBySettingAutomaticallyWaitsToMinimizeStalling:", *(a1 + 49)}];
  if (dword_1ED5AC2F8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v4 = v2;

  *(*(*(a1 + 32) + 8) + 504) = v2;
}

- (void)_setUsesLegacyAutomaticWaitingBehavior:(BOOL)a3
{
  player = self->_player;
  if (!player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayer's _usesLegacyAutomaticWaitingBehavior can't be set after any AVPlayerItems have been enqueued or after the AVPlayer's status changes from AVPlayerStatusUnknown." userInfo:0]);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  ivarAccessQueue = player->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AVPlayer__setUsesLegacyAutomaticWaitingBehavior___block_invoke;
  v8[3] = &unk_1E7462948;
  v9 = a3;
  v8[4] = self;
  v8[5] = &v10;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  if (*(v11 + 24) == 1)
  {
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __51__AVPlayer__setUsesLegacyAutomaticWaitingBehavior___block_invoke_2;
    v7[3] = &unk_1E7460C00;
    v7[4] = self;
    dispatch_sync(figConfigurationQueue, v7);
  }

  _Block_object_dispose(&v10, 8);
}

void __51__AVPlayer__setUsesLegacyAutomaticWaitingBehavior___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) != [*(*(*(a1 + 32) + 8) + 504) usesLegacyAutomaticWaitingBehavior])
  {
    v2 = [*(*(*(a1 + 32) + 8) + 504) rateStateBySettingUsesLegacyAutomaticWaitingBehavior:?];
    v3 = v2;

    *(*(*(a1 + 32) + 8) + 504) = v2;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

uint64_t __51__AVPlayer__setUsesLegacyAutomaticWaitingBehavior___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _usesLegacyAutomaticWaitingBehavior];
  v3 = v2;
  v4 = *MEMORY[0x1E695E4D0];
  v5 = *MEMORY[0x1E695E4C0];
  if (v2)
  {
    v6 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = *MEMORY[0x1E695E4C0];
  }

  result = [*(a1 + 32) _setPendingFigPlayerProperty:v6 forKey:*MEMORY[0x1E69731A0]];
  if (v3)
  {
    v8 = 0;
  }

  else
  {
    if (sWaitsToMinimizeStallingByDefault != 1)
    {
      return result;
    }

    if ([*(a1 + 32) automaticallyWaitsToMinimizeStalling])
    {
      v8 = v4;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = *(a1 + 32);
  v10 = *MEMORY[0x1E69731C8];

  return [v9 _setPendingFigPlayerProperty:v8 forKey:v10];
}

- (BOOL)_usesLegacyAutomaticWaitingBehavior
{
  v2 = [(AVPlayer *)self _rateState];

  return [v2 usesLegacyAutomaticWaitingBehavior];
}

- (CMTime)currentTime
{
  result = [(AVPlayer *)self currentItem];
  if (result)
  {

    return [(CMTime *)result currentTime];
  }

  else
  {
    v5 = MEMORY[0x1E6960C70];
    *&retstr->value = *MEMORY[0x1E6960C70];
    retstr->epoch = *(v5 + 16);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentUnfoldedTime
{
  result = [(AVPlayer *)self currentItem];
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result currentUnfoldedTime];
  }

  else
  {
    v5 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v5 + 16);
  }

  return result;
}

- (void)seekToDate:(NSDate *)date
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:98];
  v5 = [(AVPlayer *)self currentItem];
  if (v5)
  {
    [(AVPlayerItem *)v5 seekToDate:date completionHandler:0];
  }

  AVTelemetryIntervalEnd(&v6);
}

- (void)seekToDate:(NSDate *)date completionHandler:(void *)completionHandler
{
  v6 = [(AVPlayer *)self currentItem];
  if (v6)
  {

    [(AVPlayerItem *)v6 seekToDate:date completionHandler:completionHandler];
  }

  else if (completionHandler)
  {
    v7 = *(completionHandler + 2);

    v7(completionHandler, 0);
  }
}

- (void)seekToTime:(CMTime *)time
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:99];
  v5 = [(AVPlayer *)self currentItem];
  if (v5)
  {
    v6 = *&time->value;
    epoch = time->epoch;
    [(AVPlayerItem *)v5 seekToTime:&v6 completionHandler:0];
  }

  AVTelemetryIntervalEnd(&v8);
}

- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:100];
  v9 = [(AVPlayer *)self currentItem];
  if (v9)
  {
    v14 = *&time->value;
    epoch = time->epoch;
    v12 = *&toleranceBefore->value;
    v13 = toleranceBefore->epoch;
    v10 = *&toleranceAfter->value;
    v11 = toleranceAfter->epoch;
    [(AVPlayerItem *)v9 seekToTime:&v14 toleranceBefore:&v12 toleranceAfter:&v10 completionHandler:0];
  }

  AVTelemetryIntervalEnd(&v16);
}

- (void)seekToTime:(CMTime *)time completionHandler:(void *)completionHandler
{
  v6 = [(AVPlayer *)self currentItem];
  if (v6)
  {
    v12 = *&time->value;
    epoch = time->epoch;
    v10 = *MEMORY[0x1E6960C88];
    v11 = *(MEMORY[0x1E6960C88] + 16);
    v8 = v10;
    v9 = v11;
    [(AVPlayerItem *)v6 seekToTime:&v12 toleranceBefore:&v10 toleranceAfter:&v8 completionHandler:completionHandler];
  }

  else if (completionHandler)
  {
    v7 = *(completionHandler + 2);

    v7(completionHandler, 0);
  }
}

- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter completionHandler:(void *)completionHandler
{
  v10 = [(AVPlayer *)self currentItem];
  if (v10)
  {
    v16 = *&time->value;
    epoch = time->epoch;
    v14 = *&toleranceBefore->value;
    v15 = toleranceBefore->epoch;
    v12 = *&toleranceAfter->value;
    v13 = toleranceAfter->epoch;
    [(AVPlayerItem *)v10 seekToTime:&v16 toleranceBefore:&v14 toleranceAfter:&v12 completionHandler:completionHandler];
  }

  else if (completionHandler)
  {
    v11 = *(completionHandler + 2);

    v11(completionHandler, 0);
  }
}

- (void)setRate:(float)rate time:(CMTime *)itemTime atHostTime:(CMTime *)hostClockTime
{
  v9 = [[AVTelemetryInterval alloc] initAndStartWith:103];
  v11 = *itemTime;
  v12 = v9;
  v10 = *hostClockTime;
  [(AVPlayer *)self setRate:&v11 time:&v10 atHostTime:0 options:COERCE_DOUBLE(__PAIR64__(HIDWORD(v10.value), LODWORD(rate)))];
  AVTelemetryIntervalEnd(&v12);
}

- (void)setRate:(float)a3 time:(id *)a4 atHostTime:(id *)a5 options:(id)a6
{
  v11 = [(AVPlayer *)self _copyFigPlayer];
  if (!v11)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"AVPlayer cannot service a synchronized playback request via setRate:time:atHostTime: until its status is AVPlayerStatusReadyToPlay.";
    goto LABEL_12;
  }

  v12 = v11;
  if (!a6)
  {
LABEL_6:
    if (sSetRateAtHostTimeThrowsWhenWaitingToMinimizeStalling != 1 || a6 & 1 | ![(AVPlayer *)self automaticallyWaitsToMinimizeStalling])
    {
      v15 = 0;
      goto LABEL_9;
    }

    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D940];
    v18 = @"AVPlayer cannot service a synchronized playback request via setRate:time:atHostTime: when automaticallyWaitsToMinimizeStalling is YES";
LABEL_12:
    objc_exception_throw([v16 exceptionWithName:v17 reason:v18 userInfo:0]);
  }

  v13 = [a6 preferCoordinatedPlaybackBehavior];
  v14 = [a6 overrideAutowaitRestriction];
  if ((v13 & 1) == 0)
  {
    LOBYTE(a6) = v14;
    goto LABEL_6;
  }

  v15 = 1;
LABEL_9:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __44__AVPlayer_setRate_time_atHostTime_options___block_invoke;
  v19[3] = &__block_descriptor_88_e29_v20__0__OpaqueFigPlayer__8i16l;
  v20 = a3;
  v21 = *&a4->var0;
  var3 = a4->var3;
  v23 = *&a5->var0;
  v24 = a5->var3;
  v25 = v15;
  [(AVPlayer *)self _setRate:23 rateChangeReason:v19 figPlayerSetRateHandler:COERCE_DOUBLE(__PAIR64__(DWORD1(v23), LODWORD(a3)))];
  CFRelease(v12);
}

uint64_t __44__AVPlayer_setRate_time_atHostTime_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 84);
  v11 = *(a1 + 36);
  v12 = *(a1 + 52);
  v9 = *(a1 + 60);
  v10 = *(a1 + 76);
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = VTable + 16;
  v8 = *(v7 + 88);
  if (v8)
  {
    v15 = v11;
    v16 = v12;
    v13 = v9;
    v14 = v10;
    return v8(a2, &v15, &v13, v4, v3);
  }

  return result;
}

- (int)_createPrerollID
{
  player = self->_player;
  v3 = player->nextPrerollIDToGenerate + 1;
  player->nextPrerollIDToGenerate = v3;
  self->_player->pendingPrerollID = v3;
  v4 = self->_player;
  pendingPrerollID = v4->pendingPrerollID;
  if (pendingPrerollID <= 0)
  {
    v4->pendingPrerollID = 1;
    return self->_player->pendingPrerollID;
  }

  return pendingPrerollID;
}

- (int)_cancelPendingPrerollAndRegisterPrerollCompletionHandler:(id)a3
{
  FigSimpleMutexLock();
  player = self->_player;
  prerollCompletionHandler = player->prerollCompletionHandler;
  if (prerollCompletionHandler)
  {
    player->prerollCompletionHandler = 0;
  }

  if (a3)
  {
    v7 = [(AVPlayer *)self _createPrerollID];
    self->_player->prerollCompletionHandler = [a3 copy];
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  if (prerollCompletionHandler)
  {
    prerollCompletionHandler[2](prerollCompletionHandler, 0);
  }

  return v7;
}

- (id)_unregisterAndReturnRetainedPrerollCompletionHandler
{
  player = self->_player;
  prerollCompletionHandler = player->prerollCompletionHandler;
  player->pendingPrerollID = 0;
  self->_player->prerollCompletionHandler = 0;
  return prerollCompletionHandler;
}

- (void)prerollAtRate:(float)rate completionHandler:(void *)completionHandler
{
  v7 = [(AVPlayer *)self _copyFigPlayer];
  if (!v7)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayer cannot service a preroll request until its status is AVPlayerStatusReadyToPlay." userInfo:0]);
  }

  v8 = v7;
  v9 = [(AVPlayer *)self _cancelPendingPrerollAndRegisterPrerollCompletionHandler:completionHandler];
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v10 || v10(v8, v9, rate))
  {
    [(AVPlayer *)self _cancelPendingPrerollAndRegisterPrerollCompletionHandler:0];
  }

  CFRelease(v8);
}

- (void)prerollOperationDidComplete:(BOOL)a3 notificationPayload:(__CFDictionary *)a4
{
  if (a4)
  {
    v5 = a3;
    v7 = CFGetTypeID(a4);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a4, *MEMORY[0x1E6973130]);
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
          FigSimpleMutexLock();
          player = self->_player;
          if (valuePtr == player->pendingPrerollID && player->prerollCompletionHandler)
          {
            v12 = [(AVPlayer *)self _unregisterAndReturnRetainedPrerollCompletionHandler];
            FigSimpleMutexUnlock();
            if (v12)
            {
              v12[2](v12, v5);
            }
          }

          else
          {
            FigSimpleMutexUnlock();
          }
        }
      }
    }
  }
}

- (CMClockRef)masterClock
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__AVPlayer_masterClock__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __23__AVPlayer_masterClock__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 848);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMasterClock:(CMClockRef)masterClock
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__AVPlayer_setMasterClock___block_invoke;
  v12[3] = &unk_1E7460FA8;
  v12[4] = self;
  v12[5] = masterClock;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  [(AVPlayer *)self _setPendingFigPlayerProperty:masterClock forKey:*MEMORY[0x1E6973310]];
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__AVPlayer_setMasterClock___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v10;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v10, 8);
    CFRelease(v7);
  }
}

void __27__AVPlayer_setMasterClock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRetain(v2);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 848);
  if (v4)
  {
    CFRelease(v4);
    v3 = *(*(a1 + 32) + 8);
  }

  *(v3 + 848) = *(a1 + 40);
}

uint64_t __27__AVPlayer_setMasterClock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceClock];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973310], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CMClockRef)sourceClock
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:104];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"sourceClock" on:self];
  v3 = [(AVPlayer *)self masterClock];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (void)setSourceClock:(CMClockRef)sourceClock
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:138];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"sourceClock" on:self];
  [(AVPlayer *)self setMasterClock:sourceClock];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"sourceClock" on:self];
  AVTelemetryIntervalEnd(&v5);
}

- (float)_userVolume
{
  v15 = 0.5;
  cf = 0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v4 = *MEMORY[0x1E6973458];
  if (v3)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || (v6(FigBaseObject, v4, *MEMORY[0x1E695E480], &cf), (v7 = cf) == 0))
    {
LABEL_10:
      CFRelease(v3);
      return v15;
    }
  }

  else
  {
    v8 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973458]];
    cf = v8;
    if (!v8)
    {
      v11 = [(AVPlayer *)self audioSession];
      if (v11)
      {
        v12 = [(AVAudioSession *)v11 category];
      }

      else
      {
        v12 = 0;
      }

      v13 = [MEMORY[0x1E69AED10] sharedAVSystemController];
      if (!v13)
      {
        return 0.5;
      }

      [v13 getVolume:&v15 forCategory:v12];
      return v15;
    }

    v7 = v8;
    CFRetain(v8);
  }

  [v7 floatValue];
  v15 = v9;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    goto LABEL_10;
  }

  return v15;
}

- (void)_setUserVolume:(float)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __27__AVPlayer__setUserVolume___block_invoke;
  v12[3] = &unk_1E74628F8;
  v12[4] = self;
  v13 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  *&v7 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v9 = *MEMORY[0x1E6973458];
  if (v6)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, v9, v8);
    }

    CFRelease(v6);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E6973458]];
  }
}

float __27__AVPlayer__setUserVolume___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 380) = result;
  return result;
}

- (id)vibrationPattern
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVPlayer_vibrationPattern__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __28__AVPlayer_vibrationPattern__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 224);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setVibrationPattern:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__AVPlayer_setVibrationPattern___block_invoke;
  v15[3] = &unk_1E7460DF0;
  v15[4] = self;
  v15[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v15);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  v7 = *MEMORY[0x1E6973470];
  if (v6)
  {
    v8 = v6;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(FigBaseObject, v7, a3);
    }

    if (a3)
    {
      v11 = *(CMBaseObjectGetVTable() + 24);
      if (v11)
      {
        v12 = *(v11 + 8);
        if (v12)
        {
          v12(v8);
        }
      }
    }

    CFRelease(v8);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:a3 forKey:*MEMORY[0x1E6973470]];
    player = self->_player;
    if (player->needsToCreateFigPlayer)
    {
      player->needsToCreateFigPlayer = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __32__AVPlayer_setVibrationPattern___block_invoke_2;
      v14[3] = &unk_1E7462560;
      v14[4] = self;
      [(AVPlayer *)self _createAndConfigureFigPlayerWithType:0 completionHandler:v14];
    }
  }
}

id __32__AVPlayer_setVibrationPattern___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 224) = result;
  return result;
}

uint64_t __32__AVPlayer_setVibrationPattern___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        [*(a1 + 32) _removeItem:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (float)_playerVolume
{
  cf = 0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v4 = *MEMORY[0x1E6973490];
  if (v3)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v7 = 1.0;
    if (!v6 || (v6(FigBaseObject, v4, *MEMORY[0x1E695E480], &cf), (v8 = cf) == 0))
    {
LABEL_10:
      CFRelease(v3);
      return v7;
    }
  }

  else
  {
    v9 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973490]];
    cf = v9;
    if (!v9)
    {
      return 1.0;
    }

    v8 = v9;
    CFRetain(v9);
  }

  [v8 floatValue];
  v7 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    goto LABEL_10;
  }

  return v7;
}

- (float)volume
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:105];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"volume" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1065353216;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__AVPlayer_volume__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

float __18__AVPlayer_volume__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 376);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setVolume:(float)volume
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:106];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"volume" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __22__AVPlayer_setVolume___block_invoke;
  v13[3] = &unk_1E74628F8;
  v13[4] = self;
  v14 = volume;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  *&v6 = volume;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  [(AVPlayer *)self _setPendingFigPlayerProperty:v7 forKey:*MEMORY[0x1E6973490]];
  v8 = [(AVPlayer *)self _copyFigPlayer];
  if (v8)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __22__AVPlayer_setVolume___block_invoke_2;
    v10[3] = &unk_1E7462990;
    v10[4] = self;
    v10[5] = v11;
    v10[6] = v8;
    dispatch_sync(figConfigurationQueue, v10);
    _Block_object_dispose(v11, 8);
    CFRelease(v8);
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"volume" on:self];
  AVTelemetryIntervalEnd(&v15);
}

float __22__AVPlayer_setVolume___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 376) = result;
  return result;
}

uint64_t __22__AVPlayer_setVolume___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  [*(a1 + 32) volume];
  v3 = [v2 numberWithFloat:?];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    result = v5(FigBaseObject, *MEMORY[0x1E6973490], v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isMuted
{
  if (self->_player->figPlayer)
  {
    BOOLean = *MEMORY[0x1E695E4C0];
    FigBaseObject = FigPlayerGetFigBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3 && !v3(FigBaseObject, *MEMORY[0x1E6973340], *MEMORY[0x1E695E480], &BOOLean))
    {
      v4 = CFBooleanGetValue(BOOLean) != 0;
      if (BOOLean)
      {
        CFRelease(BOOLean);
      }

      return v4;
    }

    return 0;
  }

  v5 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973340]];
  if (!v5)
  {
    return 0;
  }

  return [v5 BOOLValue];
}

- (BOOL)isMuted
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:107];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"isMuted" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__AVPlayer_isMuted__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)setMuted:(BOOL)muted
{
  v3 = muted;
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:108];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"isMuted" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __21__AVPlayer_setMuted___block_invoke;
  v12[3] = &unk_1E7460E40;
  v12[4] = self;
  v13 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __21__AVPlayer_setMuted___block_invoke_2;
    v9[3] = &unk_1E7462990;
    v9[4] = self;
    v9[5] = v10;
    v9[6] = v6;
    dispatch_sync(figConfigurationQueue, v9);
    _Block_object_dispose(v10, 8);
    CFRelease(v6);
  }

  else
  {
    v8 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v8 forKey:*MEMORY[0x1E6973340]];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"isMuted" on:self];
  AVTelemetryIntervalEnd(&v14);
}

uint64_t __21__AVPlayer_setMuted___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isMuted])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973340], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (AVPlayerActionAtItemEnd)actionAtItemEnd
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:97];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"actionAtItemEnd" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__AVPlayer_actionAtItemEnd__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

- (__CFString)figPlayerActionForActionAtItemEnd:(int64_t)a3
{
  result = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = MEMORY[0x1E6972E08];
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v4 = MEMORY[0x1E6972E18];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v4 = MEMORY[0x1E6972E10];
  }

  else
  {
    v4 = MEMORY[0x1E6972E00];
  }

  return *v4;
}

- (void)_setActionAtItemEnd:(int64_t)a3 allowingAdvance:(BOOL)a4
{
  if (!a3 && !a4)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = [v16 stringWithFormat:@"AVPlayerActionAtItemEndAdvance is not allowed for a player of class %@", NSStringFromClass(v17)];
LABEL_18:
    v21 = v18;
    v22 = v14;
    v23 = v15;
    goto LABEL_20;
  }

  if (a3 == 3 && !a4)
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v18 = [v19 stringWithFormat:@"AVPlayerActionAtItemEndAdvanceUntilEndOfQueue is not allowed for a player of class %@", NSStringFromClass(v20)];
    goto LABEL_18;
  }

  if (![(AVPlayer *)self figPlayerActionForActionAtItemEnd:a3])
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v21 = [v26 stringWithFormat:@"%d is not a valid actionAtItemEnd for a player of class %@", a3, NSStringFromClass(v27)];
    v22 = v24;
    v23 = v25;
LABEL_20:
    objc_exception_throw([v22 exceptionWithName:v23 reason:v21 userInfo:0]);
  }

  ivarAccessQueue = self->_player->ivarAccessQueue;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __48__AVPlayer__setActionAtItemEnd_allowingAdvance___block_invoke;
  v31[3] = &unk_1E7460FA8;
  v31[4] = self;
  v31[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v31);
  v7 = [(AVPlayer *)self _copyFigPlayer];
  if (v7)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v30 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVPlayer__setActionAtItemEnd_allowingAdvance___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v29;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v29, 8);
  }

  else
  {
    v9 = [(AVPlayer *)self figPlayerActionForActionAtItemEnd:a3];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E6973158]];
  }

  v10 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  if (v10)
  {
    v11 = v10;
    v12 = [(AVPlayer *)self figPlayerActionForActionAtItemEnd:[(AVPlayer *)self actionAtItemEnd]];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v13)
    {
      v13(v11, v12);
    }

    CFRelease(v11);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t __48__AVPlayer__setActionAtItemEnd_allowingAdvance___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) figPlayerActionForActionAtItemEnd:{objc_msgSend(*(a1 + 32), "actionAtItemEnd")}];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973158], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setActionAtItemEnd:(AVPlayerActionAtItemEnd)actionAtItemEnd
{
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"actionAtItemEnd" on:self];
  [(AVPlayer *)self _setActionAtItemEnd:actionAtItemEnd allowingAdvance:0];
  observationRegistrar = self->_player->observationRegistrar;

  [(AVPlayerObservationRegistrar *)observationRegistrar didChangeValueFor:@"actionAtItemEnd" on:self];
}

- (BOOL)isClosedCaptionDisplayEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVPlayer_isClosedCaptionDisplayEnabled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setClosedCaptionDisplayEnabled:(BOOL)closedCaptionDisplayEnabled
{
  v3 = closedCaptionDisplayEnabled;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__AVPlayer_setClosedCaptionDisplayEnabled___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = closedCaptionDisplayEnabled;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVPlayer_setClosedCaptionDisplayEnabled___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973250]];
  }
}

uint64_t __43__AVPlayer_setClosedCaptionDisplayEnabled___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isClosedCaptionDisplayEnabled])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973250], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isDisplayingClosedCaptions
{
  v2 = [(AVPlayer *)self _copyFigPlayer];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E4C0];
  BOOLean = *MEMORY[0x1E695E4C0];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v7 = v6(FigBaseObject, *MEMORY[0x1E6973270], *MEMORY[0x1E695E480], &BOOLean);
    v4 = BOOLean;
    if (!v7)
    {
      v8 = CFBooleanGetValue(BOOLean) != 0;
      v4 = BOOLean;
      if (!BOOLean)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  v8 = 0;
  if (v4)
  {
LABEL_5:
    CFRelease(v4);
  }

LABEL_6:
  CFRelease(v3);
  return v8;
}

- (BOOL)isDisplayingClosedCaptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayer_isDisplayingClosedCaptions__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)shouldReduceResourceUsage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayer_shouldReduceResourceUsage__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldReduceResourceUsage:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __41__AVPlayer_setShouldReduceResourceUsage___block_invoke;
  v14[3] = &unk_1E7460E40;
  v14[4] = self;
  v15 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__AVPlayer_setShouldReduceResourceUsage___block_invoke_2;
    v13[3] = &unk_1E7460FA8;
    v13[4] = self;
    v13[5] = v7;
    dispatch_sync(figConfigurationQueue, v13);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    v10 = !v3;
    if (v3)
    {
      v11 = &unk_1F0AD33A0;
    }

    else
    {
      v9 = MEMORY[0x1E695E4C0];
      v11 = 0;
    }

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = &unk_1F0AD33B8;
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E69733F8]];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v11 forKey:*MEMORY[0x1E69733C0]];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v12 forKey:*MEMORY[0x1E6973320]];
  }
}

uint64_t __41__AVPlayer_setShouldReduceResourceUsage___block_invoke_2(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) shouldReduceResourceUsage])
  {
    v2 = *MEMORY[0x1E695E4D0];
    v3 = &unk_1F0AD33B8;
    v4 = &unk_1F0AD33A0;
  }

  else
  {
    v2 = *MEMORY[0x1E695E4C0];
    v4 = [MEMORY[0x1E695DFB0] null];
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = *MEMORY[0x1E69733C0];
  v12[0] = *MEMORY[0x1E69733F8];
  v12[1] = v5;
  v13[0] = v2;
  v13[1] = v4;
  v12[2] = *MEMORY[0x1E6973320];
  v13[2] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v7 = *(a1 + 40);
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 112);
  if (v11)
  {
    return v11(v7, v6, 0);
  }

  return result;
}

- (int64_t)resourceConservationLevelWhilePaused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayer_resourceConservationLevelWhilePaused__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setResourceConservationLevelWhilePaused:(int64_t)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__AVPlayer_setResourceConservationLevelWhilePaused___block_invoke;
  v11[3] = &unk_1E7460FA8;
  v11[4] = self;
  v11[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__AVPlayer_setResourceConservationLevelWhilePaused___block_invoke_2;
    v10[3] = &unk_1E7460FA8;
    v10[4] = self;
    v10[5] = v7;
    dispatch_sync(figConfigurationQueue, v10);
    CFRelease(v7);
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E6973400]];
  }
}

uint64_t __52__AVPlayer_setResourceConservationLevelWhilePaused___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) resourceConservationLevelWhilePaused];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:v1];
  FigBaseObject = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6973400];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (id)playerRole
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__AVPlayer_playerRole__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlayerRole:(id)a3 synchronously:(BOOL)a4
{
  v4 = a4;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__AVPlayer_setPlayerRole_synchronously___block_invoke;
  v16[3] = &unk_1E7460DF0;
  v16[4] = self;
  v16[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v16);
  if ([a3 isEqualToString:@"Scanning"])
  {
    v8 = *MEMORY[0x1E69734A8];
  }

  else if ([a3 isEqualToString:@"PIP"])
  {
    v8 = *MEMORY[0x1E69734A0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AVPlayer *)self _copyFigPlayer];
  v10 = *MEMORY[0x1E69733B0];
  if (v9)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(FigBaseObject, v10, v8);
    }

    if (v4)
    {
      cf = 0;
      v13 = FigPlayerGetFigBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v14(v13, *MEMORY[0x1E6973440], *MEMORY[0x1E695E480], &cf);
        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E69733B0]];
  }

  [-[AVPlayer _interstitialPlayerIfCreated](self "_interstitialPlayerIfCreated")];
  if (v9)
  {
    CFRelease(v9);
  }
}

- (BOOL)allowsExternalPlayback
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:115];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"allowsExternalPlayback" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVPlayer_allowsExternalPlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)setAllowsExternalPlayback:(BOOL)allowsExternalPlayback
{
  v3 = allowsExternalPlayback;
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:116];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"allowsExternalPlayback" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__AVPlayer_setAllowsExternalPlayback___block_invoke;
  v12[3] = &unk_1E7460E40;
  v12[4] = self;
  v13 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__AVPlayer_setAllowsExternalPlayback___block_invoke_2;
    block[3] = &unk_1E7460FA8;
    block[4] = self;
    block[5] = v6;
    dispatch_sync(figConfigurationQueue, block);
    CFRelease(v6);
  }

  else
  {
    v8 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    v9 = *v8;
    [(AVPlayer *)self _setPendingFigPlayerProperty:*v8 forKey:*MEMORY[0x1E6973178]];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E6973188]];
  }

  v10 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v10)
  {
    [v10 setAllowsExternalPlayback:v3];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"allowsExternalPlayback" on:self];
  AVTelemetryIntervalEnd(&v14);
}

uint64_t __38__AVPlayer_setAllowsExternalPlayback___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) allowsExternalPlayback];
  v2 = MEMORY[0x1E695E4D0];
  if (!v1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E6973178], v3);
  }

  v6 = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = *MEMORY[0x1E6973188];

    return v10(v6, v11, v3);
  }

  return result;
}

- (BOOL)usesExternalPlaybackWhileExternalScreenIsActive
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:118];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"usesExternalPlaybackWhileExternalScreenIsActive" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__AVPlayer_usesExternalPlaybackWhileExternalScreenIsActive__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)setUsesExternalPlaybackWhileExternalScreenIsActive:(BOOL)usesExternalPlaybackWhileExternalScreenIsActive
{
  v3 = usesExternalPlaybackWhileExternalScreenIsActive;
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:119];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"usesExternalPlaybackWhileExternalScreenIsActive" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AVPlayer_setUsesExternalPlaybackWhileExternalScreenIsActive___block_invoke;
  v12[3] = &unk_1E7460E40;
  v12[4] = self;
  v13 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVPlayer_setUsesExternalPlaybackWhileExternalScreenIsActive___block_invoke_2;
    block[3] = &unk_1E7460FA8;
    block[4] = self;
    block[5] = v6;
    dispatch_sync(figConfigurationQueue, block);
    CFRelease(v6);
  }

  else
  {
    v8 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v8 = MEMORY[0x1E695E4C0];
    }

    v9 = *v8;
    [(AVPlayer *)self _setPendingFigPlayerProperty:*v8 forKey:*MEMORY[0x1E6973468]];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E6973460]];
  }

  v10 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v10)
  {
    [v10 setUsesExternalPlaybackWhileExternalScreenIsActive:v3];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"usesExternalPlaybackWhileExternalScreenIsActive" on:self];
  AVTelemetryIntervalEnd(&v14);
}

uint64_t __63__AVPlayer_setUsesExternalPlaybackWhileExternalScreenIsActive___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) usesExternalPlaybackWhileExternalScreenIsActive];
  v2 = MEMORY[0x1E695E4D0];
  if (!v1)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E6973468], v3);
  }

  v6 = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = *MEMORY[0x1E6973460];

    return v10(v6, v11, v3);
  }

  return result;
}

- (BOOL)_externalPlaybackActive
{
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v14 = 0;
  BOOLean = 0;
  v4 = *MEMORY[0x1E69732D8];
  if (v3)
  {
    v5 = *MEMORY[0x1E695E480];
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, v4, v5, &BOOLean);
    }

    v8 = FigPlayerGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, *MEMORY[0x1E69732C8], v5, &v14);
    }
  }

  else
  {
    v10 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E69732D8]];
    BOOLean = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    v11 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E69732C8], v14];
    v14 = v11;
    if (v11)
    {
      CFRetain(v11);
    }
  }

  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v14)
  {
    v12 = CFBooleanGetValue(v14) != 0;
  }

LABEL_16:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v12;
}

- (BOOL)isExternalPlaybackActive
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:117];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"isExternalPlaybackActive" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVPlayer_isExternalPlaybackActive__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

uint64_t __36__AVPlayer_isExternalPlaybackActive__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 482))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v1 + 485);
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

- (BOOL)_isBufferedAirPlayActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayer__isBufferedAirPlayActive__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)externalPlaybackType
{
  if ([(AVPlayer *)self _isAirPlayVideoActive])
  {
    return 1;
  }

  if ([(AVPlayer *)self isExternalPlaybackActive])
  {
    return 2;
  }

  return 0;
}

- (BOOL)usesDedicatedNotificationQueueForMediaServices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayer_usesDedicatedNotificationQueueForMediaServices__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUsesDedicatedNotificationQueueForMediaServices:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AVPlayer_setUsesDedicatedNotificationQueueForMediaServices___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVPlayer_setUsesDedicatedNotificationQueueForMediaServices___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973450]];
  }
}

uint64_t __62__AVPlayer_setUsesDedicatedNotificationQueueForMediaServices___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) usesDedicatedNotificationQueueForMediaServices])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973450], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGSize)dimensionsOfReservedVideoMemory
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AVPlayer_dimensionsOfReservedVideoMemory__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

__n128 __43__AVPlayer_dimensionsOfReservedVideoMemory__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 336);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (__CFDictionary)_createDictionaryWithDimensionsOfReservedVideoMemory:(CGSize)a3
{
  Mutable = 0;
  if (a3.width != 0.0 && a3.height != 0.0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetCGSize();
  }

  return Mutable;
}

- (void)setDimensionsOfReservedVideoMemory:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__AVPlayer_setDimensionsOfReservedVideoMemory___block_invoke;
  v13[3] = &unk_1E74625B0;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v7 = [(AVPlayer *)self _copyFigPlayer];
  if (v7)
  {
    v8 = v7;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__AVPlayer_setDimensionsOfReservedVideoMemory___block_invoke_2;
    v10[3] = &unk_1E7462990;
    v10[4] = self;
    v10[5] = v11;
    v10[6] = v8;
    dispatch_sync(figConfigurationQueue, v10);
    _Block_object_dispose(v11, 8);
  }

  else
  {
    v8 = [(AVPlayer *)self _createDictionaryWithDimensionsOfReservedVideoMemory:width, height];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E6973360]];
    if (!v8)
    {
      return;
    }
  }

  CFRelease(v8);
}

__n128 __47__AVPlayer_setDimensionsOfReservedVideoMemory___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 336) = result;
  return result;
}

void __47__AVPlayer_setDimensionsOfReservedVideoMemory___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 dimensionsOfReservedVideoMemory];
  v3 = [v2 _createDictionaryWithDimensionsOfReservedVideoMemory:?];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v6 = v5(FigBaseObject, *MEMORY[0x1E6973360], v3);
  }

  else
  {
    v6 = -12782;
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  if (v3)
  {

    CFRelease(v3);
  }
}

- (BOOL)usesAudioOnlyModeForExternalPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayer_usesAudioOnlyModeForExternalPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUsesAudioOnlyModeForExternalPlayback:(BOOL)a3
{
  v3 = a3;
  [(AVPlayer *)self willChangeValueForKey:@"usesAudioOnlyModeForExternalPlayback"];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__AVPlayer_setUsesAudioOnlyModeForExternalPlayback___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AVPlayer_setUsesAudioOnlyModeForExternalPlayback___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    [(AVPlayer *)self didChangeValueForKey:@"usesAudioOnlyModeForExternalPlayback"];
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973448]];
    [(AVPlayer *)self didChangeValueForKey:@"usesAudioOnlyModeForExternalPlayback"];
  }
}

uint64_t __52__AVPlayer_setUsesAudioOnlyModeForExternalPlayback___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) usesAudioOnlyModeForExternalPlayback])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973448], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)outputContext
{
  v3 = [(AVPlayer *)self _copyFigPlayer];
  cf = 0;
  v4 = *MEMORY[0x1E6973388];
  if (v3)
  {
    v5 = v3;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v7 || v7(FigBaseObject, v4, *MEMORY[0x1E695E480], &cf))
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E69587F0] outputContextForID:cf];
    }

    CFRelease(v5);
    v9 = cf;
    if (cf)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E6973388]];
    if (v11)
    {
      v9 = CFRetain(v11);
    }

    else
    {
      v9 = 0;
    }

    cf = v9;
    v8 = [MEMORY[0x1E69587F0] outputContextForID:v9];
    if (v9)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

  return v8;
}

- (void)setOutputContext:(id)a3
{
  v5 = [a3 contextID];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __29__AVPlayer_setOutputContext___block_invoke;
  v14[3] = &unk_1E7460DF0;
  v14[4] = self;
  v14[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
  v7 = [(AVPlayer *)self _copyFigPlayer];
  if (v7)
  {
    v8 = v7;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__AVPlayer_setOutputContext___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v12;
    block[6] = v8;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v12, 8);
    CFRelease(v8);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v5 forKey:*MEMORY[0x1E6973388]];
  }

  v10 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v10)
  {
    [v10 setOutputContext:a3];
  }
}

void *__29__AVPlayer_setOutputContext___block_invoke(void *result)
{
  v1 = *(*(result[4] + 8) + 232);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(*(v2[4] + 8) + 232) = result;
  }

  return result;
}

void __29__AVPlayer_setOutputContext___block_invoke_2(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 8) + 56);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__AVPlayer_setOutputContext___block_invoke_3;
  v9[3] = &unk_1E7460E68;
  v9[4] = v2;
  v9[5] = &v10;
  av_readwrite_dispatch_queue_read(v3, v9);
  v4 = v11[3];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v7 = v6(FigBaseObject, *MEMORY[0x1E6973388], v4);
  }

  else
  {
    v7 = -12782;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  v8 = v11[3];
  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v10, 8);
}

CFTypeRef __29__AVPlayer_setOutputContext___block_invoke_3(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 232) contextID];
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_airPlayVideoActive
{
  BOOLean = 0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v4 = *MEMORY[0x1E69732C8];
  if (v3)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      LOBYTE(v7) = 0;
LABEL_11:
      CFRelease(v3);
      return v7;
    }

    v6(FigBaseObject, v4, *MEMORY[0x1E695E480], &BOOLean);
    v7 = BOOLean;
    if (!BOOLean)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = [(AVPlayer *)self _pendingFigPlayerPropertyForKey:*MEMORY[0x1E69732C8]];
    v7 = v8;
    BOOLean = v8;
    if (!v8)
    {
      return v7;
    }

    CFRetain(v8);
  }

  LOBYTE(v7) = CFBooleanGetValue(v7) != 0;
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (v3)
  {
    goto LABEL_11;
  }

  return v7;
}

- (BOOL)_isAirPlayVideoActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayer__isAirPlayVideoActive__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUsesAirPlayVideoWhileAirPlayScreenIsActive:(BOOL)usesAirPlayVideoWhileAirPlayScreenIsActive
{
  v3 = usesAirPlayVideoWhileAirPlayScreenIsActive;
  [(AVPlayer *)self willChangeValueForKey:@"usesAirPlayVideoWhileAirPlayScreenIsActive"];
  [(AVPlayer *)self setUsesExternalPlaybackWhileExternalScreenIsActive:v3];

  [(AVPlayer *)self didChangeValueForKey:@"usesAirPlayVideoWhileAirPlayScreenIsActive"];
}

- (void)play
{
  v8[20] = *MEMORY[0x1E69E9840];
  v8[0] = [[AVTelemetryInterval alloc] initAndStartWith:90];
  if (dyld_program_sdk_at_least())
  {
    [(AVPlayer *)self defaultRate];
    v4 = *&v3;
  }

  else
  {
    v4 = 1.0;
    if (dword_1ED5AC2F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  *&v3 = v4;
  [(AVPlayer *)self setRate:v3, v6, v7];
  AVTelemetryIntervalEnd(v8);
}

- (void)pause
{
  v3 = [[AVTelemetryInterval alloc] initAndStartWith:91];
  [(AVPlayer *)self setRate:0.0];
  AVTelemetryIntervalEnd(&v3);
}

- (id)addPeriodicTimeObserverForInterval:(CMTime *)interval queue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  v5 = block;
  if (!block)
  {
    if (dyld_program_sdk_at_least())
    {
      v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "block != nil"), 0}];
      objc_exception_throw(v18);
    }

    v5 = &__block_literal_global_587;
  }

  v15 = [AVPeriodicTimebaseObserver alloc];
  proxyTimebase = self->_player->proxyTimebase;
  v19 = *&interval->value;
  epoch = interval->epoch;
  return [(AVPeriodicTimebaseObserver *)v15 initWithTimebase:proxyTimebase interval:&v19 queue:queue block:v5];
}

- (id)addBoundaryTimeObserverForTimes:(NSArray *)times queue:(dispatch_queue_t)queue usingBlock:(void *)block
{
  v5 = block;
  if (!block)
  {
    if (dyld_program_sdk_at_least())
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "block != nil"), 0}];
      objc_exception_throw(v17);
    }

    v5 = &__block_literal_global_590;
  }

  v15 = [[AVOccasionalTimebaseObserver alloc] initWithTimebase:self->_player->proxyTimebase times:times queue:queue block:v5];

  return v15;
}

- (void)removeTimeObserver:(id)observer
{
  if (!observer)
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"You did not supply a reference to an object returned by either -addPeriodicTimeObserverForInterval:queue:usingBlock: or -addBoundaryTimeObserverForTimes:queue:usingBlock:";
    goto LABEL_10;
  }

  proxyTimebase = self->_player->proxyTimebase;
  if (proxyTimebase != [observer timebase])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"An instance of AVPlayer cannot remove a time observer that was added by a different instance of AVPlayer.";
LABEL_10:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  [observer invalidate];
}

- (id)_subtitleLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  layersQ = self->_player->layersQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayer__subtitleLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(layersQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__AVPlayer__subtitleLayers__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 720)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_videoLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  layersQ = self->_player->layersQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__AVPlayer__videoLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(layersQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __24__AVPlayer__videoLayers__block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(*(a1 + 32) + 8) + 712)];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_avPlayerLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  layersQ = self->_player->layersQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayer__avPlayerLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(layersQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__AVPlayer__avPlayerLayers__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 736) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_playerCaptionLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  layersQ = self->_player->layersQ;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVPlayer__playerCaptionLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(layersQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __32__AVPlayer__playerCaptionLayers__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 744) allObjects];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateClosedCaptionLayerBounds:(id)a3 videoRelativeToViewport:(const CGRect *)a4 captionsAvoidanceMargins:(const NSEdgeInsets *)a5
{
  v9 = [(AVPlayer *)self _copyFigPlayer];
  v10 = objc_autoreleasePoolPush();
  if (!a3 || !v9)
  {
    if (!v9)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  valuePtr[0] = 0;
  v11 = [(AVPlayer *)self _closedCaptionLayers];
  if (v11 && (v12 = v11, v20.length = CFArrayGetCount(v11), v20.location = 0, valuePtr[0] = CFArrayGetFirstIndexOfValue(v12, v20, a3), valuePtr[0] < 0))
  {
    a4 = 0;
    DictionaryRepresentation = 0;
    v13 = 0;
  }

  else
  {
    v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, valuePtr);
    if (!v13)
    {
      DictionaryRepresentation = 0;
      goto LABEL_27;
    }

    [a3 bounds];
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v21);
    if (!DictionaryRepresentation)
    {
      goto LABEL_27;
    }

    if (!a4 || (a4 = CGRectCreateDictionaryRepresentation(*a4)) != 0)
    {
      if (!a5 || (FigGeometryDimensionMake(), FigGeometryDimensionMake(), FigGeometryDimensionMake(), FigGeometryDimensionMake(), FigGeometryMarginsMake(), (a5 = FigGeometryMarginsCopyAsDictionary()) != 0))
      {
        v15 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v13, *MEMORY[0x1E6972E40], DictionaryRepresentation, *MEMORY[0x1E6972E30], 0}];
        if (v15)
        {
          v16 = v15;
          if (a4)
          {
            [v15 setObject:a4 forKey:*MEMORY[0x1E6972E48]];
          }

          if (a5)
          {
            [v16 setObject:a5 forKey:*MEMORY[0x1E6972E38]];
          }

          FigBaseObject = FigPlayerGetFigBaseObject();
          v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v18)
          {
            v18(FigBaseObject, *MEMORY[0x1E6973208], v16);
          }
        }

        if (a5)
        {
          CFRelease(a5);
          if (!a4)
          {
            goto LABEL_27;
          }

          goto LABEL_26;
        }
      }
    }
  }

  if (a4)
  {
LABEL_26:
    CFRelease(a4);
  }

LABEL_27:
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_31:
  CFRelease(v9);
LABEL_32:
  objc_autoreleasePoolPop(v10);
}

- (void)_addPlayerCaptionLayer:(id)a3
{
  v5 = [(AVPlayer *)self _copyFigPlayer];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [a3 _closedCaptionLayer];
  v7 = [a3 _subtitleLayer];
  layersQ = self->_player->layersQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AVPlayer__addPlayerCaptionLayer___block_invoke;
  block[3] = &unk_1E74629D8;
  block[4] = self;
  block[5] = v7;
  block[8] = &v13;
  block[9] = &v17;
  block[6] = v6;
  block[7] = a3;
  dispatch_sync(layersQ, block);
  if (*(v14 + 24) == 1)
  {
    [v7 setPlayer:v5];
  }

  if (*(v18 + 24) == 1)
  {
    stateDispatchQueue = self->_player->stateDispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__AVPlayer__addPlayerCaptionLayer___block_invoke_2;
    v11[3] = &unk_1E7460FA8;
    v11[4] = self;
    v11[5] = v5;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v11);
  }

  v10 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v10)
  {
    [objc_msgSend(a3 "_interstitialLayer")];
    if ([(NSString *)[(AVPlayer *)self reasonForWaitingToPlay] isEqualToString:@"AVPlayerWaitingDuringInterstitialEventReason"])
    {
      [a3 _setShowInterstitialInstead:1];
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __35__AVPlayer__addPlayerCaptionLayer___block_invoke(void *a1)
{
  *(*(a1[8] + 8) + 24) = addObjectToArray(*(*(a1[4] + 8) + 720), a1[5]);
  result = addObjectToArray(*(*(a1[4] + 8) + 728), a1[6]);
  *(*(a1[9] + 8) + 24) = result;
  if (a1[7])
  {
    result = [*(*(a1[4] + 8) + 744) containsObject:?];
    if ((result & 1) == 0)
    {
      v3 = *(*(a1[4] + 8) + 744);
      v4 = a1[7];

      return [v3 addObject:v4];
    }
  }

  return result;
}

uint64_t __35__AVPlayer__addPlayerCaptionLayer___block_invoke_2(uint64_t result)
{
  if (*(result + 40))
  {
    return [*(result + 32) _attachClosedCaptionLayersToFigPlayer];
  }

  return result;
}

- (void)_removePlayerCaptionLayer:(id)a3
{
  v5 = [(AVPlayer *)self _copyFigPlayer];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [a3 _closedCaptionLayer];
  v7 = [a3 _subtitleLayer];
  if ([(AVPlayer *)self _interstitialPlayerIfCreated])
  {
    v8 = [a3 _interstitialLayer];
  }

  else
  {
    v8 = 0;
  }

  layersQ = self->_player->layersQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVPlayer__removePlayerCaptionLayer___block_invoke;
  block[3] = &unk_1E74629D8;
  block[4] = self;
  block[5] = v6;
  block[8] = &v17;
  block[9] = &v13;
  block[6] = v7;
  block[7] = a3;
  dispatch_sync(layersQ, block);
  if (*(v18 + 24) == 1)
  {
    if (v5)
    {
      CFRetain(v5);
    }

    stateDispatchQueue = self->_player->stateDispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__AVPlayer__removePlayerCaptionLayer___block_invoke_2;
    v11[3] = &unk_1E7460FA8;
    v11[4] = self;
    v11[5] = v5;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v11);
  }

  if (*(v14 + 24) == 1)
  {
    [v7 setPlayer:0];
  }

  if ([(AVPlayer *)self _interstitialPlayerIfCreated])
  {
    [v8 setPlayer:0];
  }

  if (v5)
  {
    CFRelease(v5);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

uint64_t __38__AVPlayer__removePlayerCaptionLayer___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(*(a1[4] + 8) + 728);
  v4 = [v3 count];
  [v3 removeObject:v2];
  *(*(a1[8] + 8) + 24) = v4 != [v3 count];
  v5 = *(*(a1[4] + 8) + 720);
  v6 = a1[6];
  v7 = [v5 count];
  [v5 removeObject:v6];
  result = [v5 count];
  *(*(a1[9] + 8) + 24) = v7 != result;
  if (a1[7])
  {
    result = [*(*(a1[4] + 8) + 744) containsObject:?];
    if (result)
    {
      v9 = *(*(a1[4] + 8) + 744);
      v10 = a1[7];

      return [v9 removeObject:v10];
    }
  }

  return result;
}

void __38__AVPlayer__removePlayerCaptionLayer___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(a1 + 32) _attachClosedCaptionLayersToFigPlayer];
    v2 = *(a1 + 40);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

- (CGSize)_maximumAVPlayerLayerDisplaySize
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(AVPlayer *)self _avPlayerLayers];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    v8 = v3;
    v9 = v2;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 _displaySize];
        v13 = v12;
        v15 = v14;
        if ([v11 context])
        {
          if (v13 != v2 || v15 != v3)
          {
            [v11 opacity];
            if (v17 != 0.0 && v13 * v15 > v8 * v9)
            {
              v8 = v15;
              v9 = v13;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = v3;
    v9 = v2;
  }

  v19 = v9;
  v20 = v8;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)_evaluateDisplaySizeOfAllAttachedLayers
{
  layerInteractionQueue = self->_player->layerInteractionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AVPlayer__evaluateDisplaySizeOfAllAttachedLayers__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(layerInteractionQueue, block);
}

void __51__AVPlayer__evaluateDisplaySizeOfAllAttachedLayers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  [*(a1 + 32) _maximumAVPlayerLayerDisplaySize];
  if (v2)
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&v3);
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E69733E8], DictionaryRepresentation);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    CFRelease(v2);
  }
}

- (void)_attachFigPlayerToSubtitleLayers
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(AVPlayer *)self _subtitleLayers];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
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

        [*(*(&v9 + 1) + 8 * v8++) setPlayer:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)_detachFigPlayerFromSubtitleLayers
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AVPlayer *)self _subtitleLayers];
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

        [*(*(&v7 + 1) + 8 * v6++) setPlayer:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)_allVideoTargetsForVideoLayers
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (FigUseVideoReceiverForCALayer())
  {
    layersQ = self->_player->layersQ;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__AVPlayer__allVideoTargetsForVideoLayers__block_invoke;
    v6[3] = &unk_1E7460DF0;
    v6[4] = self;
    v6[5] = v3;
    av_readwrite_dispatch_queue_read(layersQ, v6);
  }

  return v3;
}

uint64_t __42__AVPlayer__allVideoTargetsForVideoLayers__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 712);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) videoTarget];
        if (v7)
        {
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)_allClientAndVideoLayerVideoTargets
{
  v3 = [MEMORY[0x1E695DF70] array];
  layersQ = self->_player->layersQ;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVPlayer__allClientAndVideoLayerVideoTargets__block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v3;
  dispatch_sync(layersQ, v6);
  return v3;
}

void __47__AVPlayer__allClientAndVideoLayerVideoTargets__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (FigUseVideoReceiverForCALayer())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = *(*(*(a1 + 32) + 8) + 712);
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = [*(*(&v12 + 1) + 8 * i) videoTarget];
          if (v7)
          {
            [*(a1 + 40) addObject:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v8 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v9 = *(*(*(a1 + 32) + 8) + 56);
  v10[1] = 3221225472;
  v10[2] = __47__AVPlayer__allClientAndVideoLayerVideoTargets__block_invoke_2;
  v10[3] = &unk_1E7460DF0;
  v11 = v8;
  av_readwrite_dispatch_queue_read(v9, v10);
}

- (BOOL)_hasVideoDestinations
{
  if (FigUseVideoReceiverForCALayer())
  {
    v3 = [-[AVPlayer _allClientAndVideoLayerVideoTargets](self "_allClientAndVideoLayerVideoTargets")] != 0;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    layersQ = self->_player->layersQ;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AVPlayer__hasVideoDestinations__block_invoke;
    block[3] = &unk_1E74627B8;
    block[4] = self;
    block[5] = &v11;
    block[6] = &v7;
    dispatch_sync(layersQ, block);
    if (v12[3])
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v8 + 24);
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }

  return v3 & 1;
}

void __33__AVPlayer__hasVideoDestinations__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(*(a1[4] + 8) + 712) count] != 0;
  v2 = a1[4];
  v3 = *(*(v2 + 8) + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayer__hasVideoDestinations__block_invoke_2;
  v5[3] = &unk_1E7460E68;
  v4 = a1[6];
  v5[4] = v2;
  v5[5] = v4;
  av_readwrite_dispatch_queue_read(v3, v5);
}

uint64_t __33__AVPlayer__hasVideoDestinations__block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 584) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)_attachClosedCaptionLayersToFigPlayer
{
  v3 = [(AVPlayer *)self _copyFigPlayer];
  v4 = [(AVPlayer *)self _closedCaptionLayers];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v6(FigBaseObject, *MEMORY[0x1E6973200], v4);
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (void)_detachClosedCaptionLayersFromFigPlayer:(OpaqueFigPlayer *)a3
{
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = *MEMORY[0x1E6973200];

    v4(FigBaseObject, v5, 0);
  }
}

- (void)_removeLayer:(id)a3
{
  v5 = [a3 _videoLayer];
  v6 = [a3 _closedCaptionLayer];
  v7 = [a3 _subtitleLayer];
  if ([(AVPlayer *)self _interstitialPlayerIfCreated])
  {
    v8 = [a3 _interstitialLayer];
  }

  else
  {
    v8 = 0;
  }

  [(AVPlayer *)self _removeLayer:a3 videoLayer:v5 closedCaptionLayer:v6 subtitleLayer:v7 interstitialLayer:v8];
}

- (void)_removeLayer:(id)a3 videoLayer:(id)a4 closedCaptionLayer:(id)a5 subtitleLayer:(id)a6 interstitialLayer:(id)a7
{
  v13 = [(AVPlayer *)self _copyFigPlayer];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  layersQ = self->_player->layersQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke;
  block[3] = &unk_1E7462A00;
  block[4] = self;
  block[5] = a4;
  block[10] = &v26;
  block[11] = &v22;
  block[6] = a5;
  block[7] = a6;
  block[8] = a3;
  block[9] = &v30;
  dispatch_sync(layersQ, block);
  if (*(v31 + 24) == 1)
  {
    [(AVPixelBufferAttributeMediator *)self->_player->pixelBufferAttributeMediator removeRequestedPixelBufferAttributesAttributesForKey:a4];
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_2;
    v20[3] = &unk_1E7460FA8;
    v20[4] = self;
    v20[5] = v13;
    dispatch_sync(figConfigurationQueue, v20);
    if (v13)
    {
      CFRetain(v13);
    }

    stateDispatchQueue = self->_player->stateDispatchQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_3;
    v19[3] = &unk_1E7460FF0;
    v19[5] = a3;
    v19[6] = v13;
    v19[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v19);
  }

  if (*(v27 + 24) == 1)
  {
    if (v13)
    {
      CFRetain(v13);
    }

    v17 = self->_player->stateDispatchQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_4;
    v18[3] = &unk_1E7460FA8;
    v18[4] = self;
    v18[5] = v13;
    AVSerializeOnQueueAsyncIfNecessary(v17, v18);
  }

  if (*(v23 + 24) == 1)
  {
    [a6 setPlayer:0];
  }

  if ([(AVPlayer *)self _interstitialPlayerIfCreated])
  {
    [a7 setPlayer:0];
  }

  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

uint64_t __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) _removeVideoLayer:*(a1 + 40)];
  v2 = *(*(*(a1 + 32) + 8) + 728);
  v3 = *(a1 + 48);
  v4 = [v2 count];
  [v2 removeObject:v3];
  *(*(*(a1 + 80) + 8) + 24) = v4 != [v2 count];
  v5 = *(*(*(a1 + 32) + 8) + 720);
  v6 = *(a1 + 56);
  v7 = [v5 count];
  [v5 removeObject:v6];
  result = [v5 count];
  *(*(*(a1 + 88) + 8) + 24) = v7 != result;
  if (*(a1 + 64))
  {
    result = [*(*(*(a1 + 32) + 8) + 736) containsObject:?];
    if (result)
    {
      result = [*(a1 + 64) _willManageSublayersAsSwappedLayers];
      if ((result & 1) == 0)
      {
        v9 = *(*(*(a1 + 32) + 8) + 736);
        v10 = *(a1 + 64);

        return [v9 removeObject:v10];
      }
    }
  }

  return result;
}

uint64_t __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 24) mediatedPixelBufferAttributes];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _updateDecoderPixelBufferAttributes:v2 onFigPlayer:v4];
}

void __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 48))
  {
    if ([*(a1 + 32) _hasVideoDestinations] && ((objc_msgSend(*(a1 + 32), "_shouldAttachVideoDestinationsToFigPlayerOnStateQueue") & 1) != 0 || (objc_msgSend(*(a1 + 40), "_willManageSublayersAsSwappedLayers") & 1) != 0))
    {
      v2 = 0;
    }

    else
    {
      [*(a1 + 32) _hasForegroundVideoDestinations];
      [*(a1 + 32) _isVideoPlaybackAllowedWhileInBackground];
      [*(a1 + 32) _hasAssociatedAVPlayerLayerInPIPMode];
      [*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground];
      v2 = 1;
    }

    [*(a1 + 32) _reevaluateVideoLayersAndTargetsForPresentationState:v2];
    v3 = *(a1 + 48);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

void __87__AVPlayer__removeLayer_videoLayer_closedCaptionLayer_subtitleLayer_interstitialLayer___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(a1 + 32) _attachClosedCaptionLayersToFigPlayer];
    v2 = *(a1 + 40);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

- (BOOL)_shouldAttachVideoDestinationsToFigPlayerOnStateQueue
{
  if ([(AVApplicationStateMonitor *)self->_player->applicationStateMonitor isHostApplicationInForeground]|| [(AVPlayer *)self _hasForegroundVideoDestinations]|| [(AVPlayer *)self _isIAPDExtendedModeActive]|| [(AVPlayer *)self _isVideoPlaybackAllowedWhileInBackground])
  {
    return 1;
  }

  return [(AVPlayer *)self _hasAssociatedAVPlayerLayerInPIPMode];
}

- (void)_addLayer:(id)a3
{
  v5 = [a3 _videoLayer];
  v6 = [a3 _closedCaptionLayer];
  v7 = [a3 _subtitleLayer];
  v8 = [(AVPlayer *)self _copyFigPlayer];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  layersQ = self->_player->layersQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__AVPlayer__addLayer___block_invoke;
  block[3] = &unk_1E7462A00;
  block[4] = self;
  block[5] = v5;
  block[10] = &v22;
  block[11] = &v18;
  block[6] = v6;
  block[7] = v7;
  block[8] = a3;
  block[9] = &v26;
  dispatch_sync(layersQ, block);
  if (*(v27 + 24) == 1)
  {
    [(AVPlayer *)self _updatePixelBufferAttributesForLayer:a3];
    if (v8)
    {
      CFRetain(v8);
    }

    stateDispatchQueue = self->_player->stateDispatchQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __22__AVPlayer__addLayer___block_invoke_2;
    v16[3] = &unk_1E7460FF0;
    v16[5] = a3;
    v16[6] = v8;
    v16[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v16);
  }

  if (*(v23 + 24) == 1)
  {
    v11 = self->_player->stateDispatchQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __22__AVPlayer__addLayer___block_invoke_3;
    v15[3] = &unk_1E7460FA8;
    v15[4] = self;
    v15[5] = v8;
    AVSerializeOnQueueAsyncIfNecessary(v11, v15);
  }

  if (v7)
  {
    captionRenderingStrategy = self->_player->captionRenderingStrategy;
    if (captionRenderingStrategy)
    {
      if ([(NSString *)captionRenderingStrategy isEqualToString:@"CoreTextSubtitleRenderer"])
      {
        v13 = *MEMORY[0x1E6972E28];
      }

      else if ([(NSString *)self->_player->captionRenderingStrategy isEqualToString:@"CaptionDisplayService"])
      {
        v13 = *MEMORY[0x1E6972E20];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    [v7 setCaptionRenderingStrategy:v13];
  }

  if (*(v19 + 24) == 1)
  {
    [v7 setPlayer:v8];
  }

  v14 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v14)
  {
    [objc_msgSend(a3 "_interstitialLayer")];
    if ([(NSString *)[(AVPlayer *)self reasonForWaitingToPlay] isEqualToString:@"AVPlayerWaitingDuringInterstitialEventReason"]|| [(AVPlayer *)self _hasCurrentInterstitialEvent])
    {
      [a3 _setShowInterstitialInstead:1];
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
}

uint64_t __22__AVPlayer__addLayer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) _addVideoLayer:*(a1 + 40)];
  *(*(*(a1 + 80) + 8) + 24) = addObjectToArray(*(*(*(a1 + 32) + 8) + 728), *(a1 + 48));
  result = addObjectToArray(*(*(*(a1 + 32) + 8) + 720), *(a1 + 56));
  *(*(*(a1 + 88) + 8) + 24) = result;
  if (*(a1 + 64))
  {
    result = [*(*(*(a1 + 32) + 8) + 736) containsObject:?];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 64) _willManageSublayersAsSwappedLayers];
      if ((result & 1) == 0)
      {
        v3 = *(*(*(a1 + 32) + 8) + 736);
        v4 = *(a1 + 64);

        return [v3 addObject:v4];
      }
    }
  }

  return result;
}

void __22__AVPlayer__addLayer___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) && (([*(a1 + 32) _shouldAttachVideoDestinationsToFigPlayerOnStateQueue] & 1) != 0 || objc_msgSend(*(a1 + 40), "_willManageSublayersAsSwappedLayers")))
  {
    [*(a1 + 32) _reevaluateVideoLayersAndTargetsForPresentationState:0];
  }

  else
  {
    [*(a1 + 32) _hasForegroundVideoDestinations];
    [*(a1 + 32) _isVideoPlaybackAllowedWhileInBackground];
    [*(a1 + 32) _hasAssociatedAVPlayerLayerInPIPMode];
    [*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground];
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __22__AVPlayer__addLayer___block_invoke_3(uint64_t result)
{
  if (*(result + 40))
  {
    return [*(result + 32) _attachClosedCaptionLayersToFigPlayer];
  }

  return result;
}

- (BOOL)_hasForegroundVideoDestinations
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  layersQ = self->_player->layersQ;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AVPlayer__hasForegroundVideoDestinations__block_invoke;
  block[3] = &unk_1E74627B8;
  block[4] = self;
  block[5] = &v21;
  block[6] = &v15;
  dispatch_sync(layersQ, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v22[5];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v27 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (v4)
        {
          v4 = 1;
        }

        else
        {
          v4 = [*(*(&v10 + 1) + 8 * i) _isPartOfForegroundScene];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v27 count:16];
    }

    while (v5);
  }

  v8 = [v16[5] count];

  if (v8)
  {
    v4 = 1;
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v4;
}

void __43__AVPlayer__hasForegroundVideoDestinations__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = [objc_msgSend(*(*(a1[4] + 8) + 736) "allObjects")];
  v2 = a1[4];
  v3 = *(*(v2 + 8) + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVPlayer__hasForegroundVideoDestinations__block_invoke_2;
  v5[3] = &unk_1E7460E68;
  v4 = a1[6];
  v5[4] = v2;
  v5[5] = v4;
  av_readwrite_dispatch_queue_read(v3, v5);
}

uint64_t __43__AVPlayer__hasForegroundVideoDestinations__block_invoke_2(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 584) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updatePixelBufferAttributesForLayer:(id)a3
{
  v5 = [a3 _videoLayer];
  if (v5)
  {
    v6 = v5;
    v7 = [(AVPlayer *)self _copyFigPlayer];
    [(AVPixelBufferAttributeMediator *)self->_player->pixelBufferAttributeMediator removeRequestedPixelBufferAttributesAttributesForKey:v6];
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__AVPlayer__updatePixelBufferAttributesForLayer___block_invoke;
    v9[3] = &unk_1E7462A28;
    v9[4] = a3;
    v9[5] = self;
    v9[6] = v6;
    v9[7] = v7;
    dispatch_sync(figConfigurationQueue, v9);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

uint64_t __49__AVPlayer__updatePixelBufferAttributesForLayer___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 24) setRequestedPixelBufferAttributes:objc_msgSend(*(a1 + 32) forKey:{"pixelBufferAttributes"), *(a1 + 48)}];
  v2 = [*(*(*(a1 + 40) + 8) + 24) mediatedPixelBufferAttributes];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);

  return [v3 _updateDecoderPixelBufferAttributes:v2 onFigPlayer:v4];
}

- (id)_performanceDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v2 = [(AVPlayer *)self _copyFigPlayer];
  if (v2)
  {
    v3 = v2;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6973370], 0, &v34);
      v6 = v34;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKey:*MEMORY[0x1E6972DF8]];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v31;
    v11 = *MEMORY[0x1E6973C40];
    v12 = *MEMORY[0x1E6973C48];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 objectForKey:v11];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
LABEL_14:
          v19 = 0;
          while (1)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * v19);
            v21 = [v20 objectForKey:v12];
            if (v21)
            {
              if (![v21 intValue])
              {
                break;
              }
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
              if (v17)
              {
                goto LABEL_14;
              }

              goto LABEL_23;
            }
          }

          if (!v20)
          {
            continue;
          }

          v22 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v14];
          [v22 addEntriesFromDictionary:v20];
          return v22;
        }

LABEL_23:
        ;
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)_externalPlaybackVideoGravity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVPlayer__externalPlaybackVideoGravity__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __41__AVPlayer__externalPlaybackVideoGravity__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 360) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVLayerVideoGravity)externalPlaybackVideoGravity
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:120];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"externalPlaybackVideoGravity" on:self];
  v3 = [(AVPlayer *)self _externalPlaybackVideoGravity];
  AVTelemetryIntervalEnd(&v5);
  return v3;
}

- (void)setExternalPlaybackVideoGravity:(AVLayerVideoGravity)externalPlaybackVideoGravity
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:121];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"externalPlaybackVideoGravity" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVPlayer_setExternalPlaybackVideoGravity___block_invoke;
  v6[3] = &unk_1E7460F30;
  v6[4] = externalPlaybackVideoGravity;
  v6[5] = self;
  v6[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayer *)self _setNeroVideoGravityOnFigPlayer];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"externalPlaybackVideoGravity" on:self];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
}

uint64_t __44__AVPlayer_setExternalPlaybackVideoGravity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 8) + 360)];
  if ((result & 1) == 0)
  {

    result = [*(a1 + 32) copy];
    *(*(*(a1 + 40) + 8) + 360) = result;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_setNeroVideoGravityOnFigPlayer
{
  v3 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    v4 = v3;
    if (_setNeroVideoGravityOnFigPlayer_sCreatesAVLayerVideoGravityToFigGravityOnce != -1)
    {
      [AVPlayer _setNeroVideoGravityOnFigPlayer];
    }

    if ([_setNeroVideoGravityOnFigPlayer_sAVLayerVideoGravityToFigGravity objectForKey:{-[AVPlayer _externalPlaybackVideoGravity](self, "_externalPlaybackVideoGravity")}])
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v8 = 0;
      figConfigurationQueue = self->_player->figConfigurationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__AVPlayer__setNeroVideoGravityOnFigPlayer__block_invoke_2;
      block[3] = &unk_1E7462990;
      block[4] = self;
      block[5] = v7;
      block[6] = v4;
      dispatch_sync(figConfigurationQueue, block);
      _Block_object_dispose(v7, 8);
    }

    CFRelease(v4);
  }
}

uint64_t __43__AVPlayer__setNeroVideoGravityOnFigPlayer__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*MEMORY[0x1E6972FB8], @"AVLayerVideoGravityResize", *MEMORY[0x1E6972FC0], @"AVLayerVideoGravityResizeAspect", *MEMORY[0x1E6972FC8], @"AVLayerVideoGravityResizeAspectFill", 0}];
  _setNeroVideoGravityOnFigPlayer_sAVLayerVideoGravityToFigGravity = result;
  return result;
}

uint64_t __43__AVPlayer__setNeroVideoGravityOnFigPlayer__block_invoke_2(uint64_t a1)
{
  v2 = [_setNeroVideoGravityOnFigPlayer_sAVLayerVideoGravityToFigGravity objectForKey:{objc_msgSend(*(a1 + 32), "_externalPlaybackVideoGravity")}];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973348], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_addFPListeners
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
  v4 = [(AVPlayer *)self _weakReference];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(AVPlayer *)self _fpNotificationNames];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 addListenerWithWeakReference:v4 callback:avplayer_fpNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_player->figPlayer flags:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_getDisplayVideoRange:(id *)a3 displaySize:(CGSize *)a4 refreshRate:(id *)a5
{
  cf = 0;
  v12 = *MEMORY[0x1E695F060];
  v8 = [(AVPlayer *)self _copyFigPlayer];
  if (v8)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(FigBaseObject, *MEMORY[0x1E6973258], 0, &cf);
    }

    FPSupport_GetCurrentDisplayModeVideoRangeAndSizeAndFrameRate();
    *a3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:FPSupport_GetModeString()];
    *a4 = v12;
    *a5 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    CFRelease(v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v8 != 0;
}

- (void)_logPerformanceDataForPreviousItem
{
  v10 = 0;
  v2 = [(AVPlayer *)self _copyFigPlayer];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6973378], 0, &v10);
    if (v10)
    {
      v5 = [v10 count];
      if (v5 >= 1)
      {
        v6 = [v10 objectAtIndex:v5 - 1];
        if (v6)
        {
          v7 = [objc_msgSend(v6 "description")];
          v8 = [v7 count];
          NSLog(&stru_1F0A8FBD0.isa);
          if (v8 >= 1)
          {
            for (i = 0; i != v8; ++i)
            {
              NSLog(&stru_1F0A8FBF0.isa, [v7 objectAtIndex:i]);
            }
          }

          NSLog(&stru_1F0A8FC10.isa);
        }
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (id)_copyPerformanceDataForCurrentItem
{
  v6 = 0;
  result = [(AVPlayer *)self _copyFigPlayer];
  if (result)
  {
    v3 = result;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6973370], 0, &v6);
    }

    CFRelease(v3);
    return v6;
  }

  return result;
}

- (void)_logPerformanceDataForCurrentItem
{
  v2 = [(AVPlayer *)self _copyPerformanceDataForCurrentItem];
  if (v2)
  {
    v6 = v2;
    v3 = [objc_msgSend(v2 "description")];
    v4 = [v3 count];
    NSLog(&stru_1F0A8FBD0.isa);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        NSLog(&stru_1F0A8FBF0.isa, [v3 objectAtIndex:i]);
      }
    }

    NSLog(&stru_1F0A8FC10.isa);
  }
}

- (void)_setLimitsBandwidthForCellularAccess:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AVPlayer__setLimitsBandwidthForCellularAccess___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVPlayer__setLimitsBandwidthForCellularAccess___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973300]];
  }
}

uint64_t __49__AVPlayer__setLimitsBandwidthForCellularAccess___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _limitsBandwidthForCellularAccess])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973300], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_limitsBandwidthForCellularAccess
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayer__limitsBandwidthForCellularAccess__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setPausesAudioVisualPlaybackInBackground:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  [(AVPlayer *)self setAudiovisualBackgroundPlaybackPolicy:v3];
}

- (void)setAudiovisualBackgroundPlaybackPolicy:(AVPlayerAudiovisualBackgroundPlaybackPolicy)audiovisualBackgroundPlaybackPolicy
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:131];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"audiovisualBackgroundPlaybackPolicy" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVPlayer_setAudiovisualBackgroundPlaybackPolicy___block_invoke;
  v6[3] = &unk_1E7462A50;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = audiovisualBackgroundPlaybackPolicy;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"audiovisualBackgroundPlaybackPolicy" on:self];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
}

void *__51__AVPlayer_setAudiovisualBackgroundPlaybackPolicy___block_invoke(void *result)
{
  v1 = result[6];
  *(*(result[5] + 8) + 24) = *(*(result[4] + 8) + 288) != v1;
  *(*(result[4] + 8) + 288) = v1;
  return result;
}

- (AVPlayerAudiovisualBackgroundPlaybackPolicy)audiovisualBackgroundPlaybackPolicy
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:130];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"audiovisualBackgroundPlaybackPolicy" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__AVPlayer_audiovisualBackgroundPlaybackPolicy__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

+ (void)checkForAvailableHDRModesChanges
{
  v3 = [a1 availableHDRModes];
  v4 = v3;
  if (previousAvailableHDRModes != v3)
  {
    previousAvailableHDRModes = v3;
    [a1 fireAvailableHDRModesDidChangeNotification];
  }

  if (previousEligibleForHDR != (v4 != 0))
  {
    previousEligibleForHDR = v4 != 0;

    [a1 fireEligibleForHDRPlaybackDidChangeNotification];
  }
}

+ (void)fireAvailableHDRModesDidChangeNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = objc_opt_class();

  [v2 postNotificationName:@"AVPlayerAvailableHDRModesDidChangeNotification" object:v3];
}

+ (void)fireEligibleForHDRPlaybackDidChangeNotification
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = objc_opt_class();

  [v2 postNotificationName:@"AVPlayerEligibleForHDRPlaybackDidChangeNotification" object:v3];
}

+ (AVPlayerHDRMode)availableHDRModes
{
  v5 = 0;
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:122];
  AllVideoRangesSupportedByDisplays = FPSupport_CreateAllVideoRangesSupportedByDisplays();
  v3 = AllVideoRangesSupportedByDisplays;
  if (AllVideoRangesSupportedByDisplays)
  {
    v7.length = CFArrayGetCount(AllVideoRangesSupportedByDisplays);
    v7.location = 0;
    CFArrayApplyFunction(v3, v7, addToHDRModes, &v5);
    CFRelease(v3);
    v3 = v5;
  }

  AVTelemetryIntervalEnd(&v6);
  return v3;
}

+ (BOOL)eligibleForHDRPlayback
{
  v4 = [[AVTelemetryInterval alloc] initAndStartWith:123];
  LOBYTE(a1) = [a1 availableHDRModes] != 0;
  AVTelemetryIntervalEnd(&v4);
  return a1;
}

- (BOOL)_suppressesAudioRendering
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayer__suppressesAudioRendering__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setSuppressesAudioRendering:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__AVPlayer__setSuppressesAudioRendering___block_invoke;
  v11[3] = &unk_1E7460E40;
  v11[4] = self;
  v12 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v6 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  v8 = *MEMORY[0x1E6973438];
  if (self->_player->figPlayer)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v10(FigBaseObject, v8, v7);
    }
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v7 forKey:*MEMORY[0x1E6973438]];
  }
}

- (BOOL)_startupSyncIgnoresAudioDeviceLatency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayer__startupSyncIgnoresAudioDeviceLatency__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setStartupSyncIgnoresAudioDeviceLatency:(BOOL)a3
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AVPlayer__setStartupSyncIgnoresAudioDeviceLatency___block_invoke;
  v9[3] = &unk_1E7460E40;
  v9[4] = self;
  v10 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  v5 = [(AVPlayer *)self _copyFigPlayer];
  figConfigurationQueue = self->_player->figConfigurationQueue;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AVPlayer__setStartupSyncIgnoresAudioDeviceLatency___block_invoke_2;
    block[3] = &unk_1E7460EE0;
    block[4] = self;
    block[5] = v11;
    dispatch_sync(figConfigurationQueue, block);
    CFRelease(v5);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__AVPlayer__setStartupSyncIgnoresAudioDeviceLatency___block_invoke_3;
    v7[3] = &unk_1E7460C00;
    v7[4] = self;
    dispatch_sync(figConfigurationQueue, v7);
  }

  _Block_object_dispose(v11, 8);
}

uint64_t __53__AVPlayer__setStartupSyncIgnoresAudioDeviceLatency___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _startupSyncIgnoresAudioDeviceLatency])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69732B8], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __53__AVPlayer__setStartupSyncIgnoresAudioDeviceLatency___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _startupSyncIgnoresAudioDeviceLatency];
  v3 = MEMORY[0x1E695E4D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E69732B8];

  return [v5 _setPendingFigPlayerProperty:v4 forKey:v6];
}

- (void)setPreventsDisplaySleepDuringVideoPlayback:(BOOL)preventsDisplaySleepDuringVideoPlayback
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:127];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"preventsDisplaySleepDuringVideoPlayback" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__AVPlayer_AVPlayerVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke;
  v8[3] = &unk_1E7460E40;
  v8[4] = self;
  v9 = preventsDisplaySleepDuringVideoPlayback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__AVPlayer_AVPlayerVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke_2;
  v7[3] = &unk_1E7460C00;
  v7[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v7);
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"preventsDisplaySleepDuringVideoPlayback" on:self];
  AVTelemetryIntervalEnd(&v10);
}

void __92__AVPlayer_AVPlayerVideoDisplaySleepPrevention__setPreventsDisplaySleepDuringVideoPlayback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  v3 = [*(a1 + 32) preventsDisplaySleepDuringVideoPlayback];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  if (v2)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E69733E0], v5);
    }

    CFRelease(v2);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69733E0];

    [v8 _setPendingFigPlayerProperty:v5 forKey:v9];
  }
}

- (void)setPreventsAutomaticBackgroundingDuringVideoPlayback:(BOOL)preventsAutomaticBackgroundingDuringVideoPlayback
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:129];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__AVPlayer_AVPlayerAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke;
  v8[3] = &unk_1E7460E40;
  v8[4] = self;
  v9 = preventsAutomaticBackgroundingDuringVideoPlayback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __104__AVPlayer_AVPlayerAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke_2;
  v7[3] = &unk_1E7460C00;
  v7[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v7);
  AVTelemetryIntervalEnd(&v10);
}

void __104__AVPlayer_AVPlayerAutomaticBackgroundPrevention__setPreventsAutomaticBackgroundingDuringVideoPlayback___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  v3 = [*(a1 + 32) preventsAutomaticBackgroundingDuringVideoPlayback];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  if (v2)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E69733D8], v5);
    }

    CFRelease(v2);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E69733D8];

    [v8 _setPendingFigPlayerProperty:v5 forKey:v9];
  }
}

- (BOOL)preventsAutomaticBackgroundingDuringVideoPlayback
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:128];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__AVPlayer_AVPlayerAutomaticBackgroundPrevention__preventsAutomaticBackgroundingDuringVideoPlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (id)_playbackDisplaysForFigPlayer
{
  displaysUsedForPlayback = self->_player->displaysUsedForPlayback;
  if (!displaysUsedForPlayback)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](displaysUsedForPlayback, "count")}];
  if ([(NSArray *)self->_player->displaysUsedForPlayback count])
  {
    v5 = 0;
    do
    {
      [v4 addObject:{objc_msgSend(-[NSArray objectAtIndex:](self->_player->displaysUsedForPlayback, "objectAtIndex:", v5++), "name")}];
    }

    while (v5 < [(NSArray *)self->_player->displaysUsedForPlayback count]);
  }

  return v4;
}

- (NSArray)_displaysUsedForPlayback
{
  v2 = self->_player->displaysUsedForPlayback;

  return v2;
}

- (void)_setDisplaysUsedForPlayback:(id)a3
{
  v4 = [a3 copy];

  self->_player->displaysUsedForPlayback = v4;
}

- (int64_t)_externalProtectionStatusCopiedFromFig
{
  cf = 0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  if (v3 && (FigBaseObject = FigPlayerGetFigBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
  {
    v5(FigBaseObject, *MEMORY[0x1E69732A8], *MEMORY[0x1E695E480], &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AVPlayer *)self _extractFPExternalProtectionStatus:v6];
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

- (int64_t)_externalProtectionStatus
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__AVPlayer_AVPlayerProtectedContentPrivate___externalProtectionStatus__block_invoke;
    v7[3] = &unk_1E7460E68;
    v7[4] = self;
    v7[5] = &v8;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
    CFRelease(v3);
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
    v9[3] = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

- (int64_t)_extractFPExternalProtectionStatus:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = [objc_msgSend(a3 allKeysForObject:{*MEMORY[0x1E6972E88]), "count"}];
  return v4 != [a3 count];
}

- (BOOL)_isPIPModePossible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayer_AVPlayer_PIPSupport___isPIPModePossible__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)removeAudioPlaybackRateLimits
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__AVPlayer_AVPlayerAudioPlaybackRateLimits__removeAudioPlaybackRateLimits__block_invoke;
  v8[3] = &unk_1E7460C00;
  v8[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
  v4 = [(AVPlayer *)self _copyFigPlayer];
  if (v4)
  {
    v5 = v4;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __74__AVPlayer_AVPlayerAudioPlaybackRateLimits__removeAudioPlaybackRateLimits__block_invoke_2;
    v7[3] = &__block_descriptor_40_e5_v8__0l;
    v7[4] = v5;
    dispatch_sync(figConfigurationQueue, v7);
    CFRelease(v5);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:0 forKey:*MEMORY[0x1E6973330]];
    [(AVPlayer *)self _setPendingFigPlayerProperty:0 forKey:*MEMORY[0x1E6973318]];
  }
}

uint64_t __74__AVPlayer_AVPlayerAudioPlaybackRateLimits__removeAudioPlaybackRateLimits__block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 384) = -8388608;
  *(*(*(result + 32) + 8) + 388) = 2139095040;
  return result;
}

uint64_t __74__AVPlayer_AVPlayerAudioPlaybackRateLimits__removeAudioPlaybackRateLimits__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = *MEMORY[0x1E6973330];
  v9[0] = [MEMORY[0x1E695DFB0] null];
  v8[1] = *MEMORY[0x1E6973318];
  v9[1] = [MEMORY[0x1E695DFB0] null];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = *(a1 + 32);
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 112);
  if (v7)
  {
    return v7(v3, v2, 0);
  }

  return result;
}

- (BOOL)isAudioPlaybackEnabledAtAllRates
{
  [(AVPlayer *)self minRateForAudioPlayback];
  if (v3 != -INFINITY)
  {
    return 0;
  }

  [(AVPlayer *)self maxRateForAudioPlayback];
  return v4 == INFINITY;
}

- (void)setMinRateForAudioPlayback:(float)a3
{
  v12 = a3;
  valuePtr = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMinRateForAudioPlayback___block_invoke;
  v11[3] = &unk_1E74628F8;
  v11[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v5 = [(AVPlayer *)self _copyFigPlayer];
  if (v5)
  {
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMinRateForAudioPlayback___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v9;
    block[6] = v6;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v9, 8);
  }

  else
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
    [(AVPlayer *)self _setPendingFigPlayerProperty:v6 forKey:*MEMORY[0x1E6973330]];
  }

  CFRelease(v6);
}

float __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMinRateForAudioPlayback___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 384) = result;
  return result;
}

uint64_t __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMinRateForAudioPlayback___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  [*(a1 + 32) minRateForAudioPlayback];
  v3 = [v2 numberWithFloat:?];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    result = v5(FigBaseObject, *MEMORY[0x1E6973330], v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (float)minRateForAudioPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = -8388608;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayer_AVPlayerAudioPlaybackRateLimits__minRateForAudioPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __68__AVPlayer_AVPlayerAudioPlaybackRateLimits__minRateForAudioPlayback__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 384);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMaxRateForAudioPlayback:(float)a3
{
  v12 = a3;
  valuePtr = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMaxRateForAudioPlayback___block_invoke;
  v11[3] = &unk_1E74628F8;
  v11[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v5 = [(AVPlayer *)self _copyFigPlayer];
  if (v5)
  {
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMaxRateForAudioPlayback___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v9;
    block[6] = v6;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v9, 8);
  }

  else
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
    [(AVPlayer *)self _setPendingFigPlayerProperty:v6 forKey:*MEMORY[0x1E6973318]];
  }

  CFRelease(v6);
}

float __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMaxRateForAudioPlayback___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 388) = result;
  return result;
}

uint64_t __72__AVPlayer_AVPlayerAudioPlaybackRateLimits__setMaxRateForAudioPlayback___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  [*(a1 + 32) maxRateForAudioPlayback];
  v3 = [v2 numberWithFloat:?];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    result = v5(FigBaseObject, *MEMORY[0x1E6973318], v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (float)maxRateForAudioPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 2139095040;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayer_AVPlayerAudioPlaybackRateLimits__maxRateForAudioPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __68__AVPlayer_AVPlayerAudioPlaybackRateLimits__maxRateForAudioPlayback__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 388);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_hasAssociatedAVPlayerLayerInPIPMode
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AVPlayer *)self _avPlayerLayers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isPIPModeEnabled])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)_applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock
{
  v17 = *MEMORY[0x1E69E9840];
  if (_applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock_sniffUIApplicationOnce != -1)
  {
    [AVPlayer(AVPlayerMultitaskSupport) _applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock];
  }

  if (_applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock_uiApplicationClass)
  {
    v3 = SBSGetScreenLockStatus();
    if (v3)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v4 = [(AVPlayer *)self _videoLayers];
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        v8 = *MEMORY[0x1E69796A0];
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = [objc_msgSend(objc_msgSend(*(*(&v12 + 1) + 8 * i) "context")];
            if (v10 && ![v10 isEqualToString:@"LCD"])
            {
              LOBYTE(v3) = 1;
              return v3;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v3) = [(AVPlayer *)self isExternalPlaybackActive];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

Class __105__AVPlayer_AVPlayerMultitaskSupport___applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock__block_invoke()
{
  result = NSClassFromString(&cfstr_Uiapplication.isa);
  _applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock_uiApplicationClass = result;
  return result;
}

- (BOOL)_hasAssociatedOnscreenAVPlayerLayer
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AVPlayer *)self _videoLayers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * v6) context])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

+ (BOOL)isIAPDExtendedModeActive
{
  state64 = 0;
  out_token = 0;
  v2 = notify_register_check("com.apple.iapd.notify.extendedMode", &out_token);
  result = 0;
  if (!v2)
  {
    v4 = 0;
    notify_check(out_token, &v4);
    if (v4)
    {
      notify_get_state(out_token, &state64);
    }

    notify_cancel(out_token);
    return state64 == 1;
  }

  return result;
}

- (BOOL)_isIAPDExtendedModeActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  if (AVPlayerInitializeIAPD_onceToken != -1)
  {
    [AVPlayer(AVPlayerMultitaskSupport) _isIAPDExtendedModeActive];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AVPlayerGetCachedIAPDModeActive_block_invoke;
  block[3] = &unk_1E7462C30;
  block[4] = &v5;
  av_readwrite_dispatch_queue_read(sAVPlayerIAPDReadWriteQueue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_canContinuePlaybackInBackgrounBasedOnAudiovisualBackgroundPlaybackPolicy:(int64_t)a3
{
  if (a3 != 1)
  {
    return a3 == 3;
  }

  v5 = [objc_msgSend(-[AVPlayer _playbackCoordinatorWithoutTriggeringFullSetup](self "_playbackCoordinatorWithoutTriggeringFullSetup")];
  return (v5 != 0) & ([-[AVPlayer _playbackCoordinatorWithoutTriggeringFullSetup](self "_playbackCoordinatorWithoutTriggeringFullSetup")] ^ 1);
}

- (int64_t)_itemOkayToPlayWhileTransitioningToBackground:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (!_CFMZEnabled() && [(AVPlayer *)self _hasVideoDestinations]&& ![(AVPlayer *)self _airPlayVideoActive]&& ![(AVPlayer *)self _CALayerDestinationIsTVOut]&& ![(AVPlayer *)self _hasAssociatedAVPlayerLayerInPIPMode]&& ![(AVPlayer *)self _carplayIsActive]&& ![(AVPlayer *)self _applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock])
  {
    v7 = [(AVPlayer *)self _isIAPDExtendedModeActive];
    v8 = [(AVPlayer *)self audiovisualBackgroundPlaybackPolicy];
    if (v7 || [(AVPlayer *)self _canContinuePlaybackInBackgrounBasedOnAudiovisualBackgroundPlaybackPolicy:v8])
    {
      return 1;
    }

    v9 = [a3 status];
    if (!v9)
    {
      return 2;
    }

    if (v9 == 1)
    {
      v10 = [a3 tracks];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v11)
      {
        return 1;
      }

      v12 = v11;
      v13 = *v17;
      v5 = 1;
LABEL_17:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        if ([objc_msgSend(objc_msgSend(v15 "assetTrack")])
        {
          if ([objc_msgSend(a3 "asset")] & 1) != 0 || (objc_msgSend(v15, "isEnabled"))
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v12)
          {
            goto LABEL_17;
          }

          return v5;
        }
      }
    }

    return 0;
  }

  [(AVPlayer *)self audiovisualBackgroundPlaybackPolicy];
  return 1;
}

- (BOOL)_shouldDetachVideoLayersFromFigPlayer
{
  if ([(AVPlayer *)self _hasAssociatedAVPlayerLayerInPIPMode]|| [(AVPlayer *)self _applicationHasExternallyDisplayedAVPlayerLayerAndIsUnderDeviceLock]|| [(AVPlayer *)self _isIAPDExtendedModeActive])
  {
    return 0;
  }

  if ([(AVApplicationStateMonitor *)self->_player->applicationStateMonitor isHostApplicationInForeground])
  {
    return ![(AVPlayer *)self _hasForegroundVideoDestinations];
  }

  return 1;
}

- (void)_layerForegroundStateChanged:(id)a3
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVPlayer_AVPlayerMultitaskSupport___layerForegroundStateChanged___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v4);
}

uint64_t __67__AVPlayer_AVPlayerMultitaskSupport___layerForegroundStateChanged___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_avPlayerLayers")];
  if (result)
  {
    v3 = [*(a1 + 32) _hasForegroundVideoDestinations];
    v4 = *(a1 + 32);
    if (v3)
    {

      return [v4 _ensureVideoDestinationsAreAttached];
    }

    else
    {

      return [v4 _detachVideoDestinationsForSuspension];
    }
  }

  return result;
}

- (id)_acquireBackgroundAssertion
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C7548]);
  v3 = [MEMORY[0x1E69C7640] currentProcess];
  v7[0] = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
  v4 = [v2 initWithExplanation:@"AVPlayer background assertion" target:v3 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 1)}];
  v6 = 0;
  if ([v4 acquireWithError:&v6])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_didEnterBackground:(id)a3
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVPlayer_AVPlayerMultitaskSupport___didEnterBackground___block_invoke;
  v4[3] = &unk_1E7460C00;
  v4[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v4);
}

void __58__AVPlayer_AVPlayerMultitaskSupport___didEnterBackground___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 560) setHostApplicationInForeground:0];
  *(*(*(a1 + 32) + 8) + 834) = 1;
  v2 = [*(a1 + 32) _acquireBackgroundAssertion];
  v3 = dispatch_time(0, 1000000000);
  v4 = *(a1 + 32);
  v5 = *(*(v4 + 8) + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__AVPlayer_AVPlayerMultitaskSupport___didEnterBackground___block_invoke_2;
  v6[3] = &unk_1E7460DF0;
  v6[4] = v4;
  v6[5] = v2;
  dispatch_after(v3, v5, v6);
}

uint64_t __58__AVPlayer_AVPlayerMultitaskSupport___didEnterBackground___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 834) == 1 && ([*(v2 + 560) isHostApplicationInForeground] & 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AVPlayer_AVPlayerMultitaskSupport___didEnterBackground___block_invoke_3;
    v6[3] = &unk_1E7460C00;
    v5 = *(a1 + 32);
    v6[4] = *(a1 + 40);
    return [v5 _didFinishSuspension:0 withCompletionHandler:v6];
  }

  else
  {
    v3 = *(a1 + 40);

    return [v3 invalidate];
  }
}

- (void)_detachVideoDestinationsForSuspensionWithCompletionHandler:(id)a3
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke;
  v4[3] = &unk_1E74626C8;
  v4[4] = self;
  v4[5] = a3;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v4);
}

void __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  *(*(*(a1 + 32) + 8) + 834) = 0;
  [*(a1 + 32) rate];
  if (v3 != 0.0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1E7460C00;
    v8[4] = *(a1 + 32);
    AVEnsureNotOnMainThread(v8);
  }

  if ([*(a1 + 32) _hasAssociatedOnscreenAVPlayerLayer])
  {
    *(*(*(a1 + 32) + 8) + 833) = 1;
  }

  if (v2 && [*(a1 + 32) _hasVideoDestinations])
  {
    CFRetain(v2);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_4;
    v5[3] = &unk_1E7462A98;
    v6 = *(a1 + 32);
    v7 = v2;
    AVEnsureNotOnMainThread(v5);
LABEL_11:
    CFRelease(v2);
    return;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v2)
  {
    goto LABEL_11;
  }
}

void __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _itemOkayToPlayWhileTransitioningToBackground:{objc_msgSend(*(a1 + 32), "currentItem")}];
  v3 = *(a1 + 32);
  v4 = *(*(v3 + 8) + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_3;
  v5[3] = &unk_1E7460FA8;
  v5[4] = v3;
  v5[5] = v2;
  AVSerializeOnQueueAsyncIfNecessary(v4, v5);
}

uint64_t __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground])
  {
    v2 = [*(a1 + 32) _hasForegroundVideoDestinations];
  }

  else
  {
    v2 = 0;
  }

  result = [*(a1 + 32) _hasAssociatedAVPlayerLayerInPIPMode];
  if ((v2 & 1) == 0 && (result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (v4 == 2)
    {
      *(*(*(a1 + 32) + 8) + 832) = 1;
    }

    else if (!v4)
    {
      v5 = [objc_msgSend(*(a1 + 32) "_playbackCoordinatorWithoutTriggeringFullSetup")] ^ 1;
      v6 = *(a1 + 32);
      if ((v5 & 1) == 0 && !*(v6[1] + 840))
      {
        [v6 _addCoordinatedPlaybackSuspensionWithReasonOnQueue:0x1F0A9EB70];
        v6 = *(a1 + 32);
      }

      v7 = *MEMORY[0x1E6960C70];
      v8 = *(MEMORY[0x1E6960C70] + 16);
      result = [v6 _setRate:&v7 withVolumeRampDuration:0 playImmediately:25 rateChangeReason:v5 affectsCoordinatedPlayback:0.0];
    }

    *(*(*(a1 + 32) + 8) + 835) = 1;
  }

  return result;
}

void __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) _shouldDetachVideoLayersFromFigPlayer])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v2 = *(a1 + 32);
    v3 = *(*(*(a1 + 32) + 8) + 32);
    v7[1] = 3221225472;
    v7[2] = __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_5;
    v7[3] = &unk_1E7462A98;
    v8 = v2;
    v9 = *(a1 + 48);
    AVSerializeOnQueueAsyncIfNecessary(v3, v7);
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }
}

void __97__AVPlayer_AVPlayerMultitaskSupport___detachVideoDestinationsForSuspensionWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground])
  {
    v2 = [*(a1 + 32) _hasForegroundVideoDestinations];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) _hasAssociatedAVPlayerLayerInPIPMode];
  if (v2 & 1) != 0 || (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))();
    }
  }

  else
  {
    [*(a1 + 32) _reevaluateVideoLayersAndTargetsForPresentationState:3 withCompletionHandler:*(a1 + 40)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)_willEnterForeground:(id)a3
{
  [(AVApplicationStateMonitor *)self->_player->applicationStateMonitor setHostApplicationInForeground:1];
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayer_AVPlayerMultitaskSupport___willEnterForeground___block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v5);
}

uint64_t __59__AVPlayer_AVPlayerMultitaskSupport___willEnterForeground___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 560) isHostApplicationInForeground];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _ensureVideoDestinationsAreAttached];
  }

  return result;
}

- (void)_ensureVideoDestinationsAreAttached
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __73__AVPlayer_AVPlayerMultitaskSupport___ensureVideoDestinationsAreAttached__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v3);
}

void __73__AVPlayer_AVPlayerMultitaskSupport___ensureVideoDestinationsAreAttached__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2[1] + 836) & 1) == 0)
  {
    v3 = [v2 _copyFigPlayer];
    if (v3)
    {
      v4 = v3;
      if ([*(a1 + 32) _hasVideoDestinations])
      {
        [*(a1 + 32) _reevaluateVideoLayersAndTargetsForPresentationState:0];
        if ((dyld_program_sdk_at_least() & 1) == 0 && ((dyld_program_sdk_at_least() & 1) != 0 || [objc_msgSend(*(a1 + 32) "_clientName")]))
        {
          v5 = *(a1 + 32);
          if (*(v5[1] + 833) == 1)
          {
            [objc_msgSend(v5 "currentItem")];
          }
        }
      }

      CFRelease(v4);
    }
  }
}

- (void)_setWantsVolumeChangesWhenPausedOrInactive:(BOOL)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  v5 = *MEMORY[0x1E6973498];
  if (self->_player->figPlayer)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {

      v7(FigBaseObject, v5, v4);
    }
  }

  else
  {
    v8 = *v3;
    v9 = *MEMORY[0x1E6973498];

    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:v9];
  }
}

- (void)_setEQPreset:(int)a3
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v5 = *MEMORY[0x1E6973278];
  if (self->_player->figPlayer)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, v5, v4);
    }
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v4 forKey:*MEMORY[0x1E6973278]];
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

- (void)_setStoppingFadeOutDuration:(float)a3
{
  valuePtr = a3;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v5 = *MEMORY[0x1E6973428];
  if (self->_player->figPlayer)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, v5, v4);
    }
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v4 forKey:*MEMORY[0x1E6973428]];
  }

  CFRelease(v4);
}

- (id)_clientName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVPlayer_AVPlayerSupportForMediaPlayer___clientName__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setClientName:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__AVPlayer_AVPlayerSupportForMediaPlayer___setClientName___block_invoke;
  v12[3] = &unk_1E7460DF0;
  v12[4] = self;
  v12[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__AVPlayer_AVPlayerSupportForMediaPlayer___setClientName___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v10;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v10, 8);
    CFRelease(v7);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:a3 forKey:*MEMORY[0x1E69731F0]];
  }
}

uint64_t __58__AVPlayer_AVPlayerSupportForMediaPlayer___setClientName___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientName];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69731F0], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_clientPriority
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayer_AVPlayerSupportForMediaPlayer___clientPriority__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setClientPriority:(int64_t)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AVPlayer_AVPlayerSupportForMediaPlayer___setClientPriority___block_invoke;
  v13[3] = &unk_1E7460FA8;
  v13[4] = self;
  v13[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AVPlayer_AVPlayerSupportForMediaPlayer___setClientPriority___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E69731F8]];
  }
}

uint64_t __62__AVPlayer_AVPlayerSupportForMediaPlayer___setClientPriority___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "_clientPriority")}];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69731F8], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setCALayerDestinationIsTVOut:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__AVPlayer_AVPlayerSupportForMediaPlayer___setCALayerDestinationIsTVOut___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__AVPlayer_AVPlayerSupportForMediaPlayer___setCALayerDestinationIsTVOut___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973480]];
  }
}

uint64_t __73__AVPlayer_AVPlayerSupportForMediaPlayer___setCALayerDestinationIsTVOut___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _CALayerDestinationIsTVOut])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973480], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_CALayerDestinationIsTVOut
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__AVPlayer_AVPlayerSupportForMediaPlayer___CALayerDestinationIsTVOut__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateConnectionToSecondScreen
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AVPlayer *)self _avPlayerLayers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v4)
  {
    if (![(AVPlayer *)self _isConnectedToPhysicalSecondScreen])
    {
      return;
    }

    LOBYTE(v6) = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v13;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 |= [*(*(&v12 + 1) + 8 * i) _isConnectedToSecondScreen];
    }

    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v5);
  if ((v6 & 1) != [(AVPlayer *)self _isConnectedToPhysicalSecondScreen])
  {
LABEL_12:
    [(AVPlayer *)self _setCALayerDestinationIsTVOut:v6 & 1];
    [(AVPlayer *)self willChangeValueForKey:@"externalPlaybackActive"];
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__AVPlayer_AVPlayerSupportForMediaPlayer___updateConnectionToSecondScreen__block_invoke;
    v10[3] = &unk_1E7460E40;
    v10[4] = self;
    v11 = v6 & 1;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
    [(AVPlayer *)self didChangeValueForKey:@"externalPlaybackActive"];
  }
}

- (BOOL)_isConnectedToPhysicalSecondScreen
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__AVPlayer_AVPlayerSupportForMediaPlayer___isConnectedToPhysicalSecondScreen__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setDisallowsVideoLayerDisplayCompositing:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__AVPlayer_AVPlayerSupportForMediaPlayer___setDisallowsVideoLayerDisplayCompositing___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__AVPlayer_AVPlayerSupportForMediaPlayer___setDisallowsVideoLayerDisplayCompositing___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973248]];
  }
}

uint64_t __85__AVPlayer_AVPlayerSupportForMediaPlayer___setDisallowsVideoLayerDisplayCompositing___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _disallowsVideoLayerDisplayCompositing])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973248], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_disallowsVideoLayerDisplayCompositing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__AVPlayer_AVPlayerSupportForMediaPlayer___disallowsVideoLayerDisplayCompositing__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setPreferredLanguageList:(id)a3
{
  v4 = *MEMORY[0x1E69733B8];
  if (self->_player->figPlayer)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {

      v6(FigBaseObject, v4, a3);
    }
  }

  else
  {
    v7 = *MEMORY[0x1E69733B8];

    [(AVPlayer *)self _setPendingFigPlayerProperty:a3 forKey:v7];
  }
}

- (BOOL)_resumePlayback:(double)a3 error:(id *)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      v20[0] = *MEMORY[0x1E69734B8];
      CMTimeMakeWithSeconds(&v19, a3, 1000);
      v8 = NSDictionaryFromCMTime(&v19);
      v9 = *MEMORY[0x1E69734D8];
      v21[0] = v8;
      v21[1] = &unk_1F0AD33D0;
      v10 = *MEMORY[0x1E69734C0];
      v20[1] = v9;
      v20[2] = v10;
      v21[2] = *MEMORY[0x1E695E4D0];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v12)
      {
        v13 = v12(v7, v11, 1.0);
        goto LABEL_11;
      }

LABEL_14:
      v13 = -12782;
      if (a4)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 56))
    {
      CMTimeMakeWithSeconds(&v18, a3, 1000);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v14)
      {
        v13 = -12782;
        goto LABEL_12;
      }

      v19 = v18;
      v13 = v14(v7, &v19, 1.0);
    }

    else
    {
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (!v16)
      {
        goto LABEL_14;
      }

      v13 = v16(v7, 1.0);
    }

LABEL_11:
    if (!v13)
    {
      v15 = 1;
      goto LABEL_18;
    }

LABEL_12:
    if (a4)
    {
LABEL_13:
      v15 = 0;
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
LABEL_18:
      CFRelease(v7);
      return v15;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_18;
  }

  return 0;
}

- (BOOL)allowsPixelBufferPoolSharing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayer_AVPlayerPixelBufferPoolSharing__allowsPixelBufferPoolSharing__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowsPixelBufferPoolSharing:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__AVPlayer_AVPlayerPixelBufferPoolSharing__setAllowsPixelBufferPoolSharing___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AVPlayer_AVPlayerPixelBufferPoolSharing__setAllowsPixelBufferPoolSharing___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973170]];
  }
}

uint64_t __76__AVPlayer_AVPlayerPixelBufferPoolSharing__setAllowsPixelBufferPoolSharing___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) allowsPixelBufferPoolSharing])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973170], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)disallowsAMRAudio
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVPlayer_AVPlayerFormatRestrictions__disallowsAMRAudio__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDisallowsAMRAudio:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__AVPlayer_AVPlayerFormatRestrictions__setDisallowsAMRAudio___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__AVPlayer_AVPlayerFormatRestrictions__setDisallowsAMRAudio___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E69733F0]];
  }
}

uint64_t __61__AVPlayer_AVPlayerFormatRestrictions__setDisallowsAMRAudio___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) disallowsAMRAudio])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69733F0], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)disallowsHardwareAcceleratedVideoDecoder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__AVPlayer_AVPlayerFormatRestrictions__disallowsHardwareAcceleratedVideoDecoder__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDisallowsHardwareAcceleratedVideoDecoder:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__AVPlayer_AVPlayerFormatRestrictions__setDisallowsHardwareAcceleratedVideoDecoder___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__AVPlayer_AVPlayerFormatRestrictions__setDisallowsHardwareAcceleratedVideoDecoder___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4C0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4D0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973288]];
  }
}

uint64_t __84__AVPlayer_AVPlayerFormatRestrictions__setDisallowsHardwareAcceleratedVideoDecoder___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) disallowsHardwareAcceleratedVideoDecoder])
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973288], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setAppliesMediaSelectionCriteriaAutomatically:(BOOL)appliesMediaSelectionCriteriaAutomatically
{
  v3 = appliesMediaSelectionCriteriaAutomatically;
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:110];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"appliesMediaSelectionCriteriaAutomatically" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__AVPlayer_AVPlayerAutomaticMediaSelection__setAppliesMediaSelectionCriteriaAutomatically___block_invoke;
  v12[3] = &unk_1E7460E40;
  v12[4] = self;
  v13 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__AVPlayer_AVPlayerAutomaticMediaSelection__setAppliesMediaSelectionCriteriaAutomatically___block_invoke_2;
    v9[3] = &unk_1E7462990;
    v9[4] = self;
    v9[5] = v10;
    v9[6] = v6;
    dispatch_sync(figConfigurationQueue, v9);
    _Block_object_dispose(v10, 8);
    CFRelease(v6);
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E6973190]];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"appliesMediaSelectionCriteriaAutomatically" on:self];
  AVTelemetryIntervalEnd(&v14);
}

uint64_t __91__AVPlayer_AVPlayerAutomaticMediaSelection__setAppliesMediaSelectionCriteriaAutomatically___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "appliesMediaSelectionCriteriaAutomatically")}];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973190], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)appliesMediaSelectionCriteriaAutomatically
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:109];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"appliesMediaSelectionCriteriaAutomatically" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__AVPlayer_AVPlayerAutomaticMediaSelection__appliesMediaSelectionCriteriaAutomatically__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)setMediaSelectionCriteria:(AVPlayerMediaSelectionCriteria *)criteria forMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:111];
  if (mediaCharacteristic)
  {
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __94__AVPlayer_AVPlayerAutomaticMediaSelection__setMediaSelectionCriteria_forMediaCharacteristic___block_invoke;
    v10[3] = &unk_1E7460E90;
    v10[4] = self;
    v10[5] = criteria;
    v10[6] = mediaCharacteristic;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94__AVPlayer_AVPlayerAutomaticMediaSelection__setMediaSelectionCriteria_forMediaCharacteristic___block_invoke_2;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(figConfigurationQueue, block);
  }

  AVTelemetryIntervalEnd(&v11);
}

uint64_t __94__AVPlayer_AVPlayerAutomaticMediaSelection__setMediaSelectionCriteria_forMediaCharacteristic___block_invoke(void *a1)
{
  v2 = [*(*(a1[4] + 8) + 672) mutableCopy];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
  }

  v3 = a1[5];
  if (v3)
  {
    [v2 setObject:objc_msgSend(v3 forKey:{"figDictionary"), AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(a1[6])}];
  }

  else
  {
    [v2 removeObjectForKey:AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(a1[6])];
  }

  result = [v2 copy];
  *(*(a1[4] + 8) + 672) = result;
  return result;
}

void __94__AVPlayer_AVPlayerAutomaticMediaSelection__setMediaSelectionCriteria_forMediaCharacteristic___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  v3 = [*(a1 + 32) _cachedMediaSelectionCriteria];
  if (v2)
  {
    v4 = v3;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E6973328], v4);
    }

    CFRelease(v2);
  }
}

- (id)_cachedMediaSelectionCriteria
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__AVPlayer_AVPlayerAutomaticMediaSelection___cachedMediaSelectionCriteria__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __74__AVPlayer_AVPlayerAutomaticMediaSelection___cachedMediaSelectionCriteria__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 672) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVPlayerMediaSelectionCriteria)mediaSelectionCriteriaForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:112];
  v5 = [(AVPlayer *)self _copyFigPlayer];
  v6 = [(AVPlayer *)self _cachedMediaSelectionCriteria];
  if (v5)
  {
    v10 = 0;
    FigBaseObject = FigPlayerGetFigBaseObject();
    CMBaseObjectCopyProperty(FigBaseObject, *MEMORY[0x1E6973328], *MEMORY[0x1E695E480], &v10);
    v6 = v10;
  }

  if (!v6)
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRelease(v5);
    goto LABEL_10;
  }

  v8 = [v6 objectForKey:AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(mediaCharacteristic)];
  if (v8)
  {
    v8 = [[AVPlayerMediaSelectionCriteria alloc] initWithFigDictionary:v8];
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  AVTelemetryIntervalEnd(&v11);
  return v8;
}

- (id)defaultMediaSelectionCriteriaForMediaCharacteristic:(id)a3
{
  v4 = [(AVPlayer *)self _copyFigPlayer];
  v5 = v4;
  if (!a3)
  {
    if (!v4)
    {
      return a3;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (v4)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E6973228], *MEMORY[0x1E695E480], &v11);
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (v11)
    {
      a3 = [v11 objectForKey:AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(a3)];
      if (a3)
      {
        a3 = [[AVPlayerMediaSelectionCriteria alloc] initWithFigDictionary:a3];
      }
    }

    else
    {
      a3 = 0;
    }

LABEL_13:
    CFRelease(v5);
    return a3;
  }

  return 0;
}

- (NSString)audioOutputDeviceUniqueID
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:113];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVPlayer_AVPlayerAudioDeviceSupport__audioOutputDeviceUniqueID__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

- (void)setAudioOutputDeviceUniqueID:(NSString *)audioOutputDeviceUniqueID
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:114];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"audioOutputDeviceUniqueID" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__AVPlayer_AVPlayerAudioDeviceSupport__setAudioOutputDeviceUniqueID___block_invoke;
  v11[3] = &unk_1E7460DF0;
  v11[4] = self;
  v11[5] = audioOutputDeviceUniqueID;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__AVPlayer_AVPlayerAudioDeviceSupport__setAudioOutputDeviceUniqueID___block_invoke_2;
    v8[3] = &unk_1E7462990;
    v8[4] = self;
    v8[5] = v9;
    v8[6] = v6;
    dispatch_sync(figConfigurationQueue, v8);
    _Block_object_dispose(v9, 8);
    CFRelease(v6);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:audioOutputDeviceUniqueID forKey:*MEMORY[0x1E69731A8]];
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"audioOutputDeviceUniqueID" on:self];
  AVTelemetryIntervalEnd(&v12);
}

uint64_t __69__AVPlayer_AVPlayerAudioDeviceSupport__setAudioOutputDeviceUniqueID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) audioOutputDeviceUniqueID];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69731A8], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)autoSwitchStreamVariants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AVPlayer_AVPlayerAudioDeviceSupport__autoSwitchStreamVariants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAutoSwitchStreamVariants:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__AVPlayer_AVPlayerAudioDeviceSupport__setAutoSwitchStreamVariants___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AVPlayer_AVPlayerAudioDeviceSupport__setAutoSwitchStreamVariants___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E69731C0]];
  }
}

uint64_t __68__AVPlayer_AVPlayerAudioDeviceSupport__setAutoSwitchStreamVariants___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) autoSwitchStreamVariants])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69731C0], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)preparesItemsForPlaybackAsynchronously
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AVPlayer_AVPlayerAudioDeviceSupport__preparesItemsForPlaybackAsynchronously__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPreparesItemsForPlaybackAsynchronously:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__AVPlayer_AVPlayerAudioDeviceSupport__setPreparesItemsForPlaybackAsynchronously___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__AVPlayer_AVPlayerAudioDeviceSupport__setPreparesItemsForPlaybackAsynchronously___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E69733D0]];
  }
}

uint64_t __82__AVPlayer_AVPlayerAudioDeviceSupport__setPreparesItemsForPlaybackAsynchronously___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) preparesItemsForPlaybackAsynchronously])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69733D0], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)setSupportsSharedNetworkCoordination:(BOOL)a3
{
  sSupportsSharedNetworkCoordination = a3;
  v4 = [MEMORY[0x1E696AD88] defaultCenter];

  [v4 postNotificationName:@"sharedNetworkCoordinationChanged" object:a1 userInfo:0];
}

- (void)_updateSharedNetworkCoordinationOnFigPlayer
{
  v3 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    v4 = v3;
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __83__AVPlayer_AVPlayerAudioDeviceSupport___updateSharedNetworkCoordinationOnFigPlayer__block_invoke;
    v6[3] = &unk_1E7462AC0;
    v6[4] = v7;
    v6[5] = v4;
    dispatch_sync(figConfigurationQueue, v6);
    _Block_object_dispose(v7, 8);
    CFRelease(v4);
  }
}

uint64_t __83__AVPlayer_AVPlayerAudioDeviceSupport___updateSharedNetworkCoordinationOnFigPlayer__block_invoke(uint64_t a1)
{
  if (+[AVPlayer supportsSharedNetworkCoordination])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973430], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)allowsOutOfBandTextTrackRendering
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__AVPlayer_AVPlayerOutOfBandTextTrackRendering__allowsOutOfBandTextTrackRendering__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowsOutOfBandTextTrackRendering:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__AVPlayer_AVPlayerOutOfBandTextTrackRendering__setAllowsOutOfBandTextTrackRendering___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__AVPlayer_AVPlayerOutOfBandTextTrackRendering__setAllowsOutOfBandTextTrackRendering___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v7);
  }

  else
  {
    v9 = MEMORY[0x1E695E4D0];
    if (!v3)
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    [(AVPlayer *)self _setPendingFigPlayerProperty:*v9 forKey:*MEMORY[0x1E6973168]];
  }
}

uint64_t __86__AVPlayer_AVPlayerOutOfBandTextTrackRendering__setAllowsOutOfBandTextTrackRendering___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) allowsOutOfBandTextTrackRendering])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973168], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setMultichannelAudioStrategy:(id)a3
{
  v4 = [a3 copy];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__AVPlayer_AVPlayerMultichannelAudioStrategy__setMultichannelAudioStrategy___block_invoke;
  v12[3] = &unk_1E7460DF0;
  v12[4] = self;
  v12[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__AVPlayer_AVPlayerMultichannelAudioStrategy__setMultichannelAudioStrategy___block_invoke_2;
    block[3] = &unk_1E7462A50;
    block[5] = v10;
    block[6] = v7;
    block[4] = self;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v10, 8);
    CFRelease(v7);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v4 forKey:*MEMORY[0x1E6973338]];
  }
}

uint64_t __76__AVPlayer_AVPlayerMultichannelAudioStrategy__setMultichannelAudioStrategy___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) multichannelAudioStrategy];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973338], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)multichannelAudioStrategy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayer_AVPlayerMultichannelAudioStrategy__multichannelAudioStrategy__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __72__AVPlayer_AVPlayerMultichannelAudioStrategy__multichannelAudioStrategy__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 464);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setCaptionPipelineStrategy:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__AVPlayer_AVPlayerCaptionStrategySelection__setCaptionPipelineStrategy___block_invoke;
  v12[3] = &unk_1E7460DF0;
  v12[4] = self;
  v12[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [a3 copy];
  v7 = [(AVPlayer *)self _copyFigPlayer];
  v8 = *MEMORY[0x1E69731E0];
  if (v7)
  {
    v9 = v7;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, v8, v6);
    }

    CFRelease(v9);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v6 forKey:*MEMORY[0x1E69731E0]];
  }
}

id __73__AVPlayer_AVPlayerCaptionStrategySelection__setCaptionPipelineStrategy___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 432) = result;
  return result;
}

- (NSString)captionPipelineStrategy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__AVPlayer_AVPlayerCaptionStrategySelection__captionPipelineStrategy__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __69__AVPlayer_AVPlayerCaptionStrategySelection__captionPipelineStrategy__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 432);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setCaptionRenderingStrategy:(id)a3
{
  v4 = [a3 copy];
  v5 = *MEMORY[0x1E69731E8];
  if (!self->_player->figPlayer)
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v4 forKey:*MEMORY[0x1E69731E8]];
LABEL_6:
    self->_player->captionRenderingStrategy = v4;
    return;
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7 && !v7(FigBaseObject, v5, v4))
  {
    goto LABEL_6;
  }
}

- (void)setAudioSession:(id)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!a3)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "audioSession != nil"), 0}];
    objc_exception_throw(v11);
  }

  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__AVPlayer_AVPlayerAudioSessionParticipant__setAudioSession___block_invoke;
  v12[3] = &unk_1E7460F30;
  v12[4] = self;
  v12[5] = a3;
  v12[6] = &v13;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  if (*(v14 + 24) == 1)
  {
    [(AVPlayer *)self _updateAudioSessionOnFigPlayer];
  }

  [-[AVPlayer _interstitialPlayerIfCreated](self "_interstitialPlayerIfCreated")];
  _Block_object_dispose(&v13, 8);
}

void *__61__AVPlayer_AVPlayerAudioSessionParticipant__setAudioSession___block_invoke(void *result)
{
  if (*(*(result[4] + 8) + 216) != result[5])
  {
    v1 = result;
    *(*(result[6] + 8) + 24) = 1;

    result = v1[5];
    *(*(v1[4] + 8) + 216) = result;
  }

  return result;
}

- (void)_setPreservesAudioSessionSampleRate:(BOOL)a3
{
  player = self->_player;
  if (!player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set preservesAudioSessionSampleRate after the AVPlayer has begun preparing for playback." userInfo:0]);
  }

  ivarAccessQueue = player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__AVPlayer_AVPlayerAudioSessionParticipant___setPreservesAudioSessionSampleRate___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

- (void)_setParticipatesInAudioSession:(BOOL)a3
{
  player = self->_player;
  if (!player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set participatesInAudioSession after the AVPlayer has begun preparing for playback." userInfo:0]);
  }

  ivarAccessQueue = player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AVPlayer_AVPlayerAudioSessionParticipant___setParticipatesInAudioSession___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

- (uint64_t)preferredVideoDecoderGPURegistryID
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:124];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVPlayer_AVPlayerVideoDecoderGPUSupport__preferredVideoDecoderGPURegistryID__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

- (void)setPreferredVideoDecoderGPURegistryID:(uint64_t)preferredVideoDecoderGPURegistryID
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:125];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"preferredVideoDecoderGPURegistryID" on:self];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__AVPlayer_AVPlayerVideoDecoderGPUSupport__setPreferredVideoDecoderGPURegistryID___block_invoke;
  v12[3] = &unk_1E7460FA8;
  v12[4] = self;
  v12[5] = preferredVideoDecoderGPURegistryID;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__AVPlayer_AVPlayerVideoDecoderGPUSupport__setPreferredVideoDecoderGPURegistryID___block_invoke_2;
    v9[3] = &unk_1E7462990;
    v9[4] = self;
    v9[5] = v10;
    v9[6] = v6;
    dispatch_sync(figConfigurationQueue, v9);
    _Block_object_dispose(v10, 8);
    CFRelease(v6);
  }

  else
  {
    SInt64 = FigCFNumberCreateSInt64();
    [(AVPlayer *)self _setPendingFigPlayerProperty:SInt64 forKey:*MEMORY[0x1E69733C8]];
    if (SInt64)
    {
      CFRelease(SInt64);
    }
  }

  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"preferredVideoDecoderGPURegistryID" on:self];
  AVTelemetryIntervalEnd(&v13);
}

void __82__AVPlayer_AVPlayerVideoDecoderGPUSupport__setPreferredVideoDecoderGPURegistryID___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) preferredVideoDecoderGPURegistryID];
  SInt64 = FigCFNumberCreateSInt64();
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v5 = v4(FigBaseObject, *MEMORY[0x1E69733C8], SInt64);
  }

  else
  {
    v5 = -12782;
  }

  *(*(*(a1 + 40) + 8) + 24) = v5;
  if (SInt64)
  {

    CFRelease(SInt64);
  }
}

- (AVLoggingIdentifier)loggingIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayer_AVPlayerLoggingIdentifier__loggingIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __56__AVPlayer_AVPlayerLoggingIdentifier__loggingIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 664);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setLoggingIdentifier:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVPlayer_AVPlayerLoggingIdentifier__setLoggingIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

void *__60__AVPlayer_AVPlayerLoggingIdentifier__setLoggingIdentifier___block_invoke(void *result)
{
  v1 = *(*(result[4] + 8) + 664);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(*(v2[4] + 8) + 664) = result;
  }

  return result;
}

- (void)_setDisallowsAutoPauseOnRouteRemovalIfNoAudio:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__AVPlayer_AVPlayerAutoPauseOnRouteRemoval___setDisallowsAutoPauseOnRouteRemovalIfNoAudio___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;
  v9 = *MEMORY[0x1E6973240];
  if (v6)
  {
    v10 = v6;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(FigBaseObject, v9, v8);
    }

    CFRelease(v10);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E6973240]];
  }
}

- (BOOL)_disallowsAutoPauseOnRouteRemovalIfNoAudio
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__AVPlayer_AVPlayerAutoPauseOnRouteRemoval___disallowsAutoPauseOnRouteRemovalIfNoAudio__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setEnsuresActiveAudioSessionWhenStartingPlayback:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__AVPlayer_AVPlayerImplicitInterruption___setEnsuresActiveAudioSessionWhenStartingPlayback___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  [(AVPlayer *)self _setPendingFigPlayerProperty:*v6 forKey:*MEMORY[0x1E6973290]];
  v7 = [(AVPlayer *)self _copyFigPlayer];
  if (v7)
  {
    v8 = v7;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__AVPlayer_AVPlayerImplicitInterruption___setEnsuresActiveAudioSessionWhenStartingPlayback___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v11;
    block[6] = v8;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v8);
  }
}

uint64_t __92__AVPlayer_AVPlayerImplicitInterruption___setEnsuresActiveAudioSessionWhenStartingPlayback___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) _ensuresActiveAudioSessionWhenStartingPlayback])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973290], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_ensuresActiveAudioSessionWhenStartingPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__AVPlayer_AVPlayerImplicitInterruption___ensuresActiveAudioSessionWhenStartingPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)_STSLabel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayer_AVPlayerSTSLabel___STSLabel__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__AVPlayer_AVPlayerSTSLabel___STSLabel__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 456);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setSTSLabel:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__AVPlayer_AVPlayerSTSLabel___setSTSLabel___block_invoke;
  v12[3] = &unk_1E7460DF0;
  v12[4] = self;
  v12[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    v7 = v6;
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v11 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__AVPlayer_AVPlayerSTSLabel___setSTSLabel___block_invoke_2;
    block[3] = &unk_1E7462990;
    block[4] = self;
    block[5] = v10;
    block[6] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v10, 8);
    CFRelease(v7);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:a3 forKey:*MEMORY[0x1E6973408]];
  }
}

id __43__AVPlayer_AVPlayerSTSLabel___setSTSLabel___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 456) = result;
  return result;
}

uint64_t __43__AVPlayer_AVPlayerSTSLabel___setSTSLabel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _STSLabel];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973408], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)prefersPlayingSilentlyWhenConflictingWithOtherPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__AVPlayer_AVPlayerPIPSupport__prefersPlayingSilentlyWhenConflictingWithOtherPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPrefersPlayingSilentlyWhenConflictingWithOtherPlayback:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90__AVPlayer_AVPlayerPIPSupport__setPrefersPlayingSilentlyWhenConflictingWithOtherPlayback___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    v7 = &unk_1F0AD33E8;
  }

  else
  {
    v7 = &unk_1F0AD3388;
  }

  if (v6)
  {
    v8 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__AVPlayer_AVPlayerPIPSupport__setPrefersPlayingSilentlyWhenConflictingWithOtherPlayback___block_invoke_1144;
    block[3] = &unk_1E7462A50;
    block[5] = v11;
    block[6] = v8;
    block[4] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v8);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v7 forKey:*MEMORY[0x1E6973230]];
  }
}

uint64_t __90__AVPlayer_AVPlayerPIPSupport__setPrefersPlayingSilentlyWhenConflictingWithOtherPlayback___block_invoke_1144(uint64_t a1)
{
  v2 = *(a1 + 32);
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973230], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isSilencedDueToConflictWithOtherPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayer_AVPlayerPIPSupport__isSilencedDueToConflictWithOtherPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_silencesOtherPlaybackDuringPIP
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVPlayer_AVPlayerPIPSupport___silencesOtherPlaybackDuringPIP__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setSilencesOtherPlaybackDuringPIP:(BOOL)a3
{
  v3 = a3;
  if ([(AVPlayer *)self _isInterstitialPlayer]|| [(AVPlayer *)self _hasCurrentInterstitialEvent])
  {
    v5 = 1;
  }

  else
  {
    [-[AVPlayer _interstitialPlayerIfCreated](self "_interstitialPlayerIfCreated")];
    v5 = 0;
  }

  ivarAccessQueue = self->_player->ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AVPlayer_AVPlayerPIPSupport___setSilencesOtherPlaybackDuringPIP___block_invoke;
  v14[3] = &unk_1E7460E40;
  v14[4] = self;
  v15 = v3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
  v7 = [(AVPlayer *)self _copyFigPlayer];
  v8 = v7;
  if (v3)
  {
    v9 = &unk_1F0AD3400;
  }

  else
  {
    v9 = &unk_1F0AD33E8;
  }

  if (v7)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v13 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__AVPlayer_AVPlayerPIPSupport___setSilencesOtherPlaybackDuringPIP___block_invoke_1147;
    block[3] = &unk_1E7462A50;
    block[5] = v12;
    block[6] = v8;
    block[4] = v9;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v12, 8);
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(AVPlayer *)self _setPendingFigPlayerProperty:v9 forKey:*MEMORY[0x1E6973368]];
  if (v5)
  {
LABEL_10:
    [-[AVPlayer _interstitialPlayerIfCreated](self "_interstitialPlayerIfCreated")];
  }

LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }
}

uint64_t __67__AVPlayer_AVPlayerPIPSupport___setSilencesOtherPlaybackDuringPIP___block_invoke_1147(uint64_t a1)
{
  v2 = *(a1 + 32);
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973368], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSNumber)mxSessionID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVPlayer_AVPlayerPIPSupport__mxSessionID__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__AVPlayer_AVPlayerPIPSupport__mxSessionID__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 576);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)backgroundPIPAuthorizationToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVPlayer_AVPlayerPIPSupport__backgroundPIPAuthorizationToken__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __63__AVPlayer_AVPlayerPIPSupport__backgroundPIPAuthorizationToken__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 648) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setBackgroundPIPAuthorizationToken:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlayer_AVPlayerPIPSupport__setBackgroundPIPAuthorizationToken___block_invoke;
  v5[3] = &unk_1E7461068;
  v5[5] = a3;
  v5[6] = &v6;
  v5[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __67__AVPlayer_AVPlayerPIPSupport__setBackgroundPIPAuthorizationToken___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 648) isEqualToString:*(a1 + 40)] ^ 1;
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 648) = result;
  return result;
}

- (void)removeVideoTarget:(OpaqueFigVideoTarget *)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__AVPlayer_FigVideoTargetSupport__removeVideoTarget___block_invoke;
  v12[3] = &unk_1E7462A50;
  v12[4] = self;
  v12[5] = &v13;
  v12[6] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  if (*(v14 + 24) == 1)
  {
    stateDispatchQueue = self->_player->stateDispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__AVPlayer_FigVideoTargetSupport__removeVideoTarget___block_invoke_2;
    v11[3] = &unk_1E7460C00;
    v11[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v11);
  }

  v7 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  if (v7)
  {
    v8 = [(AVPlayer *)self _interstitialVideoTargetForPrimaryVideoTarget:a3];
    if (v8)
    {
      [v7 removeVideoTarget:v8];
      v9 = self->_player->ivarAccessQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53__AVPlayer_FigVideoTargetSupport__removeVideoTarget___block_invoke_3;
      v10[3] = &unk_1E7460FA8;
      v10[4] = self;
      v10[5] = a3;
      av_readwrite_dispatch_queue_write(v9, v10);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void __53__AVPlayer_FigVideoTargetSupport__removeVideoTarget___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(*(a1[4] + 8) + 584) containsObject:a1[6]];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v2 = [*(*(a1[4] + 8) + 584) mutableCopy];
    [v2 removeObject:a1[6]];

    *(*(a1[4] + 8) + 584) = v2;
  }
}

uint64_t __53__AVPlayer_FigVideoTargetSupport__removeVideoTarget___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _shouldAttachVideoDestinationsToFigPlayerOnStateQueue];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _reevaluateVideoLayersAndTargetsForPresentationState:0];
  }

  return result;
}

- (void)setActiveVideoTargetsForInterstitials:(unsigned __int8)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(AVPlayer *)self _interstitialPlayerIfCreated];
  v6 = 0;
  v7 = v3 == 0;
  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = self;
  }

  v9 = 0;
  if (!v7)
  {
    v5 = self;
  }

  if (v5 && v8)
  {
    v6 = [(NSArray *)[(AVPlayer *)v5 videoTargets] copy];
    v9 = [(NSArray *)[(AVPlayer *)v8 videoTargets] copy];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v15)
        {
          v15(v14, 0);
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v11);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v22 + 1) + 8 * j);
        v21 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v21)
        {
          v21(v20, 1);
        }
      }

      v17 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (OpaqueFigVideoTarget)_interstitialVideoTargetForPrimaryVideoTarget:(OpaqueFigVideoTarget *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__AVPlayer_FigVideoTargetSupport___interstitialVideoTargetForPrimaryVideoTarget___block_invoke;
  block[3] = &unk_1E7462A50;
  block[4] = self;
  block[5] = &v12;
  block[6] = a3;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v6 = v13[3];
  if (!v6)
  {
    FigVideoTargetCreateSharingVideoReceiverFromVideoTarget();
    if (v13[3])
    {
      v7 = self->_player->ivarAccessQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __81__AVPlayer_FigVideoTargetSupport___interstitialVideoTargetForPrimaryVideoTarget___block_invoke_2;
      v10[3] = &unk_1E7462990;
      v10[4] = self;
      v10[5] = &v12;
      v10[6] = a3;
      av_readwrite_dispatch_queue_write(v7, v10);
      v6 = v13[3];
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;
  _Block_object_dispose(&v12, 8);
  return v8;
}

const void *__81__AVPlayer_FigVideoTargetSupport___interstitialVideoTargetForPrimaryVideoTarget___block_invoke(uint64_t a1)
{
  result = CFDictionaryGetValue(*(*(*(a1 + 32) + 8) + 592), *(a1 + 48));
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateVideoTargetsOnFigPlayer:(id)a3 withCompletionHandler:(id)a4
{
  v7 = [(AVPlayer *)self _copyFigPlayer];
  v8 = *MEMORY[0x1E6973488];
  if (v7)
  {
    v9 = v7;
    FigBaseObject = FigPlayerGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, v8, a3);
    }

    if (a4)
    {
      CFRetain(v9);
      configurationQueue = self->_player->configurationQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__AVPlayer_FigVideoTargetSupport___updateVideoTargetsOnFigPlayer_withCompletionHandler___block_invoke;
      v14[3] = &unk_1E7462AE8;
      v14[4] = a4;
      v14[5] = v9;
      dispatch_async(configurationQueue, v14);
    }

    CFRelease(v9);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:a3 forKey:*MEMORY[0x1E6973488]];
    if (a4)
    {
      v13 = *(a4 + 2);

      v13(a4);
    }
  }
}

void __88__AVPlayer_FigVideoTargetSupport___updateVideoTargetsOnFigPlayer_withCompletionHandler___block_invoke(uint64_t a1)
{
  cf = 0;
  FigBaseObject = FigPlayerGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6973440], *MEMORY[0x1E695E480], &cf);
  }

  (*(*(a1 + 32) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(*(a1 + 40));
}

- (void)addVideoTarget:(OpaqueFigVideoTarget *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a3)
  {
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__AVPlayer_FigVideoTargetSupport__addVideoTarget___block_invoke;
    v9[3] = &unk_1E7462A50;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = a3;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
    if ((v11[3] & 1) == 0 && [(AVPlayer *)self _shouldAttachVideoDestinationsToFigPlayerOnStateQueue])
    {
      [(AVPlayer *)self _reevaluateVideoLayersAndTargetsForPresentationState:0];
    }

    v6 = [(AVPlayer *)self _interstitialPlayerIfCreated];
    if (v6)
    {
      v7 = [(AVPlayer *)self _interstitialVideoTargetForPrimaryVideoTarget:a3];
      if (v7)
      {
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (v8)
        {
          v8(v7, 0);
        }

        [v6 addVideoTarget:v7];
        if ([(NSString *)[(AVPlayer *)self reasonForWaitingToPlay] isEqualToString:@"AVPlayerWaitingDuringInterstitialEventReason"])
        {
          [(AVPlayer *)self setActiveVideoTargetsForInterstitials:1];
        }
      }
    }
  }

  _Block_object_dispose(&v10, 8);
}

void __50__AVPlayer_FigVideoTargetSupport__addVideoTarget___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(*(a1[4] + 8) + 584) containsObject:a1[6]];
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v2 = [*(*(a1[4] + 8) + 584) arrayByAddingObject:a1[6]];

    *(*(a1[4] + 8) + 584) = v2;
  }
}

- (NSArray)videoTargets
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayer_FigVideoTargetSupport__videoTargets__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __47__AVPlayer_FigVideoTargetSupport__videoTargets__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 584);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setShouldWaitForVideoTarget:(BOOL)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AVPlayer_FigVideoTargetSupport__setShouldWaitForVideoTarget___block_invoke;
  v7[3] = &unk_1E7460E40;
  v7[4] = self;
  v8 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  figConfigurationQueue = self->_player->figConfigurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVPlayer_FigVideoTargetSupport__setShouldWaitForVideoTarget___block_invoke_2;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figConfigurationQueue, block);
}

void __63__AVPlayer_FigVideoTargetSupport__setShouldWaitForVideoTarget___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlayer];
  v3 = [*(a1 + 32) shouldWaitForVideoTarget];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  if (v2)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(FigBaseObject, *MEMORY[0x1E6973418], v5);
    }

    CFRelease(v2);
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *MEMORY[0x1E6973418];

    [v8 _setPendingFigPlayerProperty:v5 forKey:v9];
  }
}

- (NSArray)taggedBufferOutputs
{
  v3 = [MEMORY[0x1E695DF70] array];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__AVPlayer_AVPlayerTaggedBufferOutputSupport__taggedBufferOutputs__block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v3;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  return v3;
}

uint64_t __66__AVPlayer_AVPlayerTaggedBufferOutputSupport__taggedBufferOutputs__block_invoke(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 688))
  {
    return [*(result + 40) addObject:?];
  }

  return result;
}

- (void)setVideoOutput:(id)a3 withOwningTaggedBufferOutput:(id)a4
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3052000000;
  v25[3] = __Block_byref_object_copy__6;
  v25[4] = __Block_byref_object_dispose__6;
  v25[5] = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __91__AVPlayer_AVPlayerTaggedBufferOutputSupport__setVideoOutput_withOwningTaggedBufferOutput___block_invoke;
  v18[3] = &unk_1E7462B10;
  v18[4] = self;
  v18[5] = a3;
  v18[6] = a4;
  v18[7] = v25;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v18);
  configurationQueue = self->_player->configurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__AVPlayer_AVPlayerTaggedBufferOutputSupport__setVideoOutput_withOwningTaggedBufferOutput___block_invoke_2;
  block[3] = &unk_1E7462B38;
  block[4] = self;
  block[5] = a3;
  block[6] = v25;
  block[7] = &v19;
  block[8] = &v26;
  dispatch_sync(configurationQueue, block);
  if (*(v27 + 24) == 1)
  {
    v14 = v20[5];
    if (!v14)
    {
      v14 = @"AVPlayerVideoOutput can only attach to a single AVPlayer at a time";
      v20[5] = @"AVPlayerVideoOutput can only attach to a single AVPlayer at a time";
    }

    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v14, v9, v10, v11, v12, v13, v16), 0}];
    objc_exception_throw(v15);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);
}

void __91__AVPlayer_AVPlayerTaggedBufferOutputSupport__setVideoOutput_withOwningTaggedBufferOutput___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = *(*(*(a1 + 32) + 8) + 680);
  v2 = *(*(*(a1 + 32) + 8) + 688);
  *(*(*(a1 + 32) + 8) + 680) = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 688) = *(a1 + 48);
}

uint64_t __91__AVPlayer_AVPlayerTaggedBufferOutputSupport__setVideoOutput_withOwningTaggedBufferOutput___block_invoke_2(uint64_t a1)
{
  if (([objc_msgSend(*(a1 + 32) "videoOutput")] & 1) == 0)
  {
    [*(*(*(a1 + 48) + 8) + 40) _detachFromPlayer:*(a1 + 32)];
  }

  result = [objc_msgSend(*(a1 + 32) "videoOutput")];
  if (result)
  {
    result = [*(a1 + 40) _attachToPlayer:*(a1 + 32) exceptionReason:*(*(a1 + 56) + 8) + 40];
    *(*(*(a1 + 64) + 8) + 24) = (*(a1 + 40) != 0) & (result ^ 1);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  return result;
}

- (void)addTaggedBufferOutput:(id)a3
{
  if ([(AVPlayer *)self videoOutput])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Currently only one video output is supported at a time" userInfo:0]);
  }

  v5 = [a3 realOutput];

  [(AVPlayer *)self setVideoOutput:v5 withOwningTaggedBufferOutput:a3];
}

- (void)removeTaggedBufferOutput:(id)a3
{
  if (-[AVPlayerVideoOutput isEqual:](-[AVPlayer videoOutput](self, "videoOutput"), "isEqual:", [a3 realOutput]))
  {

    [(AVPlayer *)self setVideoOutput:0 withOwningTaggedBufferOutput:0];
  }
}

- (AVPlayerVideoOutput)videoOutput
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:133];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar accessWithKey:@"videoOutput" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AVPlayer_AVPlayerOutputSupport__videoOutput__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

id __46__AVPlayer_AVPlayerOutputSupport__videoOutput__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 680);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setVideoOutput:(id)a3
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:134];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar willChangeValueFor:@"videoOutput" on:self];
  [(AVPlayer *)self setVideoOutput:a3 withOwningTaggedBufferOutput:0];
  [(AVPlayerObservationRegistrar *)self->_player->observationRegistrar didChangeValueFor:@"videoOutput" on:self];
  AVTelemetryIntervalEnd(&v5);
}

- (BOOL)_isInterstitialPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVPlayer_AVPlayerInterstitialSupport_Internal___isInterstitialPlayer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setIsInterstitialPlayer:(BOOL)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVPlayer_AVPlayerInterstitialSupport_Internal___setIsInterstitialPlayer___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  v5 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (id)_weakReferenceToPrimaryPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__AVPlayer_AVPlayerInterstitialSupport_Internal___weakReferenceToPrimaryPlayer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setWeakReferenceToPrimaryPlayer:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVPlayer_AVPlayerInterstitialSupport_Internal___setWeakReferenceToPrimaryPlayer___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

id __83__AVPlayer_AVPlayerInterstitialSupport_Internal___setWeakReferenceToPrimaryPlayer___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 256) = result;
  return result;
}

- (void)syncAudioSessionToInterstitialPlayer:(id)a3
{
  if (![(AVPlayer *)self audioSession])
  {
    -[AVPlayer setAudioSession:](self, "setAudioSession:", [MEMORY[0x1E6958460] sharedInstance]);
  }

  v5 = [(AVPlayer *)self audioSession];

  [a3 setAudioSession:v5];
}

- (void)_setInterstitialPlayerGuts_invokeOnIvarAccessQueue:(id)a3
{
  v5 = a3;

  self->_player->interstitialPlayer = a3;
  [a3 _setIsInterstitialPlayer:1];
  [a3 _setWeakReferenceToPrimaryPlayer:{-[AVPlayer _weakReference](self, "_weakReference")}];
  player = self->_player;
  playbackCoordinator = player->playbackCoordinator;
  if (player->clientRequestedPlaybackCoordinator)
  {
    v8 = [a3 playbackCoordinator];
  }

  else
  {
    v8 = [a3 _playbackCoordinatorWithoutTriggeringFullSetup];
  }

  v9 = v8;
  [(AVPlayerPlaybackCoordinator *)playbackCoordinator setInterstitialPlaybackCoordinator:v8];
  [v9 setWeakReferenceToPrimaryPlaybackCoordinator:playbackCoordinator];
  playerName = self->_player->playerName;

  [a3 _setPrimaryPlayerNameForInterstitial:playerName];
}

- (void)_linkAndSyncAudioSessionWithInterstitialPlayer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__AVPlayer_AVPlayerInterstitialSupport_Internal___linkAndSyncAudioSessionWithInterstitialPlayer___block_invoke;
  v17[3] = &unk_1E7460DF0;
  v17[4] = self;
  v17[5] = a3;
  AVSerializeOnQueueAsyncIfNecessary(MEMORY[0x1E69E96A0], v17);
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(AVPlayer *)self videoTargets];
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(AVPlayer *)self _interstitialVideoTargetForPrimaryVideoTarget:*(*(&v13 + 1) + 8 * i)];
          if (v10)
          {
            v11 = v10;
            v12 = *(*(CMBaseObjectGetVTable() + 16) + 80);
            if (v12)
            {
              v12(v11, 0);
            }

            [a3 addVideoTarget:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v7);
    }
  }

  [(AVPlayer *)self syncAudioSessionToInterstitialPlayer:a3];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

uint64_t __97__AVPlayer_AVPlayerInterstitialSupport_Internal___linkAndSyncAudioSessionWithInterstitialPlayer___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) _avPlayerLayers];
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

        [objc_msgSend(*(*(&v7 + 1) + 8 * v6++) "_interstitialLayer")];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)interstitialPlayer
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AVPlayer_AVPlayerInterstitialSupport_Internal__interstitialPlayer__block_invoke;
  block[3] = &unk_1E7462B60;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v23;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if (*(v20 + 24) == 1)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3052000000;
    v11 = __Block_byref_object_copy__6;
    v12 = __Block_byref_object_dispose__6;
    v13 = 0;
    v4 = self->_player->ivarAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__AVPlayer_AVPlayerInterstitialSupport_Internal__interstitialPlayer__block_invoke_2;
    v7[3] = &unk_1E7462B88;
    v7[4] = self;
    v7[5] = &v23;
    v7[6] = &v8;
    v7[7] = &v14;
    av_readwrite_dispatch_queue_write(v4, v7);
    if (*(v15 + 24) == 1)
    {
      [(AVPlayer *)self _linkAndSyncAudioSessionWithInterstitialPlayer:[(AVPlayer *)self _interstitialPlayerIfCreated]];
      if (v9[5])
      {
        [v24[5] setOutputContext:?];
      }

      [v24[5] setAllowsExternalPlayback:{-[AVPlayer allowsExternalPlayback](self, "allowsExternalPlayback")}];
      [v24[5] setUsesExternalPlaybackWhileExternalScreenIsActive:{-[AVPlayer usesExternalPlaybackWhileExternalScreenIsActive](self, "usesExternalPlaybackWhileExternalScreenIsActive")}];
      [v24[5] setPlayerRole:{-[AVPlayer playerRole](self, "playerRole")}];
      [v24[5] _setSilencesOtherPlaybackDuringPIP:{-[AVPlayer _silencesOtherPlaybackDuringPIP](self, "_silencesOtherPlaybackDuringPIP")}];
    }

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v14, 8);
  }

  v5 = v24[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v5;
}

void *__68__AVPlayer_AVPlayerInterstitialSupport_Internal__interstitialPlayer__block_invoke(void *result)
{
  v1 = result;
  v2 = *(result[4] + 8);
  v3 = *(v2 + 248);
  if (v3 || (*(v2 + 573) & 1) != 0)
  {
    result = v3;
    *(*(v1[6] + 8) + 40) = result;
  }

  else
  {
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

id __68__AVPlayer_AVPlayerInterstitialSupport_Internal__interstitialPlayer__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 248);
  if (v3 || (*(v2 + 573) & 1) != 0)
  {
    result = v3;
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = objc_alloc_init(AVQueuePlayer);
    [*(a1 + 32) _setInterstitialPlayerGuts_invokeOnIvarAccessQueue:*(*(*(a1 + 40) + 8) + 40)];
    result = [*(a1 + 32) _setInterstitialPlayerOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:*(*(*(a1 + 40) + 8) + 40)];
    v5 = *(*(*(a1 + 32) + 8) + 232);
    if (v5)
    {
      result = v5;
      *(*(*(a1 + 48) + 8) + 40) = result;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  return result;
}

- (void)_populateInterstitialAssetOptions:(id)a3 fromPrimaryAsset:(id)a4
{
  if (objc_opt_respondsToSelector())
  {
    v6 = [a4 creationOptions];
    v7 = [v6 objectForKey:@"AVURLAssetHTTPHeaderFieldsKey"];
    v8 = [v6 objectForKey:@"AVURLAssetHTTPCookiesKey"];
    v9 = [v6 objectForKey:@"AVURLAssetHTTPUserAgentKey"];
    if (v9)
    {
      [a3 setObject:v9 forKey:@"AVURLAssetHTTPUserAgentKey"];
    }

    if (v7)
    {
      [a3 setObject:v7 forKey:@"AVURLAssetHTTPHeaderFieldsKey"];
    }

    if (v8)
    {

      [a3 setObject:v8 forKey:@"AVURLAssetHTTPCookiesKey"];
    }
  }
}

- (void)_setInterstitialEventCoordinator:(OpaqueFigPlayerInterstitialCoordinator *)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVPlayer_AVPlayerInterstitialSupport_Internal___setInterstitialEventCoordinator___block_invoke;
  v4[3] = &unk_1E7460FA8;
  v4[4] = self;
  v4[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (void)_setInterstitialEventCoordinator_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3
{
  player = self->_player;
  interstitialEventCoordinator = player->interstitialEventCoordinator;
  player->interstitialEventCoordinator = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (interstitialEventCoordinator)
  {

    CFRelease(interstitialEventCoordinator);
  }
}

- (void)_setInterstitialEventCoordinatorOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVPlayer *)self _items_invokeOnIvarAccessQueue];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) _copyIntegratedTimelineIfCreated];
        [v9 _attachCoordinator:a3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_setInterstitialPlayerOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AVPlayer *)self _items_invokeOnIvarAccessQueue];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) _copyIntegratedTimelineIfCreated];
        [v9 _attachInterstitialPlayer:a3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (OpaqueFigPlayerInterstitialCoordinator)_copyInterstitialEventCoordinatorEnsuringItIsRemote:(BOOL)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  v13[3] = v5;
  v6 = [(AVPlayer *)self interstitialPlayer];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__AVPlayer_AVPlayerInterstitialSupport_Internal___copyInterstitialEventCoordinatorEnsuringItIsRemote___block_invoke;
  v10[3] = &unk_1E7462BB0;
  v11 = a3;
  v10[5] = v6;
  v10[6] = &v12;
  v10[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __102__AVPlayer_AVPlayerInterstitialSupport_Internal___copyInterstitialEventCoordinatorEnsuringItIsRemote___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && !FigPlayerInterstitialCoordinatorIsRemote())
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4)
    {
      v2 = CFRetain(v4);
    }

    else
    {
      v2 = 0;
    }

    [*(a1 + 32) _setInterstitialEventCoordinator_invokeOnIvarAccessQueue:0];
    v5 = *(*(*(a1 + 48) + 8) + 24);
    if (v5)
    {
      CFRelease(v5);
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 56) == 1)
  {
    if (!v3)
    {
      FigPlayerInterstitialRemoteCoordinatorCreate();
      [*(a1 + 32) _setInterstitialEventCoordinator_invokeOnIvarAccessQueue:*(*(*(a1 + 48) + 8) + 24)];
      [*(a1 + 32) _setInterstitialEventCoordinatorOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:*(*(*(a1 + 48) + 8) + 24)];
    }
  }

  else if (!v3 && (*(*(*(a1 + 32) + 8) + 573) & 1) == 0)
  {
    FigPlayerInterstitialCoordinatorCreate();
    [*(a1 + 32) _setInterstitialEventCoordinator_invokeOnIvarAccessQueue:*(*(*(a1 + 48) + 8) + 24)];
    [*(a1 + 32) _setInterstitialEventCoordinatorOnItemsIntegratedTimeline_invokeOnIvarAccessQueue:*(*(*(a1 + 48) + 8) + 24)];
    [*(a1 + 32) _setExternalPlaybackInterstitialSchedulingStrategyOnCoordinator_invokeOnIvarAccessQueue:*(*(*(a1 + 48) + 8) + 24)];
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)_setInterstitialPlayer:(id)a3
{
  if (![(AVPlayer *)self _isInterstitialPlayer])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    ivarAccessQueue = self->_player->ivarAccessQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__AVPlayer_AVPlayerInterstitialSupport_Internal___setInterstitialPlayer___block_invoke;
    v8[3] = &unk_1E7460F30;
    v8[4] = self;
    v8[5] = a3;
    v8[6] = &v9;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v8);
    if (*(v10 + 24) == 1)
    {
      v6 = [(AVPlayer *)self _copyInterstitialEventCoordinatorEnsuringItIsRemote:1];
      if (v6)
      {
        CFRelease(v6);
      }
    }

    else
    {
      v7 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
      if (v7)
      {
        [(AVPlayer *)self _interstitialPlayerIfCreated];
        FigPlayerInterstitialRemoteCoordinatorSetInterstitialPlayer();
        CFRelease(v7);
      }
    }

    [(AVPlayer *)self _linkAndSyncAudioSessionWithInterstitialPlayer:[(AVPlayer *)self _interstitialPlayerIfCreated]];
    _Block_object_dispose(&v9, 8);
  }
}

void __73__AVPlayer_AVPlayerInterstitialSupport_Internal___setInterstitialPlayer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setInterstitialPlayerGuts_invokeOnIvarAccessQueue:*(a1 + 40)];
  if (!FigPlayerInterstitialCoordinatorIsRemote())
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v2 = *(*(*(a1 + 32) + 8) + 632);
  if (v2)
  {
    [v2 deregisterParticipant:?];

    *(*(*(a1 + 32) + 8) + 632) = 0;
  }
}

- (void)_noteRemoteInterstitialEvents:(id)a3 forItem:(id)a4
{
  v5 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  if (v5)
  {
    v6 = v5;
    if (!FigPlayerInterstitialCoordinatorIsRemote())
    {
      v7 = [(AVPlayer *)self _copyInterstitialEventCoordinatorEnsuringItIsRemote:1];
      CFRelease(v6);
      v6 = v7;
    }

    if (FigPlayerInterstitialCoordinatorIsRemote())
    {
      FigPlayerInterstitialRemoteCoordinatorSetEvents();
    }

    CFRelease(v6);
  }
}

- (void)_noteCurrentRemoteInterstitialEvent:(id)a3
{
  v4 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  if (v4)
  {
    v5 = v4;
    if (!FigPlayerInterstitialCoordinatorIsRemote())
    {
      v6 = [(AVPlayer *)self _copyInterstitialEventCoordinatorEnsuringItIsRemote:1];
      CFRelease(v5);
      v5 = v6;
    }

    if (FigPlayerInterstitialCoordinatorIsRemote())
    {
      FigPlayerInterstitialRemoteCoordinatorSetCurrentEvent();
    }

    CFRelease(v5);
  }
}

- (int64_t)externalPlaybackInterstitialSchedulingStrategy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__AVPlayer_AVPlayerInterstitialSupport_Internal__externalPlaybackInterstitialSchedulingStrategy__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setExternalPlaybackInterstitialSchedulingStrategyOnCoordinator_invokeOnIvarAccessQueue:(OpaqueFigPlayerInterstitialCoordinator *)a3
{
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &self->_player->externalPlaybackInterstitialSchedulingStrategy);
  if (a3)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(a3, *MEMORY[0x1E6972E90], v4);
    }
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setExternalPlaybackInterstitialSchedulingStrategy:(int64_t)a3
{
  v5 = [(AVPlayer *)self _copyFigPlayer];
  v6 = [(AVPlayer *)self _copyInterstitialCoordinatorIfCreated];
  SInt32 = FigCFNumberCreateSInt32();
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__AVPlayer_AVPlayerInterstitialSupport_Internal__setExternalPlaybackInterstitialSchedulingStrategy___block_invoke;
  v13[3] = &unk_1E74625B0;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  if (v5)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __100__AVPlayer_AVPlayerInterstitialSupport_Internal__setExternalPlaybackInterstitialSchedulingStrategy___block_invoke_2;
    v10[3] = &unk_1E7462BD8;
    v10[4] = v11;
    v10[5] = v5;
    v10[6] = SInt32;
    dispatch_sync(figConfigurationQueue, v10);
    _Block_object_dispose(v11, 8);
    CFRelease(v5);
    if (!SInt32)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [(AVPlayer *)self _setPendingFigPlayerProperty:SInt32 forKey:*MEMORY[0x1E69732A0]];
  if (SInt32)
  {
LABEL_3:
    CFRelease(SInt32);
  }

LABEL_4:
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t __100__AVPlayer_AVPlayerInterstitialSupport_Internal__setExternalPlaybackInterstitialSchedulingStrategy___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 272) = *(result + 40);
  if (*(result + 48))
  {
    return [*(result + 32) _setExternalPlaybackInterstitialSchedulingStrategyOnCoordinator_invokeOnIvarAccessQueue:?];
  }

  return result;
}

uint64_t __100__AVPlayer_AVPlayerInterstitialSupport_Internal__setExternalPlaybackInterstitialSchedulingStrategy___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69732A0], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)_clientRequestedPlaybackCoordinator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__AVPlayer_PlaybackCoordination___clientRequestedPlaybackCoordinator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_playbackCoordinatorWithoutTriggeringFullSetup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__AVPlayer_PlaybackCoordination___playbackCoordinatorWithoutTriggeringFullSetup__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __80__AVPlayer_PlaybackCoordination___playbackCoordinatorWithoutTriggeringFullSetup__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 608);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (AVPlayerPlaybackCoordinator)playbackCoordinator
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:132];
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AVPlayer_PlaybackCoordination__playbackCoordinator__block_invoke;
  v6[3] = &unk_1E7460C00;
  v6[4] = self;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v6);
  v4 = [(AVPlayer *)self _playbackCoordinatorWithoutTriggeringFullSetup];
  AVTelemetryIntervalEnd(&v7);
  return v4;
}

uint64_t __53__AVPlayer_PlaybackCoordination__playbackCoordinator__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 8) + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVPlayer_PlaybackCoordination__playbackCoordinator__block_invoke_2;
  v5[3] = &unk_1E7460C00;
  v5[4] = v2;
  av_readwrite_dispatch_queue_write(v3, v5);
  [*(a1 + 32) _ensureFigPlaybackCoordinatorIsConnected];
  return [objc_msgSend(*(a1 + 32) "interstitialPlayer")];
}

- (void)_ensureFigPlaybackCoordinatorIsConnected
{
  v3 = [(AVPlayer *)self _playbackCoordinatorWithoutTriggeringFullSetup];
  if (([v3 _hasFigPlaybackCoordinator] & 1) == 0)
  {
    v4 = [(AVPlayer *)self _copyFigPlayer];
    if (v4)
    {
      v5 = v4;
      cf = 0;
      if ([(AVPlayer *)self _isInterstitialPlayer])
      {
        v6 = [v3 currentLamportTimestampForIdentifier];
        FigBaseObject = FigPlayerGetFigBaseObject();
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v8)
        {
          v8(FigBaseObject, *MEMORY[0x1E6973398], v6);
        }

        if ([v3 shouldOverrideGroupState])
        {
          v9 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v9 = MEMORY[0x1E695E4C0];
        }

        v10 = FigPlayerGetFigBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(v10, *MEMORY[0x1E69733A0], *v9);
        }
      }

      v12 = FigPlayerGetFigBaseObject();
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v13)
      {
        v13(v12, *MEMORY[0x1E6973390], *MEMORY[0x1E695E480], &cf);
        if (cf)
        {
          [v3 setFigPlaybackCoordinator:?];
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      CFRelease(v5);
    }
  }
}

- (void)_addCoordinatedPlaybackSuspensionWithReasonOnQueue:(id)a3
{
  coordinatedPlaybackSuspension = self->_player->coordinatedPlaybackSuspension;
  if (coordinatedPlaybackSuspension)
  {
    [(AVCoordinatedPlaybackSuspension *)coordinatedPlaybackSuspension end];
  }

  self->_player->coordinatedPlaybackSuspension = [-[AVPlayer _playbackCoordinatorWithoutTriggeringFullSetup](self "_playbackCoordinatorWithoutTriggeringFullSetup")];
}

- (void)_addCoordinatedPlaybackSuspension:(id)a3
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVPlayer_PlaybackCoordination___addCoordinatedPlaybackSuspension___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = a3;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v4);
}

- (void)_removeCoordinatedPlaybackSuspensionWithReasonOnQueue:(id)a3 requiringSuspensionEnd:(unsigned __int8)a4
{
  coordinatedPlaybackSuspension = self->_player->coordinatedPlaybackSuspension;
  if (coordinatedPlaybackSuspension)
  {
    v6 = a4;
    if ([(AVCoordinatedPlaybackSuspension *)coordinatedPlaybackSuspension reason]== a3)
    {
      v7 = self->_player->coordinatedPlaybackSuspension;
      if (v6)
      {
        [(AVCoordinatedPlaybackSuspension *)v7 end];
      }

      else
      {
        [(AVCoordinatedPlaybackSuspension *)v7 _removeSuspension];
      }

      self->_player->coordinatedPlaybackSuspension = 0;
    }
  }
}

- (void)_removeCoordinatedPlaybackSuspensionWithReason:(id)a3 requiringSuspensionEnd:(unsigned __int8)a4
{
  stateDispatchQueue = self->_player->stateDispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __104__AVPlayer_PlaybackCoordination___removeCoordinatedPlaybackSuspensionWithReason_requiringSuspensionEnd___block_invoke;
  v5[3] = &unk_1E7460E18;
  v5[4] = self;
  v5[5] = a3;
  v6 = a4;
  AVSerializeOnQueueAsyncIfNecessary(stateDispatchQueue, v5);
}

- (int64_t)networkResourcePriority
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__AVPlayer_AVPlayerResourceArbitrationSupport__networkResourcePriority__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setNetworkResourcePriority:(int64_t)a3
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:135];
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__AVPlayer_AVPlayerResourceArbitrationSupport__setNetworkResourcePriority___block_invoke;
  v10[3] = &unk_1E7460FA8;
  v10[4] = self;
  v10[5] = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v6)
  {
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __75__AVPlayer_AVPlayerResourceArbitrationSupport__setNetworkResourcePriority___block_invoke_2;
    v9[3] = &unk_1E7460C00;
    v9[4] = self;
    dispatch_sync(figConfigurationQueue, v9);
    CFRelease(v6);
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AVPlayer networkResourcePriority](self, "networkResourcePriority")}];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v8 forKey:*MEMORY[0x1E6973350]];
  }

  AVTelemetryIntervalEnd(&v11);
}

uint64_t __75__AVPlayer_AVPlayerResourceArbitrationSupport__setNetworkResourcePriority___block_invoke_2(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "networkResourcePriority")}];
  FigBaseObject = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6973350];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (BOOL)audioOutputSuppressedDueToNonMixableAudioRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __101__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport__audioOutputSuppressedDueToNonMixableAudioRoute__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_routingPlaybackArbiter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___routingPlaybackArbiter__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __78__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___routingPlaybackArbiter__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 632);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)nonMixableAudioPriority
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport__nonMixableAudioPriority__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setNonMixableAudioPriorityInternal:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setNonMixableAudioPriorityInternal___block_invoke;
  v13[3] = &unk_1E7460E40;
  v13[4] = self;
  v14 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v13);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (v3)
  {
    v7 = &unk_1F0AD3388;
  }

  else
  {
    v7 = &unk_1F0AD3418;
  }

  if (v6)
  {
    v8 = v6;
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setNonMixableAudioPriorityInternal___block_invoke_1240;
    block[3] = &unk_1E7462A50;
    block[5] = v11;
    block[6] = v8;
    block[4] = v7;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v11, 8);
    CFRelease(v8);
  }

  else
  {
    [(AVPlayer *)self _setPendingFigPlayerProperty:v7 forKey:*MEMORY[0x1E6973358]];
  }
}

uint64_t __91__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setNonMixableAudioPriorityInternal___block_invoke_1240(uint64_t a1)
{
  v2 = *(a1 + 32);
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973358], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)externalPlaybackPriority
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport__externalPlaybackPriority__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setExternalPlaybackPriorityInternal:(BOOL)a3
{
  v3 = a3;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setExternalPlaybackPriorityInternal___block_invoke;
  v15[3] = &unk_1E7460E40;
  v15[4] = self;
  v16 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v15);
  v6 = [(AVPlayer *)self _copyFigPlayer];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v14 = *v7;
  if (v6)
  {
    v8 = v6;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setExternalPlaybackPriorityInternal___block_invoke_2;
    v10[3] = &unk_1E7460EE0;
    v10[4] = self;
    v10[5] = &v11;
    dispatch_sync(figConfigurationQueue, v10);
    CFRelease(v8);
  }

  else
  {
    [AVPlayer _setPendingFigPlayerProperty:"_setPendingFigPlayerProperty:forKey:" forKey:?];
    [(AVPlayer *)self _setPendingFigPlayerProperty:v12[3] forKey:*MEMORY[0x1E69732E8]];
  }

  _Block_object_dispose(&v11, 8);
}

uint64_t __92__AVPlayer_AVPlayerRoutingPlaybackArbitrationSupport___setExternalPlaybackPriorityInternal___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69732E0], v2);
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = FigPlayerGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = *MEMORY[0x1E69732E8];

    return v10(v6, v11, v5);
  }

  return result;
}

- (BOOL)allowsLegibleFallbackForAllAudibleMediaSelections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __86__AVPlayer_AVPlayerLegibleFallback__allowsLegibleFallbackForAllAudibleMediaSelections__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowsLegibleFallbackForAllAudibleMediaSelections:(BOOL)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__AVPlayer_AVPlayerLegibleFallback__setAllowsLegibleFallbackForAllAudibleMediaSelections___block_invoke;
  v11[3] = &unk_1E7460E40;
  v11[4] = self;
  v12 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v5 = [(AVPlayer *)self _copyFigPlayer];
  if (v5)
  {
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__AVPlayer_AVPlayerLegibleFallback__setAllowsLegibleFallbackForAllAudibleMediaSelections___block_invoke_2;
    block[3] = &unk_1E7462A50;
    block[5] = v9;
    block[6] = v6;
    block[4] = self;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v9, 8);
    CFRelease(v6);
  }
}

uint64_t __90__AVPlayer_AVPlayerLegibleFallback__setAllowsLegibleFallbackForAllAudibleMediaSelections___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) allowsLegibleFallbackForAllAudibleMediaSelections])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973180], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (AVPlayerMediaSelectionCriteria)legibleFallbackMediaSelectionCriteria
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__AVPlayer_AVPlayerLegibleFallback__legibleFallbackMediaSelectionCriteria__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __74__AVPlayer_AVPlayerLegibleFallback__legibleFallbackMediaSelectionCriteria__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 808);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setLegibleFallbackMediaSelectionCriteria:(id)a3
{
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__AVPlayer_AVPlayerLegibleFallback__setLegibleFallbackMediaSelectionCriteria___block_invoke;
  v11[3] = &unk_1E7460DF0;
  v11[4] = a3;
  v11[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  v5 = [(AVPlayer *)self _copyFigPlayer];
  if (v5)
  {
    v6 = v5;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2020000000;
    v10 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__AVPlayer_AVPlayerLegibleFallback__setLegibleFallbackMediaSelectionCriteria___block_invoke_2;
    block[3] = &unk_1E7462A50;
    block[5] = v9;
    block[6] = v6;
    block[4] = self;
    dispatch_sync(figConfigurationQueue, block);
    _Block_object_dispose(v9, 8);
    CFRelease(v6);
  }
}

void __78__AVPlayer_AVPlayerLegibleFallback__setLegibleFallbackMediaSelectionCriteria___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 808) = *(a1 + 32);
}

uint64_t __78__AVPlayer_AVPlayerLegibleFallback__setLegibleFallbackMediaSelectionCriteria___block_invoke_2(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "legibleFallbackMediaSelectionCriteria")];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E69732F8], v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isDefunct
{
  v8 = 0;
  v2 = [(AVPlayer *)self _copyFigPlayer];
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

- (void)_setSupportsAdvanceTimeForOverlappedPlayback:(BOOL)a3
{
  player = self->_player;
  if (!player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set supportsAdvanceTimeForOverlappedPlayback after the AVPlayer has begun preparing for playback." userInfo:0]);
  }

  ivarAccessQueue = player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__AVPlayer_AVPlayerAdvanceWithOverlap___setSupportsAdvanceTimeForOverlappedPlayback___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

- (void)setSupportsSpeedRamps:(BOOL)a3
{
  player = self->_player;
  if (!player->needsToCreateFigPlayer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot set supportsSpeedRamps after the AVPlayer has begun preparing for playback." userInfo:0]);
  }

  ivarAccessQueue = player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVPlayer_AVPlayerSpeedRamp__setSupportsSpeedRamps___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = a3;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

- (BOOL)canPlaySpeedRamp
{
  v3 = [(AVPlayer *)self supportsSpeedRamps];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = ![(AVPlayer *)self _isBufferedAirPlayActive];
    }
  }

  return v3;
}

- (void)_canPlaySpeedRampChanged
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 postNotificationName:@"AVPlayerCanPlaySpeedRampDidChangeNotification" object:self];
}

- (NSArray)_attachedPlayerLayers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->_player->videoLayersAreAttached)
  {
    v4 = [(AVPlayer *)self _videoLayers];
    v5 = [(AVPlayer *)self _avPlayerLayers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 _videoLayer] && objc_msgSend(v4, "containsObject:", objc_msgSend(v10, "_videoLayer")))
          {
            [(NSArray *)v3 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v3;
}

- (BOOL)isLocalCoplaybackEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVPlayer_AVPlayerLocalCoplayback__isLocalCoplaybackEnabled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setLocalCoplaybackEnabled:(BOOL)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackEnabled___block_invoke;
  v9[3] = &unk_1E7462948;
  v10 = a3;
  v9[4] = self;
  v9[5] = &v11;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  if (v12[3])
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackEnabled___block_invoke_2;
    v6[3] = &unk_1E7462B60;
    v6[4] = self;
    v6[5] = v7;
    v6[6] = &v11;
    dispatch_sync(figConfigurationQueue, v6);
    CFRelease(v12[3]);
    _Block_object_dispose(v7, 8);
  }

  _Block_object_dispose(&v11, 8);
}

CFTypeRef __63__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(*(*(a1 + 32) + 8) + 705) = v2;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 784);
  if (v4)
  {
    result = CFRetain(v4);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    if (v2)
    {
      v6 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = MEMORY[0x1E695E4C0];
    }

    v7 = *v6;
    v8 = *(v3 + 208);
    v9 = *MEMORY[0x1E6973280];

    return [v8 setObject:v7 forKey:v9];
  }

  return result;
}

uint64_t __63__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackEnabled___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isLocalCoplaybackEnabled])
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlayerGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, *MEMORY[0x1E6973280], *v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (float)localCoplaybackVolume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1065353216;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayer_AVPlayerLocalCoplayback__localCoplaybackVolume__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __58__AVPlayer_AVPlayerLocalCoplayback__localCoplaybackVolume__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 708);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setLocalCoplaybackVolume:(float)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  ivarAccessQueue = self->_player->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackVolume___block_invoke;
  v9[3] = &unk_1E7462C08;
  v10 = a3;
  v9[4] = self;
  v9[5] = &v11;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  if (v12[3])
  {
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2020000000;
    v8 = 0;
    figConfigurationQueue = self->_player->figConfigurationQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackVolume___block_invoke_2;
    v6[3] = &unk_1E7462B60;
    v6[4] = self;
    v6[5] = v7;
    v6[6] = &v11;
    dispatch_sync(figConfigurationQueue, v6);
    CFRelease(v12[3]);
    _Block_object_dispose(v7, 8);
  }

  _Block_object_dispose(&v11, 8);
}

CFTypeRef __62__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackVolume___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 708) = *(a1 + 48);
  v2 = *(*(*(a1 + 32) + 8) + 784);
  if (v2)
  {
    result = CFRetain(v2);
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v5 = *(*(*(a1 + 32) + 8) + 208);
    v6 = *MEMORY[0x1E69731D8];

    return [v5 setObject:v4 forKey:v6];
  }

  return result;
}

uint64_t __62__AVPlayer_AVPlayerLocalCoplayback__setLocalCoplaybackVolume___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E696AD98];
  [*(a1 + 32) localCoplaybackVolume];
  v3 = [v2 numberWithFloat:?];
  FigBaseObject = FigPlayerGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    result = v5(FigBaseObject, *MEMORY[0x1E69731D8], v3);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)setObservationEnabled:(BOOL)a3
{
  if (sStaticGetQueueOnce != -1)
  {
    +[AVPlayer(AVPlayerObservation) isObservationEnabled];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AVPlayer_AVPlayerObservation__setObservationEnabled___block_invoke;
  block[3] = &unk_1E7462C58;
  v7 = a3;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(sStaticQueue, block);
}

uint64_t __55__AVPlayer_AVPlayerObservation__setObservationEnabled___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sIsObservationEnabled != *(result + 48) && sNumObjects >= 1)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(*(result + 32) userInfo:{*(result + 40), @"Observation cannot be changed after playback objects are initialized.", a4, a5, a6, a7, a8, v8), 0}];
    objc_exception_throw(v10);
  }

  sIsObservationEnabled = *(result + 48);
  return result;
}

uint64_t __30__AVPlayer__advanceToNextItem__block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_2(a1);
  if (v2)
  {
    [*(v1 + 32) _removeItemFromLinkedList_invokeOnIvarAccessQueue:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_removeItem:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC2F8)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_0_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6 = a3;
  if (a3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __24__AVPlayer__removeItem___block_invoke;
    v8[3] = &unk_1E74626F0;
    v8[4] = a3;
    v8[5] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __24__AVPlayer__removeItem___block_invoke_2;
    v7[3] = &unk_1E7460DF0;
    v7[4] = self;
    v7[5] = a3;
    [(AVPlayer *)self _runOnIvarAccessQueueOperationThatMayChangeCurrentItemWithPreflightBlock:v8 modificationBlock:v7 error:0];
  }
}

uint64_t __45__AVPlayer_replaceCurrentItemWithPlayerItem___block_invoke_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_2(a1);
  v3 = v2;
  v4 = *(v1 + 40);
  if (v4 != v2)
  {
    v6 = v2;
    if (v4)
    {
      [*(v1 + 32) _addItemToLinkedList_invokeOnIvarAccessQueue:v4 afterItem:v2];
      v3 = v6;
    }

    if (v3)
    {
      [*(v1 + 32) _removeItemFromLinkedList_invokeOnIvarAccessQueue:v3];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_setOptions:(id)a3 onClosedCaptionLayer:(id)a4
{
  if (a4)
  {
    v7 = [(AVPlayer *)self _copyFigPlayer];
    if (v7)
    {
      v8 = v7;
      v9 = [(AVPlayer *)self _closedCaptionLayers];
      if (v9)
      {
        v10 = [v9 indexOfObject:a4];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v10;
          v12 = [MEMORY[0x1E695DF90] dictionary];
          [v12 addEntriesFromDictionary:a3];
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v12 setValue:v13 forKey:*MEMORY[0x1E6972E58]];
          FigBaseObject = FigPlayerGetFigBaseObject();
          v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v15)
          {
            v15(FigBaseObject, *MEMORY[0x1E6973210], v12);
          }
        }
      }

      CFRelease(v8);
    }
  }
}

- (void)_setSeparated:(BOOL)a3 onClosedCaptionLayer:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = a3;
    v7 = [(AVPlayer *)self _copyFigPlayer];
    if (v7)
    {
      v8 = v7;
      v9 = [(AVPlayer *)self _closedCaptionLayers];
      if (v9)
      {
        v10 = [v9 indexOfObject:a4];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17[0] = *MEMORY[0x1E6972E68];
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          v17[1] = *MEMORY[0x1E6972E70];
          v12 = MEMORY[0x1E695E4D0];
          if (!v5)
          {
            v12 = MEMORY[0x1E695E4C0];
          }

          v13 = *v12;
          v18[0] = v11;
          v18[1] = v13;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
          FigBaseObject = FigPlayerGetFigBaseObject();
          v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v16)
          {
            v16(FigBaseObject, *MEMORY[0x1E6973218], v14);
          }
        }
      }

      CFRelease(v8);
    }
  }
}

- (__CVBuffer)_copyDisplayedPixelBuffer:(id)a3
{
  v16[22] = *MEMORY[0x1E69E9840];
  [(AVPlayer *)self rate];
  v16[0] = 0;
  if (v5 != 0.0)
  {
    if (dword_1ED5AC2F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return v16[0];
  }

  v6 = [(AVPlayer *)self _copyFigPlayer];
  if (!v6)
  {
    return v16[0];
  }

  v7 = v6;
  if (a3)
  {
    if (!FigUseVideoReceiverForCALayer())
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69734E8], a3);
      goto LABEL_11;
    }

    if ([a3 videoTarget])
    {
      CMBaseObject = FigVideoTargetGetCMBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v9(CMBaseObject, *MEMORY[0x1E6973DE0], *MEMORY[0x1E695E480], v16);
        if (v16[0])
        {
          v10 = v7;
LABEL_17:
          CFRelease(v10);
          return v16[0];
        }
      }
    }
  }

  Mutable = 0;
LABEL_11:
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v12 || v12(v7, Mutable, v16))
  {
    if (dword_1ED5AC2F8)
    {
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_0_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  CFRelease(v7);
  if (Mutable)
  {
    v10 = Mutable;
    goto LABEL_17;
  }

  return v16[0];
}

- (int)_reevaluateVideoLayersAndTargetsForPresentationState:(int64_t)a3 withCompletionHandler:(id)a4
{
  v7 = [(AVPlayer *)self _copyFigPlayer];
  v8 = [(AVPlayer *)self _videoLayers];
  switch(a3)
  {
    case 0:
      v9 = [(AVPlayer *)self _allClientAndVideoLayerVideoTargets];
      goto LABEL_4;
    case 1:
      v10 = [(AVPlayer *)self videoTargets];
      v8 = 0;
      v11 = FigUseVideoReceiverForCALayer() != 0;
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    case 2:
      v9 = [(AVPlayer *)self _allVideoTargetsForVideoLayers];
LABEL_4:
      v10 = v9;
      if (FigUseVideoReceiverForCALayer())
      {
        v8 = 0;
      }

      goto LABEL_12;
    case 3:
      FigUseVideoReceiverForCALayer();
      v8 = 0;
      v11 = 1;
      v10 = MEMORY[0x1E695E0F0];
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_13;
    default:
      v8 = 0;
      v10 = 0;
LABEL_12:
      v11 = 1;
      if (!v7)
      {
        goto LABEL_23;
      }

LABEL_13:
      if (FigUseVideoReceiverForCALayer())
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (![(NSArray *)v12 count])
      {
LABEL_23:
        self->_player->videoLayersAreAttached = 0;
        if (!v11)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      FigBaseObject = FigPlayerGetFigBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_33;
      }

      v15 = v14(FigBaseObject, *MEMORY[0x1E6973410], *MEMORY[0x1E695E4C0]);
      if (v15)
      {
        goto LABEL_32;
      }

      v16 = FigPlayerGetFigBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v17)
      {
        goto LABEL_33;
      }

      v15 = v17(v16, *MEMORY[0x1E6973198], *MEMORY[0x1E695E4D0]);
      if (v15)
      {
LABEL_32:
        v18 = v15;
        goto LABEL_34;
      }

      self->_player->videoLayersAreAttached = 1;
      [(AVPlayer *)self _removeCoordinatedPlaybackSuspensionWithReasonOnQueue:0x1F0A9EB70 requiringSuspensionEnd:1];
      if (v11)
      {
LABEL_24:
        [(AVPlayer *)self _updateVideoTargetsOnFigPlayer:v10 withCompletionHandler:a4];
        a4 = 0;
      }

LABEL_25:
      if (!v7 || FigUseVideoReceiverForCALayer())
      {
        goto LABEL_27;
      }

      v19 = FigPlayerGetFigBaseObject();
      v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v20)
      {
LABEL_33:
        v18 = -12782;
        goto LABEL_34;
      }

      v15 = v20(v19, *MEMORY[0x1E6973478], v8);
      if (v15)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (self->_player->videoLayersAreAttached)
      {
        [(AVPlayer *)self _evaluateDisplaySizeOfAllAttachedLayers];
      }

      v18 = 0;
LABEL_34:
      if (a4)
      {
        (*(a4 + 2))(a4);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      return v18;
  }
}

- (BOOL)_addVideoLayer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (FigUseVideoReceiverForCALayer() && ![a3 videoTarget])
  {
    FigSignalErrorAtGM();
  }

  else if (([(NSMutableArray *)self->_player->videoLayers containsObject:a3]& 1) == 0)
  {
    [(NSMutableArray *)self->_player->videoLayers addObject:a3];
    return 1;
  }

  return 0;
}

- (BOOL)_removeVideoLayer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (FigUseVideoReceiverForCALayer() && ![a3 videoTarget])
  {
    FigSignalErrorAtGM();
  }

  else
  {
    v5 = [(NSMutableArray *)self->_player->videoLayers indexOfObject:a3];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->_player->videoLayers removeObjectAtIndex:v5];
      return 1;
    }
  }

  return 0;
}

- (void)setNonMixableAudioPriority:(BOOL)a3
{
  v3 = a3;
  if (![(AVPlayer *)self _isInterstitialPlayer])
  {
    [(AVPlayer *)self _setNonMixableAudioPriorityInternal:v3];
    v5 = [(AVPlayer *)self _interstitialPlayerIfCreated];
    if (v5)
    {

      [v5 _setNonMixableAudioPriorityInternal:v3];
    }
  }
}

- (void)setDefaultNonMixableAudioPriority
{
  if (![(AVPlayer *)self _isInterstitialPlayer])
  {
    [(AVPlayer *)self _setNonMixableAudioPriorityInternal:1];
    v3 = [(AVPlayer *)self _interstitialPlayerIfCreated];
    if (v3)
    {

      [v3 _setNonMixableAudioPriorityInternal:1];
    }
  }
}

- (void)setExternalPlaybackPriority:(BOOL)a3
{
  v3 = a3;
  if (![(AVPlayer *)self _isInterstitialPlayer])
  {
    [(AVPlayer *)self _setExternalPlaybackPriorityInternal:v3];
    v5 = [(AVPlayer *)self _interstitialPlayerIfCreated];
    if (v5)
    {

      [v5 _setExternalPlaybackPriorityInternal:v3];
    }
  }
}

- (void)setDefaultExternalPlaybackPriority
{
  if (![(AVPlayer *)self _isInterstitialPlayer])
  {
    [(AVPlayer *)self _setExternalPlaybackPriorityInternal:1];
    v3 = [(AVPlayer *)self _interstitialPlayerIfCreated];
    if (v3)
    {

      [v3 _setExternalPlaybackPriorityInternal:1];
    }
  }
}

@end
@interface AVPlayerItem
+ (AVPlayerItem)playerItemWithAsset:(AVAsset *)asset;
+ (AVPlayerItem)playerItemWithAsset:(AVAsset *)asset automaticallyLoadedAssetKeys:(NSArray *)automaticallyLoadedAssetKeys;
+ (AVPlayerItem)playerItemWithURL:(NSURL *)URL;
+ (BOOL)_hasOverrideForSelector:(SEL)selector;
+ (OpaqueCMTimebase)_copyTimebaseFromFigPlaybackItem:(OpaqueFigPlaybackItem *)item;
+ (id)_initializeProtectedContentPlaybackSupportSessionAsynchronouslyForProvider:(id)provider withOptions:(id)options;
+ (int)_createFigPlaybackItemForFigPlayer:(OpaqueFigPlayer *)player asset:(id)asset URL:(id)l flags:(unsigned int)flags options:(__CFDictionary *)options playbackItem:(OpaqueFigPlaybackItem *)item;
+ (void)_uninitializeProtectedContentPlaybackSupportSession:(id)session;
+ (void)initialize;
- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_configuredTimeOffsetFromLive;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentTimeWithOptionalFoldedTimebase:(SEL)timebase;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_recommendedTimeOffsetFromLive;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeToPauseBuffering;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeToPausePlayback;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)advanceTimeForOverlappedPlayback;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentUnfoldedTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumForwardBufferDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTimePlayedToDuringOverlappedPlayback;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTimePlayedToSinceLastSeek;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTrailingBufferDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumIntervalForIFrameOnlyPlayback;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overlappedPlaybackEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overlappedPlaybackSafetyMargin;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeToPauseBuffering;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeToPausePlayback;
- (AVAsset)asset;
- (AVAudioMix)audioMix;
- (AVAudioSpatializationFormats)allowedAudioSpatializationFormats;
- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (AVMediaSelection)currentMediaSelection;
- (AVMediaSelectionOption)selectedMediaOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (AVPlayerItem)init;
- (AVPlayerItem)initWithAsset:(AVAsset *)asset;
- (AVPlayerItem)initWithAsset:(AVAsset *)asset automaticallyLoadedAssetKeys:(NSArray *)automaticallyLoadedAssetKeys;
- (AVPlayerItem)initWithURL:(NSURL *)URL;
- (AVPlayerItem)templatePlayerItem;
- (AVPlayerItemAccessLog)accessLog;
- (AVPlayerItemErrorLog)errorLog;
- (AVPlayerItemIntegratedTimeline)integratedTimeline;
- (AVPlayerItemStatus)status;
- (AVVariantPreferences)variantPreferences;
- (AVVideoApertureMode)videoApertureMode;
- (AVVideoComposition)videoComposition;
- (BOOL)_addToPlayQueueOfFigPlayerOfPlayer:(id)player afterFigPlaybackItemOfItem:(id)item;
- (BOOL)_canBeAttachedToPlayer:(id)player;
- (BOOL)_canPlayFastForward;
- (BOOL)_canPlayFastReverse;
- (BOOL)_canPlayReverse;
- (BOOL)_canStepForward;
- (BOOL)_configurePlaybackItemAndReturnError:(id *)error;
- (BOOL)_getCachedPresentationSize:(CGSize *)size;
- (BOOL)_hasEnabledAudio;
- (BOOL)_hasEnabledVideo;
- (BOOL)_hasEnqueuedVideoFrame;
- (BOOL)_isAFileBasedItemThatsReadyToPlay;
- (BOOL)_isExternalProtectionRequiredForPlayback;
- (BOOL)_isFigAssetReadyForInspectionOfMediaSelectionOptions;
- (BOOL)_isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection;
- (BOOL)_isFigItemConfigured;
- (BOOL)_isNonForcedSubtitleDisplayEnabled;
- (BOOL)_isReadyForBasicInspection;
- (BOOL)_isReadyForInspectionOfDuration;
- (BOOL)_isReadyForInspectionOfPresentationSize;
- (BOOL)_isReadyForInspectionOfRecommendedTimeOffsetFromLive;
- (BOOL)_isReadyForInspectionOfTracks;
- (BOOL)_isRental;
- (BOOL)_isRentalPlaybackStarted;
- (BOOL)_selectMediaOption:(id)option inMediaSelectionGroup:(id)group;
- (BOOL)_speedRampDataWasSet;
- (BOOL)_suppressesVideoLayers;
- (BOOL)_suppressionForOutputs:(id)outputs;
- (BOOL)_timeJumpedNotificationIncludesExtendedDiagnosticPayload;
- (BOOL)adjustCompressionProfileWasSet;
- (BOOL)adjustTargetLevelWasSet;
- (BOOL)advanceTimeForOverlappedPlaybackWasSet;
- (BOOL)aggressivelyCachesVideoFrames;
- (BOOL)aggressivelyCachesVideoFramesWasSet;
- (BOOL)allowProgressiveResume;
- (BOOL)allowProgressiveStartup;
- (BOOL)allowProgressiveSwitchUp;
- (BOOL)allowedAudioSpatializationFormatsWasSet;
- (BOOL)allowsExtendedReadAhead;
- (BOOL)alwaysMonitorsPlayability;
- (BOOL)appliesPerFrameHDRDisplayMetadata;
- (BOOL)appliesPerFrameHDRDisplayMetadataWasSet;
- (BOOL)audioSpatializationAllowedWasSet;
- (BOOL)autoSwitchAtmosStreamVariants;
- (BOOL)automaticallyHandlesInterstitialEvents;
- (BOOL)automaticallyPreservesTimeOffsetFromLive;
- (BOOL)blendsVideoFrames;
- (BOOL)blendsVideoFramesWasSet;
- (BOOL)canPlayFastForward;
- (BOOL)canPlayFastReverse;
- (BOOL)canPlayReverse;
- (BOOL)canPlaySlowForward;
- (BOOL)canPlaySlowReverse;
- (BOOL)canStepBackward;
- (BOOL)canStepForward;
- (BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused;
- (BOOL)continuesPlayingDuringPrerollForRateChange;
- (BOOL)continuesPlayingDuringPrerollForSeek;
- (BOOL)decodesAllFramesDuringOrdinaryPlayback;
- (BOOL)decodesAllFramesDuringOrdinaryPlaybackWasSet;
- (BOOL)hasEnabledAudio;
- (BOOL)hasEnabledVideo;
- (BOOL)hasVideo;
- (BOOL)imageQueueInterpolationCurveWasSet;
- (BOOL)isApplicationAuthorizedForPlayback;
- (BOOL)isAudioSpatializationAllowed;
- (BOOL)isAuthorizationRequiredForPlayback;
- (BOOL)isContentAuthorizedForPlayback;
- (BOOL)isDefunct;
- (BOOL)isEligibleForDSPBasedEnhancedDialogue;
- (BOOL)isNonForcedSubtitleDisplayEnabled;
- (BOOL)isPlaybackBufferEmpty;
- (BOOL)isPlaybackBufferFull;
- (BOOL)isPlaybackLikelyToKeepUp;
- (BOOL)isRenderingSpatialAudio;
- (BOOL)limitReadAhead;
- (BOOL)minimumIntervalForIFrameOnlyPlaybackWasSet;
- (BOOL)missingAudioEditList;
- (BOOL)overlappedPlaybackEndTimeWasSet;
- (BOOL)participatesInCoordinatedPlayback;
- (BOOL)playHapticTracks;
- (BOOL)playerAppliesAutomaticMediaSelectionToGroup:(id)group;
- (BOOL)prefersOfflinePlayableVariants;
- (BOOL)refreshesClosedCaptionsImmediatelyAfterSeeking;
- (BOOL)requiresAccessLog;
- (BOOL)restrictsAutomaticMediaSelectionToAvailableOfflineOptions;
- (BOOL)reversesMoreVideoFramesInMemory;
- (BOOL)reversesMoreVideoFramesInMemoryWasSet;
- (BOOL)savesDownloadedDataToDiskWhenDone;
- (BOOL)savesDownloadedDataToDiskWhenDoneWasSet;
- (BOOL)seekToDate:(NSDate *)date;
- (BOOL)seekToDate:(NSDate *)date completionHandler:(void *)completionHandler;
- (BOOL)seekingWaitsForVideoCompositionRendering;
- (BOOL)speedThresholdForIFrameOnlyPlaybackWasSet;
- (BOOL)startsOnFirstEligibleVariant;
- (BOOL)suppressesAudioOnlyVariants;
- (BOOL)usesIFrameOnlyPlaybackForHighRateScaledEdits;
- (BOOL)usesIFrameOnlyPlaybackForHighRateScaledEditsWasSet;
- (BOOL)usesMinimalLatencyForVideoCompositionRendering;
- (BOOL)willNeverSeekBackwardsHint;
- (CGSize)IFramePrefetchTargetDimensions;
- (CGSize)_presentationSize;
- (CGSize)preferredMaximumResolution;
- (CGSize)preferredMaximumResolutionForExpensiveNetworks;
- (CGSize)preferredMinimumResolution;
- (CGSize)presentationSize;
- (CMTime)configuredTimeOffsetFromLive;
- (CMTime)currentTime;
- (CMTime)duration;
- (CMTime)forwardPlaybackEndTime;
- (CMTime)recommendedTimeOffsetFromLive;
- (CMTime)reversePlaybackEndTime;
- (CMTimebaseRef)timebase;
- (NSArray)automaticallyLoadedAssetKeys;
- (NSArray)loadedTimeRanges;
- (NSArray)mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes;
- (NSArray)mediaDataCollectors;
- (NSArray)outputs;
- (NSArray)preferredCustomMediaSelectionSchemes;
- (NSArray)seekableTimeRanges;
- (NSArray)speedRamp;
- (NSArray)supplementalMetadata;
- (NSArray)textStyleRules;
- (NSArray)timedMetadata;
- (NSArray)tracks;
- (NSDate)_rentalExpirationDate;
- (NSDate)_rentalPlaybackExpirationDate;
- (NSDate)_rentalPlaybackStartedDate;
- (NSDate)_rentalStartDate;
- (NSDate)currentDate;
- (NSError)error;
- (NSObject)AVKitData;
- (NSString)description;
- (NSString)hapticPlaybackLocality;
- (NSString)serviceIdentifier;
- (NSTimeInterval)preferredForwardBufferDuration;
- (OpaqueCMTimebase)_copyFoldedTimebase;
- (OpaqueCMTimebase)_copyUnfoldedFigTimebase;
- (OpaqueCMTimebase)unfoldedTimebase;
- (OpaqueFigCPEProtector)_copyFigCPEProtector;
- (OpaqueFigPlaybackItem)_copyFigPlaybackItemLocked:(BOOL)locked;
- (double)_delayPreparingItemForTestingOnly;
- (double)liveUpdateInterval;
- (double)preferredMaximumAudioSampleRate;
- (double)preferredPeakBitRate;
- (double)preferredPeakBitRateForExpensiveNetworks;
- (double)seekableTimeRangesLastModifiedTime;
- (float)adjustTargetLevel;
- (float)progressTowardsPlaybackLikelyToKeepUp;
- (float)soundCheckVolumeNormalization;
- (float)speedThresholdForIFrameOnlyPlayback;
- (float)volumeAdjustment;
- (id)_cachedTracks;
- (id)_coordinationIdentifier;
- (id)_copyIntegratedTimelineIfCreated;
- (id)_copyPlayer;
- (id)_copyStateDispatchQueue;
- (id)_currentMediaSelectionFromFigSelectedMediaArray:(id)array;
- (id)_enabledTrackFormatDescriptions;
- (id)_ensureAssetWithFigPlaybackItemWithTrackIDs:(id)ds;
- (id)_figSelectedMediaArray;
- (id)_integratedSessionIdentifier;
- (id)_integratedTimelineOffsets;
- (id)_interstitialEventItemTimeOffset;
- (id)_isExternalProtectionRequiredForPlaybackInternal;
- (id)_legibleOutputForKey:(id)key;
- (id)_legibleOutputsForKeys;
- (id)_loadedTimeRanges;
- (id)_loadedTimeRangesFromFPPlaybableTimeIntervals:(id)intervals;
- (id)_loggingDescription;
- (id)_mediaOptionsSelectedByClient;
- (id)_mediaOptionsSelectedByClientForKey:(id)key;
- (id)_metadataCollectors;
- (id)_metadataOutputForKey:(id)key;
- (id)_metadataOutputsForKeys;
- (id)_nameForLogging;
- (id)_playbackCoordinator;
- (id)_playbackItemNotificationPayloadToError:(__CFDictionary *)error;
- (id)_playbackProperties;
- (id)_propertyListForMediaSelection:(id)selection forGroup:(id)group;
- (id)_propertyListForSelectedMediaOptionUsingFigSelectedMediaArrayObtainedFromGroup:(id)group;
- (id)_renderedLegibleOutputForKey:(id)key;
- (id)_renderedLegibleOutputsForKeys;
- (id)_seekableTimeRanges;
- (id)_seekableTimeRangesFromFPSeekableTimeIntervals:(id)intervals;
- (id)_syncLayers;
- (id)_trackWithTrackID:(int)d;
- (id)_tracks;
- (id)_tracksFromAssetTrackIDs;
- (id)_tracksWithFPTrackIDArray:(id)array fromFigPlaybackItem:(OpaqueFigPlaybackItem *)item;
- (id)_videoOutputs;
- (id)configurationGroup;
- (id)copy;
- (id)copyWithZone:(NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone newAssetOptions:(id)options;
- (id)currentEstimatedDate;
- (id)currentStableVariantID;
- (id)customVideoCompositor;
- (id)delegate;
- (id)effectiveMediaPresentationSettingsForMediaSelectionGroup:(id)group;
- (id)gaplessInfo;
- (id)identifier;
- (id)imageQueueInterpolationCurve;
- (id)initialDate;
- (id)initialEstimatedDate;
- (id)interstitialEventID;
- (id)loudnessInfo;
- (id)makeLookupableSpatialVideoConfigurations:(id)configurations;
- (id)mediaKind;
- (id)playabilityMetrics;
- (id)reportingCategory;
- (id)selectedMediaPresentationLanguageForMediaSelectionGroup:(id)group;
- (id)selectedMediaPresentationSettingsForMediaSelectionGroup:(id)group;
- (id)textHighlightArray;
- (id)valueForUndefinedKey:(id)key;
- (id)videoEnhancementMode;
- (int)_CreateSeekID;
- (int)makeSeekID;
- (int64_t)availableFileSize;
- (int64_t)fileSize;
- (int64_t)playbackLikelyToKeepUpTrigger;
- (int64_t)variantIndex;
- (opaqueMTAudioProcessingTap)audioTapProcessor;
- (unint64_t)restrictions;
- (unsigned)RTCReportingFlags;
- (unsigned)_snapTimeToPausePlayback;
- (unsigned)adjustCompressionProfile;
- (unsigned)snapTimeToPausePlayback;
- (void)_addFAListeners;
- (void)_addFPListeners;
- (void)_addFoldedTBListeners;
- (void)_addInterstitialEventCollectorLocked:(BOOL)locked;
- (void)_addLegibleOutput:(id)output;
- (void)_addMetadataCollector:(id)collector locked:(BOOL)locked;
- (void)_addMetadataOutput:(id)output;
- (void)_addRenderedLegibleOutput:(id)output;
- (void)_addSyncLayer:(id)layer;
- (void)_addVideoOutput:(id)output;
- (void)_applyCurrentAudioMix;
- (void)_applyCurrentAudioTapProcessorOnFigPlaybackItem;
- (void)_applyCurrentVideoComposition;
- (void)_applyMediaSelectionOptions;
- (void)_attachIntegratedTimelineToFigItem;
- (void)_attachToFigPlayer;
- (void)_attachToPlayer:(id)player;
- (void)_cacheMediaSelectionOption:(id)option forMediaSelectionGroup:(id)group;
- (void)_cacheTrackInformation;
- (void)_cancelPendingSeekAndRegisterSeekID:(int)d withCompletionHandler:(id)handler;
- (void)_changeStatusToFailedWithError:(id)error;
- (void)_configureVideoCompositionColorProperties;
- (void)_evaluateLegibleOutputs;
- (void)_evaluateMetadataOutputs;
- (void)_evaluateRenderedLegibleOutputs;
- (void)_evaluateVideoOutputs;
- (void)_executeHandlerCheckingIfTrickModesAreAllowed:(id)allowed;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushLegibleOutputWithDictionaryKey:(id)key;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushMetadataOutputWithDictionaryKey:(id)key;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushRenderedLegibleOutputWithDictionaryKey:(id)key;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputAttributedStrings:(id)strings nativeSampleBuffers:(id)buffers atItemTime:(id *)time withLegibleOutputsDictionaryKey:(id)key;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputRenderedCaptionImages:(id)images atItemTime:(id *)time withRenderedLegibleOutputsDictionaryKey:(id)key;
- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputSampleBuffers:(id)buffers fromTrackWithID:(int)d forMetadataOutputWithDictionaryKey:(id)key;
- (void)_getVideoComposition:(id *)composition customVideoCompositorSession:(id *)session figVideoCompositor:(OpaqueFigVideoCompositor *)compositor;
- (void)_informObserversAboutAvailabilityOfCurrentMediaSelection;
- (void)_informObserversAboutAvailabilityOfDuration:(id *)duration;
- (void)_informObserversAboutAvailabilityOfPresentationSize;
- (void)_informObserversAboutAvailabilityOfTracks:(id)tracks;
- (void)_insertAfterItem:(id)item;
- (void)_invokeReadyForEnqueueingHandlers;
- (void)_isNonForcedSubtitleDisplayEnabled;
- (void)_kickAssetObserversIfAppropriate;
- (void)_makeReadyForEnqueueingWithCompletionHandler:(id)handler;
- (void)_markAsFigItemConfigured;
- (void)_markAsNeedingNewAssetWithFigPlaybackItem;
- (void)_markAsReadyForBasicInspection;
- (void)_markAsReadyForInspectionOfDuration;
- (void)_markAsReadyForInspectionOfPresentationSize;
- (void)_markAsReadyForInspectionOfRecommendedTimeOffsetFromLive;
- (void)_markAsReadyForInspectionOfTracks;
- (void)_markAssetWithFigPlaybackItemAsNeedingNewTracks;
- (void)_markFigAssetAsReadyForInspectionOfMediaSelectionOptions;
- (void)_postSeekCompletionNotificationWithSeekID:(int)d andResult:(BOOL)result;
- (void)_quietlySetEQPreset:(int)preset;
- (void)_quietlySetServiceIdentifier;
- (void)_quietlySetVariantIndex:(int64_t)index;
- (void)_removeFAListeners;
- (void)_removeFPListeners;
- (void)_removeFoldedTBListeners;
- (void)_removeFromItems;
- (void)_removeFromPlayQueueOfFigPlayerOfAttachedPlayer;
- (void)_removeInterstitialEventCollectorLocked:(BOOL)locked;
- (void)_removeLegibleOutput:(id)output;
- (void)_removeMediaOptionsSelectedByClient;
- (void)_removeMetadataCollector:(id)collector locked:(BOOL)locked;
- (void)_removeMetadataOutput:(id)output;
- (void)_removeRenderedLegibleOutput:(id)output;
- (void)_removeSyncLayer:(id)layer;
- (void)_removeVideoOutput:(id)output;
- (void)_renderingSuppressionDidChangeForOutput:(id)output;
- (void)_respondToBecomingReadyForBasicInspection;
- (void)_respondToBecomingReadyForBasicInspectionWithDuration:(id *)duration;
- (void)_seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after seekID:(int)d completionHandler:(id)handler;
- (void)_setAsset:(id)asset;
- (void)_setAssetToAssetWithFigPlaybackItemIfAppropriate;
- (void)_setAudibleDRMInfo:(id)info;
- (void)_setAudioCurvesAccordingToInputParameters:(id)parameters forTrackID:(int)d;
- (void)_setAudioEffectParameters:(id)parameters previousEffects:(id)effects forTrackID:(int)d;
- (void)_setAudioProcessingEffectsAccordingToInputParameters:(id)parameters forTrackID:(int)d;
- (void)_setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor forTrackID:(int)d;
- (void)_setAudioTimePitchAlgorithm:(id)algorithm forTrackID:(int)d;
- (void)_setCoordinatorIdentifier:(id)identifier;
- (void)_setCurrentMediaSelection:(id)selection;
- (void)_setDelayPreparingItemForTestingOnly:(double)only;
- (void)_setEQPreset:(int)preset;
- (void)_setExternalProtectionRequiredForPlayback:(BOOL)playback;
- (void)_setIntegratedSessionIdentifier:(id)identifier;
- (void)_setInterstitialEventID:(id)d;
- (void)_setItemAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor fromAudioMixContext:(BOOL)context;
- (void)_setMediaOptionsSelectedByClient:(id)client forKey:(id)key;
- (void)_setParticipatesInCoordinatedPlayback:(BOOL)playback;
- (void)_setPlaybackCoordinator:(id)coordinator;
- (void)_setRampInOutInfo:(id)info;
- (void)_setSuppressesVideoLayers:(BOOL)layers;
- (void)_setSyncLayersOnFigPlaybackItem;
- (void)_setTemplatePlayerItem:(id)item;
- (void)_setTimeJumpedNotificationIncludesExtendedDiagnosticPayload:(BOOL)payload;
- (void)_setTimedMetadata:(id)metadata;
- (void)_setURL:(id)l;
- (void)_setVideoCompositionColorPrimaries:(id)primaries;
- (void)_setVideoCompositionColorTransferFunction:(id)function;
- (void)_setVideoCompositionColorYCbCrMatrix:(id)matrix;
- (void)_setVideoCompositionFrameDuration:(id *)duration;
- (void)_setVideoCompositionHDRDisplayMetadataPolicy:(id)policy;
- (void)_setVideoCompositionInstructions:(id)instructions;
- (void)_setVideoCompositionRenderScale:(float)scale;
- (void)_setVideoCompositionRenderSize:(CGSize)size;
- (void)_setVideoCompositionSourceSampleDataTrackIDs:(id)ds;
- (void)_setVideoCompositionSourceTrackIDForFrameTiming:(int)timing;
- (void)_setVideoCompositor:(void *)compositor;
- (void)_unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:(int)d finished:(BOOL)finished;
- (void)_updateAdjustCompressionProfileOnFigPlaybackItem;
- (void)_updateAdjustTargetLevelOnFigPlaybackItem;
- (void)_updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem;
- (void)_updateAggressivelyCachesVideoFramesOnFigPlaybackItem;
- (void)_updateAllowedAudioSpatializationFormats;
- (void)_updateAllowedAudioSpatializationFormatsFromFigItem;
- (void)_updateAlwaysMonitorsPlayabilityOnFigPlaybackItem;
- (void)_updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem;
- (void)_updateAudioSpatializationAllowed;
- (void)_updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem;
- (void)_updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem;
- (void)_updateBlendsVideoFramesOnFigPlaybackItem;
- (void)_updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload:(id)payload updateStatusToReadyToPlay:(BOOL)play;
- (void)_updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem;
- (void)_updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem;
- (void)_updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem;
- (void)_updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem;
- (void)_updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem;
- (void)_updateEligibilityForDSPBasedEnhancedDialogue:(id)dialogue;
- (void)_updateFigTimePitchAlgorithmOnFigPlaybackItem;
- (void)_updateForwardPlaybackEndTimeOnFigPlaybackItem;
- (void)_updateIFramePrefetchTargetDimensionsOnFigPlaybackItem;
- (void)_updateImageQueueInterpolationCurveOnFigPlaybackItem;
- (void)_updateItemIdentifierForCoordinatedPlayback;
- (void)_updateLegibleSuppressionOnFigPlaybackItem:(OpaqueFigPlaybackItem *)item basedOnOutputs:(id)outputs;
- (void)_updateLimitReadAheadOnFigPlaybackItem;
- (void)_updateLoopTimeRangeOnFigPlaybackItem;
- (void)_updateLoudnessInfoOnFigPlaybackItem;
- (void)_updateMaximumForwardBufferDurationOnFigPlaybackItem;
- (void)_updateMaximumTrailingBufferDurationOnFigPlaybackItem;
- (void)_updateMediaKindOnFigPlaybackItem;
- (void)_updateMediaPresentationCharacteristicsOnFigPlaybackItem;
- (void)_updateMediaPresentationLanguagesOnFigPlaybackItem;
- (void)_updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem;
- (void)_updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem;
- (void)_updateOverlappedPlaybackEndTimeOnFigPlaybackItem;
- (void)_updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem;
- (void)_updatePlaybackPropertiesOnFigPlaybackItem;
- (void)_updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem;
- (void)_updatePreferredMaximumAudioSampleRateOnFigPlaybackItem;
- (void)_updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem;
- (void)_updatePreferredMaximumResolutionOnFigPlaybackItem;
- (void)_updatePreferredMinimumResolutionOnFigPlaybackItem;
- (void)_updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem;
- (void)_updatePreferredPeakBitRateOnFigPlaybackItem;
- (void)_updatePreservesTimeOffsetFromLive;
- (void)_updateRTCReportingCategoryOnFigPlaybackItem;
- (void)_updateRTCReportingFlagsOnFigPlaybackItem;
- (void)_updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem;
- (void)_updateReportingValuesOnFigPlaybackItem;
- (void)_updateReportingValuesProperty:(id)property forKey:(id)key;
- (void)_updateRestrictionsOnFigPlaybackItem;
- (void)_updateRestrictsAutomaticMediaSelectionToAvailableOfflineOptions;
- (void)_updateReversePlaybackEndTimeOnFigPlaybackItem;
- (void)_updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem;
- (void)_updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem;
- (void)_updateSnapTimeToPausePlaybackOnFigPlaybackItem;
- (void)_updateSoundCheckVolumeNormalizationOnFigPlaybackItem;
- (void)_updateSpeedRampDataOnFigPlaybackItem;
- (void)_updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem;
- (void)_updateStartsOnFirstEligibleVariantOnFigPlaybackItem;
- (void)_updateTaggedMetadataArray:(id)array;
- (void)_updateTextHighlightArrayOnFigPlaybackItem;
- (void)_updateTextStyleRulesOnFigPlaybackItem;
- (void)_updateTimeToPauseBufferingOnFigPlaybackItem;
- (void)_updateTimeToPausePlaybackOnFigPlaybackItem;
- (void)_updateTimebase;
- (void)_updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem;
- (void)_updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem;
- (void)_updateVariantPreferencesOnFigPlaybackItem;
- (void)_updateVideoApertureModeOnFigPlaybackItem;
- (void)_updateVideoEnhancementModeOnFigPlaybackItem;
- (void)_updateVideoSuppressionOnFigPlaybackItem:(OpaqueFigPlaybackItem *)item basedOnOutputs:(id)outputs;
- (void)_updateVolumeAdjustmentOnFigPlaybackItem;
- (void)_updateWillNeverSeekBackwardsHintOnFigPlaybackItem;
- (void)addMediaDataCollector:(AVPlayerItemMediaDataCollector *)collector;
- (void)addMediaDataCollector:(id)collector locked:(BOOL)locked;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)addOutput:(AVPlayerItemOutput *)output;
- (void)cancelPendingSeeks;
- (void)dealloc;
- (void)didChangeValueForKey:(id)key;
- (void)dispatchIVarWrite:(BOOL)write locked:(BOOL)locked block:(id)block;
- (void)getEventTimelineWithCompletionHandler:(id)handler;
- (void)processWaitingMetricEventTimelineCompletionHandlers;
- (void)removeMediaDataCollector:(AVPlayerItemMediaDataCollector *)collector;
- (void)removeMediaDataCollector:(id)collector locked:(BOOL)locked;
- (void)removeOutput:(AVPlayerItemOutput *)output;
- (void)resetAudioBufferedAhead;
- (void)seekToTime:(CMTime *)time completionHandler:(void *)completionHandler;
- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter;
- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter completionHandler:(void *)completionHandler;
- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after seekID:(int)d;
- (void)selectMediaOption:(AVMediaSelectionOption *)mediaSelectionOption inMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup;
- (void)selectMediaPresentationLanguage:(id)language forMediaSelectionGroup:(id)group;
- (void)selectMediaPresentationSetting:(id)setting forMediaSelectionGroup:(id)group;
- (void)setAVKitData:(id)data;
- (void)setAdjustCompressionProfile:(unsigned int)profile;
- (void)setAdjustTargetLevel:(float)level;
- (void)setAdvanceTimeForOverlappedPlayback:(id *)playback;
- (void)setAggressivelyCachesVideoFrames:(BOOL)frames;
- (void)setAllowProgressiveResume:(BOOL)resume;
- (void)setAllowProgressiveStartup:(BOOL)startup;
- (void)setAllowProgressiveSwitchUp:(BOOL)up;
- (void)setAllowedAudioSpatializationFormats:(AVAudioSpatializationFormats)allowedAudioSpatializationFormats;
- (void)setAllowsExtendedReadAhead:(BOOL)ahead;
- (void)setAlwaysMonitorsPlayability:(BOOL)playability;
- (void)setAppliesPerFrameHDRDisplayMetadata:(BOOL)appliesPerFrameHDRDisplayMetadata;
- (void)setAudioMix:(AVAudioMix *)audioMix;
- (void)setAudioSpatializationAllowed:(BOOL)audioSpatializationAllowed;
- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm;
- (void)setAutoSwitchAtmosStreamVariants:(BOOL)variants;
- (void)setAutomaticallyHandlesInterstitialEvents:(BOOL)automaticallyHandlesInterstitialEvents;
- (void)setAutomaticallyPreservesTimeOffsetFromLive:(BOOL)automaticallyPreservesTimeOffsetFromLive;
- (void)setBlendsVideoFrames:(BOOL)frames;
- (void)setCanUseNetworkResourcesForLiveStreamingWhilePaused:(BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused;
- (void)setConfiguredTimeOffsetFromLive:(CMTime *)configuredTimeOffsetFromLive;
- (void)setContinuesPlayingDuringPrerollForRateChange:(BOOL)change;
- (void)setContinuesPlayingDuringPrerollForSeek:(BOOL)seek;
- (void)setDecodesAllFramesDuringOrdinaryPlayback:(BOOL)playback;
- (void)setDelegate:(id)delegate;
- (void)setForwardPlaybackEndTime:(CMTime *)forwardPlaybackEndTime;
- (void)setGaplessInfo:(id)info;
- (void)setHapticPlaybackLocality:(id)locality;
- (void)setIFramePrefetchTargetDimensions:(CGSize)dimensions;
- (void)setImageQueueInterpolationCurve:(id)curve;
- (void)setInitialDate:(id)date;
- (void)setInitialEstimatedDate:(id)date;
- (void)setLimitReadAhead:(BOOL)ahead;
- (void)setLoopTimeRange:(id *)range;
- (void)setLoudnessInfo:(id)info;
- (void)setMaximumForwardBufferDuration:(id *)duration;
- (void)setMaximumTrailingBufferDuration:(id *)duration;
- (void)setMediaCharacteristicsOfPreferredCustomMediaSelectionSchemes:(id)schemes;
- (void)setMediaKind:(id)kind;
- (void)setMinimumIntervalForIFrameOnlyPlayback:(id *)playback;
- (void)setNonForcedSubtitleDisplayEnabled:(BOOL)enabled;
- (void)setOverlappedPlaybackEndTime:(id *)time;
- (void)setPlayHapticTracks:(BOOL)tracks;
- (void)setPlaybackLikelyToKeepUpTrigger:(int64_t)trigger;
- (void)setPreferredCustomMediaSelectionSchemes:(id)schemes;
- (void)setPreferredForwardBufferDuration:(NSTimeInterval)preferredForwardBufferDuration;
- (void)setPreferredMaximumAudioSampleRate:(double)rate;
- (void)setPreferredMaximumResolution:(CGSize)preferredMaximumResolution;
- (void)setPreferredMaximumResolutionForExpensiveNetworks:(CGSize)preferredMaximumResolutionForExpensiveNetworks;
- (void)setPreferredMinimumResolution:(CGSize)resolution;
- (void)setPreferredPeakBitRate:(double)preferredPeakBitRate;
- (void)setPreferredPeakBitRateForExpensiveNetworks:(double)preferredPeakBitRateForExpensiveNetworks;
- (void)setPrefersOfflinePlayableVariants:(BOOL)variants;
- (void)setRTCReportingFlags:(unsigned int)flags;
- (void)setRefreshesClosedCaptionsImmediatelyAfterSeeking:(BOOL)seeking;
- (void)setReportingCategory:(id)category;
- (void)setReportingValueWithNumber:(id)number forKey:(id)key;
- (void)setReportingValueWithString:(id)string forKey:(id)key;
- (void)setRequiresAccessLog:(BOOL)log;
- (void)setRestrictions:(unint64_t)restrictions;
- (void)setRestrictsAutomaticMediaSelectionToAvailableOfflineOptions:(BOOL)options;
- (void)setReversePlaybackEndTime:(CMTime *)reversePlaybackEndTime;
- (void)setReversesMoreVideoFramesInMemory:(BOOL)memory;
- (void)setSavesDownloadedDataToDiskWhenDone:(BOOL)done;
- (void)setSeekingWaitsForVideoCompositionRendering:(BOOL)seekingWaitsForVideoCompositionRendering;
- (void)setServiceIdentifier:(id)identifier;
- (void)setSnapTimeToPausePlayback:(unsigned __int8)playback;
- (void)setSoundCheckVolumeNormalization:(float)normalization;
- (void)setSpeedRamp:(id)ramp;
- (void)setSpeedThresholdForIFrameOnlyPlayback:(float)playback;
- (void)setStartsOnFirstEligibleVariant:(BOOL)startsOnFirstEligibleVariant;
- (void)setSupplementalMetadata:(id)metadata;
- (void)setSuppressesAudioOnlyVariants:(BOOL)variants;
- (void)setTextHighlightArray:(id)array;
- (void)setTextStyleRules:(NSArray *)textStyleRules;
- (void)setTimeToPauseBuffering:(id *)buffering;
- (void)setTimeToPausePlayback:(id *)playback;
- (void)setUsesIFrameOnlyPlaybackForHighRateScaledEdits:(BOOL)edits;
- (void)setUsesMinimalLatencyForVideoCompositionRendering:(BOOL)rendering;
- (void)setVariantIndex:(int64_t)index;
- (void)setVariantPreferences:(AVVariantPreferences)variantPreferences;
- (void)setVideoApertureMode:(AVVideoApertureMode)videoApertureMode;
- (void)setVideoComposition:(AVVideoComposition *)videoComposition;
- (void)setVideoEnhancementMode:(id)mode;
- (void)setVolumeAdjustment:(float)adjustment;
- (void)setWillNeverSeekBackwardsHint:(BOOL)hint;
- (void)stepByCount:(NSInteger)stepCount;
- (void)willChangeValueForKey:(id)key;
@end

@implementation AVPlayerItem

- (BOOL)_suppressesVideoLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayerItem__suppressesVideoLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_copyStateDispatchQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem__copyStateDispatchQueue__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __39__AVPlayerItem__copyStateDispatchQueue__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 32) + 8) + 136);
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (v1)
  {
    dispatch_retain(v1);
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();
    fig_note_initialize_category_with_default_work();
    if (dyld_program_sdk_at_least())
    {
      sRaiseExceptionWhenSeekingToANonNumericTime = 1;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      sOKToBlockWhenGettingValuesOfProperties = 1;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      sInvokeOverrideOfInitFromDesignatedInitializer = 1;
      sCanUseExtraNetworkingByDefault = 1;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      sConstrainsScalabilityToLosslessVariantsAndSampleRatesByDefault = 1;
    }
  }
}

- (void)_removeFAListeners
{
  _figAsset = [(AVAsset *)self->_playerItem->asset _figAsset];
  if (_figAsset)
  {
    v4 = _figAsset;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItem *)self _weakReference];
    [v5 removeListenerWithWeakReference:_weakReference callback:avplayeritem_figassetNotificationCallback name:*MEMORY[0x1E6970EB8] object:v4];
    CFRelease(_weakReference);

    CFRelease(v4);
  }
}

- (void)_addFAListeners
{
  _figAsset = [(AVAsset *)self->_playerItem->asset _figAsset];
  if (_figAsset)
  {
    v4 = _figAsset;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItem *)self _weakReference];
    CFRetain(_weakReference);
    CFRetain(v4);
    v7 = *MEMORY[0x1E6970EB8];

    [v5 addListenerWithWeakReference:_weakReference callback:avplayeritem_figassetNotificationCallback name:v7 object:v4 flags:0];
  }
}

- (BOOL)_isReadyForInspectionOfDuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayerItem__isReadyForInspectionOfDuration__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_nameForLogging
{
  playerItem = self->_playerItem;
  if (!playerItem)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  v4 = *&playerItem->loopTimeRange.duration.timescale;
  if (!v4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  return [v4 name];
}

- (BOOL)_isReadyForInspectionOfPresentationSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem__isReadyForInspectionOfPresentationSize__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (AVAsset)asset
{
  v2 = self->_playerItem->asset;

  return v2;
}

void __31__AVPlayerItem__updateTimebase__block_invoke_2(uint64_t a1)
{
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 loopTimeRange];
  }

  v30 = 0;
  if (*(a1 + 40) && (BYTE12(v31) & 1) != 0 && (BYTE4(v33) & 1) != 0 && !*(&v33 + 1) && (*(&v32 + 1) & 0x8000000000000000) == 0)
  {
    *timebaseOut = v31;
    v28 = v32;
    v29 = v33;
    CMTimebaseCreateLoopingTimebase();
  }

  [*(a1 + 32) willChangeValueForKey:@"timebase"];
  v25[0] = MEMORY[0x1E69E9820];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 32) + 8) + 16);
  v25[1] = 3221225472;
  v25[2] = __31__AVPlayerItem__updateTimebase__block_invoke_3;
  v25[3] = &unk_1E7460FA8;
  v26 = v3;
  av_readwrite_dispatch_queue_write(v4, v25);
  if (!*(a1 + 40))
  {
    timebaseOut[0] = 0;
    v8 = *MEMORY[0x1E695E480];
    HostTimeClock = CMClockGetHostTimeClock();
    CMTimebaseCreateWithSourceClock(v8, HostTimeClock, timebaseOut);
    FigReadOnlyTimebaseSetTargetTimebase();
    FigReadOnlyTimebaseSetTargetTimebase();
    if (timebaseOut[0])
    {
      CFRelease(timebaseOut[0]);
    }

    [*(a1 + 32) _removeFoldedTBListeners];
    v10 = *(a1 + 32);
    v6 = *(*(v10 + 8) + 16);
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __31__AVPlayerItem__updateTimebase__block_invoke_6;
    v17 = &unk_1E7460C00;
    v18 = v10;
    v7 = &v14;
    goto LABEL_15;
  }

  FigReadOnlyTimebaseSetTargetTimebase();
  if ((BYTE12(v31) & 1) == 0 || (BYTE4(v33) & 1) == 0 || *(&v33 + 1) || (*(&v32 + 1) & 0x8000000000000000) != 0)
  {
    FigReadOnlyTimebaseSetTargetTimebase();
    [*(a1 + 32) _removeFoldedTBListeners];
    v5 = *(a1 + 32);
    v6 = *(*(v5 + 8) + 16);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __31__AVPlayerItem__updateTimebase__block_invoke_5;
    v22 = &unk_1E7460C00;
    v23 = v5;
    v7 = &v19;
LABEL_15:
    av_readwrite_dispatch_queue_write(v6, v7);
    goto LABEL_16;
  }

  [*(a1 + 32) _removeFoldedTBListeners];
  v12 = *(a1 + 32);
  v13 = *(*(v12 + 8) + 16);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __31__AVPlayerItem__updateTimebase__block_invoke_4;
  v24[3] = &unk_1E7460FA8;
  v24[4] = v12;
  v24[5] = v30;
  av_readwrite_dispatch_queue_write(v13, v24);
  if (v30)
  {
    [*(a1 + 32) _addFoldedTBListeners];
  }

  FigReadOnlyTimebaseSetTargetTimebase();
LABEL_16:
  [*(a1 + 32) didChangeValueForKey:{@"timebase", v14, v15, v16, v17, v18, v19, v20, v21, v22, v23}];
  v11 = *(a1 + 48);
  if (v11)
  {
    CFRelease(v11);
  }
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)loopTimeRange
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x5010000000;
  v13 = &unk_19626E495;
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v14 = *MEMORY[0x1E6960C98];
  v15 = v4;
  v16 = *(MEMORY[0x1E6960C98] + 32);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__AVPlayerItem_loopTimeRange__block_invoke;
  v9[3] = &unk_1E7460E68;
  v9[4] = self;
  v9[5] = &v10;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v9);
  v6 = v11;
  v7 = *(v11 + 3);
  *&retstr->var0.var0 = *(v11 + 2);
  *&retstr->var0.var3 = v7;
  *&retstr->var1.var1 = *(v6 + 4);
  _Block_object_dispose(&v10, 8);
  return result;
}

__n128 __29__AVPlayerItem_loopTimeRange__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 1056);
  v4 = *(v2 + 1088);
  *(v1 + 48) = *(v2 + 1072);
  *(v1 + 64) = v4;
  *(v1 + 32) = result;
  return result;
}

void __31__AVPlayerItem__updateTimebase__block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 224);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 224) = *(a1 + 40);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_duration
{
  if (sOKToBlockWhenGettingValuesOfProperties == 1)
  {
    v5 = MEMORY[0x1E6960CC0];
  }

  else
  {
    v5 = MEMORY[0x1E6960C68];
  }

  *&retstr->var0 = *v5;
  retstr->var3 = *(v5 + 16);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  v7 = _copyFigPlaybackItem;
  if (sOKToBlockWhenGettingValuesOfProperties != 1)
  {
    if (![(AVPlayerItem *)self _isReadyForInspectionOfDuration])
    {
      result = -[AVAsset loadValuesAsynchronouslyForKeys:completionHandler:](self->_playerItem->asset, "loadValuesAsynchronouslyForKeys:completionHandler:", [MEMORY[0x1E695DEC8] arrayWithObject:@"duration"], &__block_literal_global_570);
LABEL_24:
      if (!v7)
      {
        return result;
      }

      goto LABEL_25;
    }

    if (v7 && (v10 = *(*(CMBaseObjectGetVTable() + 16) + 16)) != 0 && !v10(v7, retstr))
    {
      if ((~retstr->var2 & 5) != 0 || !self || ([(AVPlayerItem *)self loopTimeRange], (v15 & 1) == 0) || ([(AVPlayerItem *)self loopTimeRange], (v14 & 1) == 0) || ([(AVPlayerItem *)self loopTimeRange], v13) || ([(AVPlayerItem *)self loopTimeRange], v12 < 0))
      {
LABEL_25:
        CFRelease(v7);
        return result;
      }

      result = self->_playerItem->asset;
      if (!result)
      {
        v16 = 0uLL;
        v17 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      result = self->_playerItem->asset;
      if (!result)
      {
        goto LABEL_24;
      }
    }

    result = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result duration];
LABEL_22:
    *&retstr->var0 = v16;
    retstr->var3 = v17;
    goto LABEL_24;
  }

  if (_copyFigPlaybackItem)
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      if (!v8(v7, retstr) && (~retstr->var2 & 5) == 0)
      {
        if (self)
        {
          [(AVPlayerItem *)self loopTimeRange];
          if (v21)
          {
            [(AVPlayerItem *)self loopTimeRange];
            if (v20)
            {
              [(AVPlayerItem *)self loopTimeRange];
              if (!v19)
              {
                [(AVPlayerItem *)self loopTimeRange];
                if ((v18 & 0x8000000000000000) == 0)
                {
                  asset = self->_playerItem->asset;
                  if (asset)
                  {
                    [(AVAsset *)asset duration];
                    *&retstr->var0 = v16;
                    retstr->var3 = v17;
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_25;
  }

  result = self->_playerItem->asset;
  if (result)
  {

    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result duration];
  }

  return result;
}

void __31__AVPlayerItem__updateTimebase__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2[1] + 136))
  {
    v3 = [v2 _copyFigPlaybackItem];
    v4 = [objc_opt_class() _copyTimebaseFromFigPlaybackItem:v3];
    v5 = *(a1 + 32);
    v6 = *(*(v5 + 8) + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__AVPlayerItem__updateTimebase__block_invoke_2;
    block[3] = &unk_1E74625B0;
    block[4] = v5;
    block[5] = v4;
    block[6] = v3;
    dispatch_async(v6, block);
  }
}

- (void)_informObserversAboutAvailabilityOfCurrentMediaSelection
{
  if ([(AVPlayerItem *)self _isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection])
  {
    currentMediaSelection = [(AVPlayerItem *)self currentMediaSelection];

    [(AVPlayerItem *)self _setCurrentMediaSelection:currentMediaSelection];
  }
}

- (BOOL)_isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __106__AVPlayerItem__isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __106__AVPlayerItem__isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 257) == 1)
  {
    v2 = *(v1 + 235);
  }

  else
  {
    v2 = 0;
  }

  *(*(*(result + 40) + 8) + 24) = v2 & 1;
  return result;
}

void __67__AVPlayerItem__updateAllowedAudioSpatializationFormatsFromFigItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (v2)
  {
    v3 = v2;
    v13 = 0;
    BOOLean = 0;
    v4 = *MEMORY[0x1E695E480];
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && (v6(FigBaseObject, *MEMORY[0x1E6972828], v4, &BOOLean), BOOLean))
    {
      v7 = 4 * (CFBooleanGetValue(BOOLean) != 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = FigPlaybackItemGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v9)
    {
      v9(v8, *MEMORY[0x1E6972B10], v4, &v13);
      if (v13)
      {
        if (CFBooleanGetValue(v13))
        {
          v7 |= 3uLL;
        }
      }
    }

    if (BOOLean)
    {
      CFRelease(BOOLean);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    [*(*(*(a1 + 32) + 8) + 112) willChangeValueFor:@"allowedAudioSpatializationFormats" on:?];
    v10 = *(a1 + 32);
    v11 = *(*(v10 + 8) + 16);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__AVPlayerItem__updateAllowedAudioSpatializationFormatsFromFigItem__block_invoke_2;
    v12[3] = &unk_1E7460FA8;
    v12[4] = v10;
    v12[5] = v7;
    av_readwrite_dispatch_queue_write(v11, v12);
    [*(*(*(a1 + 32) + 8) + 112) didChangeValueFor:@"allowedAudioSpatializationFormats" on:?];
    CFRelease(v3);
  }
}

uint64_t __40__AVPlayerItem__tracksFromAssetTrackIDs__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 32) + 8) + 120) tracks];
  v3 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = +[AVPlayerItemTrack playerItemTrackWithFigPlaybackItem:readyForInspection:trackID:asset:playerItem:](AVPlayerItemTrack, "playerItemTrackWithFigPlaybackItem:readyForInspection:trackID:asset:playerItem:", *(*(*(a1 + 32) + 8) + 128), *(*(*(a1 + 32) + 8) + 257), [*(*(&v14 + 1) + 8 * i) trackID], *(*(*(a1 + 32) + 8) + 120));
        if (v8)
        {
          v9 = v8;
          v10 = [*(*(*(a1 + 32) + 8) + 144) indexOfObject:v8];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = v3;
            v12 = v9;
          }

          else
          {
            v12 = [*(*(*(a1 + 32) + 8) + 144) objectAtIndex:v10];
            v11 = v3;
          }

          [v11 addObject:v12];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  *(*(*(a1 + 32) + 8) + 144) = [v3 copy];
  result = [*(*(*(a1 + 32) + 8) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)tracks
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:149];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"tracks" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__AVPlayerItem_tracks__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v10[5];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v6 = array;
  _Block_object_dispose(&v9, 8);
  AVTelemetryIntervalEnd(&v15);
  return v6;
}

uint64_t __22__AVPlayerItem_tracks__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 152) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_informObserversAboutAvailabilityOfPresentationSize
{
  figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figPlaybackItemAccessorQueue, block);
}

- (BOOL)_isReadyForBasicInspection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayerItem__isReadyForBasicInspection__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_invokeReadyForEnqueueingHandlers
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_playerItem->mediaOptionsSelectedByClient count])
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_playerItem->mediaOptionsSelectedByClient];
    [(NSMutableDictionary *)self->_playerItem->mediaOptionsSelectedByClient removeAllObjects];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

void __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _presentationSize];
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 8) + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke_2;
  block[3] = &unk_1E74625B0;
  block[4] = v2;
  block[5] = v4;
  block[6] = v5;
  dispatch_async(v3, block);
}

- (CGSize)_presentationSize
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v6 = _copyFigPlaybackItem;
    if ([(AVPlayerItem *)self _isReadyForInspectionOfPresentationSize]|| sOKToBlockWhenGettingValuesOfProperties == 1)
    {
      v10 = 0;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7 && !v7(v6, &v10 + 4, &v10))
      {
        v4 = *&v10;
        v3 = *(&v10 + 1);
      }
    }

    CFRelease(v6);
  }

  v8 = v3;
  v9 = v4;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)isPlaybackBufferFull
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:159];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"playbackBufferFull" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVPlayerItem_isPlaybackBufferFull__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (BOOL)isPlaybackBufferEmpty
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:160];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"playbackBufferEmpty" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AVPlayerItem_isPlaybackBufferEmpty__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)_markAsReadyForBasicInspection
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__AVPlayerItem__markAsReadyForBasicInspection__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)_markAsReadyForInspectionOfDuration
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVPlayerItem__markAsReadyForInspectionOfDuration__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)_markAsReadyForInspectionOfPresentationSize
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__AVPlayerItem__markAsReadyForInspectionOfPresentationSize__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (CGSize)presentationSize
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:151];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"presentationSize" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_19626E495;
  v13 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVPlayerItem_presentationSize__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  AVTelemetryIntervalEnd(&v14);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __32__AVPlayerItem_presentationSize__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 992);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (BOOL)isNonForcedSubtitleDisplayEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_isNonForcedSubtitleDisplayEnabled__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setAssetToAssetWithFigPlaybackItemIfAppropriate
{
  if (+[AVPlayerItem _forStreamingItemsVendAssetWithFigPlaybackItem])
  {
    if (!self->_playerItem->allowedAudioSpatializationFormatsWasSet)
    {
      v5 = 0;
      v6 = &v5;
      v7 = 0x3052000000;
      v8 = __Block_byref_object_copy__8;
      v9 = __Block_byref_object_dispose__8;
      v10 = 0;
      [(AVPlayerItem *)self willChangeValueForKey:@"asset"];
      ivarAccessQueue = self->_playerItem->ivarAccessQueue;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __64__AVPlayerItem__setAssetToAssetWithFigPlaybackItemIfAppropriate__block_invoke;
      v4[3] = &unk_1E7460EE0;
      v4[4] = self;
      v4[5] = &v5;
      av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
      [(AVPlayerItem *)self _setAsset:v6[5]];
      [(AVPlayerItem *)self didChangeValueForKey:@"asset"];
      self->_playerItem->allowedAudioSpatializationFormatsWasSet = 1;

      _Block_object_dispose(&v5, 8);
    }
  }
}

- (void)_updateTimebase
{
  figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AVPlayerItem__updateTimebase__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figPlaybackItemAccessorQueue, block);
}

- (AVPlayerItemStatus)status
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:147];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"status" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__AVPlayerItem_status__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

- (void)_removeFoldedTBListeners
{
  playerItem = self->_playerItem;
  if (playerItem)
  {
    if (playerItem->ivarAccessQueue)
    {
      _copyFoldedTimebase = [(AVPlayerItem *)self _copyFoldedTimebase];
      if (_copyFoldedTimebase)
      {
        v5 = _copyFoldedTimebase;
        CFRelease(_copyFoldedTimebase);
        v6 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
        _weakReference = [(AVPlayerItem *)self _weakReference];
        [v6 removeListenerWithWeakReference:_weakReference callback:cmTimebaseNotificationCallback_TimeJumped name:*MEMORY[0x1E6960CE8] object:v5];
        CFRelease(_weakReference);

        CFRelease(v5);
      }
    }
  }
}

- (OpaqueCMTimebase)_copyFoldedTimebase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__AVPlayerItem__copyFoldedTimebase__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __35__AVPlayerItem__copyFoldedTimebase__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 216);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __31__AVPlayerItem__updateTimebase__block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 216);
  if (v3)
  {
    CFRelease(v3);
    *(*(*(a1 + 32) + 8) + 216) = 0;
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 216) = *(a1 + 40);
}

- (void)_addFoldedTBListeners
{
  _copyFoldedTimebase = [(AVPlayerItem *)self _copyFoldedTimebase];
  if (_copyFoldedTimebase)
  {
    v4 = _copyFoldedTimebase;
    v5 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItem *)self _weakReference];
    CFRetain(_weakReference);
    v7 = *MEMORY[0x1E6960CE8];

    [v5 addListenerWithWeakReference:_weakReference callback:cmTimebaseNotificationCallback_TimeJumped name:v7 object:v4 flags:0];
  }
}

+ (AVPlayerItem)playerItemWithURL:(NSURL *)URL
{
  v3 = [[self alloc] initWithURL:URL];

  return v3;
}

+ (AVPlayerItem)playerItemWithAsset:(AVAsset *)asset
{
  v3 = [[self alloc] initWithAsset:asset];

  return v3;
}

+ (AVPlayerItem)playerItemWithAsset:(AVAsset *)asset automaticallyLoadedAssetKeys:(NSArray *)automaticallyLoadedAssetKeys
{
  v4 = [[self alloc] initWithAsset:asset automaticallyLoadedAssetKeys:automaticallyLoadedAssetKeys];

  return v4;
}

- (AVPlayerItem)init
{
  if (self->_playerItem)
  {
    v3.receiver = self;
    v3.super_class = AVPlayerItem;
    return [(AVPlayerItem *)&v3 init];
  }

  else
  {

    return 0;
  }
}

- (AVPlayerItem)initWithURL:(NSURL *)URL
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:84];
  if (URL)
  {
    v5 = [(AVPlayerItem *)self initWithAsset:[AVAsset assetWithURL:URL]];
    v6 = v5;
    if (v5)
    {
      v5->_playerItem->wasInitializedWithURL = 1;
    }
  }

  else
  {

    v6 = 0;
  }

  AVTelemetryIntervalEnd(&v8);
  return v6;
}

- (AVPlayerItem)initWithAsset:(AVAsset *)asset
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:0];
  AVTelemetryGenerateID();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (sOKToBlockWhenGettingValuesOfProperties)
  {
    v6 = 0;
  }

  else
  {
    v7 = isKindOfClass;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() | v7))
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"duration", @"availableMediaCharacteristicsWithMediaSelectionOptions", 0}];
    }

    else
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:@"duration"];
    }

    v6 = v8;
  }

  v9 = [(AVPlayerItem *)self initWithAsset:asset automaticallyLoadedAssetKeys:v6];
  AVTelemetryIntervalEnd(&v11);
  return v9;
}

+ (BOOL)_hasOverrideForSelector:(SEL)selector
{
  InstanceMethod = class_getInstanceMethod(self, selector);
  v5 = objc_opt_self();
  return InstanceMethod != class_getInstanceMethod(v5, selector);
}

- (AVPlayerItem)initWithAsset:(AVAsset *)asset automaticallyLoadedAssetKeys:(NSArray *)automaticallyLoadedAssetKeys
{
  v46 = [[AVTelemetryInterval alloc] initAndStartWith:1];
  AVTelemetryGenerateID();
  v8 = objc_alloc_init(AVPlayerItemInternal);
  self->_playerItem = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  CFRetain(v8);
  if (sInvokeOverrideOfInitFromDesignatedInitializer == 1)
  {
    if ([objc_opt_class() _hasOverrideForSelector:sel_init])
    {
      self = [(AVPlayerItem *)self init];
      if (!self)
      {
        goto LABEL_13;
      }
    }
  }

  if (!asset)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (([objc_opt_class() supportsPlayerItems] & 1) == 0)
  {
    selfCopy = self;
    v35 = MEMORY[0x1E695DF30];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v43 = [v35 exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"%@ does not support playback via AVPlayer", v38, v39, v40, v41, v42, v37), 0}];
    objc_exception_throw(v43);
  }

  self->_playerItem->weakReference = [[AVWeakReference alloc] initWithReferencedObject:self];
  self->_playerItem->timeJumpedNotificationIncludesExtendedDiagnosticPayload = 1;
  v9 = &self->_playerItem->timeJumpedNotificationIncludesExtendedDiagnosticPayload + 4;
  v10 = MEMORY[0x1E6960CC0];
  *v9 = *MEMORY[0x1E6960CC0];
  *(v9 + 2) = *(v10 + 16);
  BYTE4(self->_playerItem->initialTime.value) = 1;
  playerItem = self->_playerItem;
  v12 = MEMORY[0x1E6960C68];
  *&playerItem->duration.timescale = *(MEMORY[0x1E6960C68] + 16);
  *&playerItem->recommendedTimeOffsetFromLive.epoch = *v12;
  self->_playerItem->initialTime.timescale = AVPlayerItemGetFigPlayerSetTimeFlagsForTolerances(MEMORY[0x1E6960C88], MEMORY[0x1E6960C88]);
  v13 = self->_playerItem;
  v45 = *(&v13->timeJumpedNotificationIncludesExtendedDiagnosticPayload + 4);
  AVPlayerItemGetFigPlayerSnapTimesForTimeAndTolerances(&v45, MEMORY[0x1E6960C88], MEMORY[0x1E6960C88], &v13->initialTime.flags, (&v13->initialMinSnapTime.value + 4));
  *&self->_playerItem->preferredMinimumResolution.height = *MEMORY[0x1E695F060];
  LOBYTE(self->_playerItem->presentationSize.width) = 1;
  BYTE2(self->_playerItem->initialDate) = 1;
  v14 = self->_playerItem;
  v15 = MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v14->forwardPlaybackEndTime.epoch = v16;
  v17 = *v15;
  *&v14->forwardPlaybackEndTime.value = *v15;
  v18 = self->_playerItem;
  v18->reversePlaybackEndTime.epoch = v16;
  *&v18->reversePlaybackEndTime.value = v17;
  v19 = self->_playerItem;
  v19->timeToPauseBuffering.epoch = v16;
  *&v19->timeToPauseBuffering.value = v17;
  v20 = self->_playerItem;
  v20->timeToPausePlayback.epoch = v16;
  *&v20->timeToPausePlayback.value = v17;
  BYTE5(self->_playerItem->overlappedPlaybackEndTime.epoch) = 0;
  v21 = self->_playerItem;
  v21->advanceTimeForOverlappedPlayback.epoch = v16;
  *&v21->advanceTimeForOverlappedPlayback.value = v17;
  self->_playerItem->advanceTimeForOverlappedPlaybackWasSet = 0;
  v22 = &self->_playerItem->advanceTimeForOverlappedPlaybackWasSet + 4;
  *v22 = v17;
  *(v22 + 2) = v16;
  BYTE4(self->_playerItem->overlappedPlaybackEndTime.epoch) = 0;
  BYTE6(self->_playerItem->overlappedPlaybackEndTime.epoch) = 0;
  v23 = self->_playerItem;
  *&v23->overlappedPlaybackEndTimeWasSet = v17;
  *&v23->configuredTimeOffsetFromLive.timescale = v16;
  v24 = self->_playerItem;
  v44 = v17;
  *&v24->configuredTimeOffsetFromLive.epoch = v17;
  *&v24->recommendedTimeOffsetFromLive.timescale = v16;
  BYTE6(self->_playerItem->mediaKind) = 1;
  HIBYTE(self->_playerItem->mediaKind) = 1;
  v25 = self->_playerItem;
  CMTimeMake(&v45, 1, 10);
  *&v25->decodesAllFramesDuringOrdinaryPlayback = v45;
  LODWORD(self->_playerItem->minimumIntervalForIFrameOnlyPlayback.epoch) = 0x40000000;
  LOBYTE(self->_playerItem->figAudioTimePitchAlgorithm) = sCanUseExtraNetworkingByDefault;
  BYTE3(self->_playerItem->presentationSize.height) = 1;
  *(&self->_playerItem->preferredMaximumAudioSampleRate + 3) = 1;
  HIDWORD(self->_playerItem->coordinationIdentifier) = -1;
  self->_playerItem->rampInOutInfo = -1;
  LODWORD(self->_playerItem->preferredPeakBitRateForExpensiveNetworks) = -1;
  BYTE3(self->_playerItem->initialDate) = 1;
  v26 = 3;
  if (!sConstrainsScalabilityToLosslessVariantsAndSampleRatesByDefault)
  {
    v26 = 0;
  }

  self->_playerItem->initialEstimatedDate = v26;
  playerItem_createDefaultProxyTimebase();
  playerItem_createDefaultProxyTimebase();
  LODWORD(self->_playerItem->gaplessInfo) = 0;
  HIDWORD(self->_playerItem->gaplessInfo) = 1065353216;
  LOBYTE(self->_playerItem->audioProcessingTap) = 0;
  self->_playerItem->adjustTargetLevelWasSet = 0;
  self->_playerItem->mediaOptionsSelectedByClient = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&self->_playerItem->adjustCompressionProfileWasSet = 0;
  self->_playerItem->seekIDMutex = FigSimpleMutexCreate();
  self->_playerItem->ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avplayeritem.ivars");
  self->_playerItem->figConfigurationQueue = dispatch_queue_create("com.apple.avplayeritem.figplaybackitem", 0);
  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_playerItem->figPlaybackItemAccessorQueue = dispatch_queue_create("com.apple.avplayeritem.figplaybackitem.accessor", v27);
  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_playerItem->figPlaybackItemSetterQueue = dispatch_queue_create("com.apple.avplayeritem.figplaybackitem.setter", v28);
  v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  self->_playerItem->seekQueue = dispatch_queue_create("com.apple.avplayeritem.seek", v29);
  self->_playerItem->itemOutputs = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_playerItem->itemVideoOutputs = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_playerItem->itemLegibleOutputsForKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_playerItem->itemMetadataOutputsForKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_playerItem->itemRenderedLegibleOutputsForKeys = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_playerItem->initialVariantIndex = objc_alloc_init(MEMORY[0x1E695DF90]);
  *&self->_playerItem->startsOnFirstEligibleVariant = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_playerItem->itemCollectors = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_playerItem->videoApertureMode = 0;
  self->_playerItem->cachedTracks = objc_alloc_init(MEMORY[0x1E695DEC8]);
  LODWORD(self->_playerItem->interstitialEventCollector) = 1;
  *&self->_playerItem->loopTimeRange.duration.timescale = [-[AVAsset _commonLoggingIdentifier](asset "_commonLoggingIdentifier")];
  self->_playerItem->loopTimeRange.duration.epoch = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  self->_playerItem->interstitialEventID = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  if (VTPixelBufferAttributesMediatorCreate())
  {

LABEL_12:
    self = 0;
    goto LABEL_13;
  }

  VTPixelBufferAttributesMediatorSetProperty();
  p_flags = &self->_playerItem->maximumForwardBufferDuration.flags;
  *p_flags = v44;
  *(p_flags + 2) = v16;
  v32 = &self->_playerItem->figAudioTimePitchAlgorithm + 4;
  *v32 = v44;
  *(v32 + 2) = v16;
  self->_playerItem->haveInitialSamples = 1;
  self->_playerItem->haveCPEProtector = 0;
  self->_playerItem->mostRecentlyAppliedAudioMix = 4;
  self->_playerItem->audioSpatializationAllowed = 0;
  _absoluteURL = [(AVAsset *)asset _absoluteURL];
  [(AVPlayerItem *)self _setURL:_absoluteURL];
  if ([(AVAsset *)asset _playbackItem])
  {
    [(AVPlayerItem *)self _setAsset:[AVURLAsset URLAssetWithURL:_absoluteURL options:0]];
  }

  else
  {
    [(AVPlayerItem *)self _setAsset:asset];
  }

  self->_playerItem->automaticallyLoadedAssetKeys = [(NSArray *)automaticallyLoadedAssetKeys copy];
  LOBYTE(self->_playerItem->mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes) = 0;
  HIDWORD(self->_playerItem->initialMaxSnapTime.value) = FPSupport_InitialSeekIDForSource();
  LOBYTE(self->_playerItem->coordinationIdentifier) = 1;
  self->_playerItem->figCPEProtector = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_playerItem->selectedMediaPresentationSettings = objc_alloc_init(MEMORY[0x1E695DF70]);
  +[AVPlayer playbackObjectCreated];
  if (+[AVPlayer isObservationEnabled])
  {
    self->_playerItem->observationRegistrar = objc_alloc_init(AVPlayerItemObservationRegistrar);
  }

  *&self->_playerItem->speedRamp.wasSet = objc_alloc_init(AVPlayerItemAudioTrackInfoCache);
LABEL_13:
  AVTelemetryIntervalEnd(&v46);
  return self;
}

- (void)dealloc
{
  v39 = *MEMORY[0x1E69E9840];
  if (dword_1ED5AC298)
  {
    v38 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_playerItem)
  {
    if (dword_1ED5AC298)
    {
      v38 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(AVPlayerItem *)self _removeFAListeners:v34];
    [(AVPlayerItem *)self _removeFPListeners];
    [(AVPlayerItem *)self _removeFoldedTBListeners];
    [(NSMutableArray *)self->_playerItem->itemMetadataCollectors _detatchFromPlayerItem];

    playerItem = self->_playerItem;
    if (*&playerItem->isRenderingSpatialAudio)
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      playerItem = self->_playerItem;
    }

    ivarAccessQueue = playerItem->ivarAccessQueue;
    if (ivarAccessQueue)
    {
      dispatch_release(ivarAccessQueue);
      playerItem = self->_playerItem;
    }

    figConfigurationQueue = playerItem->figConfigurationQueue;
    if (figConfigurationQueue)
    {
      dispatch_release(figConfigurationQueue);
      playerItem = self->_playerItem;
    }

    seekQueue = playerItem->seekQueue;
    if (seekQueue)
    {
      dispatch_release(seekQueue);
      playerItem = self->_playerItem;
    }

    if (playerItem->figPlaybackItem)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      if (FigBaseObject)
      {
        v10 = FigBaseObject;
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v11)
        {
          v11(v10);
        }
      }
    }

    v12 = self->_playerItem;
    unfoldedFigTimebase = v12->unfoldedFigTimebase;
    if (unfoldedFigTimebase)
    {
      CFRelease(unfoldedFigTimebase);
      self->_playerItem->unfoldedFigTimebase = 0;
      v12 = self->_playerItem;
    }

    proxyUnfoldedTimebase = v12->proxyUnfoldedTimebase;
    if (proxyUnfoldedTimebase)
    {
      CFRelease(proxyUnfoldedTimebase);
      self->_playerItem->proxyUnfoldedTimebase = 0;
      v12 = self->_playerItem;
    }

    foldedTimebase = v12->foldedTimebase;
    if (foldedTimebase)
    {
      CFRelease(foldedTimebase);
      self->_playerItem->foldedTimebase = 0;
      v12 = self->_playerItem;
    }

    proxyFoldedTimebase = v12->proxyFoldedTimebase;
    if (proxyFoldedTimebase)
    {
      CFRelease(proxyFoldedTimebase);
      self->_playerItem->proxyFoldedTimebase = 0;
      v12 = self->_playerItem;
    }

    delayPreparingItemDuration = v12->delayPreparingItemDuration;
    if (delayPreparingItemDuration != 0.0)
    {
      CFRelease(*&delayPreparingItemDuration);
      self->_playerItem->delayPreparingItemDuration = 0.0;
      v12 = self->_playerItem;
    }

    v18 = self->_playerItem;
    playerReference = v18->playerReference;
    if (playerReference)
    {
      CFRelease(playerReference);
      self->_playerItem->playerReference = 0;
      v18 = self->_playerItem;
    }

    textHighlightArray = v18->textHighlightArray;
    if (textHighlightArray)
    {
      CFRelease(textHighlightArray);
      self->_playerItem->textHighlightArray = 0;
      v18 = self->_playerItem;
    }

    v21 = self->_playerItem;
    pixelBufferAttributeMediator = v21->pixelBufferAttributeMediator;
    if (pixelBufferAttributeMediator)
    {
      CFRelease(pixelBufferAttributeMediator);
      v21 = self->_playerItem;
    }

    v23 = self->_playerItem;
    figPlaybackItem = v23->figPlaybackItem;
    if (figPlaybackItem)
    {
      CFRelease(figPlaybackItem);
      self->_playerItem->figPlaybackItem = 0;
      v23 = self->_playerItem;
    }

    v25 = self->_playerItem;
    clientsOriginalVideoComposition = v25->clientsOriginalVideoComposition;
    if (clientsOriginalVideoComposition)
    {
      CFRelease(clientsOriginalVideoComposition);
      v25 = self->_playerItem;
    }

    v27 = self->_playerItem;
    v28 = *&v27->audioTapProcessorSetIsPending;
    if (v28)
    {
      CFRelease(v28);
      *&self->_playerItem->audioTapProcessorSetIsPending = 0;
      v27 = self->_playerItem;
    }

    v29 = self->_playerItem;
    if (v29->initialMaxSnapTime.epoch)
    {
      NSLog(&cfstr_AvplayeritemPD.isa, self);
      v29 = self->_playerItem;
    }

    if (v29->seekIDMutex)
    {
      FigSimpleMutexDestroy();
      v29 = self->_playerItem;
    }

    stateDispatchQueue = v29->stateDispatchQueue;
    if (stateDispatchQueue)
    {
      dispatch_release(stateDispatchQueue);
      v29 = self->_playerItem;
    }

    figPlaybackItemAccessorQueue = v29->figPlaybackItemAccessorQueue;
    if (figPlaybackItemAccessorQueue)
    {
      dispatch_release(figPlaybackItemAccessorQueue);
      v29 = self->_playerItem;
    }

    figPlaybackItemSetterQueue = v29->figPlaybackItemSetterQueue;
    if (figPlaybackItemSetterQueue)
    {
      dispatch_release(figPlaybackItemSetterQueue);
      v29 = self->_playerItem;
    }

    v33 = self->_playerItem;
    if (v33)
    {
      CFRelease(v33);
      self->_playerItem = 0;
    }
  }

  v36.receiver = self;
  v36.super_class = AVPlayerItem;
  [(AVPlayerItem *)&v36 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone newAssetOptions:(id)options
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_class();
  if (dyld_program_sdk_at_least())
  {
    v7 = objc_opt_class();
  }

  playerItem = self->_playerItem;
  asset = playerItem->asset;
  if (asset)
  {
    if (options)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        asset = [AVURLAsset URLAssetWithURL:[(AVURLAsset *)asset URL] options:options];
      }
    }

    v10 = [objc_msgSend(v7 allocWithZone:{zone), "initWithAsset:", asset}];
  }

  else
  {
    if (!playerItem->URL)
    {
      return 0;
    }

    v10 = [objc_msgSend(v7 allocWithZone:{zone), "initWithURL:", self->_playerItem->URL}];
  }

  v11 = v10;
  if (v10)
  {
    [v10 setVideoComposition:{-[AVPlayerItem videoComposition](self, "videoComposition")}];
    [v11 setAudioMix:{-[AVPlayerItem audioMix](self, "audioMix")}];
    [v11 setTextStyleRules:{-[AVPlayerItem textStyleRules](self, "textStyleRules")}];
    [v11 setTextHighlightArray:{-[AVPlayerItem textHighlightArray](self, "textHighlightArray")}];
    [v11 setRequiresAccessLog:{-[AVPlayerItem requiresAccessLog](self, "requiresAccessLog")}];
    [v11 setAudioTimePitchAlgorithm:{-[AVPlayerItem audioTimePitchAlgorithm](self, "audioTimePitchAlgorithm")}];
    [v11 setSuppressesAudioOnlyVariants:{-[AVPlayerItem suppressesAudioOnlyVariants](self, "suppressesAudioOnlyVariants")}];
    [v11 setPrefersOfflinePlayableVariants:{-[AVPlayerItem prefersOfflinePlayableVariants](self, "prefersOfflinePlayableVariants")}];
    [(AVPlayerItem *)self forwardPlaybackEndTime];
    [v11 setForwardPlaybackEndTime:&v21];
    [(AVPlayerItem *)self reversePlaybackEndTime];
    [v11 setReversePlaybackEndTime:&v21];
    [(AVPlayerItem *)self timeToPauseBuffering];
    if (v30)
    {
      [(AVPlayerItem *)self timeToPauseBuffering];
      [v11 setTimeToPauseBuffering:&v21];
    }

    [(AVPlayerItem *)self timeToPausePlayback];
    if (v29)
    {
      [(AVPlayerItem *)self timeToPausePlayback];
      [v11 setTimeToPausePlayback:&v21];
    }

    if ([(AVPlayerItem *)self snapTimeToPausePlayback])
    {
      [v11 setSnapTimeToPausePlayback:1];
    }

    if ([(AVPlayerItem *)self advanceTimeForOverlappedPlaybackWasSet])
    {
      [(AVPlayerItem *)self advanceTimeForOverlappedPlayback];
      [v11 setAdvanceTimeForOverlappedPlayback:&v21];
    }

    if ([(AVPlayerItem *)self overlappedPlaybackEndTimeWasSet])
    {
      [(AVPlayerItem *)self overlappedPlaybackEndTime];
      [v11 setOverlappedPlaybackEndTime:&v21];
    }

    if ([(AVPlayerItem *)self automaticallyPreservesTimeOffsetFromLive])
    {
      [v11 setAutomaticallyPreservesTimeOffsetFromLive:1];
    }

    [(AVPlayerItem *)self configuredTimeOffsetFromLive];
    [v11 setConfiguredTimeOffsetFromLive:&v21];
    if ([(AVPlayerItem *)self imageQueueInterpolationCurveWasSet])
    {
      [v11 setImageQueueInterpolationCurve:{-[AVPlayerItem imageQueueInterpolationCurve](self, "imageQueueInterpolationCurve")}];
    }

    if ([(AVPlayerItem *)self blendsVideoFramesWasSet])
    {
      [v11 setBlendsVideoFrames:{-[AVPlayerItem blendsVideoFrames](self, "blendsVideoFrames")}];
    }

    if ([(AVPlayerItem *)self appliesPerFrameHDRDisplayMetadataWasSet])
    {
      [v11 setAppliesPerFrameHDRDisplayMetadata:{-[AVPlayerItem appliesPerFrameHDRDisplayMetadata](self, "appliesPerFrameHDRDisplayMetadata")}];
    }

    if ([(AVPlayerItem *)self reversesMoreVideoFramesInMemoryWasSet])
    {
      [v11 setReversesMoreVideoFramesInMemory:{-[AVPlayerItem reversesMoreVideoFramesInMemory](self, "reversesMoreVideoFramesInMemory")}];
    }

    if ([(AVPlayerItem *)self aggressivelyCachesVideoFramesWasSet])
    {
      [v11 setAggressivelyCachesVideoFrames:{-[AVPlayerItem aggressivelyCachesVideoFrames](self, "aggressivelyCachesVideoFrames")}];
    }

    if ([(AVPlayerItem *)self decodesAllFramesDuringOrdinaryPlaybackWasSet])
    {
      [v11 setDecodesAllFramesDuringOrdinaryPlayback:{-[AVPlayerItem decodesAllFramesDuringOrdinaryPlayback](self, "decodesAllFramesDuringOrdinaryPlayback")}];
    }

    [v11 setLoudnessInfo:{-[AVPlayerItem loudnessInfo](self, "loudnessInfo")}];
    [v11 setAVKitData:{-[AVPlayerItem AVKitData](self, "AVKitData")}];
    [v11 setServiceIdentifier:{-[AVPlayerItem serviceIdentifier](self, "serviceIdentifier")}];
    [(AVPlayerItem *)self soundCheckVolumeNormalization];
    [v11 setSoundCheckVolumeNormalization:?];
    [(AVPlayerItem *)self volumeAdjustment];
    [v11 setVolumeAdjustment:?];
    [v11 setMediaKind:{-[AVPlayerItem mediaKind](self, "mediaKind")}];
    [v11 setRestrictions:{-[AVPlayerItem restrictions](self, "restrictions")}];
    [v11 setAutomaticallyHandlesInterstitialEvents:{-[AVPlayerItem automaticallyHandlesInterstitialEvents](self, "automaticallyHandlesInterstitialEvents")}];
    if ([(AVPlayerItem *)self adjustTargetLevelWasSet])
    {
      [(AVPlayerItem *)self adjustTargetLevel];
      [v11 setAdjustTargetLevel:?];
    }

    if ([(AVPlayerItem *)self adjustCompressionProfileWasSet])
    {
      [v11 setAdjustCompressionProfile:{-[AVPlayerItem adjustCompressionProfile](self, "adjustCompressionProfile")}];
    }

    [v11 setPlayHapticTracks:{-[AVPlayerItem playHapticTracks](self, "playHapticTracks")}];
    [v11 setHapticPlaybackLocality:{-[AVPlayerItem hapticPlaybackLocality](self, "hapticPlaybackLocality")}];
    [v11 setContinuesPlayingDuringPrerollForRateChange:{-[AVPlayerItem continuesPlayingDuringPrerollForRateChange](self, "continuesPlayingDuringPrerollForRateChange")}];
    [v11 setContinuesPlayingDuringPrerollForSeek:{-[AVPlayerItem continuesPlayingDuringPrerollForSeek](self, "continuesPlayingDuringPrerollForSeek")}];
    if ([(AVPlayerItem *)self usesIFrameOnlyPlaybackForHighRateScaledEditsWasSet])
    {
      [v11 setUsesIFrameOnlyPlaybackForHighRateScaledEdits:{-[AVPlayerItem usesIFrameOnlyPlaybackForHighRateScaledEdits](self, "usesIFrameOnlyPlaybackForHighRateScaledEdits")}];
    }

    if ([(AVPlayerItem *)self minimumIntervalForIFrameOnlyPlaybackWasSet])
    {
      [(AVPlayerItem *)self minimumIntervalForIFrameOnlyPlayback];
      [v11 setMinimumIntervalForIFrameOnlyPlayback:&v21];
    }

    if ([(AVPlayerItem *)self speedThresholdForIFrameOnlyPlaybackWasSet])
    {
      [(AVPlayerItem *)self speedThresholdForIFrameOnlyPlayback];
      [v11 setSpeedThresholdForIFrameOnlyPlayback:?];
    }

    if ([(AVPlayerItem *)self refreshesClosedCaptionsImmediatelyAfterSeeking])
    {
      [v11 setRefreshesClosedCaptionsImmediatelyAfterSeeking:{-[AVPlayerItem refreshesClosedCaptionsImmediatelyAfterSeeking](self, "refreshesClosedCaptionsImmediatelyAfterSeeking")}];
    }

    if ([(AVPlayerItem *)self audioSpatializationAllowedWasSet])
    {
      [v11 setAudioSpatializationAllowed:{-[AVPlayerItem isAudioSpatializationAllowed](self, "isAudioSpatializationAllowed")}];
    }

    if ([(AVPlayerItem *)self allowedAudioSpatializationFormatsWasSet])
    {
      [v11 setAllowedAudioSpatializationFormats:{-[AVPlayerItem allowedAudioSpatializationFormats](self, "allowedAudioSpatializationFormats")}];
    }

    if ([(AVPlayerItem *)self variantPreferences])
    {
      [v11 setVariantPreferences:{-[AVPlayerItem variantPreferences](self, "variantPreferences")}];
    }

    [(AVPlayerItem *)self preferredMaximumAudioSampleRate];
    [v11 setPreferredMaximumAudioSampleRate:?];
    [v11 setPrefersOfflinePlayableVariants:{-[AVPlayerItem prefersOfflinePlayableVariants](self, "prefersOfflinePlayableVariants")}];
    [v11 setAutoSwitchAtmosStreamVariants:{-[AVPlayerItem autoSwitchAtmosStreamVariants](self, "autoSwitchAtmosStreamVariants")}];
    [v11 setPreferredCustomMediaSelectionSchemes:{-[AVPlayerItem preferredCustomMediaSelectionSchemes](self, "preferredCustomMediaSelectionSchemes")}];
    [v11 setSupplementalMetadata:{-[AVPlayerItem supplementalMetadata](self, "supplementalMetadata")}];
    if ([(AVAsset *)self->_playerItem->asset statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:0]== 2)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      availableMediaCharacteristicsWithMediaSelectionOptions = [(AVAsset *)self->_playerItem->asset availableMediaCharacteristicsWithMediaSelectionOptions];
      v13 = [(NSArray *)availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v13)
      {
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(availableMediaCharacteristicsWithMediaSelectionOptions);
            }

            v16 = [(AVAsset *)self->_playerItem->asset mediaSelectionGroupForMediaCharacteristic:*(*(&v25 + 1) + 8 * i)];
            if (v16)
            {
              currentMediaSelection = [(AVPlayerItem *)self currentMediaSelection];
              if (![(AVMediaSelection *)currentMediaSelection mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:v16])
              {
                [v11 selectMediaOption:-[AVMediaSelection selectedMediaOptionInMediaSelectionGroup:](currentMediaSelection inMediaSelectionGroup:{"selectedMediaOptionInMediaSelectionGroup:", v16), v16}];
              }
            }
          }

          v13 = [(NSArray *)availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v13);
      }
    }

    else
    {
      [v11 setNonForcedSubtitleDisplayEnabled:{-[AVPlayerItem isNonForcedSubtitleDisplayEnabled](self, "isNonForcedSubtitleDisplayEnabled")}];
    }

    [v11 setVideoEnhancementMode:{-[AVPlayerItem videoEnhancementMode](self, "videoEnhancementMode")}];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __45__AVPlayerItem_copyWithZone_newAssetOptions___block_invoke;
    v20[3] = &unk_1E7460E68;
    v20[4] = self;
    v20[5] = &v21;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, v20);
    if (*(v22 + 6) != -1)
    {
      [v11 setStartsOnFirstEligibleVariant:{-[AVPlayerItem startsOnFirstEligibleVariant](self, "startsOnFirstEligibleVariant")}];
    }

    _Block_object_dispose(&v21, 8);
  }

  return v11;
}

- (id)copyWithZone:(NSZone *)zone
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:146];
  v5 = [(AVPlayerItem *)self copyWithZone:zone newAssetOptions:0];
  AVTelemetryIntervalEnd(&v7);
  return v5;
}

- (id)copy
{
  v3.receiver = self;
  v3.super_class = AVPlayerItem;
  return [(AVPlayerItem *)&v3 copy];
}

- (void)didChangeValueForKey:(id)key
{
  v5.receiver = self;
  v5.super_class = AVPlayerItem;
  [(AVPlayerItem *)&v5 didChangeValueForKey:?];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:key on:self];
}

- (void)willChangeValueForKey:(id)key
{
  v5.receiver = self;
  v5.super_class = AVPlayerItem;
  [(AVPlayerItem *)&v5 willChangeValueForKey:?];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:key on:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(AVPlayerItem *)self asset])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset = %@", -[AVPlayerItem asset](self, "asset")];
  }

  else if ([(AVPlayerItem *)self _URL])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"URL = %@", -[AVPlayerItem _URL](self, "_URL")];
  }

  else
  {
    v6 = @"with no asset and no URL";
  }

  return [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];
}

- (id)_loggingDescription
{
  playerItem = self->_playerItem;
  if (playerItem && (v4 = *&playerItem->loopTimeRange.duration.timescale) != 0)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@|%p>", objc_msgSend(v4, "name"), self];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p>", self, v6];
  }
}

- (id)identifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__AVPlayerItem_identifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __26__AVPlayerItem_identifier__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1112) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__AVPlayerItem_delegate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setDelegate:(id)delegate
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__AVPlayerItem_setDelegate___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = delegate;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (BOOL)_timeJumpedNotificationIncludesExtendedDiagnosticPayload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayerItem__timeJumpedNotificationIncludesExtendedDiagnosticPayload__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setTimeJumpedNotificationIncludesExtendedDiagnosticPayload:(BOOL)payload
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__AVPlayerItem__setTimeJumpedNotificationIncludesExtendedDiagnosticPayload___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  payloadCopy = payload;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (id)valueForUndefinedKey:(id)key
{
  if ([key isEqualToString:@"_externalProtectionRequiredForPlayback"])
  {
    v5 = MEMORY[0x1E696AD98];
    _isExternalProtectionRequiredForPlayback = [(AVPlayerItem *)self _isExternalProtectionRequiredForPlayback];

    return [v5 numberWithBool:_isExternalProtectionRequiredForPlayback];
  }

  else if ([key isEqualToString:@"timebase"])
  {

    return [(AVPlayerItem *)self timebase];
  }

  else if ([key isEqualToString:@"audioTapProcessor"])
  {

    return [(AVPlayerItem *)self audioTapProcessor];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVPlayerItem;
    return [(AVPlayerItem *)&v8 valueForUndefinedKey:key];
  }
}

- (OpaqueFigPlaybackItem)_copyFigPlaybackItemLocked:(BOOL)locked
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVPlayerItem__copyFigPlaybackItemLocked___block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  [(AVPlayerItem *)self dispatchIVarWrite:0 locked:locked block:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __43__AVPlayerItem__copyFigPlaybackItemLocked___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 128);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_getCachedPresentationSize:(CGSize *)size
{
  _isReadyForInspectionOfPresentationSize = [(AVPlayerItem *)self _isReadyForInspectionOfPresentationSize];
  v6 = _isReadyForInspectionOfPresentationSize;
  if (size && _isReadyForInspectionOfPresentationSize)
  {
    [(AVPlayerItem *)self presentationSize];
    size->width = v7;
    size->height = v8;
  }

  return v6;
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  if ([path isEqualToString:@"timedMetadata"])
  {
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __55__AVPlayerItem_addObserver_forKeyPath_options_context___block_invoke;
    v17[3] = &unk_1E7460C00;
    v17[4] = self;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v17);
    v12 = [-[AVPlayerItem _player](self "_player")];
    if (v12)
    {
      v13 = v12;
      FigBaseObject = FigPlayerGetFigBaseObject();
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v15)
      {
        v15(FigBaseObject, *MEMORY[0x1E6973268], *MEMORY[0x1E695E4D0]);
      }

      CFRelease(v13);
    }
  }

  v16.receiver = self;
  v16.super_class = AVPlayerItem;
  [(AVPlayerItem *)&v16 addObserver:observer forKeyPath:path options:options context:context];
}

- (BOOL)_configurePlaybackItemAndReturnError:(id *)error
{
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  if (!self->_playerItem->figPlaybackItem)
  {
    return 1;
  }

  [(AVPlayerItem *)self _getVideoComposition:&v54 customVideoCompositorSession:&v53 figVideoCompositor:&v52];
  if (v54)
  {
    v5 = v53 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ([v53 commitCustomVideoCompositorPropertiesAndReturnError:&v55] & 1) != 0)
  {
    if ([(NSArray *)self->_playerItem->automaticallyLoadedAssetKeys count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_playerItem->automaticallyLoadedAssetKeys];
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [AVFigAssetInspectorLoader _mapAssetKeys:v6 toFigAssetPropertySet:v7 figAssetTrackPropertySet:v8 callerName:@"[AVPlayerItem _configurePlaybackItem]"];
      if ([v7 count])
      {
        allObjects = [v7 allObjects];
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v11)
        {
          v11(FigBaseObject, *MEMORY[0x1E6972840], allObjects);
        }
      }

      if ([v8 count])
      {
        allObjects2 = [v8 allObjects];
        v13 = FigPlaybackItemGetFigBaseObject();
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v14)
        {
          v14(v13, *MEMORY[0x1E6972848], allObjects2);
        }
      }
    }

    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(figPlaybackItemSetterQueue, block);
    if ([(AVPlayerItem *)self savesDownloadedDataToDiskWhenDoneWasSet])
    {
      [(AVPlayerItem *)self setSavesDownloadedDataToDiskWhenDone:[(AVPlayerItem *)self savesDownloadedDataToDiskWhenDone]];
    }

    seekQueue = self->_playerItem->seekQueue;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke_2;
    v50[3] = &unk_1E7460C00;
    v50[4] = self;
    dispatch_sync(seekQueue, v50);
    initialDate = [(AVPlayerItem *)self initialDate];
    if (initialDate)
    {
      [(AVPlayerItem *)self seekToDate:initialDate completionHandler:0];
    }

    initialEstimatedDate = [(AVPlayerItem *)self initialEstimatedDate];
    if (initialEstimatedDate)
    {
      v19 = initialEstimatedDate;
      v20 = FigPlaybackItemGetFigBaseObject();
      v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v21)
      {
        v21(v20, *MEMORY[0x1E6972910], v19);
      }
    }

    [(AVPlayerItem *)self loopTimeRange];
    if (v49)
    {
      [(AVPlayerItem *)self loopTimeRange];
      if (v48)
      {
        [(AVPlayerItem *)self loopTimeRange];
        if (!v47)
        {
          [(AVPlayerItem *)self loopTimeRange];
          if ((v46 & 0x8000000000000000) == 0)
          {
            [(AVPlayerItem *)self _updateLoopTimeRangeOnFigPlaybackItem];
          }
        }
      }
    }

    [(AVPlayerItem *)self forwardPlaybackEndTime];
    if (v45)
    {
      [(AVPlayerItem *)self _updateForwardPlaybackEndTimeOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self reversePlaybackEndTime];
    if (v44)
    {
      [(AVPlayerItem *)self _updateReversePlaybackEndTimeOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _timeToPauseBuffering];
    if (v43)
    {
      [(AVPlayerItem *)self _updateTimeToPauseBufferingOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _timeToPausePlayback];
    if (v42)
    {
      [(AVPlayerItem *)self _updateTimeToPausePlaybackOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self advanceTimeForOverlappedPlaybackWasSet])
    {
      [(AVPlayerItem *)self _updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self overlappedPlaybackEndTimeWasSet])
    {
      [(AVPlayerItem *)self _updateOverlappedPlaybackEndTimeOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self imageQueueInterpolationCurveWasSet])
    {
      [(AVPlayerItem *)self _updateImageQueueInterpolationCurveOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self blendsVideoFramesWasSet])
    {
      [(AVPlayerItem *)self _updateBlendsVideoFramesOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self appliesPerFrameHDRDisplayMetadataWasSet])
    {
      [(AVPlayerItem *)self _updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self reversesMoreVideoFramesInMemoryWasSet])
    {
      [(AVPlayerItem *)self _updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self aggressivelyCachesVideoFramesWasSet])
    {
      [(AVPlayerItem *)self _updateAggressivelyCachesVideoFramesOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self decodesAllFramesDuringOrdinaryPlaybackWasSet])
    {
      [(AVPlayerItem *)self _updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem];
    }

    if (![(AVPlayerItem *)self continuesPlayingDuringPrerollForSeek])
    {
      [(AVPlayerItem *)self _updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem];
    }

    if (![(AVPlayerItem *)self continuesPlayingDuringPrerollForRateChange])
    {
      [(AVPlayerItem *)self _updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self usesIFrameOnlyPlaybackForHighRateScaledEditsWasSet])
    {
      [(AVPlayerItem *)self _updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self minimumIntervalForIFrameOnlyPlaybackWasSet])
    {
      [(AVPlayerItem *)self _updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self speedThresholdForIFrameOnlyPlaybackWasSet])
    {
      [(AVPlayerItem *)self _updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self refreshesClosedCaptionsImmediatelyAfterSeeking])
    {
      [(AVPlayerItem *)self _updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self audioSpatializationAllowedWasSet])
    {
      [(AVPlayerItem *)self _updateAudioSpatializationAllowed];
    }

    if ([(AVPlayerItem *)self allowedAudioSpatializationFormatsWasSet])
    {
      [(AVPlayerItem *)self _updateAllowedAudioSpatializationFormats];
    }

    [(AVPlayerItem *)self _updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem];
    if ([(AVPlayerItem *)self automaticallyPreservesTimeOffsetFromLive])
    {
      [(AVPlayerItem *)self _updatePreservesTimeOffsetFromLive];
    }

    [(AVPlayerItem *)self configuredTimeOffsetFromLive];
    if (v41)
    {
      [(AVPlayerItem *)self _updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem];
    }

    if (v54)
    {
      [(AVPlayerItem *)self _applyCurrentVideoComposition];
    }

    [(AVPlayerItem *)self _applyCurrentAudioMix];
    [(AVPlayerItem *)self _applyCurrentAudioTapProcessorOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem];
    if ((HIDWORD(self->_playerItem->coordinationIdentifier) & 0x80000000) == 0)
    {
      [(AVPlayerItem *)self _quietlySetEQPreset:?];
    }

    [(AVPlayerItem *)self _updatePlaybackPropertiesOnFigPlaybackItem];
    if ((self->_playerItem->rampInOutInfo & 0x8000000000000000) == 0)
    {
      [(AVPlayerItem *)self _quietlySetVariantIndex:?];
    }

    [(AVPlayerItem *)self _updateSoundCheckVolumeNormalizationOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateVolumeAdjustmentOnFigPlaybackItem];
    if ([(AVPlayerItem *)self audioTimePitchAlgorithm])
    {
      [(AVPlayerItem *)self _updateFigTimePitchAlgorithmOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _updateLoudnessInfoOnFigPlaybackItem];
    if ([(AVPlayerItem *)self adjustTargetLevelWasSet])
    {
      [(AVPlayerItem *)self _updateAdjustTargetLevelOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self adjustCompressionProfileWasSet])
    {
      [(AVPlayerItem *)self _updateAdjustCompressionProfileOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _applyMediaSelectionOptions];
    [(AVPlayerItem *)self _updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateMediaPresentationLanguagesOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateMediaPresentationCharacteristicsOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateTextStyleRulesOnFigPlaybackItem];
    if ([(AVPlayerItem *)self textHighlightArray])
    {
      [(AVPlayerItem *)self _updateTextHighlightArrayOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _updateMediaKindOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateRestrictionsOnFigPlaybackItem];
    [(AVPlayerItem *)self _quietlySetServiceIdentifier];
    [(AVPlayerItem *)self _setSyncLayersOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateTimebase];
    [(AVPlayerItem *)self IFramePrefetchTargetDimensions];
    v24 = *MEMORY[0x1E695F060];
    v23 = *(MEMORY[0x1E695F060] + 8);
    if (v25 != *MEMORY[0x1E695F060] || v22 != v23)
    {
      [(AVPlayerItem *)self _updateIFramePrefetchTargetDimensionsOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self preferredPeakBitRate];
    if (v26 > 0.0)
    {
      [(AVPlayerItem *)self _updatePreferredPeakBitRateOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self preferredPeakBitRateForExpensiveNetworks];
    if (v27 > 0.0)
    {
      [(AVPlayerItem *)self _updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self preferredMaximumResolution];
    if (v29 != v24 || v28 != v23)
    {
      [(AVPlayerItem *)self _updatePreferredMaximumResolutionOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self preferredMaximumResolutionForExpensiveNetworks];
    if (v31 != v24 || v30 != v23)
    {
      [(AVPlayerItem *)self _updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self preferredMinimumResolution];
    if (v33 != v24 || v32 != v23)
    {
      [(AVPlayerItem *)self _updatePreferredMinimumResolutionOnFigPlaybackItem];
    }

    if (self->_playerItem->maximumTrailingBufferDuration.value)
    {
      [(AVPlayerItem *)self _updateMaximumTrailingBufferDurationOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self maximumForwardBufferDuration];
    if (v40)
    {
      [(AVPlayerItem *)self _updateMaximumForwardBufferDurationOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self videoApertureMode])
    {
      [(AVPlayerItem *)self _updateVideoApertureModeOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _updateVariantPreferencesOnFigPlaybackItem];
    [(AVPlayerItem *)self preferredMaximumAudioSampleRate];
    if (v34 != 0.0)
    {
      [(AVPlayerItem *)self _updatePreferredMaximumAudioSampleRateOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self RTCReportingFlags]!= 1)
    {
      [(AVPlayerItem *)self _updateRTCReportingFlagsOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _updateRTCReportingCategoryOnFigPlaybackItem];
    [(AVPlayerItem *)self _updateReportingValuesOnFigPlaybackItem];
    v35 = [-[AVPlayerItem _metadataCollectors](self "_metadataCollectors")];
    if (v35)
    {
      v36 = self->_playerItem->figPlaybackItemSetterQueue;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke_3;
      v39[3] = &unk_1E7460FA8;
      v39[4] = self;
      v39[5] = v35;
      dispatch_sync(v36, v39);
    }

    if ([(AVPlayerItem *)self videoEnhancementMode])
    {
      [(AVPlayerItem *)self _updateVideoEnhancementModeOnFigPlaybackItem];
    }

    playerItem = self->_playerItem;
    if (LODWORD(playerItem->preferredPeakBitRateForExpensiveNetworks) != -1)
    {
      [(AVPlayerItem *)self _updateStartsOnFirstEligibleVariantOnFigPlaybackItem];
      playerItem = self->_playerItem;
    }

    if ((BYTE3(playerItem->initialDate) & 1) == 0)
    {
      [(AVPlayerItem *)self _updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self _speedRampDataWasSet])
    {
      [(AVPlayerItem *)self _updateSpeedRampDataOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _markAsFigItemConfigured];
    if (v52)
    {
      CFRelease(v52);
    }

    return 1;
  }

  result = 0;
  if (error)
  {
    *error = v55;
  }

  return result;
}

void __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isExternalProtectionRequiredForPlayback];
  v3 = *MEMORY[0x1E695E4D0];
  if (v2)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972A78], v3);
    }
  }

  v6 = [*(a1 + 32) playHapticTracks];
  v7 = *MEMORY[0x1E695E4C0];
  if (v6)
  {
    v8 = v3;
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  v9 = FigPlaybackItemGetFigBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v10)
  {
    v10(v9, *MEMORY[0x1E6972A08], v8);
  }

  v11 = [*(a1 + 32) hapticPlaybackLocality];
  v12 = FigPlaybackItemGetFigBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v13)
  {
    v13(v12, *MEMORY[0x1E6972928], v11);
  }

  if ([*(a1 + 32) suppressesAudioOnlyVariants])
  {
    v14 = v3;
  }

  else
  {
    v14 = v7;
  }

  v15 = FigPlaybackItemGetFigBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v16(v15, *MEMORY[0x1E6972B30], v14);
  }

  if ([*(a1 + 32) prefersOfflinePlayableVariants])
  {
    v17 = v3;
  }

  else
  {
    v17 = v7;
  }

  v18 = FigPlaybackItemGetFigBaseObject();
  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v19)
  {
    v19(v18, *MEMORY[0x1E6972A30], v17);
  }

  if ([*(a1 + 32) requiresAccessLog])
  {
    v20 = v3;
  }

  else
  {
    v20 = v7;
  }

  v21 = FigPlaybackItemGetFigBaseObject();
  v22 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v22)
  {
    v22(v21, *MEMORY[0x1E6972920], v20);
  }

  if ([*(a1 + 32) allowProgressiveSwitchUp])
  {
    v23 = v3;
  }

  else
  {
    v23 = v7;
  }

  v24 = FigPlaybackItemGetFigBaseObject();
  v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v25)
  {
    v25(v24, *MEMORY[0x1E69727E0], v23);
  }

  if ([*(a1 + 32) allowProgressiveStartup])
  {
    v26 = v3;
  }

  else
  {
    v26 = v7;
  }

  v27 = FigPlaybackItemGetFigBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v28)
  {
    v28(v27, *MEMORY[0x1E69727D8], v26);
  }

  if (![*(a1 + 32) allowProgressiveResume])
  {
    v3 = v7;
  }

  v29 = FigPlaybackItemGetFigBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v30)
  {
    v30(v29, *MEMORY[0x1E69727D0], v3);
  }

  if (*(*(*(a1 + 32) + 8) + 1520) > 0.0)
  {
    Float64 = FigCFNumberCreateFloat64();
    v32 = FigPlaybackItemGetFigBaseObject();
    v33 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v33)
    {
      v33(v32, *MEMORY[0x1E69727F8], Float64);
    }

    if (Float64)
    {

      CFRelease(Float64);
    }
  }
}

uint64_t __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke_2(uint64_t result)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 1192) == 1)
  {
    v2 = result;
    *&v9.value = *(v1 + 1196);
    v9.epoch = *(v1 + 1212);
    v11 = *(v1 + 1228);
    *&v10.value = *(v1 + 1252);
    v10.epoch = *(v1 + 1268);
    v3 = *(v1 + 1224);
    v12[0] = *MEMORY[0x1E6972C98];
    v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v12[1] = *MEMORY[0x1E6972C80];
    v13[1] = NSDictionaryFromCMTime(&v11);
    v12[2] = *MEMORY[0x1E6972C78];
    v11 = v10;
    v13[2] = NSDictionaryFromCMTime(&v11);
    v12[3] = *MEMORY[0x1E6972C70];
    v13[3] = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(v2 + 32) + 8) + 1220)];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    v5 = *(*(*(v2 + 32) + 8) + 128);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    result = VTable + 16;
    v8 = *(v7 + 176);
    if (v8)
    {
      v11 = v9;
      return v8(v5, &v11, v4);
    }
  }

  return result;
}

uint64_t __53__AVPlayerItem__configurePlaybackItemAndReturnError___block_invoke_3(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69728C8];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (id)_copyPlayer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayerItem__copyPlayer__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__AVPlayerItem__copyPlayer__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1496) referencedObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_canBeAttachedToPlayer:(id)player
{
  allowedAudioSpatializationFormats = self->_playerItem->allowedAudioSpatializationFormats;
  if (!allowedAudioSpatializationFormats)
  {
    return 1;
  }

  referencedObject = [allowedAudioSpatializationFormats referencedObject];
  return referencedObject == player || referencedObject == 0;
}

- (void)_attachToPlayer:(id)player
{
  _weakReference = [player _weakReference];
  v6 = 0;
  atomic_compare_exchange_strong(&self->_playerItem->allowedAudioSpatializationFormats, &v6, _weakReference);
  if (v6)
  {
    v9 = _weakReference;
    allowedAudioSpatializationFormats = self->_playerItem->allowedAudioSpatializationFormats;

    if (v9 != allowedAudioSpatializationFormats)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"An AVPlayerItem cannot be associated with more than one instance of AVPlayer" userInfo:0]);
    }
  }

  else
  {
    _stateDispatchQueue = [player _stateDispatchQueue];
    dispatch_retain(_stateDispatchQueue);
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__AVPlayerItem__attachToPlayer___block_invoke;
    v11[3] = &unk_1E7460DF0;
    v11[4] = self;
    v11[5] = _stateDispatchQueue;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
    dispatch_set_target_queue(self->_playerItem->figConfigurationQueue, _stateDispatchQueue);
  }
}

+ (int)_createFigPlaybackItemForFigPlayer:(OpaqueFigPlayer *)player asset:(id)asset URL:(id)l flags:(unsigned int)flags options:(__CFDictionary *)options playbackItem:(OpaqueFigPlaybackItem *)item
{
  v10 = *&flags;
  if (![asset _figAsset])
  {
    if (l)
    {
      CFGetAllocator(player);
      figAssetDefaultCreationFlags();
      v17 = FigAssetRemoteCreateWithURL();
      if (!v17)
      {
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 96);
        if (v18)
        {
          return v18(player, 0, v10, options, item);
        }

        else
        {
          return -12782;
        }
      }
    }

    else
    {
      _copyFormatReader = [asset _copyFormatReader];
      if (_copyFormatReader)
      {
        v20 = _copyFormatReader;
        CFGetAllocator(player);
        figAssetDefaultCreationFlags();
        v17 = FigAssetRemoteCreateWithFormatReader();
        if (!v17)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 96);
          if (v21)
          {
            v17 = v21(player, 0, v10, options, item);
          }

          else
          {
            v17 = -12782;
          }
        }

        CFRelease(v20);
      }

      else
      {
        return 0;
      }
    }

    return v17;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [asset _shouldOptimizeAccessForLinearMoviePlayback])
  {
    LODWORD(v10) = v10 | 0x40;
  }

  _figAsset = [asset _figAsset];
  v15 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v15)
  {
    return -12782;
  }

  return v15(player, _figAsset, v10 | 0x80, options, item);
}

- (void)processWaitingMetricEventTimelineCompletionHandlers
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = __Block_byref_object_copy__8;
  v17[4] = __Block_byref_object_dispose__8;
  v17[5] = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v18;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v19 + 3;
  if (v19[3])
  {
    goto LABEL_2;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    v9 = -12782;
LABEL_7:
    v6 = AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    goto LABEL_8;
  }

  v9 = v8(FigBaseObject, *MEMORY[0x1E69729E0], *MEMORY[0x1E695E480], v4);
  if (v9)
  {
    goto LABEL_7;
  }

LABEL_2:
  v5 = self->_playerItem->ivarAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_2;
  v15[3] = &unk_1E7460EE0;
  v15[4] = self;
  v15[5] = &v18;
  av_readwrite_dispatch_queue_write(v5, v15);
  v6 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
LABEL_8:
  v10 = v6;
  v11 = self->_playerItem->ivarAccessQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_3;
  v14[3] = &unk_1E7460EE0;
  v14[4] = self;
  v14[5] = v17;
  av_readwrite_dispatch_queue_write(v11, v14);
  global_queue = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_4;
  v13[3] = &unk_1E7462F88;
  v13[5] = v17;
  v13[6] = &v18;
  v13[4] = v10;
  dispatch_async(global_queue, v13);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
}

CFTypeRef __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1536);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 1536);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  *(v1 + 1536) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_3(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1528) count];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(*(*(a1 + 32) + 8) + 1528)];
    v3 = *(*(*(a1 + 32) + 8) + 1528);

    return [v3 removeAllObjects];
  }

  return result;
}

void __67__AVPlayerItem_processWaitingMetricEventTimelineCompletionHandlers__block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * i) + 16))();
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }
}

- (void)_attachToFigPlayer
{
  v66 = 0;
  v3 = [-[AVPlayerItem _player](self "_player")];
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3052000000;
  v55 = __Block_byref_object_copy__8;
  v56 = __Block_byref_object_dispose__8;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3052000000;
  v49 = __Block_byref_object_copy__8;
  v50 = __Block_byref_object_dispose__8;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3052000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__8;
  v34 = __Block_byref_object_dispose__8;
  v35 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVPlayerItem__attachToFigPlayer__block_invoke;
  block[3] = &unk_1E7462FB0;
  block[4] = self;
  block[5] = &v62;
  block[6] = &v58;
  block[7] = &v52;
  block[8] = &v46;
  block[9] = &v36;
  block[10] = &v30;
  block[11] = &v40;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if (*(v63 + 24) == 1)
  {
    FigBaseObject = FigPlayerGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E6973268], *MEMORY[0x1E695E4D0]);
    }
  }

  playerItem = self->_playerItem;
  if (playerItem->figPlaybackItem)
  {
    goto LABEL_61;
  }

  valuePtr = 0;
  v27 = 0;
  asset = playerItem->asset;
  if (!asset)
  {
    goto LABEL_45;
  }

  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _nameForLogging = [(AVPlayerItem *)self _nameForLogging];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6972630], _nameForLogging);
  v12 = v53[5];
  if (v12)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6972628], v12);
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6972640], v31[5]);
  v13 = v47[5];
  if (v13)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6972618], v13);
  }

  v14 = v41[5];
  if (v14)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6972620], v14);
  }

  if (*(v37 + 24))
  {
    v15 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6972638], *v15);
  valuePtr = [objc_opt_class() _createFigPlaybackItemForFigPlayer:v3 asset:asset URL:self->_playerItem->URL flags:0 options:Mutable playbackItem:&v27];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v27)
  {
    if (valuePtr)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  v16 = self->_playerItem->ivarAccessQueue;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __34__AVPlayerItem__attachToFigPlayer__block_invoke_2;
  v26[3] = &unk_1E7460FA8;
  v26[4] = self;
  v26[5] = v27;
  av_readwrite_dispatch_queue_write(v16, v26);
  [(AVPlayerItem *)self _addFPListeners];
  number = 0;
  v17 = FigPlaybackItemGetFigBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = v18(v17, *MEMORY[0x1E6972B08], v9, &number);
  v20 = number;
  if (!v19 && number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
LABEL_22:
    v20 = number;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (!valuePtr && [(AVPlayerItem *)self _configurePlaybackItemAndReturnError:&v66])
  {
    [(AVPlayerItem *)self _updateLimitReadAheadOnFigPlaybackItem];
    if ([(AVPlayerItem *)self playbackLikelyToKeepUpTrigger])
    {
      [(AVPlayerItem *)self _updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self willNeverSeekBackwardsHint])
    {
      [(AVPlayerItem *)self _updateWillNeverSeekBackwardsHintOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self alwaysMonitorsPlayability])
    {
      [(AVPlayerItem *)self _updateAlwaysMonitorsPlayabilityOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self isNonForcedSubtitleDisplayEnabled])
    {
      [(AVPlayerItem *)self _updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem];
    }

    if ([(AVPlayerItem *)self usesMinimalLatencyForVideoCompositionRendering])
    {
      [(AVPlayerItem *)self _updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem];
    }

    [(AVPlayerItem *)self _updateRestrictsAutomaticMediaSelectionToAvailableOfflineOptions];
    [(AVPlayerItem *)self _updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem];
    [-[AVPlayerItem _cachedTracks](self "_cachedTracks")];
    [(AVPlayerItem *)self _evaluateVideoOutputs];
    [(AVPlayerItem *)self _evaluateLegibleOutputs];
    [(AVPlayerItem *)self _evaluateMetadataOutputs];
    [(AVPlayerItem *)self _evaluateRenderedLegibleOutputs];
    [(AVPlayerItem *)self _attachIntegratedTimelineToFigItem];
    if (_attachToFigPlayer_sMetricRetrievalOnceToken != -1)
    {
      [AVPlayerItem _attachToFigPlayer];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __34__AVPlayerItem__attachToFigPlayer__block_invoke_4;
    v24[3] = &unk_1E7460C00;
    v24[4] = self;
    dispatch_async(_attachToFigPlayer_sMetricRetrievalQueue, v24);
    if (!valuePtr)
    {
      if (v27 && [(AVAsset *)asset statusOfValueForKey:@"streaming" error:0]== 2 && [(AVAsset *)self->_playerItem->asset _isStreaming])
      {
        [(AVPlayerItem *)self _respondToBecomingReadyForBasicInspection];
      }

LABEL_45:
      if ((v59[3] & 1) == 0 && [(AVPlayerItem *)self automaticallyHandlesInterstitialEvents])
      {
        [(AVPlayerItem *)self _addInterstitialEventCollector];
      }
    }
  }

LABEL_48:
  if (valuePtr || v66)
  {
    URL = self->_playerItem->URL;
    if (URL)
    {
      if (v66)
      {
LABEL_52:
        [(AVPlayerItem *)self _changeStatusToFailedWithError:?];
        goto LABEL_61;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if (v66)
        {
          goto LABEL_52;
        }

        v23 = 0;
        v22 = valuePtr;
        goto LABEL_60;
      }

      URL = [(AVAsset *)asset URL];
      if (v66)
      {
        goto LABEL_52;
      }
    }

    v22 = valuePtr;
    if (URL)
    {
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:URL forKey:*MEMORY[0x1E696A998]];
    }

    else
    {
      v23 = 0;
    }

LABEL_60:
    [(AVPlayerItem *)self _changeStatusToFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v22, v23)];
  }

LABEL_61:

  if (v3)
  {
    CFRelease(v3);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);
}

id __34__AVPlayerItem__attachToFigPlayer__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(*(a1[4] + 8) + 256);
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 648) != 0;
  result = *(*(a1[4] + 8) + 1368);
  *(*(a1[7] + 8) + 40) = result;
  *(*(a1[8] + 8) + 40) = *(*(a1[4] + 8) + 1376);
  *(*(a1[9] + 8) + 24) = *(*(a1[4] + 8) + 1392);
  *(*(a1[10] + 8) + 40) = *(*(a1[4] + 8) + 1112);
  *(*(a1[11] + 8) + 40) = *(*(a1[4] + 8) + 1384);
  return result;
}

dispatch_queue_t __34__AVPlayerItem__attachToFigPlayer__block_invoke_3()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.avfoundation.metric-retrieval", v0);
  _attachToFigPlayer_sMetricRetrievalQueue = result;
  return result;
}

- (BOOL)_addToPlayQueueOfFigPlayerOfPlayer:(id)player afterFigPlaybackItemOfItem:(id)item
{
  if (self->_playerItem->previousItem)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:0x1F0A8F0F0 userInfo:0]);
  }

  [(AVPlayerItem *)self _attachToFigPlayer];
  self->_playerItem->previousItem = -[AVPlayerConnection initWithWeakReferenceToPlayer:weakReferenceToPlayerItem:]([AVPlayerConnection alloc], "initWithWeakReferenceToPlayer:weakReferenceToPlayerItem:", [player _weakReference], -[AVPlayerItem _weakReference](self, "_weakReference"));
  previousItem = self->_playerItem->previousItem;

  return [(AVPlayerItem *)previousItem addItemToPlayQueueAfterPlaybackItemOfItem:item];
}

- (void)_removeFromPlayQueueOfFigPlayerOfAttachedPlayer
{
  [(AVPlayerItem *)self->_playerItem->previousItem removeItemFromPlayQueue];

  self->_playerItem->previousItem = 0;
}

- (void)_insertAfterItem:(id)item
{
  if (!item)
  {
    [(AVPlayerItem *)a2 _insertAfterItem:?];
  }

  v5 = *(*(item + 1) + 1304);
  if (v5)
  {
    *(v5[1] + 1296) = self;
    v5 = *(*(item + 1) + 1304);
  }

  self->_playerItem->seekCompletionHandler = v5;
  *(*(item + 1) + 1304) = self;
  *&self->_playerItem->nextSeekIDToGenerate = item;
}

- (void)_removeFromItems
{
  playerItem = self->_playerItem;
  seekCompletionHandler = playerItem->seekCompletionHandler;
  v4 = *&playerItem->nextSeekIDToGenerate;
  if (v4)
  {
    *(*(v4 + 8) + 1304) = seekCompletionHandler;
    playerItem = self->_playerItem;
  }

  if (seekCompletionHandler)
  {
    *(seekCompletionHandler[1] + 1296) = *&playerItem->nextSeekIDToGenerate;
    playerItem = self->_playerItem;
  }

  *&playerItem->nextSeekIDToGenerate = 0;
  self->_playerItem->seekCompletionHandler = 0;
}

- (id)_propertyListForMediaSelection:(id)selection forGroup:(id)group
{
  selectionCopy = selection;
  if (!selection)
  {
    selectionCopy = [AVMediaSelectionOption mediaSelectionNilOptionForGroup:group];
    if (!selectionCopy)
    {
      goto LABEL_12;
    }
  }

  propertyList = [selectionCopy propertyList];
  if (propertyList)
  {
    dictionary = [propertyList mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  dictionary2 = [selectionCopy dictionary];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 addEntriesFromDictionary:dictionary2];
  }

  if (v7)
  {
    v9 = [v7 copy];

    return v9;
  }

  else
  {
LABEL_12:
    v11 = MEMORY[0x1E695DF20];

    return [v11 dictionary];
  }
}

- (void)_setURL:(id)l
{
  if (!self->_playerItem->URL)
  {
    self->_playerItem->URL = l;
  }
}

- (void)_setAsset:(id)asset
{
  if (self->_playerItem->asset != asset)
  {
    [(AVPlayerItem *)self _removeFAListeners];
    assetCopy = asset;

    self->_playerItem->asset = asset;
    [(AVPlayerItem *)self _addFAListeners];
    if (!-[AVPlayerItem _isReadyForInspectionOfDuration](self, "_isReadyForInspectionOfDuration") && [asset statusOfValueForKey:@"duration" error:0] == 2)
    {
      [(AVPlayerItem *)self _markAsReadyForInspectionOfDuration];
      v13 = 0uLL;
      v14 = 0;
      [(AVPlayerItem *)self _duration];
      ivarAccessQueue = self->_playerItem->ivarAccessQueue;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __26__AVPlayerItem__setAsset___block_invoke;
      v10[3] = &unk_1E7462FD8;
      v10[4] = self;
      v11 = v13;
      v12 = v14;
      av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
    }

    if ([asset statusOfValueForKey:@"tracks" error:0] == 2 && (objc_msgSend(asset, "_isStreaming") & 1) == 0)
    {
      [(AVPlayerItem *)self _markAsReadyForInspectionOfTracks];
      _tracks = [(AVPlayerItem *)self _tracks];
      v8 = self->_playerItem->ivarAccessQueue;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __26__AVPlayerItem__setAsset___block_invoke_2;
      v9[3] = &unk_1E7460DF0;
      v9[4] = self;
      v9[5] = _tracks;
      av_readwrite_dispatch_queue_write(v8, v9);
      if (self->_playerItem->missingAudioEditList)
      {
        [-[AVPlayerItem _player](self "_player")];
      }
    }

    if ([asset statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:0] == 2)
    {
      [(AVPlayerItem *)self _markFigAssetAsReadyForInspectionOfMediaSelectionOptions];
      [(AVPlayerItem *)self _informObserversAboutAvailabilityOfCurrentMediaSelection];
    }
  }
}

__n128 __26__AVPlayerItem__setAsset___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[32].n128_u64[0] = *(a1 + 56);
  v1[31] = result;
  return result;
}

uint64_t __26__AVPlayerItem__setAsset___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 152) = result;
  return result;
}

- (id)_ensureAssetWithFigPlaybackItemWithTrackIDs:(id)ds
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__8;
  v19 = __Block_byref_object_dispose__8;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(AVAsset *)self->_playerItem->asset _isStreaming]&& !+[AVPlayerItem _forStreamingItemsVendAssetWithFigPlaybackItem])
  {
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__AVPlayerItem__ensureAssetWithFigPlaybackItemWithTrackIDs___block_invoke;
    v10[3] = &unk_1E7460F08;
    v10[4] = ds;
    v10[5] = self;
    v10[6] = &v11;
    v10[7] = &v15;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  }

  else
  {
    v5 = self->_playerItem->ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__AVPlayerItem__ensureAssetWithFigPlaybackItemWithTrackIDs___block_invoke_2;
    v9[3] = &unk_1E7460E68;
    v9[4] = self;
    v9[5] = &v15;
    av_readwrite_dispatch_queue_read(v5, v9);
  }

  if (*(v12 + 24) == 1)
  {
    [v16[5] tracks];
  }

  v7 = v16[5];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

id __60__AVPlayerItem__ensureAssetWithFigPlaybackItemWithTrackIDs___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToArray:*(*(*(a1 + 40) + 8) + 248)] & 1) == 0)
  {

    *(*(*(a1 + 40) + 8) + 248) = *(a1 + 32);
    *(*(*(a1 + 40) + 8) + 240) = [AVAsset assetWithURL:*(*(*(a1 + 40) + 8) + 8) figPlaybackItem:*(*(*(a1 + 40) + 8) + 128) trackIDs:*(*(*(a1 + 40) + 8) + 248) dynamicBehavior:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  result = *(*(*(a1 + 40) + 8) + 240);
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

id __60__AVPlayerItem__ensureAssetWithFigPlaybackItemWithTrackIDs___block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 240);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_markAsNeedingNewAssetWithFigPlaybackItem
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__AVPlayerItem__markAsNeedingNewAssetWithFigPlaybackItem__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

id __64__AVPlayerItem__setAssetToAssetWithFigPlaybackItemIfAppropriate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[30];
  if (!v3)
  {
    *(*(*(a1 + 32) + 8) + 240) = [AVAsset assetWithURL:v2[1] figPlaybackItem:v2[16] trackIDs:0 dynamicBehavior:1];
    v3 = *(*(*(a1 + 32) + 8) + 240);
  }

  result = v3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_markAssetWithFigPlaybackItemAsNeedingNewTracks
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__8;
  v8 = __Block_byref_object_dispose__8;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__AVPlayerItem__markAssetWithFigPlaybackItemAsNeedingNewTracks__block_invoke;
  v3[3] = &unk_1E7460E68;
  v3[4] = self;
  v3[5] = &v4;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v3);
  [v5[5] _tracksDidChange];

  _Block_object_dispose(&v4, 8);
}

id __63__AVPlayerItem__markAssetWithFigPlaybackItemAsNeedingNewTracks__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 240);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_kickAssetObserversIfAppropriate
{
  if (self->_playerItem->wasInitializedWithURL && +[AVPlayerItem _forNonStreamingURLsFireKVOForAssetWhenReadyForInspection]&& (BYTE3(self->_playerItem->timedMetadata) & 1) == 0)
  {
    [(AVPlayerItem *)self willChangeValueForKey:@"asset"];
    [(AVPlayerItem *)self didChangeValueForKey:@"asset"];
    BYTE3(self->_playerItem->timedMetadata) = 1;
  }
}

- (void)_informObserversAboutAvailabilityOfTracks:(id)tracks
{
  if ((BYTE2(self->_playerItem->timedMetadata) & 1) == 0)
  {
    [(AVPlayerItem *)self willChangeValueForKey:@"tracks"];
    if (!tracks)
    {
      tracks = [(AVPlayerItem *)self _tracks];
    }

    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__AVPlayerItem__informObserversAboutAvailabilityOfTracks___block_invoke;
    v7[3] = &unk_1E7460DF0;
    v7[4] = self;
    v7[5] = tracks;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
    [(AVPlayerItem *)self didChangeValueForKey:@"tracks"];
    v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemTracksDidChangeNotification" object:self userInfo:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    BYTE2(self->_playerItem->timedMetadata) = 1;
  }
}

uint64_t __58__AVPlayerItem__informObserversAboutAvailabilityOfTracks___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 152) = result;
  return result;
}

uint64_t __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"presentationSize"];
  v2 = *(a1 + 32);
  v3 = *(*(v2 + 8) + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke_3;
  v6[3] = &unk_1E74625B0;
  v6[4] = v2;
  v7 = *(a1 + 40);
  av_readwrite_dispatch_queue_write(v3, v6);
  [objc_msgSend(*(a1 + 32) "_player")];
  [*(a1 + 32) didChangeValueForKey:@"presentationSize"];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemPresentationSizeDidChangeNotification" object:*(a1 + 32) userInfo:0];
  return [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

__n128 __67__AVPlayerItem__informObserversAboutAvailabilityOfPresentationSize__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 992) = result;
  return result;
}

- (void)_informObserversAboutAvailabilityOfDuration:(id *)duration
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3810000000;
  v10[3] = &unk_19626E495;
  v11 = *duration;
  time1 = *duration;
  time2 = **&MEMORY[0x1E6960C70];
  if (CMTimeCompare(&time1, &time2))
  {
    [(AVPlayerItem *)self willChangeValueForKey:@"duration"];
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_4;
    v6[3] = &unk_1E7460EE0;
    v6[4] = self;
    v6[5] = v10;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
    [(AVPlayerItem *)self didChangeValueForKey:@"duration"];
  }

  else
  {
    figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = v10;
    dispatch_async(figPlaybackItemAccessorQueue, block);
  }

  _Block_object_dispose(v10, 8);
}

void __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _duration];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v7;
  *(v2 + 48) = v8;
  block[0] = MEMORY[0x1E69E9820];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 32) + 8) + 136);
  block[1] = 3221225472;
  block[2] = __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_2;
  block[3] = &unk_1E7460EE0;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"duration"];
  v5[0] = MEMORY[0x1E69E9820];
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 32) + 8) + 16);
  v5[1] = 3221225472;
  v5[2] = __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_3;
  v5[3] = &unk_1E7460EE0;
  v6 = v2;
  av_readwrite_dispatch_queue_write(v3, v5);
  return [*(a1 + 32) didChangeValueForKey:@"duration"];
}

__n128 __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  result = v2[2];
  v1[32].n128_u64[0] = v2[3].n128_u64[0];
  v1[31] = result;
  return result;
}

__n128 __60__AVPlayerItem__informObserversAboutAvailabilityOfDuration___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(*(a1 + 40) + 8);
  result = v2[2];
  v1[32].n128_u64[0] = v2[3].n128_u64[0];
  v1[31] = result;
  return result;
}

- (NSError)error
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:150];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"error" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__AVPlayerItem_error__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

id __21__AVPlayerItem_error__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 288);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_changeStatusToFailedWithError:(id)error
{
  if ([(AVPlayerItem *)self status]!= AVPlayerItemStatusFailed)
  {
    [(AVPlayerItem *)self willChangeValueForKey:@"status"];
    [(AVPlayerItem *)self willChangeValueForKey:@"error"];
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__AVPlayerItem__changeStatusToFailedWithError___block_invoke;
    v6[3] = &unk_1E7460DF0;
    v6[4] = self;
    v6[5] = error;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
    [(AVPlayerItem *)self didChangeValueForKey:@"error"];
    [(AVPlayerItem *)self didChangeValueForKey:@"status"];
    if ([objc_msgSend(error "domain")])
    {
      if ([error code] == -11819)
      {
        [(AVAsset *)[(AVPlayerItem *)self asset] _serverHasDied];
      }
    }
  }
}

uint64_t __47__AVPlayerItem__changeStatusToFailedWithError___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 280) != 2)
  {
    v2 = result;
    *(v1 + 280) = 2;
    result = [*(result + 40) copy];
    *(*(*(v2 + 32) + 8) + 288) = result;
  }

  return result;
}

- (NSArray)automaticallyLoadedAssetKeys
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"automaticallyLoadedAssetKeys" on:self];
  result = self->_playerItem->automaticallyLoadedAssetKeys;
  if (!result)
  {
    v4 = MEMORY[0x1E695DEC8];

    return [v4 array];
  }

  return result;
}

- (CMTime)duration
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:148];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"duration" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E6960C68];
  v13 = *(MEMORY[0x1E6960C68] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __24__AVPlayerItem_duration__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return AVTelemetryIntervalEnd(&v14);
}

__n128 __24__AVPlayerItem_duration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = v2[31];
  v1[3].n128_u64[0] = v2[32].n128_u64[0];
  v1[2] = result;
  return result;
}

- (id)_tracksWithFPTrackIDArray:(id)array fromFigPlaybackItem:(OpaqueFigPlaybackItem *)item
{
  v23 = *MEMORY[0x1E69E9840];
  if (array)
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array, "count")}];
    [(AVPlayerItem *)self _ensureAssetWithFigPlaybackItemWithTrackIDs:array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [array countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(array);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = CFGetTypeID(v11);
          if (v12 == CFNumberGetTypeID())
          {
            valuePtr = 0;
            CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
            if (valuePtr)
            {
              v13 = [AVPlayerItemTrack playerItemTrackWithFigPlaybackItem:"playerItemTrackWithFigPlaybackItem:readyForInspection:trackID:asset:playerItem:" readyForInspection:item trackID:1 asset:? playerItem:?];
              if (v13)
              {
                [v16 addObject:v13];
              }
            }
          }
        }

        v8 = [array countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    return v16;
  }

  else
  {
    v15 = MEMORY[0x1E695DEC8];

    return [v15 array];
  }
}

- (id)_cachedTracks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVPlayerItem__cachedTracks__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __29__AVPlayerItem__cachedTracks__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 144) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_tracksFromAssetTrackIDs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem__tracksFromAssetTrackIDs__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isReadyForInspectionOfTracks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem__isReadyForInspectionOfTracks__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_markAsReadyForInspectionOfTracks
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__AVPlayerItem__markAsReadyForInspectionOfTracks__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (id)_tracks
{
  array = [MEMORY[0x1E695DEC8] array];
  if (![(AVPlayerItem *)self _isReadyForInspectionOfTracks]&& sOKToBlockWhenGettingValuesOfProperties != 1)
  {
    return array;
  }

  if ([(AVAsset *)self->_playerItem->asset _isStreaming])
  {
    _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
    if (_copyFigPlaybackItem)
    {
      v5 = _copyFigPlaybackItem;
      cf = 0;
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7 && !v7(FigBaseObject, *MEMORY[0x1E6972B80], *MEMORY[0x1E695E480], &cf))
      {
        array = [(AVPlayerItem *)self _tracksWithFPTrackIDArray:cf fromFigPlaybackItem:v5];
        if (cf)
        {
          CFRelease(cf);
        }
      }

      CFRelease(v5);
    }

    return array;
  }

  if (!self->_playerItem->asset)
  {
    return array;
  }

  return [(AVPlayerItem *)self _tracksFromAssetTrackIDs];
}

- (id)_trackWithTrackID:(int)d
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _tracks = [(AVPlayerItem *)self _tracks];
  v5 = [_tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(_tracks);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "assetTrack")] == d)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [_tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)_enabledTrackFormatDescriptions
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  tracks = [(AVPlayerItem *)self tracks];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSArray *)tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(tracks);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([objc_msgSend(v9 "assetTrack")])
        {
          [array addObjectsFromArray:{objc_msgSend(objc_msgSend(v9, "assetTrack"), "formatDescriptions")}];
        }
      }

      v6 = [(NSArray *)tracks countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)_addFPListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItem *)self _weakReference];
    CFRetain(_weakReference);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _fpNotificationNames = [(AVPlayerItem *)self _fpNotificationNames];
    v6 = [_fpNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(_fpNotificationNames);
          }

          [v3 addListenerWithWeakReference:_weakReference callback:avplayeritem_fpItemNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_playerItem->figPlaybackItem flags:0];
        }

        while (v7 != v9);
        v7 = [_fpNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputChanged name:*MEMORY[0x1E6972510] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputWasFlushed name:*MEMORY[0x1E6972518] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_MetadataOutputChanged name:*MEMORY[0x1E6972520] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_MetadataOutputWasFlushed name:*MEMORY[0x1E6972528] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_TaggedMetadataArrayChanged name:*MEMORY[0x1E69725F8] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputChanged name:*MEMORY[0x1E6972580] object:self->_playerItem->figPlaybackItem flags:0];
    [v3 addListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputWasFlushed name:*MEMORY[0x1E6972588] object:self->_playerItem->figPlaybackItem flags:0];
  }
}

- (void)_removeFPListeners
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    _weakReference = [(AVPlayerItem *)self _weakReference];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    _fpNotificationNames = [(AVPlayerItem *)self _fpNotificationNames];
    v6 = [_fpNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(_fpNotificationNames);
          }

          [v3 removeListenerWithWeakReference:_weakReference callback:avplayeritem_fpItemNotificationCallback name:*(*(&v10 + 1) + 8 * v9++) object:self->_playerItem->figPlaybackItem];
        }

        while (v7 != v9);
        v7 = [_fpNotificationNames countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputChanged name:*MEMORY[0x1E6972510] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemLegibleOutputWasFlushed name:*MEMORY[0x1E6972518] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_MetadataOutputChanged name:*MEMORY[0x1E6972520] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_MetadataOutputWasFlushed name:*MEMORY[0x1E6972528] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_TaggedMetadataArrayChanged name:*MEMORY[0x1E69725F8] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputChanged name:*MEMORY[0x1E6972580] object:self->_playerItem->figPlaybackItem];
    [v3 removeListenerWithWeakReference:_weakReference callback:AVFigPlaybackItemNotificationCallback_FigPlaybackItemRenderedLegibleOutputWasFlushed name:*MEMORY[0x1E6972588] object:self->_playerItem->figPlaybackItem];
    CFRelease(_weakReference);
  }
}

- (void)_respondToBecomingReadyForBasicInspection
{
  v2 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  [(AVPlayerItem *)self _respondToBecomingReadyForBasicInspectionWithDuration:&v2];
}

- (void)_respondToBecomingReadyForBasicInspectionWithDuration:(id *)duration
{
  if (![(AVPlayerItem *)self _isReadyForInspectionOfDuration])
  {
    if ([(AVAsset *)self->_playerItem->asset statusOfValueForKey:@"duration" error:0]== 2)
    {
      [(AVPlayerItem *)self _markAsReadyForInspectionOfDuration];
    }

    if ([(AVPlayerItem *)self _isReadyForInspectionOfDuration])
    {
      v5 = *&duration->var0;
      var3 = duration->var3;
      [(AVPlayerItem *)self _informObserversAboutAvailabilityOfDuration:&v5];
    }
  }

  if (![(AVAsset *)self->_playerItem->asset _isStreaming])
  {
    [(AVPlayerItem *)self _markAsReadyForBasicInspection];
    [(AVPlayerItem *)self _markAsReadyForInspectionOfTracks];
    [(AVPlayerItem *)self _markAsReadyForInspectionOfPresentationSize];
    [-[AVPlayerItem _cachedTracks](self "_cachedTracks")];
    [(AVPlayerItem *)self _kickAssetObserversIfAppropriate];
    [(AVPlayerItem *)self _informObserversAboutAvailabilityOfTracks:0];
    [(AVPlayerItem *)self _informObserversAboutAvailabilityOfPresentationSize];
    if (self->_playerItem->missingAudioEditList)
    {
      [-[AVPlayerItem _player](self "_player")];
    }
  }
}

- (void)_makeReadyForEnqueueingWithCompletionHandler:(id)handler
{
  [(AVPlayerItem *)self _attachToFigPlayer];
  figPlaybackItem = self->_playerItem->figPlaybackItem;
  if (!figPlaybackItem)
  {
    if (handler)
    {
      v14 = *(handler + 2);

      v14(handler);
    }

    return;
  }

  v22 = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v6)
  {
    v7 = v6(figPlaybackItem, 0, &v22);
    if (!v7)
    {
      v8 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v7 = -12782;
  }

  [(AVPlayerItem *)self _changeStatusToFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v7, 0)];
  v8 = 0;
LABEL_7:
  if (v22)
  {
    [(AVPlayerItem *)self _respondToBecomingReadyForBasicInspection];
  }

  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E6972958]];
  v22 = 0;
  v10 = self->_playerItem->figPlaybackItem;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v11)
  {
    v12 = v11(v10, v9, &v22);
    if (!v12)
    {
      v13 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = -12782;
  }

  [(AVPlayerItem *)self _changeStatusToFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v12, 0)];
  v13 = 0;
LABEL_19:
  if (v22)
  {
    LOBYTE(self->_playerItem->timedMetadata) = 1;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v15 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E6972878]];
  v22 = 0;
  v16 = self->_playerItem->figPlaybackItem;
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v17)
  {
    v18 = -12782;
    goto LABEL_26;
  }

  v18 = v17(v16, v15, &v22);
  if (v18)
  {
LABEL_26:
    [(AVPlayerItem *)self _changeStatusToFailedWithError:AVLocalizedErrorWithUnderlyingOSStatus(v18, 0)];
    v19 = 0;
    goto LABEL_27;
  }

  v19 = 1;
LABEL_27:
  if (v22)
  {
    BYTE1(self->_playerItem->timedMetadata) = 1;
  }

  if (!v19 || [(AVPlayerItem *)self _isReadyForBasicInspection]&& (playerItem = self->_playerItem, LOBYTE(playerItem->timedMetadata) == 1) && BYTE1(playerItem->timedMetadata) == 1)
  {
LABEL_33:
    [(AVPlayerItem *)self _invokeReadyForEnqueueingHandlers];
    if (handler)
    {
      (*(handler + 2))(handler);
    }

    return;
  }

  if (handler)
  {
    v21 = [handler copy];
    [(NSMutableDictionary *)self->_playerItem->mediaOptionsSelectedByClient addObject:v21];
  }
}

- (BOOL)_canPlayFastForward
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if (([(AVPlayerItem *)self status]== AVPlayerItemStatusReadyToPlay || sOKToBlockWhenGettingValuesOfProperties == 1) && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, *MEMORY[0x1E6972888], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (void)_executeHandlerCheckingIfTrickModesAreAllowed:(id)allowed
{
  if (_os_feature_enabled_impl())
  {
    v5 = 1;
  }

  else
  {
    v5 = [-[AVPlayerItem _player](self "_player")] ^ 1;
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVPlayerItem__executeHandlerCheckingIfTrickModesAreAllowed___block_invoke;
  block[3] = &unk_1E7463000;
  v8 = v5;
  block[4] = self;
  block[5] = allowed;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
}

uint64_t __62__AVPlayerItem__executeHandlerCheckingIfTrickModesAreAllowed___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) == 1 && *(*(*(a1 + 32) + 8) + 1584) == 0;
  return (*(v2 + 16))(v2, v3);
}

- (BOOL)canPlayFastForward
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canPlayFastForward" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AVPlayerItem_canPlayFastForward__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __34__AVPlayerItem_canPlayFastForward__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 984);
  }

  return result;
}

- (BOOL)_canPlayFastReverse
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if (([(AVPlayerItem *)self status]== AVPlayerItemStatusReadyToPlay || sOKToBlockWhenGettingValuesOfProperties == 1) && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, *MEMORY[0x1E6972890], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (BOOL)canPlayFastReverse
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canPlayFastReverse" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AVPlayerItem_canPlayFastReverse__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __34__AVPlayerItem_canPlayFastReverse__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 985);
  }

  return result;
}

- (BOOL)_isAFileBasedItemThatsReadyToPlay
{
  if ([(AVPlayerItem *)self status]== AVPlayerItemStatusReadyToPlay)
  {
    return ![(AVAsset *)self->_playerItem->asset _isStreaming];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_canPlayReverse
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if ([(AVPlayerItem *)self status]== AVPlayerItemStatusReadyToPlay && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, *MEMORY[0x1E6972898], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (BOOL)canPlayReverse
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canPlayReverse" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__AVPlayerItem_canPlayReverse__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __30__AVPlayerItem_canPlayReverse__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 986);
  }

  return result;
}

- (BOOL)canPlaySlowForward
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canPlaySlowForward" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AVPlayerItem_canPlaySlowForward__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __34__AVPlayerItem_canPlaySlowForward__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 988);
  }

  return result;
}

- (BOOL)canPlaySlowReverse
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canPlaySlowReverse" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AVPlayerItem_canPlaySlowReverse__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __34__AVPlayerItem_canPlaySlowReverse__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 987);
  }

  return result;
}

- (BOOL)_canStepForward
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if (([(AVPlayerItem *)self status]== AVPlayerItemStatusReadyToPlay || sOKToBlockWhenGettingValuesOfProperties == 1) && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, *MEMORY[0x1E6972B18], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (BOOL)canStepForward
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canStepForward" on:self];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__AVPlayerItem_canStepForward__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = selfCopy;
  v4[5] = &v5;
  [(AVPlayerItem *)selfCopy _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  LOBYTE(selfCopy) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selfCopy;
}

uint64_t __30__AVPlayerItem_canStepForward__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 989);
  }

  return result;
}

- (BOOL)canStepBackward
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AVPlayerItem_canStepBackward__block_invoke;
  v4[3] = &unk_1E7463028;
  v4[4] = self;
  v4[5] = &v5;
  [(AVPlayerItem *)self _executeHandlerCheckingIfTrickModesAreAllowed:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __31__AVPlayerItem_canStepBackward__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 32) + 8) + 990);
  }

  return result;
}

- (BOOL)automaticallyPreservesTimeOffsetFromLive
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"automaticallyPreservesTimeOffsetFromLive" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = selfCopy->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayerItem_automaticallyPreservesTimeOffsetFromLive__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_updatePreservesTimeOffsetFromLive
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__AVPlayerItem__updatePreservesTimeOffsetFromLive__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __50__AVPlayerItem__updatePreservesTimeOffsetFromLive__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) automaticallyPreservesTimeOffsetFromLive])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972850];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setAutomaticallyPreservesTimeOffsetFromLive:(BOOL)automaticallyPreservesTimeOffsetFromLive
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"automaticallyPreservesTimeOffsetFromLive" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVPlayerItem_setAutomaticallyPreservesTimeOffsetFromLive___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = automaticallyPreservesTimeOffsetFromLive;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updatePreservesTimeOffsetFromLive];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"automaticallyPreservesTimeOffsetFromLive" on:self];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_configuredTimeOffsetFromLive
{
  v19 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  flags = *(MEMORY[0x1E6960C70] + 12);
  timescale = *(MEMORY[0x1E6960C70] + 8);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v8 = result;
    if ([(AVPlayerItem *)self _isReadyForInspectionOfRecommendedTimeOffsetFromLive]|| sOKToBlockWhenGettingValuesOfProperties == 1)
    {
      dictionaryRepresentation = 0;
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        if (!v10(FigBaseObject, *MEMORY[0x1E6972B58], *MEMORY[0x1E695E480], &dictionaryRepresentation))
        {
          CMTimeMakeFromDictionary(&v15, dictionaryRepresentation);
          value = v15.value;
          flags = v15.flags;
          timescale = v15.timescale;
          epoch = v15.epoch;
          if (dictionaryRepresentation)
          {
            CFRelease(dictionaryRepresentation);
          }
        }
      }
    }

    CFRelease(v8);
  }

  if ((flags & 1) == 0)
  {
    result = [(AVPlayerItem *)self configuredTimeOffsetFromLive];
    value = v11;
    flags = v13;
    timescale = v12;
    epoch = v14;
  }

  retstr->var0 = value;
  retstr->var1 = timescale;
  retstr->var2 = flags;
  retstr->var3 = epoch;
  return result;
}

- (CMTime)configuredTimeOffsetFromLive
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"configuredTimeOffsetFromLive" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVPlayerItem_configuredTimeOffsetFromLive__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __44__AVPlayerItem_configuredTimeOffsetFromLive__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = v2[28];
  v1[3].n128_u64[0] = v2[29].n128_u64[0];
  v1[2] = result;
  return result;
}

- (void)_updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__AVPlayerItem__updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __68__AVPlayerItem__updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  memset(&v6[1], 0, sizeof(CMTime));
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 configuredTimeOffsetFromLive];
  }

  v2 = *MEMORY[0x1E695E480];
  v6[0] = v6[1];
  v3 = CMTimeCopyAsDictionary(v6, v2);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E6972B58], v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)setConfiguredTimeOffsetFromLive:(CMTime *)configuredTimeOffsetFromLive
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"configuredTimeOffsetFromLive" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVPlayerItem_setConfiguredTimeOffsetFromLive___block_invoke;
  v6[3] = &unk_1E7462FD8;
  v6[4] = self;
  v7 = *configuredTimeOffsetFromLive;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateConfiguredTimeOffsetFromLiveOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"configuredTimeOffsetFromLive" on:self];
}

__n128 __48__AVPlayerItem_setConfiguredTimeOffsetFromLive___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[29].n128_u64[0] = *(a1 + 56);
  v1[28] = result;
  return result;
}

- (BOOL)_isReadyForInspectionOfRecommendedTimeOffsetFromLive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayerItem__isReadyForInspectionOfRecommendedTimeOffsetFromLive__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_markAsReadyForInspectionOfRecommendedTimeOffsetFromLive
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__AVPlayerItem__markAsReadyForInspectionOfRecommendedTimeOffsetFromLive__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_recommendedTimeOffsetFromLive
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v6 = result;
    if ([(AVPlayerItem *)self _isReadyForInspectionOfRecommendedTimeOffsetFromLive]|| sOKToBlockWhenGettingValuesOfProperties == 1)
    {
      cf = 0;
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(FigBaseObject, *MEMORY[0x1E6972A68], *MEMORY[0x1E695E480], &cf);
        v9 = cf;
      }

      else
      {
        v9 = 0;
      }

      CMTimeMakeFromDictionary(retstr, v9);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    CFRelease(v6);
  }

  return result;
}

- (CMTime)recommendedTimeOffsetFromLive
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"recommendedTimeOffsetFromLive" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVPlayerItem_recommendedTimeOffsetFromLive__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __45__AVPlayerItem_recommendedTimeOffsetFromLive__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 472);
  v1[3].n128_u64[0] = *(v2 + 488);
  v1[2] = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentTimeWithOptionalFoldedTimebase:(SEL)timebase
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3810000000;
  v18 = &unk_19626E495;
  v19 = *MEMORY[0x1E6960C70];
  v20 = *(MEMORY[0x1E6960C70] + 16);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    if (a4)
    {
      CMTimebaseGetTime(&v14, a4);
      *(v16 + 4) = v14;
LABEL_7:
      CFRelease(_copyFigPlaybackItem);
      goto LABEL_8;
    }

    v8 = v16;
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v9 && !v9(_copyFigPlaybackItem, v8 + 4))
    {
      goto LABEL_7;
    }
  }

  seekQueue = self->_playerItem->seekQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__AVPlayerItem__currentTimeWithOptionalFoldedTimebase___block_invoke;
  v13[3] = &unk_1E7460E68;
  v13[4] = self;
  v13[5] = &v15;
  dispatch_sync(seekQueue, v13);
  if (_copyFigPlaybackItem)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = v16;
  *&retstr->var0 = *(v16 + 2);
  retstr->var3 = v11[6];
  _Block_object_dispose(&v15, 8);
  return result;
}

__n128 __55__AVPlayerItem__currentTimeWithOptionalFoldedTimebase___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(*(a1 + 32) + 8) + 1196);
  v1[3].n128_u64[0] = *(*(*(a1 + 32) + 8) + 1212);
  v1[2] = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentUnfoldedTime
{
  if (self)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _currentTimeWithOptionalFoldedTimebase:0];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return self;
}

- (CMTime)currentTime
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:2];
  AVTelemetryGenerateID();
  _copyFoldedTimebase = [(AVPlayerItem *)self _copyFoldedTimebase];
  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  if (self)
  {
    [(AVPlayerItem *)self _currentTimeWithOptionalFoldedTimebase:_copyFoldedTimebase];
  }

  if (_copyFoldedTimebase)
  {
    CFRelease(_copyFoldedTimebase);
  }

  return AVTelemetryIntervalEnd(&v7);
}

- (int)makeSeekID
{
  FigSimpleMutexLock();
  _CreateSeekID = [(AVPlayerItem *)self _CreateSeekID];
  FigSimpleMutexUnlock();
  return _CreateSeekID;
}

- (int)_CreateSeekID
{
  value_high = HIDWORD(self->_playerItem->initialMaxSnapTime.value);
  HIDWORD(self->_playerItem->initialMaxSnapTime.value) = FPSupport_IncrementSeekID();
  return value_high;
}

- (void)_cancelPendingSeekAndRegisterSeekID:(int)d withCompletionHandler:(id)handler
{
  FigSimpleMutexLock();
  playerItem = self->_playerItem;
  epoch = playerItem->initialMaxSnapTime.epoch;
  if (epoch)
  {
    playerItem->initialMaxSnapTime.epoch = 0;
  }

  timescale = playerItem->initialMaxSnapTime.timescale;
  self->_playerItem->initialMaxSnapTime.timescale = d;
  if (handler)
  {
    self->_playerItem->initialMaxSnapTime.epoch = [handler copy];
    selfCopy = self;
  }

  FigSimpleMutexUnlock();
  if (timescale)
  {
    [(AVPlayerItem *)self _postSeekCompletionNotificationWithSeekID:timescale andResult:0];
  }

  if (epoch)
  {
    epoch[2](epoch, 0);
  }
}

- (void)_unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:(int)d finished:(BOOL)finished
{
  finishedCopy = finished;
  v5 = *&d;
  FigSimpleMutexLock();
  timescale = self->_playerItem->initialMaxSnapTime.timescale;
  if (timescale)
  {
    v7 = timescale == v5;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(AVPlayerItem *)self _postSeekCompletionNotificationWithSeekID:v5 andResult:finishedCopy];
    playerItem = self->_playerItem;
    epoch = playerItem->initialMaxSnapTime.epoch;
    playerItem->initialMaxSnapTime.timescale = 0;
    self->_playerItem->initialMaxSnapTime.epoch = 0;
    FigSimpleMutexUnlock();
    if (epoch)
    {
      epoch[2](epoch, finishedCopy);
    }
  }

  else
  {

    FigSimpleMutexUnlock();
  }
}

- (void)_postSeekCompletionNotificationWithSeekID:(int)d andResult:(BOOL)result
{
  if (result)
  {
    v5 = @"AVPlayerItemSeekDidCompleteNotification";
  }

  else
  {
    v5 = @"AVPlayerItemSeekDidCancelNotification";
  }

  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", *&d), @"AVPlayerItemSeekIDKey", 0}];
  v7 = [MEMORY[0x1E696AD80] notificationWithName:v5 object:self userInfo:v6];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter postNotification:v7];
}

- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter
{
  makeSeekID = [(AVPlayerItem *)self makeSeekID];
  v12 = *time;
  v11 = *toleranceBefore;
  v10 = *toleranceAfter;
  [(AVPlayerItem *)self _seekToTime:&v12 toleranceBefore:&v11 toleranceAfter:&v10 seekID:makeSeekID completionHandler:0];
}

- (void)seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after seekID:(int)d
{
  if (!d)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"Invalid SeekID";
    goto LABEL_6;
  }

  v10 = *&d;
  v14 = FPSupport_SeekIDGetSource();
  if (v14 != FPSupport_SeekIDGetSource())
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = @"seekID was not created by this player item";
LABEL_6:
    v18 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v17, before, after, *&d, v6, v7, v19), 0}];
    objc_exception_throw(v18);
  }

  v23 = *&time->var0;
  var3 = time->var3;
  v21 = *&before->var0;
  v22 = before->var3;
  v19 = *&after->var0;
  v20 = after->var3;
  [(AVPlayerItem *)self _seekToTime:&v23 toleranceBefore:&v21 toleranceAfter:&v19 seekID:v10 completionHandler:0];
}

- (void)seekToTime:(CMTime *)time completionHandler:(void *)completionHandler
{
  makeSeekID = [(AVPlayerItem *)self makeSeekID];
  v12 = *time;
  v10 = *MEMORY[0x1E6960C88];
  v11 = *(MEMORY[0x1E6960C88] + 16);
  v8 = v10;
  v9 = v11;
  [(AVPlayerItem *)self _seekToTime:&v12 toleranceBefore:&v10 toleranceAfter:&v8 seekID:makeSeekID completionHandler:completionHandler];
}

- (void)seekToTime:(CMTime *)time toleranceBefore:(CMTime *)toleranceBefore toleranceAfter:(CMTime *)toleranceAfter completionHandler:(void *)completionHandler
{
  makeSeekID = [(AVPlayerItem *)self makeSeekID];
  v14 = *time;
  v13 = *toleranceBefore;
  v12 = *toleranceAfter;
  [(AVPlayerItem *)self _seekToTime:&v14 toleranceBefore:&v13 toleranceAfter:&v12 seekID:makeSeekID completionHandler:completionHandler];
}

- (void)_seekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after seekID:(int)d completionHandler:(id)handler
{
  v8 = *&d;
  v82[5] = *MEMORY[0x1E69E9840];
  delegate = [(AVPlayerItem *)self delegate];
  memset(&v80, 0, sizeof(v80));
  if (self)
  {
    [(AVPlayerItem *)self loopTimeRange];
    v20 = (v80.start.flags & 1) == 0;
  }

  else
  {
    v20 = 1;
  }

  v79 = *time;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  if (!v20 && (v80.duration.flags & 1) != 0 && !v80.duration.epoch && (v80.duration.value & 0x8000000000000000) == 0 && (time->var2 & 0x1D) == 1)
  {
    time2 = **&MEMORY[0x1E6960C70];
    memset(&v73, 0, sizeof(v73));
    time1 = v80;
    CMTimeRangeGetEnd(&v73, &time1);
    v79 = *time;
    *&time1.start.value = *&time->var0;
    time1.start.epoch = time->var3;
    lhs = v80.start;
    if ((CMTimeCompare(&time1.start, &lhs) & 0x80000000) == 0)
    {
      time = *time;
      time1 = v80;
      CMTimeFoldIntoRange(&lhs, &time, &time1);
      v79 = lhs;
    }

    lhs = v73;
    time = v79;
    CMTimeSubtract(&time1.start, &lhs, &time);
    time2 = time1.start;
    CMTimeMake(&lhs, 1, 1000);
    time = time2;
    CMTimeSubtract(&time1.start, &time, &lhs);
    time2 = time1.start;
    lhs = *after;
    time = time1.start;
    CMTimeMinimum(&time1.start, &lhs, &time);
    *&after->var0 = *&time1.start.value;
    after->var3 = time1.start.epoch;
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate playerItem:self shouldSeekToTime:time toleranceBefore:before toleranceAfter:after] & 1) == 0)
  {
    [(AVPlayerItem *)self _cancelPendingSeekAndRegisterSeekID:v8 withCompletionHandler:handler];
    [(AVPlayerItem *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:v8 finished:0];
    goto LABEL_36;
  }

  if (sRaiseExceptionWhenSeekingToANonNumericTime == 1)
  {
    var2 = time->var2;
    if ((~var2 & 0x11) == 0 || (var2 & 1) == 0)
    {
      v47 = *MEMORY[0x1E695E480];
      *&time1.start.value = *&time->var0;
      time1.start.epoch = time->var3;
      v48 = CMTimeCopyDescription(v47, &time1.start);
      v54 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Seeking is not possible to time %@", v49, v50, v51, v52, v53, v48), 0}];
      objc_exception_throw(v54);
    }
  }

  if ((before->var2 & 1) == 0)
  {
    v45 = MEMORY[0x1E695DF30];
    v46 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"toleranceBefore seekToTime must be valid", v14, v15, v16, v17, v18, v55);
    goto LABEL_43;
  }

  *&time1.start.value = *&before->var0;
  time1.start.epoch = before->var3;
  v56 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v22 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v22;
  if (CMTimeCompare(&time1.start, &time2) < 0)
  {
    v45 = MEMORY[0x1E695DF30];
    v46 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"toleranceBefore seekToTime may not be negative", v23, v24, v25, v26, v27, v55);
    goto LABEL_43;
  }

  if ((after->var2 & 1) == 0)
  {
    v45 = MEMORY[0x1E695DF30];
    v46 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"toleranceAfter seekToTime must be valid", v23, v24, v25, v26, v27, v55);
    goto LABEL_43;
  }

  *&time1.start.value = *&after->var0;
  time1.start.epoch = after->var3;
  *&time2.value = v56;
  time2.epoch = v22;
  if (CMTimeCompare(&time1.start, &time2) < 0)
  {
    v45 = MEMORY[0x1E695DF30];
    v46 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"toleranceAfter seekToTime may not be negative", v28, v29, v30, v31, v32, v55);
LABEL_43:
    objc_exception_throw([v45 exceptionWithName:*MEMORY[0x1E695D940] reason:v46 userInfo:0]);
  }

  v69 = **&MEMORY[0x1E6960C70];
  epoch = v69.epoch;
  v57 = *&v69.value;
  v68 = v69;
  *&time1.start.value = *&time->var0;
  time1.start.epoch = time->var3;
  time2 = *before;
  v73 = *after;
  AVPlayerItemGetFigPlayerSnapTimesForTimeAndTolerances(&time1.start, &time2, &v73, &v69, &v68);
  *&time1.start.value = *&before->var0;
  time1.start.epoch = before->var3;
  time2 = *after;
  FigPlayerSetTimeFlagsForTolerances = AVPlayerItemGetFigPlayerSetTimeFlagsForTolerances(&time1.start, &time2);
  seekQueue = self->_playerItem->seekQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__AVPlayerItem__seekToTime_toleranceBefore_toleranceAfter_seekID_completionHandler___block_invoke;
  block[3] = &unk_1E7463050;
  block[4] = self;
  block[5] = &v75;
  v59 = *&v80.start.value;
  v60 = *&v80.start.epoch;
  var3 = time->var3;
  v36 = *&time->var0;
  v61 = *&v80.duration.timescale;
  v62 = v36;
  v64 = v79;
  v65 = FigPlayerSetTimeFlagsForTolerances;
  v66 = v69;
  v67 = v68;
  dispatch_sync(seekQueue, block);
  if (v76[3])
  {
    v81[0] = *MEMORY[0x1E6972C98];
    v82[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:FigPlayerSetTimeFlagsForTolerances];
    v81[1] = *MEMORY[0x1E6972C88];
    v82[1] = [MEMORY[0x1E696AD98] numberWithInt:v8];
    v81[2] = *MEMORY[0x1E6972C80];
    time1.start = v69;
    v82[2] = NSDictionaryFromCMTime(&time1.start);
    v81[3] = *MEMORY[0x1E6972C78];
    time1.start = v68;
    v37 = NSDictionaryFromCMTime(&time1.start);
    v81[4] = *MEMORY[0x1E6972C90];
    v82[3] = v37;
    v82[4] = &unk_1F0AD3478;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:5];
    [(AVPlayerItem *)self _cancelPendingSeekAndRegisterSeekID:v8 withCompletionHandler:handler];
    v39 = [-[AVPlayerItem _player](self "_player")];
    time2 = *time;
    if (v39)
    {
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v40)
      {
        time1.start = time2;
        v40(v39, &time1, v8);
      }
    }

    v41 = v76[3];
    time2 = *time;
    v42 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v42 && (time1.start = time2, !v42(v41, &time1, v38)))
    {
      if (!v39)
      {
        goto LABEL_36;
      }
    }

    else
    {
      [(AVPlayerItem *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:v8 finished:0];
      if (!v39)
      {
        goto LABEL_36;
      }

      v43 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v43)
      {
        *&time1.start.value = v57;
        time1.start.epoch = epoch;
        v43(v39, &time1, 0xFFFFFFFFLL);
      }
    }

    CFRelease(v39);
  }

  else if (handler)
  {
    (*(handler + 2))(handler, 1);
  }

LABEL_36:
  v44 = v76[3];
  if (v44)
  {
    CFRelease(v44);
  }

  _Block_object_dispose(&v75, 8);
}

uint64_t __84__AVPlayerItem__seekToTime_toleranceBefore_toleranceAfter_seekID_completionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyFigPlaybackItem];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 1192) = 0;
  }

  else
  {
    if ((*(a1 + 60) & 1) != 0 && (*(a1 + 84) & 1) != 0 && !*(a1 + 88) && (*(a1 + 72) & 0x8000000000000000) == 0 && (*(a1 + 108) & 0x1D) == 1)
    {
      v3 = 120;
    }

    else
    {
      v3 = 96;
    }

    v4 = *(*(a1 + 32) + 8) + 1196;
    v5 = (a1 + v3);
    v6 = *v5;
    *(v4 + 16) = *(v5 + 2);
    *v4 = v6;
    *(*(*(a1 + 32) + 8) + 1220) = 0;
    *(*(*(a1 + 32) + 8) + 1224) = *(a1 + 144);
    v7 = *(*(a1 + 32) + 8) + 1228;
    v8 = *(a1 + 148);
    *(v7 + 16) = *(a1 + 164);
    *v7 = v8;
    v9 = *(*(a1 + 32) + 8) + 1252;
    v10 = *(a1 + 172);
    *(v9 + 16) = *(a1 + 188);
    *v9 = v10;
    v11 = *(a1 + 32);

    return [v11 setInitialDate:0];
  }

  return result;
}

- (void)cancelPendingSeeks
{
  FigSimpleMutexLock();
  timescale = self->_playerItem->initialMaxSnapTime.timescale;
  FigSimpleMutexUnlock();

  [(AVPlayerItem *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:timescale finished:0];
}

- (NSDate)currentDate
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v3 = _copyFigPlaybackItem;
  v8 = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(FigBaseObject, *MEMORY[0x1E69728D0], *MEMORY[0x1E695E480], &v8))
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

- (BOOL)seekToDate:(NSDate *)date completionHandler:(void *)completionHandler
{
  makeSeekID = [(AVPlayerItem *)self makeSeekID];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v9 = _copyFigPlaybackItem;
    [(AVPlayerItem *)self _cancelPendingSeekAndRegisterSeekID:makeSeekID withCompletionHandler:completionHandler];
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v10 && !v10(v9, date, makeSeekID))
    {
      v11 = 1;
    }

    else
    {
      [(AVPlayerItem *)self _unregisterInvokeAndReleasePendingSeekCompletionHandlerForSeekID:makeSeekID finished:0];
      v11 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    [(AVPlayerItem *)self _postSeekCompletionNotificationWithSeekID:makeSeekID andResult:0];
    if (completionHandler)
    {
      (*(completionHandler + 2))(completionHandler, 0);
    }

    return 0;
  }

  return v11;
}

- (BOOL)seekToDate:(NSDate *)date
{
  v12 = *MEMORY[0x1E69E9840];
  _copyStateDispatchQueue = [(AVPlayerItem *)self _copyStateDispatchQueue];
  if (_copyStateDispatchQueue)
  {
    v6 = _copyStateDispatchQueue;
    IsNotCurrentDispatchQueue = _FigIsNotCurrentDispatchQueue();
    if (IsNotCurrentDispatchQueue)
    {
      if (dword_1ED5AC298)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        IsNotCurrentDispatchQueue = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      AVPotentialRaceCondition(IsNotCurrentDispatchQueue);
    }

    dispatch_release(v6);
  }

  return [(AVPlayerItem *)self seekToDate:date completionHandler:0, v10, v11];
}

- (id)initialDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayerItem_initialDate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__AVPlayerItem_initialDate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 808);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setInitialDate:(id)date
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__AVPlayerItem_setInitialDate___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = date;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

id __31__AVPlayerItem_setInitialDate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 808) = result;
  return result;
}

- (id)currentEstimatedDate
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v3 = _copyFigPlaybackItem;
  v8 = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(FigBaseObject, *MEMORY[0x1E6972910], *MEMORY[0x1E695E480], &v8))
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

- (id)initialEstimatedDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayerItem_initialEstimatedDate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__AVPlayerItem_initialEstimatedDate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 816);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setInitialEstimatedDate:(id)date
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__AVPlayerItem_setInitialEstimatedDate___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = date;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

id __40__AVPlayerItem_setInitialEstimatedDate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 816) = result;
  return result;
}

- (void)stepByCount:(NSInteger)stepCount
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:8];
  AVTelemetryGenerateID();
  _player = [(AVPlayerItem *)self _player];
  _copyFigPlayer = [_player _copyFigPlayer];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  v8 = _copyFigPlaybackItem;
  if (_copyFigPlaybackItem && _copyFigPlayer)
  {
    [_player pause];
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v9)
    {
      v9(_copyFigPlayer, stepCount);
    }
  }

  else if (!_copyFigPlaybackItem)
  {
    goto LABEL_7;
  }

  CFRelease(v8);
LABEL_7:
  if (_copyFigPlayer)
  {
    CFRelease(_copyFigPlayer);
  }

  AVTelemetryIntervalEnd(&v10);
}

- (CMTime)forwardPlaybackEndTime
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"forwardPlaybackEndTime" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVPlayerItem_forwardPlaybackEndTime__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __38__AVPlayerItem_forwardPlaybackEndTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 296);
  v1[3].n128_u64[0] = *(v2 + 312);
  v1[2] = result;
  return result;
}

- (void)_updateForwardPlaybackEndTimeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__AVPlayerItem__updateForwardPlaybackEndTimeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __62__AVPlayerItem__updateForwardPlaybackEndTimeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 forwardPlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972900], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setForwardPlaybackEndTime:(CMTime *)forwardPlaybackEndTime
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"forwardPlaybackEndTime" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVPlayerItem_setForwardPlaybackEndTime___block_invoke;
  v6[3] = &unk_1E7462FD8;
  v6[4] = self;
  v7 = *forwardPlaybackEndTime;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateForwardPlaybackEndTimeOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"forwardPlaybackEndTime" on:self];
}

__n128 __42__AVPlayerItem_setForwardPlaybackEndTime___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  *(v1 + 312) = *(a1 + 56);
  *(v1 + 296) = result;
  return result;
}

- (CMTime)reversePlaybackEndTime
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"reversePlaybackEndTime" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3810000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AVPlayerItem_reversePlaybackEndTime__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v9 + 4);
  _Block_object_dispose(&v8, 8);
  return result;
}

__n128 __38__AVPlayerItem_reversePlaybackEndTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = v2[20];
  v1[3].n128_u64[0] = v2[21].n128_u64[0];
  v1[2] = result;
  return result;
}

- (void)_updateReversePlaybackEndTimeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__AVPlayerItem__updateReversePlaybackEndTimeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __62__AVPlayerItem__updateReversePlaybackEndTimeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 reversePlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972AB0], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setReversePlaybackEndTime:(CMTime *)reversePlaybackEndTime
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"reversePlaybackEndTime" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVPlayerItem_setReversePlaybackEndTime___block_invoke;
  v6[3] = &unk_1E7462FD8;
  v6[4] = self;
  v7 = *reversePlaybackEndTime;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateReversePlaybackEndTimeOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"reversePlaybackEndTime" on:self];
}

__n128 __42__AVPlayerItem_setReversePlaybackEndTime___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[21].n128_u64[0] = *(a1 + 56);
  v1[20] = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeToPauseBuffering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AVPlayerItem__timeToPauseBuffering__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __37__AVPlayerItem__timeToPauseBuffering__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 344);
  v1[3].n128_u64[0] = *(v2 + 360);
  v1[2] = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeToPauseBuffering
{
  v13 = **&MEMORY[0x1E6960C70];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v6 = _copyFigPlaybackItem;
    dictionaryRepresentation = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      if (!v8(FigBaseObject, *MEMORY[0x1E6972B68], *MEMORY[0x1E695E480], &dictionaryRepresentation))
      {
        CMTimeMakeFromDictionary(&v11, dictionaryRepresentation);
        v13 = v11;
        if (dictionaryRepresentation)
        {
          CFRelease(dictionaryRepresentation);
        }
      }
    }

    CFRelease(v6);
  }

  else
  {
    result = [(AVPlayerItem *)self _timeToPauseBuffering];
    v13 = v10;
  }

  *retstr = v13;
  return result;
}

- (void)_updateTimeToPauseBufferingOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVPlayerItem__updateTimeToPauseBufferingOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __60__AVPlayerItem__updateTimeToPauseBufferingOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 _timeToPauseBuffering];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972B68], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setTimeToPauseBuffering:(id *)buffering
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem_setTimeToPauseBuffering___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *buffering;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateTimeToPauseBufferingOnFigPlaybackItem];
}

__n128 __40__AVPlayerItem_setTimeToPauseBuffering___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  *(v1 + 360) = *(a1 + 56);
  *(v1 + 344) = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeToPausePlayback
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVPlayerItem__timeToPausePlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __36__AVPlayerItem__timeToPausePlayback__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = v2[23];
  v1[3].n128_u64[0] = v2[24].n128_u64[0];
  v1[2] = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeToPausePlayback
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v6 = result;
    dictionaryRepresentation[0] = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8 && !v8(FigBaseObject, *MEMORY[0x1E6972B70], *MEMORY[0x1E695E480], dictionaryRepresentation))
    {
      CMTimeMakeFromDictionary(retstr, dictionaryRepresentation[0]);
      if (dictionaryRepresentation[0])
      {
        CFRelease(dictionaryRepresentation[0]);
      }
    }

    CFRelease(v6);
  }

  else
  {
    if (self)
    {
      result = [(AVPlayerItem *)self _timeToPausePlayback];
    }

    else
    {
      dictionaryRepresentation[0] = 0;
      dictionaryRepresentation[1] = 0;
      v10 = 0;
    }

    *&retstr->var0 = *dictionaryRepresentation;
    retstr->var3 = v10;
  }

  return result;
}

- (void)_updateTimeToPausePlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__AVPlayerItem__updateTimeToPausePlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __59__AVPlayerItem__updateTimeToPausePlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 _timeToPausePlayback];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972B70], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setTimeToPausePlayback:(id *)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem_setTimeToPausePlayback___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateTimeToPausePlaybackOnFigPlaybackItem];
}

__n128 __39__AVPlayerItem_setTimeToPausePlayback___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  v1[24].n128_u64[0] = *(a1 + 56);
  v1[23] = result;
  return result;
}

- (unsigned)_snapTimeToPausePlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem__snapTimeToPausePlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)snapTimeToPausePlayback
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    cf = *MEMORY[0x1E695E4C0];
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6 && !v6(FigBaseObject, *MEMORY[0x1E6972AE8], *MEMORY[0x1E695E480], &cf))
    {
      v7 = FigCFEqual();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v4);
    return v7;
  }

  else
  {

    return [(AVPlayerItem *)self _snapTimeToPausePlayback];
  }
}

- (void)_updateSnapTimeToPausePlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__AVPlayerItem__updateSnapTimeToPausePlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __63__AVPlayerItem__updateSnapTimeToPausePlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _snapTimeToPausePlayback])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972AE8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setSnapTimeToPausePlayback:(unsigned __int8)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVPlayerItem_setSnapTimeToPausePlayback___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  playbackCopy = playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateSnapTimeToPausePlaybackOnFigPlaybackItem];
}

- (id)imageQueueInterpolationCurve
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVPlayerItem_imageQueueInterpolationCurve__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __44__AVPlayerItem_imageQueueInterpolationCurve__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 848) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)imageQueueInterpolationCurveWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVPlayerItem_imageQueueInterpolationCurveWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateImageQueueInterpolationCurveOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__AVPlayerItem__updateImageQueueInterpolationCurveOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __68__AVPlayerItem__updateImageQueueInterpolationCurveOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) imageQueueInterpolationCurve];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972950];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setImageQueueInterpolationCurve:(id)curve
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerItem_setImageQueueInterpolationCurve___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = curve;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateImageQueueInterpolationCurveOnFigPlaybackItem];
}

uint64_t __48__AVPlayerItem_setImageQueueInterpolationCurve___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 856) = 1;

  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 848) = result;
  return result;
}

- (BOOL)blendsVideoFrames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_blendsVideoFrames__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)blendsVideoFramesWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem_blendsVideoFramesWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateBlendsVideoFramesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AVPlayerItem__updateBlendsVideoFramesOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __57__AVPlayerItem__updateBlendsVideoFramesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) blendsVideoFrames])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972870];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setBlendsVideoFrames:(BOOL)frames
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayerItem_setBlendsVideoFrames___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  framesCopy = frames;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateBlendsVideoFramesOnFigPlaybackItem];
}

uint64_t __37__AVPlayerItem_setBlendsVideoFrames___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 858) = 1;
  *(*(*(result + 32) + 8) + 857) = *(result + 40);
  return result;
}

- (BOOL)appliesPerFrameHDRDisplayMetadata
{
  selfCopy = self;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"appliesPerFrameHDRDisplayMetadata" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = selfCopy->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_appliesPerFrameHDRDisplayMetadata__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = selfCopy;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)appliesPerFrameHDRDisplayMetadataWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem_appliesPerFrameHDRDisplayMetadataWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__AVPlayerItem__updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __73__AVPlayerItem__updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) appliesPerFrameHDRDisplayMetadata])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972A40];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setAppliesPerFrameHDRDisplayMetadata:(BOOL)appliesPerFrameHDRDisplayMetadata
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"appliesPerFrameHDRDisplayMetadata" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AVPlayerItem_setAppliesPerFrameHDRDisplayMetadata___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = appliesPerFrameHDRDisplayMetadata;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateAppliesPerFrameHDRDisplayMetadataOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"appliesPerFrameHDRDisplayMetadata" on:self];
}

uint64_t __53__AVPlayerItem_setAppliesPerFrameHDRDisplayMetadata___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 860) = 1;
  *(*(*(result + 32) + 8) + 859) = *(result + 40);
  return result;
}

- (BOOL)reversesMoreVideoFramesInMemory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayerItem_reversesMoreVideoFramesInMemory__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)reversesMoreVideoFramesInMemoryWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVPlayerItem_reversesMoreVideoFramesInMemoryWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__AVPlayerItem__updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __71__AVPlayerItem__updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) reversesMoreVideoFramesInMemory])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972AB8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setReversesMoreVideoFramesInMemory:(BOOL)memory
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayerItem_setReversesMoreVideoFramesInMemory___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  memoryCopy = memory;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateReversesMoreVideoFramesInMemoryOnFigPlaybackItem];
}

uint64_t __51__AVPlayerItem_setReversesMoreVideoFramesInMemory___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 760) = *(result + 40);
  *(*(*(result + 32) + 8) + 761) = 1;
  return result;
}

- (BOOL)aggressivelyCachesVideoFrames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_aggressivelyCachesVideoFrames__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)aggressivelyCachesVideoFramesWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayerItem_aggressivelyCachesVideoFramesWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAggressivelyCachesVideoFramesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVPlayerItem__updateAggressivelyCachesVideoFramesOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __69__AVPlayerItem__updateAggressivelyCachesVideoFramesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) aggressivelyCachesVideoFrames])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69727C8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setAggressivelyCachesVideoFrames:(BOOL)frames
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_setAggressivelyCachesVideoFrames___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  framesCopy = frames;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAggressivelyCachesVideoFramesOnFigPlaybackItem];
}

uint64_t __49__AVPlayerItem_setAggressivelyCachesVideoFrames___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 763) = 1;
  *(*(*(result + 32) + 8) + 762) = *(result + 40);
  return result;
}

- (BOOL)decodesAllFramesDuringOrdinaryPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVPlayerItem_decodesAllFramesDuringOrdinaryPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)decodesAllFramesDuringOrdinaryPlaybackWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVPlayerItem_decodesAllFramesDuringOrdinaryPlaybackWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__AVPlayerItem__updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __78__AVPlayerItem__updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) decodesAllFramesDuringOrdinaryPlayback])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69728D8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setDecodesAllFramesDuringOrdinaryPlayback:(BOOL)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerItem_setDecodesAllFramesDuringOrdinaryPlayback___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  playbackCopy = playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateDecodesAllFramesDuringOrdinaryPlaybackOnFigPlaybackItem];
}

uint64_t __58__AVPlayerItem_setDecodesAllFramesDuringOrdinaryPlayback___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 765) = 1;
  *(*(*(result + 32) + 8) + 764) = *(result + 40);
  return result;
}

+ (OpaqueCMTimebase)_copyTimebaseFromFigPlaybackItem:(OpaqueFigPlaybackItem *)item
{
  v6 = 0;
  if (!item)
  {
    return 0;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 0;
  }

  v4(FigBaseObject, *MEMORY[0x1E6972B78], *MEMORY[0x1E695E480], &v6);
  return v6;
}

- (OpaqueCMTimebase)_copyUnfoldedFigTimebase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem__copyUnfoldedFigTimebase__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFTypeRef __40__AVPlayerItem__copyUnfoldedFigTimebase__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 224);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (OpaqueCMTimebase)unfoldedTimebase
{
  _copyProxyUnfoldedTimebase = [(AVPlayerItem *)self _copyProxyUnfoldedTimebase];
  v3 = _copyProxyUnfoldedTimebase;
  if (_copyProxyUnfoldedTimebase)
  {
    CFRelease(_copyProxyUnfoldedTimebase);
  }

  return v3;
}

- (CMTimebaseRef)timebase
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"timebase" on:self];
  _copyProxyFoldedTimebase = [(AVPlayerItem *)self _copyProxyFoldedTimebase];
  v4 = _copyProxyFoldedTimebase;
  if (_copyProxyFoldedTimebase)
  {
    CFRelease(_copyProxyFoldedTimebase);
  }

  return v4;
}

void __31__AVPlayerItem__updateTimebase__block_invoke_5(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 216);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 32) + 8) + 216) = 0;
  }
}

void __31__AVPlayerItem__updateTimebase__block_invoke_6(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 216);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 32) + 8) + 216) = 0;
  }
}

- (void)_updateRTCReportingFlagsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AVPlayerItem__updateRTCReportingFlagsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __57__AVPlayerItem__updateRTCReportingFlagsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  valuePtr = [*(a1 + 32) RTCReportingFlags];
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6972A58], v1);
  }

  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)setRTCReportingFlags:(unsigned int)flags
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayerItem_setRTCReportingFlags___block_invoke;
  v5[3] = &unk_1E74628F8;
  v5[4] = self;
  flagsCopy = flags;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateRTCReportingFlagsOnFigPlaybackItem];
}

- (unsigned)RTCReportingFlags
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_RTCReportingFlags__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateRTCReportingCategoryOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVPlayerItem__updateRTCReportingCategoryOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __60__AVPlayerItem__updateRTCReportingCategoryOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) reportingCategory];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972A50];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setReportingCategory:(id)category
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayerItem_setReportingCategory___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = category;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateRTCReportingCategoryOnFigPlaybackItem];
}

void __37__AVPlayerItem_setReportingCategory___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 664);
  *(*(*(a1 + 32) + 8) + 664) = [*(a1 + 40) copy];
}

- (id)reportingCategory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_reportingCategory__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__AVPlayerItem_reportingCategory__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 664) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateReportingValuesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__8;
    v13 = __Block_byref_object_dispose__8;
    v14 = 0;
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__AVPlayerItem__updateReportingValuesOnFigPlaybackItem__block_invoke;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v9;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__AVPlayerItem__updateReportingValuesOnFigPlaybackItem__block_invoke_2;
    v7[3] = &unk_1E7462AC0;
    v7[4] = &v9;
    v7[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v7);

    CFRelease(v4);
    _Block_object_dispose(&v9, 8);
  }
}

uint64_t __55__AVPlayerItem__updateReportingValuesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 672) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __55__AVPlayerItem__updateReportingValuesOnFigPlaybackItem__block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69728A0];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)_updateReportingValuesProperty:(id)property forKey:(id)key
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVPlayerItem__updateReportingValuesProperty_forKey___block_invoke;
  v6[3] = &unk_1E7460E90;
  v6[4] = self;
  v6[5] = property;
  v6[6] = key;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateReportingValuesOnFigPlaybackItem];
}

uint64_t __54__AVPlayerItem__updateReportingValuesProperty_forKey___block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 672);
  if (!v2)
  {
    *(*(a1[4] + 8) + 672) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = *(*(a1[4] + 8) + 672);
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v2 setObject:v3 forKey:v4];
}

- (void)setReportingValueWithNumber:(id)number forKey:(id)key
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Value is not a number.", v8, v9, v10, v11, v12, v14), 0}];
    objc_exception_throw(v13);
  }

  [(AVPlayerItem *)self _updateReportingValuesProperty:number forKey:key];
}

- (void)setReportingValueWithString:(id)string forKey:(id)key
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Value is not a string.", v8, v9, v10, v11, v12, v14), 0}];
    objc_exception_throw(v13);
  }

  [(AVPlayerItem *)self _updateReportingValuesProperty:string forKey:key];
}

- (BOOL)limitReadAhead
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AVPlayerItem_limitReadAhead__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateLimitReadAheadOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__AVPlayerItem__updateLimitReadAheadOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __54__AVPlayerItem__updateLimitReadAheadOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) limitReadAhead])
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69728F0];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setLimitReadAhead:(BOOL)ahead
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AVPlayerItem_setLimitReadAhead___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  aheadCopy = ahead;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateLimitReadAheadOnFigPlaybackItem];
}

- (BOOL)allowsExtendedReadAhead
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMake(&v6, 50, 1);
  if (self)
  {
    [(AVPlayerItem *)self maximumForwardBufferDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v4 = v6;
  return CMTimeCompare(&time1, &v4) != 0;
}

- (void)setAllowsExtendedReadAhead:(BOOL)ahead
{
  aheadCopy = ahead;
  memset(&v8, 0, sizeof(v8));
  CMTimeMake(&v8, 50, 1);
  if (!aheadCopy)
  {
    *&time1.value = *&v8.value;
    epoch = v8.epoch;
LABEL_8:
    time1.epoch = epoch;
    [(AVPlayerItem *)self setMaximumForwardBufferDuration:&time1];
    return;
  }

  if (self)
  {
    [(AVPlayerItem *)self maximumForwardBufferDuration];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v6 = v8;
  if (!CMTimeCompare(&time1, &v6))
  {
    *&time1.value = *MEMORY[0x1E6960C70];
    epoch = *(MEMORY[0x1E6960C70] + 16);
    goto LABEL_8;
  }
}

- (NSTimeInterval)preferredForwardBufferDuration
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:152];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"preferredForwardBufferDuration" on:self];
  memset(&v5[32], 0, 24);
  [(AVPlayerItem *)self maximumForwardBufferDuration];
  Seconds = 0.0;
  if (0 >> 96 == 1)
  {
    *v5 = *&v5[32];
    Seconds = CMTimeGetSeconds(v5);
  }

  AVTelemetryIntervalEnd(&v6);
  return Seconds;
}

- (void)setPreferredForwardBufferDuration:(NSTimeInterval)preferredForwardBufferDuration
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:153];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"preferredForwardBufferDuration" on:self];
  if (preferredForwardBufferDuration < 0.0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, "preferredForwardBufferDuration >= 0.0"), 0}];
    objc_exception_throw(v12);
  }

  if (preferredForwardBufferDuration <= 0.0)
  {
    v14 = *MEMORY[0x1E6960C70];
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  else
  {
    CMTimeMakeWithSeconds(&v13, preferredForwardBufferDuration, 1000);
    v14 = *&v13.value;
    epoch = v13.epoch;
  }

  v15 = epoch;
  *&v13.value = v14;
  v13.epoch = epoch;
  [(AVPlayerItem *)self setMaximumForwardBufferDuration:&v13];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"preferredForwardBufferDuration" on:self];
  AVTelemetryIntervalEnd(&v16);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTrailingBufferDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVPlayerItem_maximumTrailingBufferDuration__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __45__AVPlayerItem_maximumTrailingBufferDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(*(a1 + 32) + 8) + 580);
  v1[3].n128_u64[0] = *(*(*(a1 + 32) + 8) + 596);
  v1[2] = result;
  return result;
}

- (void)_updateMaximumTrailingBufferDurationOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVPlayerItem__updateMaximumTrailingBufferDurationOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __69__AVPlayerItem__updateMaximumTrailingBufferDurationOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  memset(&v8, 0, sizeof(v8));
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 maximumTrailingBufferDuration];
  }

  time1 = v8;
  v6 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    v2 = -1;
  }

  else
  {
    time1 = v8;
    v2 = (CMTimeGetSeconds(&time1) + 0.5);
  }

  LODWORD(time1.value) = v2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time1);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E69729B0], v3);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)setMaximumTrailingBufferDuration:(id *)duration
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_setMaximumTrailingBufferDuration___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *duration;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateMaximumTrailingBufferDurationOnFigPlaybackItem];
}

__n128 __49__AVPlayerItem_setMaximumTrailingBufferDuration___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 580);
  result = *(a1 + 40);
  v1[1].n128_u64[0] = *(a1 + 56);
  *v1 = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumForwardBufferDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVPlayerItem_maximumForwardBufferDuration__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __44__AVPlayerItem_maximumForwardBufferDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(*(a1 + 32) + 8) + 556);
  v1[3].n128_u64[0] = *(*(*(a1 + 32) + 8) + 572);
  v1[2] = result;
  return result;
}

- (void)_updateMaximumForwardBufferDurationOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__AVPlayerItem__updateMaximumForwardBufferDurationOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __68__AVPlayerItem__updateMaximumForwardBufferDurationOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 maximumForwardBufferDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  time.value = CMTimeGetSeconds(&time);
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &time);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972A28], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setMaximumForwardBufferDuration:(id *)duration
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerItem_setMaximumForwardBufferDuration___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *duration;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateMaximumForwardBufferDurationOnFigPlaybackItem];
}

__n128 __48__AVPlayerItem_setMaximumForwardBufferDuration___block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 556);
  result = *(a1 + 40);
  v1[1].n128_u64[0] = *(a1 + 56);
  *v1 = result;
  return result;
}

- (BOOL)alwaysMonitorsPlayability
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AVPlayerItem_alwaysMonitorsPlayability__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAlwaysMonitorsPlayabilityOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AVPlayerItem__updateAlwaysMonitorsPlayabilityOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __65__AVPlayerItem__updateAlwaysMonitorsPlayabilityOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) alwaysMonitorsPlayability])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69727E8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setAlwaysMonitorsPlayability:(BOOL)playability
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_setAlwaysMonitorsPlayability___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  playabilityCopy = playability;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAlwaysMonitorsPlayabilityOnFigPlaybackItem];
}

- (int64_t)playbackLikelyToKeepUpTrigger
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_playbackLikelyToKeepUpTrigger__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVPlayerItem__updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __69__AVPlayerItem__updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6972450];
  if ([*(a1 + 32) playbackLikelyToKeepUpTrigger] == 1)
  {
    v1 = MEMORY[0x1E6972458];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972980];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setPlaybackLikelyToKeepUpTrigger:(int64_t)trigger
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_setPlaybackLikelyToKeepUpTrigger___block_invoke;
  v5[3] = &unk_1E7460FA8;
  v5[4] = self;
  v5[5] = trigger;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updatePlaybackLikelyToKeepUpTriggerOnFigPlaybackItem];
}

- (BOOL)willNeverSeekBackwardsHint
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AVPlayerItem_willNeverSeekBackwardsHint__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateWillNeverSeekBackwardsHintOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__AVPlayerItem__updateWillNeverSeekBackwardsHintOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __66__AVPlayerItem__updateWillNeverSeekBackwardsHintOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) willNeverSeekBackwardsHint])
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972A60];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setWillNeverSeekBackwardsHint:(BOOL)hint
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVPlayerItem_setWillNeverSeekBackwardsHint___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  hintCopy = hint;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateWillNeverSeekBackwardsHintOnFigPlaybackItem];
}

- (BOOL)savesDownloadedDataToDiskWhenDoneWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem_savesDownloadedDataToDiskWhenDoneWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)savesDownloadedDataToDiskWhenDone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_savesDownloadedDataToDiskWhenDone__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSavesDownloadedDataToDiskWhenDone:(BOOL)done
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AVPlayerItem_setSavesDownloadedDataToDiskWhenDone___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  doneCopy = done;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__AVPlayerItem_setSavesDownloadedDataToDiskWhenDone___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    doneCopy2 = done;
    v8[4] = _copyFigPlaybackItem;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __53__AVPlayerItem_setSavesDownloadedDataToDiskWhenDone___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 888) = *(result + 40);
  *(*(*(result + 32) + 8) + 889) = 1;
  return result;
}

uint64_t __53__AVPlayerItem_setSavesDownloadedDataToDiskWhenDone___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972AC0];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)_markAsFigItemConfigured
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__AVPlayerItem__markAsFigItemConfigured__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (BOOL)_isFigItemConfigured
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayerItem__isFigItemConfigured__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)continuesPlayingDuringPrerollForSeek
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVPlayerItem_continuesPlayingDuringPrerollForSeek__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__AVPlayerItem__updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __76__AVPlayerItem__updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) continuesPlayingDuringPrerollForSeek])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69728B8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setContinuesPlayingDuringPrerollForSeek:(BOOL)seek
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayerItem_setContinuesPlayingDuringPrerollForSeek___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  seekCopy = seek;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateContinuesPlayingDuringPrerollForSeekOnFigPlaybackItem];
}

- (BOOL)continuesPlayingDuringPrerollForRateChange
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerItem_continuesPlayingDuringPrerollForRateChange__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__AVPlayerItem__updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __82__AVPlayerItem__updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) continuesPlayingDuringPrerollForRateChange])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69728B0];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setContinuesPlayingDuringPrerollForRateChange:(BOOL)change
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlayerItem_setContinuesPlayingDuringPrerollForRateChange___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  changeCopy = change;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateContinuesPlayingDuringPrerollForRateChangeOnFigPlaybackItem];
}

- (BOOL)usesIFrameOnlyPlaybackForHighRateScaledEdits
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVPlayerItem_usesIFrameOnlyPlaybackForHighRateScaledEdits__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)usesIFrameOnlyPlaybackForHighRateScaledEditsWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItem_usesIFrameOnlyPlaybackForHighRateScaledEditsWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__AVPlayerItem__updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __84__AVPlayerItem__updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) usesIFrameOnlyPlaybackForHighRateScaledEdits])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972B88];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setUsesIFrameOnlyPlaybackForHighRateScaledEdits:(BOOL)edits
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__AVPlayerItem_setUsesIFrameOnlyPlaybackForHighRateScaledEdits___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  editsCopy = edits;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateUsesIFrameOnlyPlaybackForHighRateScaledEditsOnFigPlaybackItem];
}

uint64_t __64__AVPlayerItem_setUsesIFrameOnlyPlaybackForHighRateScaledEdits___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 768) = 1;
  *(*(*(result + 32) + 8) + 769) = *(result + 40);
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumIntervalForIFrameOnlyPlayback
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVPlayerItem_minimumIntervalForIFrameOnlyPlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __52__AVPlayerItem_minimumIntervalForIFrameOnlyPlayback__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(*(a1 + 32) + 8) + 772);
  v1[3].n128_u64[0] = *(*(*(a1 + 32) + 8) + 788);
  v1[2] = result;
  return result;
}

- (BOOL)minimumIntervalForIFrameOnlyPlaybackWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerItem_minimumIntervalForIFrameOnlyPlaybackWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__AVPlayerItem__updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __76__AVPlayerItem__updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 minimumIntervalForIFrameOnlyPlayback];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69729F0], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setMinimumIntervalForIFrameOnlyPlayback:(id *)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayerItem_setMinimumIntervalForIFrameOnlyPlayback___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateMinimumIntervalForIFrameOnlyPlaybackOnFigPlaybackItem];
}

__n128 __56__AVPlayerItem_setMinimumIntervalForIFrameOnlyPlayback___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 796) = 1;
  v1 = (*(*(a1 + 32) + 8) + 772);
  result = *(a1 + 40);
  v1[1].n128_u64[0] = *(a1 + 56);
  *v1 = result;
  return result;
}

- (float)speedThresholdForIFrameOnlyPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayerItem_speedThresholdForIFrameOnlyPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __51__AVPlayerItem_speedThresholdForIFrameOnlyPlayback__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 800);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)speedThresholdForIFrameOnlyPlaybackWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVPlayerItem_speedThresholdForIFrameOnlyPlaybackWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __75__AVPlayerItem__updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __75__AVPlayerItem__updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) speedThresholdForIFrameOnlyPlayback];
  valuePtr = v1;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972940], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setSpeedThresholdForIFrameOnlyPlayback:(float)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem_setSpeedThresholdForIFrameOnlyPlayback___block_invoke;
  v5[3] = &unk_1E74628F8;
  v5[4] = self;
  playbackCopy = playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateSpeedThresholdForIFrameOnlyPlaybackOnFigPlaybackItem];
}

float __55__AVPlayerItem_setSpeedThresholdForIFrameOnlyPlayback___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 804) = 1;
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 800) = result;
  return result;
}

- (BOOL)refreshesClosedCaptionsImmediatelyAfterSeeking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlayerItem_refreshesClosedCaptionsImmediatelyAfterSeeking__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__AVPlayerItem__updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __86__AVPlayerItem__updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) refreshesClosedCaptionsImmediatelyAfterSeeking])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972B50];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setRefreshesClosedCaptionsImmediatelyAfterSeeking:(BOOL)seeking
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItem_setRefreshesClosedCaptionsImmediatelyAfterSeeking___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  seekingCopy = seeking;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateRefreshesClosedCaptionsImmediatelyAfterSeekingOnFigPlaybackItem];
}

- (AVAudioMix)audioMix
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:3];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"audioMix" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__AVPlayerItem_audioMix__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

id __24__AVPlayerItem_audioMix__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 272);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setAudioCurvesAccordingToInputParameters:(id)parameters forTrackID:(int)d
{
  v4 = *&d;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v8 = _copyFigPlaybackItem;
    _figAudioCurves = [parameters _figAudioCurves];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    if (v4)
    {
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v10)
      {
        v11 = v10(v8, v4, *MEMORY[0x1E6972CE8], _figAudioCurves);
      }

      else
      {
        v11 = -12782;
      }

      *(v15 + 6) = v11;
    }

    else
    {
      figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__AVPlayerItem__setAudioCurvesAccordingToInputParameters_forTrackID___block_invoke;
      block[3] = &unk_1E7462A50;
      block[5] = &v14;
      block[6] = v8;
      block[4] = _figAudioCurves;
      dispatch_sync(figPlaybackItemSetterQueue, block);
    }

    _Block_object_dispose(&v14, 8);
    CFRelease(v8);
  }
}

uint64_t __69__AVPlayerItem__setAudioCurvesAccordingToInputParameters_forTrackID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    result = v4(FigBaseObject, @"AudioCurves", v2);
  }

  else
  {
    result = 4294954514;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setAudioProcessingEffectsAccordingToInputParameters:(id)parameters forTrackID:(int)d
{
  v4 = *&d;
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  effects = [parameters effects];
  v9 = [effects countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(effects);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isMemberOfClass:objc_opt_class()])
        {
          [array addObject:{objc_msgSend(v13, "_figIdentifier")}];
          [array addObject:{objc_msgSend(v13, "_figAudioProperties")}];
        }
      }

      v10 = [effects countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    figPlaybackItem = self->_playerItem->figPlaybackItem;
    if (v4)
    {
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 112);
      if (v15)
      {
        v15(figPlaybackItem, v4, *MEMORY[0x1E6972CF8], array);
      }
    }

    else
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v17)
      {
        v17(FigBaseObject, *MEMORY[0x1E6972818], array);
      }
    }
  }
}

- (void)_setAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor forTrackID:(int)d
{
  if (d)
  {
    v5 = *&d;
    figPlaybackItem = self->_playerItem->figPlaybackItem;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (v7)
    {
      v8 = *MEMORY[0x1E6972CF0];

      v7(figPlaybackItem, v5, v8, processor);
    }
  }

  else
  {

    [(AVPlayerItem *)self _setItemAudioTapProcessor:processor fromAudioMixContext:1];
  }
}

- (void)_setAudioTimePitchAlgorithm:(id)algorithm forTrackID:(int)d
{
  v4 = *&d;
  figPlaybackItem = self->_playerItem->figPlaybackItem;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972D70];

    v7(figPlaybackItem, v4, v8, algorithm);
  }
}

- (void)_setAudioEffectParameters:(id)parameters previousEffects:(id)effects forTrackID:(int)d
{
  v68 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __69__AVPlayerItem__setAudioEffectParameters_previousEffects_forTrackID___block_invoke;
  v61[3] = &unk_1E7463098;
  v61[4] = array;
  [effects enumerateObjectsUsingBlock:v61];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __69__AVPlayerItem__setAudioEffectParameters_previousEffects_forTrackID___block_invoke_2;
  v60[3] = &unk_1E7463098;
  v50 = array;
  v60[4] = array;
  [parameters enumerateObjectsUsingBlock:v60];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = parameters;
  v9 = [parameters countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    v48 = *MEMORY[0x1E6972D88];
    v47 = *MEMORY[0x1E6972D98];
    v46 = *MEMORY[0x1E6972D90];
    v12 = *MEMORY[0x1E6972D80];
    v45 = *MEMORY[0x1E6972D60];
    v44 = *MEMORY[0x1E6972D68];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * i);
        if ([v14 isMemberOfClass:objc_opt_class()])
        {
          v66[0] = MEMORY[0x1E695E118];
          v65[0] = v48;
          v65[1] = v47;
          v66[1] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "minimumCutOffFrequency")}];
          v65[2] = v46;
          v66[2] = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "maximumCutOffFrequency")}];
          v65[3] = v12;
          v15 = MEMORY[0x1E696AD98];
          [v14 bypassThreshold];
          v66[3] = [v15 numberWithFloat:?];
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:4];
          figPlaybackItem = self->_playerItem->figPlaybackItem;
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v18)
          {
            v18(figPlaybackItem, d, v45, v16);
          }

          v19 = self->_playerItem->figPlaybackItem;
          v20 = MEMORY[0x1E696AD98];
          [v14 sweepValue];
          data = [v20 numberWithDouble:v21];
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v23)
          {
            v24 = v19;
            dCopy2 = d;
            v26 = v44;
LABEL_14:
            v23(v24, dCopy2, v26, data);
            continue;
          }
        }

        else if ([v14 isMemberOfClass:objc_opt_class()])
        {
          v27 = self->_playerItem->figPlaybackItem;
          data = [v14 data];
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 112);
          if (v23)
          {
            v24 = v27;
            dCopy2 = d;
            v26 = @"CinematicAudioParameters";
            goto LABEL_14;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v10);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:{16, v44}];
  if (!v28)
  {
    return;
  }

  v29 = v28;
  v30 = *v53;
  v31 = *MEMORY[0x1E6972D88];
  v32 = *MEMORY[0x1E6972D60];
  v33 = MEMORY[0x1E695E110];
  do
  {
    for (j = 0; j != v29; ++j)
    {
      if (*v53 != v30)
      {
        objc_enumerationMutation(v50);
      }

      v35 = *(*(&v52 + 1) + 8 * j);
      if (v35 == objc_opt_class())
      {
        v62 = v31;
        v63 = v33;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
        v43 = self->_playerItem->figPlaybackItem;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (!v37)
        {
          continue;
        }

        v38 = v43;
        dCopy4 = d;
        v40 = v32;
        v41 = v42;
        goto LABEL_28;
      }

      if (v35 == objc_opt_class())
      {
        v36 = self->_playerItem->figPlaybackItem;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 112);
        if (v37)
        {
          v38 = v36;
          dCopy4 = d;
          v40 = @"CinematicAudioParameters";
          v41 = 0;
LABEL_28:
          v37(v38, dCopy4, v40, v41);
          continue;
        }
      }
    }

    v29 = [v50 countByEnumeratingWithState:&v52 objects:v64 count:16];
  }

  while (v29);
}

uint64_t __69__AVPlayerItem__setAudioEffectParameters_previousEffects_forTrackID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 addObject:v2];
}

uint64_t __69__AVPlayerItem__setAudioEffectParameters_previousEffects_forTrackID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v1 removeObject:v2];
}

- (void)_applyCurrentAudioMix
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_playerItem->figPlaybackItem)
  {
    audioMix = [(AVPlayerItem *)self audioMix];
    playerItem = self->_playerItem;
    handlersToCallWhenReadyForEnqueueing = playerItem->handlersToCallWhenReadyForEnqueueing;
    if (audioMix != handlersToCallWhenReadyForEnqueueing)
    {
      v6 = audioMix;
      if (![(AVAudioMix *)audioMix isEqual:playerItem->handlersToCallWhenReadyForEnqueueing])
      {
        v7 = [MEMORY[0x1E695DF70] arrayWithArray:{-[AVAudioMix inputParameters](v6, "inputParameters")}];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        inputParameters = [(AVAudioMix *)handlersToCallWhenReadyForEnqueueing inputParameters];
        v9 = [(NSArray *)inputParameters countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(inputParameters);
              }

              trackID = [*(*(&v25 + 1) + 8 * i) trackID];
              if (![(AVAudioMix *)v6 audioMixInputParametersForTrackID:trackID])
              {
                v14 = +[AVMutableAudioMixInputParameters audioMixInputParameters];
                [(AVMutableAudioMixInputParameters *)v14 setTrackID:trackID];
                [v7 addObject:v14];
              }
            }

            v10 = [(NSArray *)inputParameters countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v10);
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v22;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v22 != v17)
              {
                objc_enumerationMutation(v7);
              }

              v19 = *(*(&v21 + 1) + 8 * j);
              trackID2 = [v19 trackID];
              [(AVPlayerItem *)self _setAudioProcessingEffectsAccordingToInputParameters:v19 forTrackID:trackID2];
              [(AVPlayerItem *)self _setAudioCurvesAccordingToInputParameters:v19 forTrackID:trackID2];
              -[AVPlayerItem _setAudioTapProcessor:forTrackID:](self, "_setAudioTapProcessor:forTrackID:", [v19 audioTapProcessor], trackID2);
              if (trackID2)
              {
                -[AVPlayerItem _setAudioTimePitchAlgorithm:forTrackID:](self, "_setAudioTimePitchAlgorithm:forTrackID:", [v19 audioTimePitchAlgorithm], trackID2);
                -[AVPlayerItem _setAudioEffectParameters:previousEffects:forTrackID:](self, "_setAudioEffectParameters:previousEffects:forTrackID:", [v19 effects], objc_msgSend(-[AVAudioMix audioMixInputParametersForTrackID:](handlersToCallWhenReadyForEnqueueing, "audioMixInputParametersForTrackID:", trackID2), "effects"), trackID2);
              }
            }

            v16 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v16);
        }

        self->_playerItem->handlersToCallWhenReadyForEnqueueing = [(AVAudioMix *)v6 copy];
      }
    }
  }
}

- (void)setAudioMix:(AVAudioMix *)audioMix
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:4];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"audioMix" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __28__AVPlayerItem_setAudioMix___block_invoke;
  v9[3] = &unk_1E7460DF0;
  v9[4] = audioMix;
  v9[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  _copyStateDispatchQueue = [(AVPlayerItem *)self _copyStateDispatchQueue];
  v7 = _copyStateDispatchQueue;
  if (_copyStateDispatchQueue)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__AVPlayerItem_setAudioMix___block_invoke_2;
    v8[3] = &unk_1E7460C00;
    v8[4] = self;
    AVSerializeOnQueueAsyncIfNecessary(_copyStateDispatchQueue, v8);
    dispatch_release(v7);
  }

  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"audioMix" on:self];
  AVTelemetryIntervalEnd(&v10);
}

uint64_t __28__AVPlayerItem_setAudioMix___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 272);
  if (*(result + 32) != v1)
  {
    v2 = result;

    result = [*(v2 + 32) copy];
    *(*(*(v2 + 40) + 8) + 272) = result;
  }

  return result;
}

- (void)_setDelayPreparingItemForTestingOnly:(double)only
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__AVPlayerItem__setDelayPreparingItemForTestingOnly___block_invoke;
  v10[3] = &unk_1E7460FA8;
  v10[4] = self;
  *&v10[5] = only;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    Float64 = FigCFNumberCreateFloat64();
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__AVPlayerItem__setDelayPreparingItemForTestingOnly___block_invoke_2;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = _copyFigPlaybackItem;
    v9[5] = Float64;
    dispatch_sync(figPlaybackItemSetterQueue, v9);
    if (Float64)
    {
      CFRelease(Float64);
    }

    CFRelease(_copyFigPlaybackItem);
  }
}

double __53__AVPlayerItem__setDelayPreparingItemForTestingOnly___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 1520) = result;
  return result;
}

uint64_t __53__AVPlayerItem__setDelayPreparingItemForTestingOnly___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69727F8];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (double)_delayPreparingItemForTestingOnly
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__AVPlayerItem__delayPreparingItemForTestingOnly__block_invoke;
  block[3] = &unk_1E74630E0;
  block[5] = &v9;
  block[6] = _copyFigPlaybackItem;
  block[4] = &v13;
  dispatch_sync(figPlaybackItemAccessorQueue, block);
  if (_copyFigPlaybackItem)
  {
    CFRelease(_copyFigPlaybackItem);
  }

  v5 = v14[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

uint64_t __49__AVPlayerItem__delayPreparingItemForTestingOnly__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69727F8], *MEMORY[0x1E695E480], v2 + 24);
  }

  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = FigCFNumberGetFloat64();
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }

  return result;
}

- (id)makeLookupableSpatialVideoConfigurations:(id)configurations
{
  v17 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [configurations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(configurations);
        }

        v10 = [[AVLookupableSpatialVideoConfiguration alloc] initWithSpatialVideoConfiguration:*(*(&v12 + 1) + 8 * v9)];
        -[AVLookupableSpatialVideoConfiguration setLookupID:](v10, "setLookupID:", [MEMORY[0x1E696AD98] numberWithInt:v8]);
        [array addObject:v10];
        v8 = (v8 + 1);
        ++v9;
      }

      while (v6 != v9);
      v6 = [configurations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return array;
}

- (AVVideoComposition)videoComposition
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:5];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"videoComposition" on:self];
  v5 = 0;
  [(AVPlayerItem *)self _getVideoComposition:&v5 customVideoCompositorSession:0 figVideoCompositor:0];
  v3 = v5;
  AVTelemetryIntervalEnd(&v6);
  return v3;
}

- (void)_getVideoComposition:(id *)composition customVideoCompositorSession:(id *)session figVideoCompositor:(OpaqueFigVideoCompositor *)compositor
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = __Block_byref_object_copy__8;
  v26 = __Block_byref_object_dispose__8;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__AVPlayerItem__getVideoComposition_customVideoCompositorSession_figVideoCompositor___block_invoke;
  v11[3] = &unk_1E7463108;
  v11[4] = self;
  v11[5] = &v22;
  v11[6] = &v16;
  v11[7] = &v12;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v11);
  if (composition)
  {
    *composition = v23[5];
  }

  if (session)
  {
    *session = v17[5];
  }

  if (compositor)
  {
    v9 = v13[3];
    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *compositor = v9;
  }

  v10 = v13[3];
  if (v10)
  {
    CFRelease(v10);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
}

CFTypeRef __85__AVPlayerItem__getVideoComposition_customVideoCompositorSession_figVideoCompositor___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = *(*(a1[4] + 8) + 1328);
  *(*(a1[6] + 8) + 40) = *(*(a1[4] + 8) + 1344);
  result = *(*(a1[4] + 8) + 1352);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)setVideoComposition:(AVVideoComposition *)videoComposition
{
  v28 = [[AVTelemetryInterval alloc] initAndStartWith:6];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"videoComposition" on:self];
  if (videoComposition)
  {
    v24 = 0;
    if ([(AVVideoComposition *)videoComposition _isValidReturningExceptionReason:&v24])
    {
      if (![(AVVideoComposition *)videoComposition animationTool])
      {
        goto LABEL_4;
      }

      v19 = MEMORY[0x1E695DF30];
      v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"AVVideoCompositions using AVVideoCompositionCoreAnimationTool cannot be used with AVPlayerItem. AVVideoCompositionCoreAnimationTool is for offline rendering only.", v11, v12, v13, v14, v15, v21);
    }

    else
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, v24, v6, v7, v8, v9, v10, v21);
    }

    objc_exception_throw([v19 exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0]);
  }

LABEL_4:
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __36__AVPlayerItem_setVideoComposition___block_invoke;
  v23[3] = &unk_1E7461068;
  v23[5] = videoComposition;
  v23[6] = &v24;
  v23[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v23);
  if (*(v25 + 24) == 1)
  {
    _copyStateDispatchQueue = [(AVPlayerItem *)self _copyStateDispatchQueue];
    v18 = _copyStateDispatchQueue;
    if (_copyStateDispatchQueue)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __36__AVPlayerItem_setVideoComposition___block_invoke_2;
      v22[3] = &unk_1E7460C00;
      v22[4] = self;
      AVSerializeOnQueueAsyncIfNecessary(_copyStateDispatchQueue, v22);
      dispatch_release(v18);
    }
  }

  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"videoComposition" on:self];
  _Block_object_dispose(&v24, 8);
  AVTelemetryIntervalEnd(&v28);
}

id __36__AVPlayerItem_setVideoComposition___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 1336) referencedObject] != *(a1 + 40);
  if (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || (v2 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 1336) "referencedObject")], result = objc_msgSend(*(a1 + 40), "_changeSeed"), *(*(*(a1 + 48) + 8) + 24) = v2 != result, (*(*(*(a1 + 48) + 8) + 24)))
  {

    *(*(*(a1 + 32) + 8) + 1328) = [*(a1 + 40) _deepCopy];
    *(*(*(a1 + 32) + 8) + 1336) = [[AVWeakReference alloc] initWithReferencedObject:*(*(*(a1 + 32) + 8) + 1328)];
    v7 = 0;
    v8 = 0;
    [*(*(*(a1 + 32) + 8) + 1328) setLookupableSpatialVideoConfigurations:{objc_msgSend(*(a1 + 32), "makeLookupableSpatialVideoConfigurations:", objc_msgSend(*(*(*(a1 + 32) + 8) + 1328), "spatialVideoConfigurations"))}];
    [*(*(*(a1 + 32) + 8) + 1328) _copyFigVideoCompositor:&v8 andSession:&v7 recyclingSession:*(*(*(a1 + 32) + 8) + 1344) forFigRemaker:0 error:0];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 1352);
    if (v5)
    {
      CFRelease(v5);
      v4 = *(*(a1 + 32) + 8);
    }

    *(v4 + 1352) = v8;
    v6 = *(*(*(a1 + 32) + 8) + 1344);
    if (v6 != v7)
    {
      [v6 detachVideoComposition];
      v6 = *(*(*(a1 + 32) + 8) + 1344);
    }

    result = v6;
    *(*(*(a1 + 32) + 8) + 1344) = v7;
  }

  return result;
}

void __36__AVPlayerItem_setVideoComposition___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2[1] + 128))
  {
    v5 = 0;
    v6 = 0;
    cf = 0;
    [v2 _getVideoComposition:&v6 customVideoCompositorSession:&v5 figVideoCompositor:&cf];
    if (v6)
    {
      v3 = 0;
      if (v5 && ![v5 commitCustomVideoCompositorPropertiesAndReturnError:&v3])
      {
        [*(a1 + 32) _changeStatusToFailedWithError:v3];
      }

      else
      {
        [*(a1 + 32) _applyCurrentVideoComposition];
      }
    }

    else
    {
      [*(a1 + 32) _setVideoCompositionInstructions:0];
      [*(a1 + 32) _setVideoCompositor:cf];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_setVideoCompositionFrameDuration:(id *)duration
{
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = *MEMORY[0x1E695E480];
    v7 = *duration;
    v4 = CMTimeCopyAsDictionary(&v7, v3);
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E6972BD0], v4);
    }

    CFRelease(v4);
  }
}

- (void)_setVideoCompositionSourceTrackIDForFrameTiming:(int)timing
{
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:timing];
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972C10];

      v5(FigBaseObject, v6, v3);
    }
  }
}

- (void)_setVideoCompositionRenderSize:(CGSize)size
{
  if (self->_playerItem->figPlaybackItem)
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(size);
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972BF0], DictionaryRepresentation);
    }

    CFRelease(DictionaryRepresentation);
  }
}

- (void)_setVideoCompositionRenderScale:(float)scale
{
  valuePtr = scale;
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972BF8], v3);
    }

    CFRelease(v3);
  }
}

- (void)_setVideoCompositionColorPrimaries:(id)primaries
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972BB8];

      v5(FigBaseObject, v6, primaries);
    }
  }
}

- (void)_setVideoCompositionColorYCbCrMatrix:(id)matrix
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972BC8];

      v5(FigBaseObject, v6, matrix);
    }
  }
}

- (void)_setVideoCompositionColorTransferFunction:(id)function
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972BC0];

      v5(FigBaseObject, v6, function);
    }
  }
}

- (void)_setVideoCompositionHDRDisplayMetadataPolicy:(id)policy
{
  if (self->_playerItem->figPlaybackItem)
  {
    v3 = [policy isEqual:@"PerFrameHDRDisplayMetadataPolicy_Generate"];
    v4 = *MEMORY[0x1E6972BD8];
    if (v3)
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v6)
      {
        return;
      }

      v7 = MEMORY[0x1E6973B48];
    }

    else
    {
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v6)
      {
        return;
      }

      v7 = MEMORY[0x1E6973B50];
    }

    v8 = *v7;

    v6(FigBaseObject, v4, v8);
  }
}

- (void)_setVideoCompositionInstructions:(id)instructions
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972BA0];

      v5(FigBaseObject, v6, instructions);
    }
  }
}

- (void)_setVideoCompositionSourceSampleDataTrackIDs:(id)ds
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972C00];

      v5(FigBaseObject, v6, ds);
    }
  }
}

- (void)_setVideoCompositor:(void *)compositor
{
  if (self->_playerItem->figPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v6 = *MEMORY[0x1E6972BB0];

      v5(FigBaseObject, v6, compositor);
    }
  }
}

- (id)customVideoCompositor
{
  v6 = [[AVTelemetryInterval alloc] initAndStartWith:7];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"customVideoCompositor" on:self];
  v5 = 0;
  [(AVPlayerItem *)self _getVideoComposition:0 customVideoCompositorSession:&v5 figVideoCompositor:0];
  customVideoCompositor = [v5 customVideoCompositor];
  AVTelemetryIntervalEnd(&v6);
  return customVideoCompositor;
}

- (BOOL)seekingWaitsForVideoCompositionRendering
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:154];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"seekingWaitsForVideoCompositionRendering" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerItem_seekingWaitsForVideoCompositionRendering__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)_updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__AVPlayerItem__updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __80__AVPlayerItem__updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) seekingWaitsForVideoCompositionRendering])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972AD0];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setSeekingWaitsForVideoCompositionRendering:(BOOL)seekingWaitsForVideoCompositionRendering
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:155];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"seekingWaitsForVideoCompositionRendering" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVPlayerItem_setSeekingWaitsForVideoCompositionRendering___block_invoke;
  v6[3] = &unk_1E7462948;
  v7 = seekingWaitsForVideoCompositionRendering;
  v6[4] = self;
  v6[5] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v9 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateSeekingWaitsForVideoCompositionRenderingOnFigPlaybackItem];
  }

  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"seekingWaitsForVideoCompositionRendering" on:self];
  _Block_object_dispose(&v8, 8);
  AVTelemetryIntervalEnd(&v12);
}

uint64_t __60__AVPlayerItem_setSeekingWaitsForVideoCompositionRendering___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(result + 32) + 8);
  if (v1 != *(v2 + 520))
  {
    *(v2 + 520) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)usesMinimalLatencyForVideoCompositionRendering
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlayerItem_usesMinimalLatencyForVideoCompositionRendering__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__AVPlayerItem__updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __86__AVPlayerItem__updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) usesMinimalLatencyForVideoCompositionRendering])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972B90];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)_updateRestrictsAutomaticMediaSelectionToAvailableOfflineOptions
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__AVPlayerItem__updateRestrictsAutomaticMediaSelectionToAvailableOfflineOptions__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __80__AVPlayerItem__updateRestrictsAutomaticMediaSelectionToAvailableOfflineOptions__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) restrictsAutomaticMediaSelectionToAvailableOfflineOptions])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972AA8];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setUsesMinimalLatencyForVideoCompositionRendering:(BOOL)rendering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItem_setUsesMinimalLatencyForVideoCompositionRendering___block_invoke;
  v5[3] = &unk_1E7462948;
  renderingCopy = rendering;
  v5[4] = self;
  v5[5] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateUsesMinimalLatencyForVideoCompositionRenderingOnFigPlaybackItem];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __66__AVPlayerItem_setUsesMinimalLatencyForVideoCompositionRendering___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 48);
  if (*(v1 + 872) != v2)
  {
    *(v1 + 872) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (NSArray)textStyleRules
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"textStyleRules" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AVPlayerItem_textStyleRules__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __30__AVPlayerItem_textStyleRules__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 528);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)textHighlightArray
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__AVPlayerItem_textHighlightArray__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __34__AVPlayerItem_textHighlightArray__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 536);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateTextStyleRulesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__AVPlayerItem__updateTextStyleRulesOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __54__AVPlayerItem__updateTextStyleRulesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textStyleRules];
  if (v1)
  {
    v2 = [AVTextStyleRule propertyListForTextStyleRules:v1];
  }

  else
  {
    v2 = 0;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972B48];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)_updateTextHighlightArrayOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AVPlayerItem__updateTextHighlightArrayOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __58__AVPlayerItem__updateTextHighlightArrayOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textHighlightArray];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972B40];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setTextStyleRules:(NSArray *)textStyleRules
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"textStyleRules" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__AVPlayerItem_setTextStyleRules___block_invoke;
  v6[3] = &unk_1E7460F30;
  v6[4] = textStyleRules;
  v6[5] = self;
  v6[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateTextStyleRulesOnFigPlaybackItem];
  }

  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"textStyleRules" on:self];
  _Block_object_dispose(&v7, 8);
}

uint64_t __34__AVPlayerItem_setTextStyleRules___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 528);
  if (*(result + 32) != v1)
  {
    v2 = result;

    result = [*(v2 + 32) copy];
    *(*(*(v2 + 40) + 8) + 528) = result;
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)setTextHighlightArray:(id)array
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayerItem_setTextHighlightArray___block_invoke;
  v5[3] = &unk_1E7460F30;
  v5[4] = self;
  v5[5] = array;
  v5[6] = &v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateTextHighlightArrayOnFigPlaybackItem];
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __38__AVPlayerItem_setTextHighlightArray___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 536);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(*(v2 + 32) + 8) + 536) = result;
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:156];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"audioTimePitchAlgorithm" on:self];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__AVPlayerItem_audioTimePitchAlgorithm__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v10;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = dyld_program_sdk_at_least();
  v5 = &AVAudioTimePitchAlgorithmTimeDomain;
  if (!v4)
  {
    v5 = &AVAudioTimePitchAlgorithmLowQualityZeroLatency;
  }

  v6 = *v5;
  if (v11[5])
  {
    v7 = v11[5];
  }

  else
  {
    v7 = v6;
  }

  _Block_object_dispose(&v10, 8);
  AVTelemetryIntervalEnd(&v16);
  return v7;
}

- (void)_updateFigTimePitchAlgorithmOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__AVPlayerItem__updateFigTimePitchAlgorithmOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __61__AVPlayerItem__updateFigTimePitchAlgorithmOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) audioTimePitchAlgorithm];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972B60];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setAudioTimePitchAlgorithm:(AVAudioTimePitchAlgorithm)audioTimePitchAlgorithm
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:157];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"audioTimePitchAlgorithm" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__AVPlayerItem_setAudioTimePitchAlgorithm___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = audioTimePitchAlgorithm;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateFigTimePitchAlgorithmOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"audioTimePitchAlgorithm" on:self];
  AVTelemetryIntervalEnd(&v7);
}

void __43__AVPlayerItem_setAudioTimePitchAlgorithm___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4 = *(v3 + 544);
  *(v3 + 544) = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (BOOL)isPlaybackLikelyToKeepUp
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:158];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"playbackLikelyToKeepUp" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVPlayerItem_isPlaybackLikelyToKeepUp__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (float)progressTowardsPlaybackLikelyToKeepUp
{
  valuePtr = 0.0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0.0;
  }

  v3 = _copyFigPlaybackItem;
  number = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(FigBaseObject, *MEMORY[0x1E6972A38], *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloatType, &valuePtr);
      CFRelease(number);
    }
  }

  CFRelease(v3);
  return valuePtr;
}

- (BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:161];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"canUseNetworkResourcesForLiveStreamingWhilePaused" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = sCanUseExtraNetworkingByDefault;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AVPlayerItem_canUseNetworkResourcesForLiveStreamingWhilePaused__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)_updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __89__AVPlayerItem__updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __89__AVPlayerItem__updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canUseNetworkResourcesForLiveStreamingWhilePaused])
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69729E8];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setCanUseNetworkResourcesForLiveStreamingWhilePaused:(BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:162];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"canUseNetworkResourcesForLiveStreamingWhilePaused" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__AVPlayerItem_setCanUseNetworkResourcesForLiveStreamingWhilePaused___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = canUseNetworkResourcesForLiveStreamingWhilePaused;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateCanUseNetworkResourcesForLiveStreamingWhilePausedOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"canUseNetworkResourcesForLiveStreamingWhilePaused" on:self];
  AVTelemetryIntervalEnd(&v8);
}

- (BOOL)startsOnFirstEligibleVariant
{
  v10 = [[AVTelemetryInterval alloc] initAndStartWith:163];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"startsOnFirstEligibleVariant" on:self];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVPlayerItem_startsOnFirstEligibleVariant__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  AVTelemetryIntervalEnd(&v10);
  return self;
}

- (void)_updateStartsOnFirstEligibleVariantOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__AVPlayerItem__updateStartsOnFirstEligibleVariantOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __68__AVPlayerItem__updateStartsOnFirstEligibleVariantOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) startsOnFirstEligibleVariant])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972B00];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setStartsOnFirstEligibleVariant:(BOOL)startsOnFirstEligibleVariant
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:164];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"startsOnFirstEligibleVariant" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVPlayerItem_setStartsOnFirstEligibleVariant___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = startsOnFirstEligibleVariant;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateStartsOnFirstEligibleVariantOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"startsOnFirstEligibleVariant" on:self];
  AVTelemetryIntervalEnd(&v8);
}

- (id)playabilityMetrics
{
  v7 = 0;
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v3 = result;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972A10], *MEMORY[0x1E695E480], &v7);
      if (v7)
      {
        v6 = v7;
      }
    }

    CFRelease(v3);
    return v7;
  }

  return result;
}

- (id)_seekableTimeRangesFromFPSeekableTimeIntervals:(id)intervals
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  obj = intervals;
  if (intervals)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [intervals countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *MEMORY[0x1E6972C50];
      v9 = *MEMORY[0x1E6972C48];
      v17 = *MEMORY[0x1E6960CC0];
      v10 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          *&v22.value = v17;
          v22.epoch = v10;
          *&v21.value = v17;
          v21.epoch = v10;
          v13 = [v12 objectForKey:v8];
          v14 = [v12 objectForKey:v9];
          if (v13)
          {
            CMTimeMakeFromDictionary(&v22, v13);
          }

          if (v14)
          {
            CMTimeMakeFromDictionary(&lhs.start, v14);
            rhs.start = v22;
            CMTimeSubtract(&v21, &lhs.start, &rhs.start);
          }

          memset(&lhs, 0, sizeof(lhs));
          rhs.start = v22;
          duration = v21;
          CMTimeRangeMake(&lhs, &rhs.start, &duration);
          rhs = lhs;
          [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", &rhs)}];
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }
  }

  return array;
}

- (void)_updateLoopTimeRangeOnFigPlaybackItem
{
  memset(&v15, 0, sizeof(v15));
  if (self)
  {
    [(AVPlayerItem *)self loopTimeRange];
  }

  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    if ((v15.start.flags & 0x1D) == 1 && (*&time1.start.value = *&v15.start.value, time1.start.epoch = v15.start.epoch, v12 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v5 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v5, (CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0) && (v15.duration.flags & 0x1D) == 1 && (time1.start = v15.duration, *&time2.value = v12, time2.epoch = v5, CMTimeCompare(&time1.start, &time2) >= 1))
    {
      v6 = *MEMORY[0x1E695E480];
      time1 = v15;
      v7 = CMTimeRangeCopyAsDictionary(&time1, v6);
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(FigBaseObject, *MEMORY[0x1E6972990], v7);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v10 = FigPlaybackItemGetFigBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v11(v10, *MEMORY[0x1E6972990], 0);
      }
    }

    CFRelease(v4);
  }
}

- (void)setLoopTimeRange:(id *)range
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  var2 = range->var0.var2;
  if ((var2 & 1) == 0 || (v6 = range->var1.var2, (v6 & 1) == 0) || (range->var1.var3 || range->var1.var0 < 0 || ((v6 | var2) & 0x10) == 0) && (range->var1.var3 || range->var1.var0 < 0 || (time1 = range->var1, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2))))
  {
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __33__AVPlayerItem_setLoopTimeRange___block_invoke;
    v9[3] = &unk_1E7463168;
    v8 = *&range->var0.var3;
    v10 = *&range->var0.var0;
    v11 = v8;
    v12 = *&range->var1.var1;
    v9[4] = self;
    v9[5] = &v15;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
    if (*(v16 + 24) == 1)
    {
      [(AVPlayerItem *)self _updateTimebase];
      [(AVPlayerItem *)self _updateLoopTimeRangeOnFigPlaybackItem];
    }
  }

  _Block_object_dispose(&v15, 8);
}

__n128 __33__AVPlayerItem_setLoopTimeRange___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 64);
  *&range1.start.value = *(a1 + 48);
  *&range1.start.epoch = v3;
  *&range1.duration.timescale = *(a1 + 80);
  v4 = v2[67];
  *&v8.start.value = v2[66];
  *&v8.start.epoch = v4;
  *&v8.duration.timescale = v2[68];
  if (!CMTimeRangeEqual(&range1, &v8))
  {
    v6 = *(*(a1 + 32) + 8);
    result = *(a1 + 48);
    v7 = *(a1 + 64);
    *(v6 + 1088) = *(a1 + 80);
    *(v6 + 1072) = v7;
    *(v6 + 1056) = result;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (id)_seekableTimeRanges
{
  cf = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem && ([(AVPlayerItem *)self _isReadyForBasicInspection]|| [(AVPlayerItem *)self _isReadyForInspectionOfDuration]|| sOKToBlockWhenGettingValuesOfProperties == 1) && (FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
  {
    v5(FigBaseObject, *MEMORY[0x1E6972AC8], *MEMORY[0x1E695E480], &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AVPlayerItem *)self _seekableTimeRangesFromFPSeekableTimeIntervals:v6];
  if (cf)
  {
    CFRelease(cf);
  }

  if (_copyFigPlaybackItem)
  {
    CFRelease(_copyFigPlaybackItem);
  }

  return v7;
}

- (NSArray)seekableTimeRanges
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"seekableTimeRanges" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__AVPlayerItem_seekableTimeRanges__block_invoke;
  v8[3] = &unk_1E7460E68;
  v8[4] = self;
  v8[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v8);
  v4 = v10[5];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v6 = array;
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __34__AVPlayerItem_seekableTimeRanges__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1032) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (double)seekableTimeRangesLastModifiedTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVPlayerItem_seekableTimeRangesLastModifiedTime__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __50__AVPlayerItem_seekableTimeRangesLastModifiedTime__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1040);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_loadedTimeRangesFromFPPlaybableTimeIntervals:(id)intervals
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  obj = intervals;
  if (intervals)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [intervals countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *MEMORY[0x1E69727A0];
      v9 = *MEMORY[0x1E6972798];
      v17 = *MEMORY[0x1E6960CC0];
      v10 = *(MEMORY[0x1E6960CC0] + 16);
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          *&v22.value = v17;
          v22.epoch = v10;
          *&v21.value = v17;
          v21.epoch = v10;
          v13 = [v12 objectForKey:v8];
          v14 = [v12 objectForKey:v9];
          if (v13)
          {
            CMTimeMakeFromDictionary(&v22, v13);
          }

          if (v14)
          {
            CMTimeMakeFromDictionary(&lhs.start, v14);
            rhs.start = v22;
            CMTimeSubtract(&v21, &lhs.start, &rhs.start);
          }

          memset(&lhs, 0, sizeof(lhs));
          rhs.start = v22;
          duration = v21;
          CMTimeRangeMake(&lhs, &rhs.start, &duration);
          rhs = lhs;
          [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeRange:", &rhs)}];
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }
  }

  return array;
}

- (id)_loadedTimeRanges
{
  cf = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem && (FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
  {
    v5(FigBaseObject, *MEMORY[0x1E6972A18], *MEMORY[0x1E695E480], &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AVPlayerItem *)self _loadedTimeRangesFromFPPlaybableTimeIntervals:v6];
  if (cf)
  {
    CFRelease(cf);
  }

  if (_copyFigPlaybackItem)
  {
    CFRelease(_copyFigPlaybackItem);
  }

  return v7;
}

- (NSArray)loadedTimeRanges
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"loadedTimeRanges" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__AVPlayerItem_loadedTimeRanges__block_invoke;
  v8[3] = &unk_1E7460E68;
  v8[4] = self;
  v8[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v8);
  v4 = v10[5];
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v6 = array;
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __32__AVPlayerItem_loadedTimeRanges__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1048) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)gaplessInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayerItem_gaplessInfo__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__AVPlayerItem_gaplessInfo__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 680);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_playbackProperties
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  gaplessInfo = [(AVPlayerItem *)self gaplessInfo];
  if (gaplessInfo)
  {
    [dictionary addEntriesFromDictionary:gaplessInfo];
  }

  playerItem = self->_playerItem;
  if (playerItem->integratedSessionIdentifier)
  {
    [dictionary addEntriesFromDictionary:?];
    playerItem = self->_playerItem;
  }

  if (*&playerItem->participatesInCoordinatedPlayback)
  {
    [dictionary addEntriesFromDictionary:?];
  }

  return dictionary;
}

- (void)_updatePlaybackPropertiesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    if (_updatePlaybackPropertiesOnFigPlaybackItem_keyMapOnce != -1)
    {
      [AVPlayerItem _updatePlaybackPropertiesOnFigPlaybackItem];
    }

    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AVPlayerItem__updatePlaybackPropertiesOnFigPlaybackItem__block_invoke_2;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __58__AVPlayerItem__updatePlaybackPropertiesOnFigPlaybackItem__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  result = [v0 initWithObjectsAndKeys:{*MEMORY[0x1E6972DC0], @"GaplessInfoHeuristicInfoKey", *MEMORY[0x1E6972DB0], @"GaplessInfoEncodingDelayInFramesKey", *MEMORY[0x1E6972DB8], @"GaplessInfoEncodingDrainInFramesKey", *MEMORY[0x1E6972DA8], @"GaplessInfoDurationInFramesKey", *MEMORY[0x1E6972DC8], @"GaplessInfoLastPacketsResyncKey", *MEMORY[0x1E6972DD0], @"OverrideHEAACPrimingEditList", *MEMORY[0x1E6972DD8], @"RampInOutInfoInDuration", *MEMORY[0x1E6972DE0], @"RampInOutInfoOutDuration", *MEMORY[0x1E6972DA0], @"AudibleDRMInfoGroupID", 0}];
  _updatePlaybackPropertiesOnFigPlaybackItem_keyMap = result;
  return result;
}

uint64_t __58__AVPlayerItem__updatePlaybackPropertiesOnFigPlaybackItem__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _playbackProperties];
  if (result)
  {
    v2 = result;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = _updatePlaybackPropertiesOnFigPlaybackItem_keyMap;
    result = [_updatePlaybackPropertiesOnFigPlaybackItem_keyMap countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (result)
    {
      v4 = result;
      v5 = 0;
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * v7);
          v9 = [v2 objectForKey:v8];
          if (v9)
          {
            v10 = v9;
            v11 = [_updatePlaybackPropertiesOnFigPlaybackItem_keyMap objectForKey:v8];
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DF90] dictionary];
            }

            [v5 setObject:v10 forKey:v11];
          }

          ++v7;
        }

        while (v4 != v7);
        result = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v4 = result;
      }

      while (result);
      if (v5)
      {
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        VTable = CMBaseObjectGetVTable();
        v14 = *(VTable + 8);
        result = VTable + 8;
        v15 = *(v14 + 56);
        if (v15)
        {
          return v15(FigBaseObject, *MEMORY[0x1E6972A20], v5);
        }
      }
    }
  }

  return result;
}

- (void)setGaplessInfo:(id)info
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVPlayerItem_setGaplessInfo___block_invoke;
  v5[3] = &unk_1E7460F30;
  v5[4] = info;
  v5[5] = self;
  v5[6] = &v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(AVPlayerItem *)self _updatePlaybackPropertiesOnFigPlaybackItem];
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __31__AVPlayerItem_setGaplessInfo___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 680);
  if (*(result + 32) != v1)
  {
    v2 = result;

    result = [*(v2 + 32) copy];
    *(*(*(v2 + 40) + 8) + 680) = result;
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (id)configurationGroup
{
  v2 = @"Default";
  v8 = @"Default";
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E69728A8], *MEMORY[0x1E695E480], &v8);
    }

    CFRelease(v4);
    return v8;
  }

  return v2;
}

- (int64_t)variantIndex
{
  valuePtr = -1;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    number = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      if (v6(FigBaseObject, *MEMORY[0x1E6972A48], *MEMORY[0x1E695E480], &number))
      {
        v7 = 1;
      }

      else
      {
        v7 = number == 0;
      }

      if (!v7)
      {
        CFNumberGetValue(number, kCFNumberNSIntegerType, &valuePtr);
        CFRelease(number);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  else if (self->_playerItem->rampInOutInfo < 0)
  {
    return -1;
  }

  else
  {
    return self->_playerItem->rampInOutInfo;
  }
}

- (double)liveUpdateInterval
{
  valuePtr = 0.0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0.0;
  }

  v3 = _copyFigPlaybackItem;
  number = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    if (v5(FigBaseObject, *MEMORY[0x1E6972988], *MEMORY[0x1E695E480], &number))
    {
      v6 = 1;
    }

    else
    {
      v6 = number == 0;
    }

    if (!v6)
    {
      CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr);
      CFRelease(number);
    }
  }

  CFRelease(v3);
  return valuePtr;
}

- (void)_quietlySetVariantIndex:(int64_t)index
{
  valuePtr = index;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E6972A48], v4);
    }

    CFRelease(v4);
  }
}

- (void)setVariantIndex:(int64_t)index
{
  if ((index & 0x8000000000000000) == 0)
  {
    playerItem = self->_playerItem;
    if (playerItem->figPlaybackItem)
    {
      [(AVPlayerItem *)self _quietlySetVariantIndex:?];
    }

    else
    {
      playerItem->rampInOutInfo = index;
    }
  }
}

- (id)currentStableVariantID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayerItem_currentStableVariantID__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__AVPlayerItem_currentStableVariantID__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1424) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateSoundCheckVolumeNormalizationOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVPlayerItem__updateSoundCheckVolumeNormalizationOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __69__AVPlayerItem__updateSoundCheckVolumeNormalizationOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) soundCheckVolumeNormalization];
  valuePtr = v1;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972AF0], v3);
    }

    CFRelease(v3);
  }
}

- (void)setSoundCheckVolumeNormalization:(float)normalization
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_setSoundCheckVolumeNormalization___block_invoke;
  v5[3] = &unk_1E7462C08;
  normalizationCopy = normalization;
  v5[4] = self;
  v5[5] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateSoundCheckVolumeNormalizationOnFigPlaybackItem];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __49__AVPlayerItem_setSoundCheckVolumeNormalization___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(result + 32) + 8);
  if (v1 != *(v2 + 688))
  {
    *(v2 + 688) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)soundCheckVolumeNormalization
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_soundCheckVolumeNormalization__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __45__AVPlayerItem_soundCheckVolumeNormalization__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 688);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateVolumeAdjustmentOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__AVPlayerItem__updateVolumeAdjustmentOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __56__AVPlayerItem__updateVolumeAdjustmentOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) volumeAdjustment];
  valuePtr = v1;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972C30], v3);
    }

    CFRelease(v3);
  }
}

- (void)setVolumeAdjustment:(float)adjustment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayerItem_setVolumeAdjustment___block_invoke;
  v5[3] = &unk_1E7462C08;
  adjustmentCopy = adjustment;
  v5[4] = self;
  v5[5] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateVolumeAdjustmentOnFigPlaybackItem];
  }

  _Block_object_dispose(&v7, 8);
}

uint64_t __36__AVPlayerItem_setVolumeAdjustment___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(result + 32) + 8);
  if (v1 != *(v2 + 692))
  {
    *(v2 + 692) = v1;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (float)volumeAdjustment
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1065353216;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVPlayerItem_volumeAdjustment__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __32__AVPlayerItem_volumeAdjustment__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 692);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)adjustTargetLevelWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem_adjustTargetLevelWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAdjustTargetLevelOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AVPlayerItem__updateAdjustTargetLevelOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __57__AVPlayerItem__updateAdjustTargetLevelOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) adjustTargetLevel];
  valuePtr = v1;
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E69727B8], v3);
    }

    CFRelease(v3);
  }
}

- (void)setAdjustTargetLevel:(float)level
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AVPlayerItem_setAdjustTargetLevel___block_invoke;
  v5[3] = &unk_1E74628F8;
  v5[4] = self;
  levelCopy = level;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAdjustTargetLevelOnFigPlaybackItem];
}

float __37__AVPlayerItem_setAdjustTargetLevel___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 720) = 1;
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 724) = result;
  return result;
}

- (float)adjustTargetLevel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_adjustTargetLevel__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __33__AVPlayerItem_adjustTargetLevel__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 724);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)adjustCompressionProfileWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVPlayerItem_adjustCompressionProfileWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAdjustCompressionProfileOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__AVPlayerItem__updateAdjustCompressionProfileOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __64__AVPlayerItem__updateAdjustCompressionProfileOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  valuePtr = [*(a1 + 32) adjustCompressionProfile];
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v1)
  {
    v2 = v1;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(FigBaseObject, *MEMORY[0x1E69727B0], v2);
    }

    CFRelease(v2);
  }
}

- (void)setAdjustCompressionProfile:(unsigned int)profile
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVPlayerItem_setAdjustCompressionProfile___block_invoke;
  v5[3] = &unk_1E74628F8;
  v5[4] = self;
  profileCopy = profile;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAdjustCompressionProfileOnFigPlaybackItem];
}

uint64_t __44__AVPlayerItem_setAdjustCompressionProfile___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 728) = 1;
  *(*(*(result + 32) + 8) + 732) = *(result + 40);
  return result;
}

- (unsigned)adjustCompressionProfile
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem_adjustCompressionProfile__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_mediaOptionsSelectedByClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem__mediaOptionsSelectedByClient__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__AVPlayerItem__mediaOptionsSelectedByClient__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1432) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_mediaOptionsSelectedByClientForKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AVPlayerItem__mediaOptionsSelectedByClientForKey___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = key;
  block[6] = &v7;
  block[4] = self;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __52__AVPlayerItem__mediaOptionsSelectedByClientForKey___block_invoke(void *a1)
{
  result = [*(*(a1[4] + 8) + 1432) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)_setMediaOptionsSelectedByClient:(id)client forKey:(id)key
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayerItem__setMediaOptionsSelectedByClient_forKey___block_invoke;
  v5[3] = &unk_1E7460E90;
  v5[4] = client;
  v5[5] = self;
  v5[6] = key;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
}

uint64_t __56__AVPlayerItem__setMediaOptionsSelectedByClient_forKey___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 1432);
  if (v2)
  {
    return [v3 setObject:v2 forKey:a1[6]];
  }

  else
  {
    return [v3 removeObjectForKey:a1[6]];
  }
}

- (void)_removeMediaOptionsSelectedByClient
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVPlayerItem__removeMediaOptionsSelectedByClient__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (BOOL)_isFigAssetReadyForInspectionOfMediaSelectionOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayerItem__isFigAssetReadyForInspectionOfMediaSelectionOptions__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_markFigAssetAsReadyForInspectionOfMediaSelectionOptions
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__AVPlayerItem__markFigAssetAsReadyForInspectionOfMediaSelectionOptions__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v3);
}

- (void)_applyMediaSelectionOptions
{
  v17 = *MEMORY[0x1E69E9840];
  _mediaOptionsSelectedByClient = [(AVPlayerItem *)self _mediaOptionsSelectedByClient];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [_mediaOptionsSelectedByClient countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(_mediaOptionsSelectedByClient);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [_mediaOptionsSelectedByClient objectForKey:v8];
        figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__AVPlayerItem__applyMediaSelectionOptions__block_invoke;
        block[3] = &unk_1E7460E90;
        block[4] = self;
        block[5] = v9;
        block[6] = v8;
        dispatch_sync(figPlaybackItemSetterQueue, block);
      }

      v5 = [_mediaOptionsSelectedByClient countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

uint64_t __43__AVPlayerItem__applyMediaSelectionOptions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _selectMediaOption:*(a1 + 40) inMediaSelectionGroup:*(a1 + 48)];
  if (([*(a1 + 32) _isReadyForBasicInspection] & 1) != 0 || (result = objc_msgSend(*(a1 + 48), "_isStreamingGroup"), result))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);

    return [v3 _setMediaOptionsSelectedByClient:0 forKey:v4];
  }

  return result;
}

- (void)_cacheMediaSelectionOption:(id)option forMediaSelectionGroup:(id)group
{
  if (-[AVAsset isEqual:](-[AVPlayerItem asset](self, "asset"), "isEqual:", [group asset]))
  {
    if (!option)
    {
      if (![group allowsEmptySelection])
      {
        return;
      }

      option = [AVMediaSelectionOption mediaSelectionNilOptionForGroup:group];
    }

    [(AVPlayerItem *)self _setMediaOptionsSelectedByClient:option forKey:group];
  }
}

- (BOOL)_selectMediaOption:(id)option inMediaSelectionGroup:(id)group
{
  LODWORD(_copyFigPlaybackItem) = -[AVAsset isEqual:](-[AVPlayerItem asset](self, "asset"), "isEqual:", [group asset]);
  if (_copyFigPlaybackItem)
  {
    if (option || (LODWORD(_copyFigPlaybackItem) = [group allowsEmptySelection], _copyFigPlaybackItem))
    {
      _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
      if (_copyFigPlaybackItem)
      {
        v8 = _copyFigPlaybackItem;
        [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"currentMediaSelection" on:self];
        ivarAccessQueue = self->_playerItem->ivarAccessQueue;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __57__AVPlayerItem__selectMediaOption_inMediaSelectionGroup___block_invoke;
        v14[3] = &unk_1E7460C00;
        v14[4] = self;
        av_readwrite_dispatch_queue_write(ivarAccessQueue, v14);
        [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"currentMediaSelection" on:self];
        v10 = [MEMORY[0x1E695DEC8] arrayWithObject:{-[AVPlayerItem _propertyListForMediaSelection:forGroup:](self, "_propertyListForMediaSelection:forGroup:", option, group)}];
        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v12)
        {
          v12(FigBaseObject, *MEMORY[0x1E6972AD8], v10);
        }

        CFRelease(v8);
        LOBYTE(_copyFigPlaybackItem) = 1;
      }
    }
  }

  return _copyFigPlaybackItem;
}

- (void)selectMediaOption:(AVMediaSelectionOption *)mediaSelectionOption inMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v12[24] = *MEMORY[0x1E69E9840];
  v12[0] = [[AVTelemetryInterval alloc] initAndStartWith:9];
  AVTelemetryGenerateID();
  if (dword_1ED5AC298)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerItem_selectMediaOption_inMediaSelectionGroup___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = mediaSelectionOption;
  block[6] = mediaSelectionGroup;
  dispatch_sync(figPlaybackItemSetterQueue, block);
  AVTelemetryIntervalEnd(v12);
}

uint64_t __56__AVPlayerItem_selectMediaOption_inMediaSelectionGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _selectMediaOption:*(a1 + 40) inMediaSelectionGroup:*(a1 + 48)];
  result = [*(a1 + 32) _isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 _cacheMediaSelectionOption:v4 forMediaSelectionGroup:v5];
  }

  return result;
}

- (void)selectMediaOptionAutomaticallyInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  v10[22] = *MEMORY[0x1E69E9840];
  v10[0] = [[AVTelemetryInterval alloc] initAndStartWith:10];
  AVTelemetryGenerateID();
  if ([(AVAsset *)[(AVPlayerItem *)self asset] isEqual:[(AVMediaSelectionGroup *)mediaSelectionGroup asset]])
  {
    if (dword_1ED5AC298)
    {
      v9 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__AVPlayerItem_selectMediaOptionAutomaticallyInMediaSelectionGroup___block_invoke;
    block[3] = &unk_1E7460DF0;
    block[4] = self;
    block[5] = mediaSelectionGroup;
    dispatch_sync(figPlaybackItemSetterQueue, block);
  }

  AVTelemetryIntervalEnd(v10);
}

void __68__AVPlayerItem_selectMediaOptionAutomaticallyInMediaSelectionGroup___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    [*(*(v3 + 8) + 112) willChangeValueFor:@"currentMediaSelection" on:?];
    v5 = *(a1 + 32);
    v6 = *(*(v5 + 8) + 16);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__AVPlayerItem_selectMediaOptionAutomaticallyInMediaSelectionGroup___block_invoke_2;
    v14[3] = &unk_1E7460C00;
    v14[4] = v5;
    av_readwrite_dispatch_queue_write(v6, v14);
    [*(*(*(a1 + 32) + 8) + 112) didChangeValueFor:@"currentMediaSelection" on:?];
    v7 = [objc_msgSend(*(a1 + 32) _propertyListForMediaSelection:0 forGroup:{*(a1 + 40)), "mutableCopy"}];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v7 setObject:v8 forKey:*MEMORY[0x1E6972C60]];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, *MEMORY[0x1E6972AD8], v9);
    }

    [*(a1 + 32) _clearCachedMediaSelectionGroup:*(a1 + 40)];
    CFRelease(v4);
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);

    [v13 _clearCachedMediaSelectionGroup:{v12, v3}];
  }
}

- (BOOL)playerAppliesAutomaticMediaSelectionToGroup:(id)group
{
  if (!-[AVAsset isEqual:](-[AVPlayerItem asset](self, "asset"), "isEqual:", [group asset]))
  {
    return 0;
  }

  if ([(AVPlayerItem *)self _isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection])
  {
    v5 = [(AVPlayerItem *)self _propertyListForSelectedMediaOptionUsingFigSelectedMediaArrayObtainedFromGroup:group];
    v6 = [v5 objectForKey:*MEMORY[0x1E6972C68]];

    return [v6 BOOLValue];
  }

  if ([(AVPlayerItem *)self _hasSelectionInCachedMediaSelectionGroup:group])
  {
    return 0;
  }

  _player = [(AVPlayerItem *)self _player];

  return [_player appliesMediaSelectionCriteriaAutomatically];
}

- (AVMediaSelectionOption)selectedMediaOptionInMediaSelectionGroup:(AVMediaSelectionGroup *)mediaSelectionGroup
{
  if (![(AVAsset *)[(AVPlayerItem *)self asset] isEqual:[(AVMediaSelectionGroup *)mediaSelectionGroup asset]])
  {
    return 0;
  }

  if ([(AVPlayerItem *)self _isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection])
  {
    v5 = [(AVMediaSelectionGroup *)mediaSelectionGroup mediaSelectionOptionWithPropertyList:[(AVPlayerItem *)self _propertyListForSelectedMediaOptionUsingFigSelectedMediaArrayObtainedFromGroup:mediaSelectionGroup]];
    if ([(AVMediaSelectionOption *)v5 _representsNilSelection])
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v7 = [(AVPlayerItem *)self _mediaOptionsSelectedByClientForKey:mediaSelectionGroup];
    if (v7)
    {
      v8 = v7;
      if ([(AVMediaSelectionOption *)v7 _representsNilSelection])
      {
        return 0;
      }

      else
      {
        return v8;
      }
    }

    else
    {

      return [(AVMediaSelectionGroup *)mediaSelectionGroup defaultOption];
    }
  }
}

- (id)_figSelectedMediaArray
{
  v7 = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v3 = _copyFigPlaybackItem;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972AD8], *MEMORY[0x1E695E480], &v7);
    }

    CFRelease(v3);
    _copyFigPlaybackItem = v7;
  }

  return _copyFigPlaybackItem;
}

- (id)_currentMediaSelectionFromFigSelectedMediaArray:(id)array
{
  v35 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  _isFigAssetReadyForInspectionOfMediaSelectionOptions = [(AVPlayerItem *)self _isFigAssetReadyForInspectionOfMediaSelectionOptions];
  if (_isFigAssetReadyForInspectionOfMediaSelectionOptions)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [(AVAsset *)self->_playerItem->asset availableMediaCharacteristicsWithMediaSelectionOptions];
    v23 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v23)
    {
      v22 = *v30;
      v5 = *MEMORY[0x1E6973750];
      v6 = *MEMORY[0x1E6973740];
      do
      {
        v7 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = v7;
          v8 = [(AVAsset *)[(AVPlayerItem *)self asset] mediaSelectionGroupForMediaCharacteristic:*(*(&v29 + 1) + 8 * v7)];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, (v9 = [array countByEnumeratingWithState:&v25 objects:v33 count:16]) != 0))
          {
            v10 = v9;
            v11 = *v26;
LABEL_10:
            v12 = 0;
            while (1)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(array);
              }

              v13 = *(*(&v25 + 1) + 8 * v12);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [v13 objectForKey:v5];
                if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (-[AVMediaSelectionGroup _matchesGroupID:mediaType:](v8, "_matchesGroupID:mediaType:", [v13 objectForKey:v6], v14))
                  {
                    break;
                  }
                }
              }

              if (v10 == ++v12)
              {
                v10 = [array countByEnumeratingWithState:&v25 objects:v33 count:16];
                if (v10)
                {
                  goto LABEL_10;
                }

                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            [array addObject:{-[AVPlayerItem _propertyListForMediaSelection:forGroup:](self, "_propertyListForMediaSelection:forGroup:", +[AVMediaSelectionOption mediaSelectionNilOptionForGroup:](AVMediaSelectionOption, "mediaSelectionNilOptionForGroup:", v8), v8)}];
          }

          v7 = v24 + 1;
        }

        while (v24 + 1 != v23);
        v23 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v23);
    }
  }

  if (array)
  {
    [array addObjectsFromArray:array];
  }

  v15 = [AVMediaSelection alloc];
  asset = [(AVPlayerItem *)self asset];
  if (_isFigAssetReadyForInspectionOfMediaSelectionOptions)
  {
    v17 = [(AVMediaSelection *)v15 _initWithAsset:asset selectedMediaArray:array];
  }

  else
  {
    v17 = [(AVMediaSelection *)v15 _initWithDeferredLoadingOfAsset:asset selectedMediaArray:array];
  }

  return v17;
}

- (void)_setCurrentMediaSelection:(id)selection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"currentMediaSelection" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AVPlayerItem__setCurrentMediaSelection___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = self;
  v7[5] = selection;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"currentMediaSelection" on:self];
  if (*(v9 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotification:{objc_msgSend(MEMORY[0x1E696AD80], "notificationWithName:object:", @"AVPlayerItemMediaSelectionDidChangeNotification", self)}];
  }

  _Block_object_dispose(&v8, 8);
}

void *__42__AVPlayerItem__setCurrentMediaSelection___block_invoke(void *result)
{
  v1 = *(*(result[4] + 8) + 1120);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(*(v2[4] + 8) + 1120) = result;
    *(*(v2[6] + 8) + 24) = 1;
  }

  return result;
}

- (AVMediaSelection)currentMediaSelection
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = [[AVTelemetryInterval alloc] initAndStartWith:11];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"currentMediaSelection" on:self];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__8;
  v28 = __Block_byref_object_dispose__8;
  v29 = 0;
  if ([(AVPlayerItem *)self _isFigAssetReadyForInspectionOfMediaSelectionOptionsAndFigPlaybackItemIsReadyForInspection])
  {
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__AVPlayerItem_currentMediaSelection__block_invoke;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v24;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    v4 = v25[5];
    v5 = v25[5];
    if (!v5)
    {
      v6 = [(AVPlayerItem *)self _currentMediaSelectionFromFigSelectedMediaArray:[(AVPlayerItem *)self _figSelectedMediaArray]];
      v25[5] = v6;
      v7 = self->_playerItem->ivarAccessQueue;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __37__AVPlayerItem_currentMediaSelection__block_invoke_2;
      v22[3] = &unk_1E7460EE0;
      v22[4] = self;
      v22[5] = &v24;
      av_readwrite_dispatch_queue_write(v7, v22);
      v5 = v25[5];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(AVAsset *)[(AVPlayerItem *)self asset] statusOfValueForKey:@"availableMediaCharacteristicsWithMediaSelectionOptions" error:0]== 2)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      availableMediaCharacteristicsWithMediaSelectionOptions = [(AVAsset *)self->_playerItem->asset availableMediaCharacteristicsWithMediaSelectionOptions];
      v10 = [(NSArray *)availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v18 objects:v31 count:16];
      if (v10)
      {
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(availableMediaCharacteristicsWithMediaSelectionOptions);
            }

            v13 = [(AVAsset *)[(AVPlayerItem *)self asset] mediaSelectionGroupForMediaCharacteristic:*(*(&v18 + 1) + 8 * v12)];
            v14 = [(AVPlayerItem *)self _mediaOptionsSelectedByClientForKey:v13];
            if (v14)
            {
              [v8 addObject:{-[AVPlayerItem _propertyListForMediaSelection:forGroup:](self, "_propertyListForMediaSelection:forGroup:", v14, v13)}];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [(NSArray *)availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:&v18 objects:v31 count:16];
        }

        while (v10);
      }

      v15 = [[AVMediaSelection alloc] _initWithAsset:[(AVPlayerItem *)self asset] selectedMediaArray:v8];
    }

    else
    {
      asset = [(AVPlayerItem *)self asset];
      -[AVAsset loadValuesAsynchronouslyForKeys:completionHandler:](asset, "loadValuesAsynchronouslyForKeys:completionHandler:", [MEMORY[0x1E695DEC8] arrayWithObject:@"availableMediaCharacteristicsWithMediaSelectionOptions"], &__block_literal_global_762);
      v15 = [[AVMediaSelection alloc] _initWithAssetWithoutGroupDictionaries:[(AVPlayerItem *)self asset]];
    }

    v5 = v15;
    v25[5] = v15;
  }

  _Block_object_dispose(&v24, 8);
  AVTelemetryIntervalEnd(&v30);
  return v5;
}

id __37__AVPlayerItem_currentMediaSelection__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1120);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __37__AVPlayerItem_currentMediaSelection__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(*(a1 + 32) + 8) + 1120) = result;
  return result;
}

- (BOOL)restrictsAutomaticMediaSelectionToAvailableOfflineOptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AVPlayerItem_restrictsAutomaticMediaSelectionToAvailableOfflineOptions__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRestrictsAutomaticMediaSelectionToAvailableOfflineOptions:(BOOL)options
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__AVPlayerItem_setRestrictsAutomaticMediaSelectionToAvailableOfflineOptions___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  optionsCopy = options;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (void)_updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__AVPlayerItem__updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __71__AVPlayerItem__updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isNonForcedSubtitleDisplayEnabled])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E69728E0];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (BOOL)_isNonForcedSubtitleDisplayEnabled
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    [(AVPlayerItem *)_copyFigPlaybackItem _isNonForcedSubtitleDisplayEnabled];
    LOBYTE(_copyFigPlaybackItem) = v4;
  }

  return _copyFigPlaybackItem;
}

- (void)setNonForcedSubtitleDisplayEnabled:(BOOL)enabled
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayerItem_setNonForcedSubtitleDisplayEnabled___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  enabledCopy = enabled;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateNonForcedSubtitleDisplayEnabledOnFigPlaybackItem];
  [-[AVPlayerItem _player](self "_player")];
}

- (OpaqueFigCPEProtector)_copyFigCPEProtector
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVPlayerItem__copyFigCPEProtector__block_invoke;
  block[3] = &unk_1E7462B60;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v18;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if (v15[3])
  {
    v4 = v19;
    if (v19[3])
    {
      CFRelease(v19[3]);
      v4 = v19;
      v19[3] = 0;
    }

    CMBaseObject = FigAssetGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, *MEMORY[0x1E6971198], *MEMORY[0x1E695E480], v4 + 3);
    }

    v7 = self->_playerItem->ivarAccessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__AVPlayerItem__copyFigCPEProtector__block_invoke_2;
    v12[3] = &unk_1E7460EE0;
    v12[4] = self;
    v12[5] = &v18;
    av_readwrite_dispatch_queue_write(v7, v12);
    v8 = v19[3];
    if (v8)
    {
      CFRetain(v8);
    }
  }

  v9 = v15[3];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = v19[3];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

CFTypeRef __36__AVPlayerItem__copyFigCPEProtector__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (!*(v3 + 1512))
  {
    v4 = [*(v3 + 120) _isStreaming];
    v2 = a1[4];
    if ((v4 & 1) == 0)
    {
      v5 = [*(*(v2 + 8) + 120) hasProtectedContent];
      v2 = a1[4];
      if (v5)
      {
        v6 = [*(*(v2 + 8) + 120) _figAsset];
        if (v6)
        {
          v6 = CFRetain(v6);
        }

        *(*(a1[5] + 8) + 24) = v6;
        v2 = a1[4];
      }
    }
  }

  result = *(*(v2 + 8) + 1512);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void __36__AVPlayerItem__copyFigCPEProtector__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 1512);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(*(a1 + 32) + 8);
  }

  *(v2 + 1512) = *(*(*(a1 + 40) + 8) + 24);
}

- (NSArray)timedMetadata
{
  v2 = self->_playerItem->currentStableVariantID;

  return v2;
}

- (void)_setTimedMetadata:(id)metadata
{
  if ([metadata count])
  {
    v5 = [metadata copy];
  }

  else
  {
    v5 = 0;
  }

  self->_playerItem->currentStableVariantID = v5;
}

- (void)_setSyncLayersOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__AVPlayerItem__setSyncLayersOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __47__AVPlayerItem__setSyncLayersOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _syncLayers];
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972B38];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)_removeSyncLayer:(id)layer
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem__removeSyncLayer___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = layer;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _setSyncLayersOnFigPlaybackItem];
}

uint64_t __33__AVPlayerItem__removeSyncLayer___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 160) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      if ([*(*(*(a1 + 32) + 8) + 160) pointerAtIndex:i] == *(a1 + 40))
      {
        [*(*(*(a1 + 32) + 8) + 160) replacePointerAtIndex:i withPointer:0];
      }
    }
  }

  v5 = *(*(*(a1 + 32) + 8) + 160);

  return [v5 compact];
}

- (void)_addSyncLayer:(id)layer
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AVPlayerItem__addSyncLayer___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = layer;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _setSyncLayersOnFigPlaybackItem];
}

uint64_t __30__AVPlayerItem__addSyncLayer___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 160);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 160) = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v2 = *(*(*(a1 + 32) + 8) + 160);
  }

  v3 = *(a1 + 40);

  return [v2 addPointer:v3];
}

- (id)_syncLayers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__AVPlayerItem__syncLayers__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__AVPlayerItem__syncLayers__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(*(a1 + 32) + 8) + 160) "allObjects")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_playbackItemNotificationPayloadToError:(__CFDictionary *)error
{
  if (!error)
  {
    return 0;
  }

  v5 = CFGetTypeID(error);
  if (v5 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  Value = CFDictionaryGetValue(error, *MEMORY[0x1E6972770]);
  if (Value)
  {
    v7 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v7 = 0;
  }

  result = CFDictionaryGetValue(error, *MEMORY[0x1E6972768]);
  valuePtr = 0;
  if (result)
  {
    v9 = result;
    v10 = CFGetTypeID(result);
    if (v10 == CFNumberGetTypeID())
    {
      v12 = 0;
      [(AVPlayerItem *)self _getVideoComposition:0 customVideoCompositorSession:&v12 figVideoCompositor:0];
      CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr);
      if (valuePtr != -16180 || !v12 || (result = [v12 getAndClearClientError]) == 0)
      {
        v11 = CFDictionaryGetValue(error, *MEMORY[0x1E6972648]);
        result = AVErrorWithNSErrorAndOSStatus(v11, valuePtr, 0);
        if (v7)
        {
          return AVLocalizedError(@"AVFoundationErrorDomain", -11870, [result userInfo]);
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

- (BOOL)_hasEnabledVideo
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if (([(AVPlayerItem *)self _isReadyForInspectionOfTracks]|| sOKToBlockWhenGettingValuesOfProperties == 1) && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v6(FigBaseObject, *MEMORY[0x1E6972938], *MEMORY[0x1E695E480], &BOOLean) && BOOLean)
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (BOOL)hasEnabledVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVPlayerItem_hasEnabledVideo__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__AVPlayerItem_hasVideo__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRenderingSpatialAudio
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem_isRenderingSpatialAudio__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_hasEnabledAudio
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (!_copyFigPlaybackItem)
  {
    return 0;
  }

  v4 = _copyFigPlaybackItem;
  if (([(AVPlayerItem *)self _isReadyForInspectionOfTracks]|| sOKToBlockWhenGettingValuesOfProperties == 1) && (BOOLean = 0, FigBaseObject = FigPlaybackItemGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && !v6(FigBaseObject, *MEMORY[0x1E6972930], *MEMORY[0x1E695E480], &BOOLean) && BOOLean)
  {
    v7 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

- (BOOL)hasEnabledAudio
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AVPlayerItem_hasEnabledAudio__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_suppressionForOutputs:(id)outputs
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [outputs countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(outputs);
        }

        if ([*(*(&v9 + 1) + 8 * v7) suppressesPlayerRendering])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [outputs countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (void)_setSuppressesVideoLayers:(BOOL)layers
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVPlayerItem__setSuppressesVideoLayers___block_invoke;
  v6[3] = &unk_1E7462948;
  layersCopy = layers;
  v6[4] = self;
  v6[5] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v9 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemSuppressesVideoLayersDidChangeNotification" object:self userInfo:0];
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __42__AVPlayerItem__setSuppressesVideoLayers___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 48);
  if (*(v1 + 208) != v2)
  {
    *(v1 + 208) = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)_updateVideoSuppressionOnFigPlaybackItem:(OpaqueFigPlaybackItem *)item basedOnOutputs:(id)outputs
{
  v5 = [(AVPlayerItem *)self _suppressionForOutputs:outputs];
  [(AVPlayerItem *)self _setSuppressesVideoLayers:v5];
  if (v5)
  {
    v6 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v8)
  {
    v9 = *MEMORY[0x1E6972B28];
    v10 = *v6;

    v8(FigBaseObject, v9, v10);
  }
}

- (void)_updateLegibleSuppressionOnFigPlaybackItem:(OpaqueFigPlaybackItem *)item basedOnOutputs:(id)outputs
{
  if ([(AVPlayerItem *)self _suppressionForOutputs:outputs])
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972B20];
    v8 = *v4;

    v6(FigBaseObject, v7, v8);
  }
}

- (BOOL)_hasEnqueuedVideoFrame
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayerItem__hasEnqueuedVideoFrame__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)allowProgressiveSwitchUp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__AVPlayerItem_allowProgressiveSwitchUp__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowProgressiveSwitchUp:(BOOL)up
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AVPlayerItem_setAllowProgressiveSwitchUp___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  upCopy = up;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__AVPlayerItem_setAllowProgressiveSwitchUp___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    upCopy2 = up;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __44__AVPlayerItem_setAllowProgressiveSwitchUp___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69727E0];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (BOOL)allowProgressiveStartup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__AVPlayerItem_allowProgressiveStartup__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowProgressiveStartup:(BOOL)startup
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__AVPlayerItem_setAllowProgressiveStartup___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  startupCopy = startup;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__AVPlayerItem_setAllowProgressiveStartup___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    startupCopy2 = startup;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __43__AVPlayerItem_setAllowProgressiveStartup___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69727D8];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (BOOL)allowProgressiveResume
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__AVPlayerItem_allowProgressiveResume__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAllowProgressiveResume:(BOOL)resume
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__AVPlayerItem_setAllowProgressiveResume___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  resumeCopy = resume;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__AVPlayerItem_setAllowProgressiveResume___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    resumeCopy2 = resume;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __42__AVPlayerItem_setAllowProgressiveResume___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69727D0];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (CGSize)IFramePrefetchTargetDimensions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AVPlayerItem_IFramePrefetchTargetDimensions__block_invoke;
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

__n128 __46__AVPlayerItem_IFramePrefetchTargetDimensions__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 896);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)_updateIFramePrefetchTargetDimensionsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__AVPlayerItem__updateIFramePrefetchTargetDimensionsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __70__AVPlayerItem__updateIFramePrefetchTargetDimensionsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) IFramePrefetchTargetDimensions];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v5);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6972948], DictionaryRepresentation);
  }

  if (DictionaryRepresentation)
  {

    CFRelease(DictionaryRepresentation);
  }
}

- (void)setIFramePrefetchTargetDimensions:(CGSize)dimensions
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVPlayerItem_setIFramePrefetchTargetDimensions___block_invoke;
  v5[3] = &unk_1E74625B0;
  v5[4] = self;
  dimensionsCopy = dimensions;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateIFramePrefetchTargetDimensionsOnFigPlaybackItem];
}

__n128 __50__AVPlayerItem_setIFramePrefetchTargetDimensions___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 896) = result;
  return result;
}

- (double)preferredPeakBitRate
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:165];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"preferredPeakBitRate" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AVPlayerItem_preferredPeakBitRate__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

double __36__AVPlayerItem_preferredPeakBitRate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 608);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updatePreferredPeakBitRateOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__AVPlayerItem__updatePreferredPeakBitRateOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __60__AVPlayerItem__updatePreferredPeakBitRateOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  [*(a1 + 32) preferredPeakBitRate];
  v2 = [v1 numberWithDouble:?];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972860];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)setPreferredPeakBitRate:(double)preferredPeakBitRate
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:166];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"preferredPeakBitRate" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__AVPlayerItem_setPreferredPeakBitRate___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  *&v6[5] = preferredPeakBitRate;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updatePreferredPeakBitRateOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"preferredPeakBitRate" on:self];
  AVTelemetryIntervalEnd(&v7);
}

double __40__AVPlayerItem_setPreferredPeakBitRate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 608) = result;
  return result;
}

- (double)preferredPeakBitRateForExpensiveNetworks
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:173];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"preferredPeakBitRateForExpensiveNetworks" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__AVPlayerItem_preferredPeakBitRateForExpensiveNetworks__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

double __56__AVPlayerItem_preferredPeakBitRateForExpensiveNetworks__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 616);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__AVPlayerItem__updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __80__AVPlayerItem__updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) preferredPeakBitRateForExpensiveNetworks];
  if (v1 <= 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972868];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)setPreferredPeakBitRateForExpensiveNetworks:(double)preferredPeakBitRateForExpensiveNetworks
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:174];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"preferredPeakBitRateForExpensiveNetworks" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVPlayerItem_setPreferredPeakBitRateForExpensiveNetworks___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  *&v6[5] = preferredPeakBitRateForExpensiveNetworks;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updatePreferredPeakBitRateForExpensiveNetworksOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"preferredPeakBitRateForExpensiveNetworks" on:self];
  AVTelemetryIntervalEnd(&v7);
}

double __60__AVPlayerItem_setPreferredPeakBitRateForExpensiveNetworks___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 616) = result;
  return result;
}

- (CGSize)preferredMaximumResolution
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:167];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"preferredMaximumResolution" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_19626E495;
  v13 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__AVPlayerItem_preferredMaximumResolution__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  AVTelemetryIntervalEnd(&v14);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __42__AVPlayerItem_preferredMaximumResolution__block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 936);
  result = *v1;
  *(*(*(a1 + 40) + 8) + 32) = *v1;
  return result;
}

- (void)_updatePreferredMaximumResolutionOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__AVPlayerItem__updatePreferredMaximumResolutionOnFigPlaybackItem__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(figPlaybackItemSetterQueue, block);
    CFRelease(v4);
  }
}

void __66__AVPlayerItem__updatePreferredMaximumResolutionOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) preferredMaximumResolution];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v5);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6972A88], DictionaryRepresentation);
  }

  CFRelease(DictionaryRepresentation);
}

- (void)setPreferredMaximumResolution:(CGSize)preferredMaximumResolution
{
  height = preferredMaximumResolution.height;
  width = preferredMaximumResolution.width;
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:168];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"preferredMaximumResolution" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AVPlayerItem_setPreferredMaximumResolution___block_invoke;
  v7[3] = &unk_1E74625B0;
  v7[4] = self;
  *&v7[5] = width;
  *&v7[6] = height;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [(AVPlayerItem *)self _updatePreferredMaximumResolutionOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"preferredMaximumResolution" on:self];
  AVTelemetryIntervalEnd(&v8);
}

__n128 __46__AVPlayerItem_setPreferredMaximumResolution___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 936) = result;
  return result;
}

- (CGSize)preferredMinimumResolution
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_19626E495;
  v12 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AVPlayerItem_preferredMinimumResolution__block_invoke;
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

__n128 __42__AVPlayerItem_preferredMinimumResolution__block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 968);
  result = *v1;
  *(*(*(a1 + 40) + 8) + 32) = *v1;
  return result;
}

- (void)_updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__AVPlayerItem__updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(figPlaybackItemSetterQueue, block);
    CFRelease(v4);
  }
}

void __86__AVPlayerItem__updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) preferredMaximumResolutionForExpensiveNetworks];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v5);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6972A90], DictionaryRepresentation);
  }

  CFRelease(DictionaryRepresentation);
}

- (void)setPreferredMaximumResolutionForExpensiveNetworks:(CGSize)preferredMaximumResolutionForExpensiveNetworks
{
  height = preferredMaximumResolutionForExpensiveNetworks.height;
  width = preferredMaximumResolutionForExpensiveNetworks.width;
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:170];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"preferredMaximumResolutionForExpensiveNetworks" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__AVPlayerItem_setPreferredMaximumResolutionForExpensiveNetworks___block_invoke;
  v7[3] = &unk_1E74625B0;
  v7[4] = self;
  *&v7[5] = width;
  *&v7[6] = height;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [(AVPlayerItem *)self _updatePreferredMaximumResolutionForExpensiveNetworksOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"preferredMaximumResolutionForExpensiveNetworks" on:self];
  AVTelemetryIntervalEnd(&v8);
}

__n128 __66__AVPlayerItem_setPreferredMaximumResolutionForExpensiveNetworks___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 952) = result;
  return result;
}

- (CGSize)preferredMaximumResolutionForExpensiveNetworks
{
  v14 = [[AVTelemetryInterval alloc] initAndStartWith:169];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"preferredMaximumResolutionForExpensiveNetworks" on:self];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_19626E495;
  v13 = *MEMORY[0x1E695F060];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVPlayerItem_preferredMaximumResolutionForExpensiveNetworks__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v9;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  AVTelemetryIntervalEnd(&v14);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __62__AVPlayerItem_preferredMaximumResolutionForExpensiveNetworks__block_invoke(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 8) + 952);
  result = *v1;
  *(*(*(a1 + 40) + 8) + 32) = *v1;
  return result;
}

- (void)_updatePreferredMinimumResolutionOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__AVPlayerItem__updatePreferredMinimumResolutionOnFigPlaybackItem__block_invoke;
    block[3] = &unk_1E7460C00;
    block[4] = self;
    dispatch_sync(figPlaybackItemSetterQueue, block);
    CFRelease(v4);
  }
}

void __66__AVPlayerItem__updatePreferredMinimumResolutionOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) preferredMinimumResolution];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v5);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E6972A98], DictionaryRepresentation);
  }

  CFRelease(DictionaryRepresentation);
}

- (void)setPreferredMinimumResolution:(CGSize)resolution
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVPlayerItem_setPreferredMinimumResolution___block_invoke;
  v5[3] = &unk_1E74625B0;
  v5[4] = self;
  resolutionCopy = resolution;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updatePreferredMinimumResolutionOnFigPlaybackItem];
}

__n128 __46__AVPlayerItem_setPreferredMinimumResolution___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 968) = result;
  return result;
}

- (void)_renderingSuppressionDidChangeForOutput:(id)output
{
  figConfigurationQueue = self->_playerItem->figConfigurationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVPlayerItem__renderingSuppressionDidChangeForOutput___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = output;
  dispatch_async(figConfigurationQueue, v4);
}

void __56__AVPlayerItem__renderingSuppressionDidChangeForOutput___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [*(a1 + 32) _videoOutputs];
  v5 = [objc_msgSend(*(a1 + 32) "_legibleOutputsForKeys")];
  v6 = [objc_msgSend(*(a1 + 32) "_renderedLegibleOutputsForKeys")];
  if (![v4 containsObject:*(a1 + 40)])
  {
    if ([v5 containsObject:*(a1 + 40)])
    {
      v7 = *(a1 + 32);
      v8 = v3;
      v9 = v5;
    }

    else
    {
      if (![v6 containsObject:*(a1 + 40)])
      {
        goto LABEL_10;
      }

      v7 = *(a1 + 32);
      v8 = v3;
      v9 = v6;
    }

    [v7 _updateLegibleSuppressionOnFigPlaybackItem:v8 basedOnOutputs:v9];
    goto LABEL_10;
  }

  [*(a1 + 32) _updateVideoSuppressionOnFigPlaybackItem:v3 basedOnOutputs:v4];
LABEL_10:

  CFRelease(v3);
}

- (BOOL)requiresAccessLog
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_requiresAccessLog__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setRequiresAccessLog:(BOOL)log
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__AVPlayerItem_setRequiresAccessLog___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  logCopy = log;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__AVPlayerItem_setRequiresAccessLog___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    logCopy2 = log;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __37__AVPlayerItem_setRequiresAccessLog___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972920];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setSuppressesAudioOnlyVariants:(BOOL)variants
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AVPlayerItem_setSuppressesAudioOnlyVariants___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  variantsCopy = variants;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__AVPlayerItem_setSuppressesAudioOnlyVariants___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    variantsCopy2 = variants;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __47__AVPlayerItem_setSuppressesAudioOnlyVariants___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972B30];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (BOOL)suppressesAudioOnlyVariants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVPlayerItem_suppressesAudioOnlyVariants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPrefersOfflinePlayableVariants:(BOOL)variants
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AVPlayerItem_setPrefersOfflinePlayableVariants___block_invoke;
  v10[3] = &unk_1E7460E40;
  v10[4] = self;
  variantsCopy = variants;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
  if (_copyFigPlaybackItem)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__AVPlayerItem_setPrefersOfflinePlayableVariants___block_invoke_2;
    v8[3] = &__block_descriptor_41_e5_v8__0l;
    v8[4] = _copyFigPlaybackItem;
    variantsCopy2 = variants;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(_copyFigPlaybackItem);
  }
}

uint64_t __50__AVPlayerItem_setPrefersOfflinePlayableVariants___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972A30];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (BOOL)prefersOfflinePlayableVariants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVPlayerItem_prefersOfflinePlayableVariants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (AVVariantPreferences)variantPreferences
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:171];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"variantPreferences" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AVPlayerItem_variantPreferences__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
  return v4;
}

- (void)_updateVariantPreferencesOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__AVPlayerItem__updateVariantPreferencesOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __58__AVPlayerItem__updateVariantPreferencesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) variantPreferences];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:v1 & 0xF ^ 3];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972B98];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)setVariantPreferences:(AVVariantPreferences)variantPreferences
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:172];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"variantPreferences" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AVPlayerItem_setVariantPreferences___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = variantPreferences;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateVariantPreferencesOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"variantPreferences" on:self];
  AVTelemetryIntervalEnd(&v7);
}

- (double)preferredMaximumAudioSampleRate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayerItem_preferredMaximumAudioSampleRate__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __47__AVPlayerItem_preferredMaximumAudioSampleRate__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 840);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updatePreferredMaximumAudioSampleRateOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__AVPlayerItem__updatePreferredMaximumAudioSampleRateOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __71__AVPlayerItem__updatePreferredMaximumAudioSampleRateOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  [*(a1 + 32) preferredMaximumAudioSampleRate];
  v2 = [v1 numberWithDouble:?];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = *MEMORY[0x1E6972820];

    return v7(FigBaseObject, v8, v2);
  }

  return result;
}

- (void)setPreferredMaximumAudioSampleRate:(double)rate
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVPlayerItem_setPreferredMaximumAudioSampleRate___block_invoke;
  v5[3] = &unk_1E7460FA8;
  v5[4] = self;
  *&v5[5] = rate;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updatePreferredMaximumAudioSampleRateOnFigPlaybackItem];
}

double __51__AVPlayerItem_setPreferredMaximumAudioSampleRate___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 840) = result;
  return result;
}

- (BOOL)autoSwitchAtmosStreamVariants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_autoSwitchAtmosStreamVariants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__AVPlayerItem__updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __69__AVPlayerItem__updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) autoSwitchAtmosStreamVariants])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972830];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setAutoSwitchAtmosStreamVariants:(BOOL)variants
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__AVPlayerItem_setAutoSwitchAtmosStreamVariants___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  variantsCopy = variants;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAutoSwitchAtmosStreamVariantsOnFigPlaybackItem];
}

- (void)_updateVideoApertureModeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__AVPlayerItem__updateVideoApertureModeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __57__AVPlayerItem__updateVideoApertureModeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) videoApertureMode];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69727F0];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setVideoApertureMode:(AVVideoApertureMode)videoApertureMode
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"videoApertureMode" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__AVPlayerItem_setVideoApertureMode___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = videoApertureMode;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateVideoApertureModeOnFigPlaybackItem];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"videoApertureMode" on:self];
}

uint64_t __37__AVPlayerItem_setVideoApertureMode___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 864);
  result = [*(a1 + 40) copy];
  *(*(*(a1 + 32) + 8) + 864) = result;
  return result;
}

- (AVVideoApertureMode)videoApertureMode
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"videoApertureMode" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = @"CleanAperture";
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__AVPlayerItem_videoApertureMode__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_updateRestrictionsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__AVPlayerItem__updateRestrictionsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __52__AVPlayerItem__updateRestrictionsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  valuePtr = [*(a1 + 32) restrictions];
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  if (v1)
  {
    v2 = v1;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v4)
    {
      v4(FigBaseObject, *MEMORY[0x1E6972AA0], v2);
    }

    CFRelease(v2);
  }
}

- (void)setRestrictions:(unint64_t)restrictions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVPlayerItem_setRestrictions___block_invoke;
  v5[3] = &unk_1E7462990;
  v5[5] = &v6;
  v5[6] = restrictions;
  v5[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  if (*(v7 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateRestrictionsOnFigPlaybackItem];
  }

  _Block_object_dispose(&v6, 8);
}

void *__32__AVPlayerItem_setRestrictions___block_invoke(void *result)
{
  v1 = result[6];
  v2 = *(result[4] + 8);
  if (v1 != *(v2 + 736))
  {
    *(v2 + 736) = v1;
    *(*(result[5] + 8) + 24) = 1;
  }

  return result;
}

- (unint64_t)restrictions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVPlayerItem_restrictions__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)mediaKind
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__AVPlayerItem_mediaKind__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__AVPlayerItem_mediaKind__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 752) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateMediaKindOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AVPlayerItem__updateMediaKindOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __49__AVPlayerItem__updateMediaKindOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) mediaKind];
  if (result)
  {
    v2 = result;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E69729C0];

      return v6(FigBaseObject, v7, v2);
    }
  }

  return result;
}

- (void)setMediaKind:(id)kind
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AVPlayerItem_setMediaKind___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = kind;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateMediaKindOnFigPlaybackItem];
}

uint64_t __29__AVPlayerItem_setMediaKind___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 752);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(*(v2 + 32) + 8) + 752) = result;
  }

  return result;
}

- (id)loudnessInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__AVPlayerItem_loudnessInfo__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__AVPlayerItem_loudnessInfo__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 696) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateLoudnessInfoOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__AVPlayerItem__updateLoudnessInfoOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __52__AVPlayerItem__updateLoudnessInfoOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) loudnessInfo];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972998];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setLoudnessInfo:(id)info
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__AVPlayerItem_setLoudnessInfo___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = info;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateLoudnessInfoOnFigPlaybackItem];
}

uint64_t __32__AVPlayerItem_setLoudnessInfo___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 696);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(*(v2 + 32) + 8) + 696) = result;
  }

  return result;
}

- (opaqueMTAudioProcessingTap)audioTapProcessor
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AVPlayerItem_audioTapProcessor__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_applyCurrentAudioTapProcessorOnFigPlaybackItem
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  playerItem = self->_playerItem;
  if (playerItem->figPlaybackItem)
  {
    ivarAccessQueue = playerItem->ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__AVPlayerItem__applyCurrentAudioTapProcessorOnFigPlaybackItem__block_invoke;
    v9[3] = &unk_1E7462B60;
    v9[4] = self;
    v9[5] = &v14;
    v9[6] = &v10;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
    if (*(v15 + 24) == 1)
    {
      v5 = v11[3];
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v7)
      {
        v7(FigBaseObject, *MEMORY[0x1E6972810], v5);
      }

      v8 = v11[3];
      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void *__63__AVPlayerItem__applyCurrentAudioTapProcessorOnFigPlaybackItem__block_invoke(void *result)
{
  if (*(*(result[4] + 8) + 704) == 1)
  {
    v1 = result;
    *(*(result[5] + 8) + 24) = 1;
    *(*(result[4] + 8) + 704) = 0;
    result = *(*(result[4] + 8) + 712);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(v1[6] + 8) + 24) = result;
  }

  return result;
}

- (void)_setItemAudioTapProcessor:(opaqueMTAudioProcessingTap *)processor fromAudioMixContext:(BOOL)context
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__AVPlayerItem__setItemAudioTapProcessor_fromAudioMixContext___block_invoke;
  v9[3] = &unk_1E7463190;
  v9[5] = &v11;
  v9[6] = processor;
  v9[4] = self;
  contextCopy = context;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  if (*(v12 + 24) == 1)
  {
    _copyStateDispatchQueue = [(AVPlayerItem *)self _copyStateDispatchQueue];
    v7 = _copyStateDispatchQueue;
    if (_copyStateDispatchQueue)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __62__AVPlayerItem__setItemAudioTapProcessor_fromAudioMixContext___block_invoke_2;
      v8[3] = &unk_1E7460C00;
      v8[4] = self;
      AVSerializeOnQueueAsyncIfNecessary(_copyStateDispatchQueue, v8);
      dispatch_release(v7);
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __62__AVPlayerItem__setItemAudioTapProcessor_fromAudioMixContext___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 712);
  v4 = *(a1 + 48);
  if (v3 != v4)
  {
    v5 = *(a1 + 56);
    if (v4)
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = 0;
    }

    if (v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    if (v5 == *(v2 + 705))
    {
      v8 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *(*(*(a1 + 32) + 8) + 704) = 1;
      *(*(*(a1 + 32) + 8) + 705) = *(a1 + 56);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 712);
      *(v9 + 712) = v4;
      if (v4)
      {
        CFRetain(v4);
      }

      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

- (void)resetAudioBufferedAhead
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__AVPlayerItem_resetAudioBufferedAhead__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, block);
    CFRelease(v4);
  }
}

uint64_t __39__AVPlayerItem_resetAudioBufferedAhead__block_invoke()
{
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 8);
  result = VTable + 8;
  v4 = *(v3 + 56);
  if (v4)
  {
    v5 = *MEMORY[0x1E6972A80];
    v6 = *MEMORY[0x1E695E4D0];

    return v4(FigBaseObject, v5, v6);
  }

  return result;
}

- (void)_addInterstitialEventCollectorLocked:(BOOL)locked
{
  lockedCopy = locked;
  objc_initWeak(&location, [(AVPlayerItem *)self _player]);
  v5 = [AVPlayerItemInterstitialEventCollector alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__AVPlayerItem__addInterstitialEventCollectorLocked___block_invoke;
  v8[3] = &unk_1E74631B8;
  objc_copyWeak(&v9, &location);
  v6 = [(AVPlayerItemInterstitialEventCollector *)v5 initWithCoordinatorGenerator:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVPlayerItem__addInterstitialEventCollectorLocked___block_invoke_2;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = v6;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:lockedCopy block:v7];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __53__AVPlayerItem__addInterstitialEventCollectorLocked___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _copyInterstitialCoordinator];
}

- (void)_removeInterstitialEventCollectorLocked:(BOOL)locked
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3052000000;
  v4[3] = __Block_byref_object_copy__8;
  v4[4] = __Block_byref_object_dispose__8;
  v4[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__AVPlayerItem__removeInterstitialEventCollectorLocked___block_invoke;
  v3[3] = &unk_1E7460E68;
  v3[4] = self;
  v3[5] = v4;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:locked block:v3];
  _Block_object_dispose(v4, 8);
}

void __56__AVPlayerItem__removeInterstitialEventCollectorLocked___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = *(*(*(a1 + 32) + 8) + 648);

  *(*(*(a1 + 32) + 8) + 648) = 0;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [*(a1 + 32) removeMediaDataCollector:v2 locked:1];
    v3 = *(*(*(a1 + 40) + 8) + 40);
  }
}

- (void)_updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload:(id)payload updateStatusToReadyToPlay:(BOOL)play
{
  playCopy = play;
  v51 = *MEMORY[0x1E69E9840];
  v7 = [payload objectForKey:*MEMORY[0x1E6972668]];
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = [(AVPlayerItem *)self _canPlayFastForward];
  }

  v9 = bOOLValue;
  v10 = [payload objectForKey:*MEMORY[0x1E6972678]];
  if (v10)
  {
    bOOLValue2 = [v10 BOOLValue];
  }

  else
  {
    bOOLValue2 = [(AVPlayerItem *)self _canPlayReverse];
  }

  v12 = bOOLValue2;
  v13 = [payload objectForKey:*MEMORY[0x1E6972670]];
  if (v13)
  {
    bOOLValue3 = [v13 BOOLValue];
  }

  else
  {
    bOOLValue3 = [(AVPlayerItem *)self _canPlayFastReverse];
  }

  v15 = bOOLValue3;
  v16 = [payload objectForKey:*MEMORY[0x1E69726D0]];
  if (v16)
  {
    v17 = v16;
    bOOLValue4 = [v16 BOOLValue];
    bOOLValue5 = [v17 BOOLValue];
  }

  else
  {
    bOOLValue4 = [(AVPlayerItem *)self _canStepForward];
    bOOLValue5 = [(AVPlayerItem *)self _canStepBackward];
  }

  v33 = bOOLValue5;
  v20 = v15;
  v21 = v12;
  v22 = v9;
  if (playCopy)
  {
    v23 = [&unk_1F0AD3640 arrayByAddingObjectsFromArray:&unk_1F0AD3628];
  }

  else
  {
    v23 = &unk_1F0AD3628;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      v27 = 0;
      do
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(AVPlayerItem *)self willChangeValueForKey:*(*(&v45 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v25);
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __115__AVPlayerItem__updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload_updateStatusToReadyToPlay___block_invoke;
  v38[3] = &unk_1E74631E0;
  v39 = playCopy;
  v38[4] = self;
  v40 = v22;
  v41 = v21;
  v42 = v20;
  v43 = bOOLValue4;
  v44 = v33;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v38);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = [v23 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      v32 = 0;
      do
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v23);
        }

        [(AVPlayerItem *)self didChangeValueForKey:*(*(&v34 + 1) + 8 * v32++)];
      }

      while (v30 != v32);
      v30 = [v23 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v30);
  }
}

uint64_t __115__AVPlayerItem__updateCanPlayAndCanStepPropertiesWhenReadyToPlayWithNotificationPayload_updateStatusToReadyToPlay___block_invoke(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    *(*(*(result + 32) + 8) + 280) = 1;
  }

  *(*(*(result + 32) + 8) + 988) = 1;
  *(*(*(result + 32) + 8) + 984) = *(result + 41);
  v1 = *(result + 42);
  *(*(*(result + 32) + 8) + 986) = v1;
  *(*(*(result + 32) + 8) + 987) = v1;
  *(*(*(result + 32) + 8) + 985) = *(result + 43);
  *(*(*(result + 32) + 8) + 989) = *(result + 44);
  *(*(*(result + 32) + 8) + 990) = *(result + 45);
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)advanceTimeForOverlappedPlayback
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AVPlayerItem_advanceTimeForOverlappedPlayback__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __48__AVPlayerItem_advanceTimeForOverlappedPlayback__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = *(*(a1 + 32) + 8);
  result = *(v2 + 392);
  v1[3].n128_u64[0] = *(v2 + 408);
  v1[2] = result;
  return result;
}

- (BOOL)advanceTimeForOverlappedPlaybackWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVPlayerItem_advanceTimeForOverlappedPlaybackWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__AVPlayerItem__updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __72__AVPlayerItem__updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 advanceTimeForOverlappedPlayback];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69727C0], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setAdvanceTimeForOverlappedPlayback:(id *)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AVPlayerItem_setAdvanceTimeForOverlappedPlayback___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAdvanceTimeForOverlappedPlaybackOnFigPlaybackItem];
}

__n128 __52__AVPlayerItem_setAdvanceTimeForOverlappedPlayback___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 416) = 1;
  v1 = *(*(a1 + 32) + 8);
  result = *(a1 + 40);
  *(v1 + 408) = *(a1 + 56);
  *(v1 + 392) = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overlappedPlaybackEndTime
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_19626E495;
  v11 = *MEMORY[0x1E6960C70];
  v12 = *(MEMORY[0x1E6960C70] + 16);
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AVPlayerItem_overlappedPlaybackEndTime__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __41__AVPlayerItem_overlappedPlaybackEndTime__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(*(a1 + 32) + 8) + 420);
  v1[3].n128_u64[0] = *(*(*(a1 + 32) + 8) + 436);
  v1[2] = result;
  return result;
}

- (BOOL)overlappedPlaybackEndTimeWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVPlayerItem_overlappedPlaybackEndTimeWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateOverlappedPlaybackEndTimeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__AVPlayerItem__updateOverlappedPlaybackEndTimeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

void __65__AVPlayerItem__updateOverlappedPlaybackEndTimeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 overlappedPlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v2 = CMTimeCopyAsDictionary(&time, *MEMORY[0x1E695E480]);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972A00], v2);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

- (void)setOverlappedPlaybackEndTime:(id *)time
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlayerItem_setOverlappedPlaybackEndTime___block_invoke;
  v5[3] = &unk_1E7462FD8;
  v5[4] = self;
  v6 = *time;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateOverlappedPlaybackEndTimeOnFigPlaybackItem];
}

__n128 __45__AVPlayerItem_setOverlappedPlaybackEndTime___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 444) = 1;
  v1 = (*(*(a1 + 32) + 8) + 420);
  result = *(a1 + 40);
  v1[1].n128_u64[0] = *(a1 + 56);
  *v1 = result;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTimePlayedToDuringOverlappedPlayback
{
  if (self)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self currentTime];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)overlappedPlaybackSafetyMargin
{
  if ([-[AVPlayerItem _player](self "_player")])
  {
    v4 = 10;
  }

  else
  {
    v4 = 3;
  }

  return CMTimeMake(retstr, v4, 1);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumTimePlayedToSinceLastSeek
{
  *retstr = **&MEMORY[0x1E6960C70];
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v5 = result;
    dictionaryRepresentation = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7 && !v7(FigBaseObject, *MEMORY[0x1E69729A8], *MEMORY[0x1E695E480], &dictionaryRepresentation))
    {
      CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
      if (dictionaryRepresentation)
      {
        CFRelease(dictionaryRepresentation);
      }
    }

    CFRelease(v5);
  }

  return result;
}

- (BOOL)isAudioSpatializationAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVPlayerItem_isAudioSpatializationAllowed__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)audioSpatializationAllowedWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerItem_audioSpatializationAllowedWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAudioSpatializationAllowed
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__AVPlayerItem__updateAudioSpatializationAllowed__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __49__AVPlayerItem__updateAudioSpatializationAllowed__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAudioSpatializationAllowed])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972828];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (void)setAudioSpatializationAllowed:(BOOL)audioSpatializationAllowed
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__AVPlayerItem_setAudioSpatializationAllowed___block_invoke;
  v5[3] = &unk_1E7460E40;
  v5[4] = self;
  v6 = audioSpatializationAllowed;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _updateAudioSpatializationAllowed];
}

uint64_t __46__AVPlayerItem_setAudioSpatializationAllowed___block_invoke(uint64_t result)
{
  *(*(*(result + 32) + 8) + 1473) = 1;
  *(*(*(result + 32) + 8) + 1472) = *(result + 40);
  return result;
}

- (BOOL)allowedAudioSpatializationFormatsWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem_allowedAudioSpatializationFormatsWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAllowedAudioSpatializationFormats
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__AVPlayerItem__updateAllowedAudioSpatializationFormats__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __56__AVPlayerItem__updateAllowedAudioSpatializationFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) allowedAudioSpatializationFormats];
  v2 = *MEMORY[0x1E6972828];
  v3 = *MEMORY[0x1E695E4C0];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v5)
  {
    v5(FigBaseObject, v2, v3);
  }

  v6 = *MEMORY[0x1E6972B10];
  v7 = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 8);
  result = VTable + 8;
  v11 = *(v10 + 56);
  if (v11)
  {
    result = v11(v7, v6, v3);
  }

  v12 = MEMORY[0x1E695E4D0];
  if ((v1 & 4) != 0)
  {
    v13 = FigPlaybackItemGetFigBaseObject();
    v14 = CMBaseObjectGetVTable();
    v15 = *(v14 + 8);
    result = v14 + 8;
    v16 = *(v15 + 56);
    if (v16)
    {
      result = v16(v13, v2, *v12);
    }
  }

  if ((v1 & 3) != 0)
  {
    v17 = FigPlaybackItemGetFigBaseObject();
    v18 = CMBaseObjectGetVTable();
    v19 = *(v18 + 8);
    result = v18 + 8;
    v20 = *(v19 + 56);
    if (v20)
    {
      v21 = *v12;

      return v20(v17, v6, v21);
    }
  }

  return result;
}

- (void)_updateAllowedAudioSpatializationFormatsFromFigItem
{
  figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVPlayerItem__updateAllowedAudioSpatializationFormatsFromFigItem__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figPlaybackItemAccessorQueue, block);
}

- (AVAudioSpatializationFormats)allowedAudioSpatializationFormats
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"allowedAudioSpatializationFormats" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AVPlayerItem_allowedAudioSpatializationFormats__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setAllowedAudioSpatializationFormats:(AVAudioSpatializationFormats)allowedAudioSpatializationFormats
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"allowedAudioSpatializationFormats" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AVPlayerItem_setAllowedAudioSpatializationFormats___block_invoke;
  v6[3] = &unk_1E7460FA8;
  v6[4] = self;
  v6[5] = allowedAudioSpatializationFormats;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItem *)self _updateAllowedAudioSpatializationFormats];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"allowedAudioSpatializationFormats" on:self];
}

uint64_t __53__AVPlayerItem_setAllowedAudioSpatializationFormats___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = 1;
  *(*(*(result + 32) + 8) + 1488) = 1;
  *(*(*(result + 32) + 8) + 1480) = v1;
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 1480);
  if ((v4 & 4) == 0)
  {
    if (v4)
    {
      return result;
    }

    v2 = 0;
  }

  *(v3 + 1472) = v2;
  return result;
}

- (void)_updateEligibilityForDSPBasedEnhancedDialogue:(id)dialogue
{
  v4 = [dialogue objectForKey:*MEMORY[0x1E69726A0]];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E118];
  }

  [(AVPlayerItem *)self willChangeValueForKey:@"eligibleForDSPBasedEnhancedDialogue"];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__AVPlayerItem__updateEligibilityForDSPBasedEnhancedDialogue___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = v5;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [(AVPlayerItem *)self didChangeValueForKey:@"eligibleForDSPBasedEnhancedDialogue"];
}

uint64_t __62__AVPlayerItem__updateEligibilityForDSPBasedEnhancedDialogue___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) BOOLValue];
  *(*(*(a1 + 32) + 8) + 1017) = result;
  return result;
}

- (BOOL)isEligibleForDSPBasedEnhancedDialogue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVPlayerItem_isEligibleForDSPBasedEnhancedDialogue__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem
{
  array = [MEMORY[0x1E695DF70] array];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVPlayerItem__updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem__block_invoke;
  block[3] = &unk_1E7460DF0;
  block[4] = self;
  block[5] = array;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v6 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__AVPlayerItem__updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem__block_invoke_2;
    v8[3] = &unk_1E7460FA8;
    v8[4] = array;
    v8[5] = v6;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(v6);
  }
}

uint64_t __76__AVPlayerItem__updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 32) + 8) + 1136);
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

        v7 = AVTranslateAVMediaCharacteristicToFigMediaCharacteristic(*(*(&v8 + 1) + 8 * v6));
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

uint64_t __76__AVPlayerItem__updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69729B8];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)_updateMediaPresentationLanguagesOnFigPlaybackItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__AVPlayerItem__updateMediaPresentationLanguagesOnFigPlaybackItem__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if (v9[5])
  {
    _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
    if (_copyFigPlaybackItem)
    {
      figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __66__AVPlayerItem__updateMediaPresentationLanguagesOnFigPlaybackItem__block_invoke_2;
      v6[3] = &unk_1E7462AC0;
      v6[4] = &v8;
      v6[5] = _copyFigPlaybackItem;
      dispatch_sync(figPlaybackItemSetterQueue, v6);
      CFRelease(_copyFigPlaybackItem);
    }
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __66__AVPlayerItem__updateMediaPresentationLanguagesOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1544) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __66__AVPlayerItem__updateMediaPresentationLanguagesOnFigPlaybackItem__block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69729D0];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)_updateMediaPresentationCharacteristicsOnFigPlaybackItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVPlayerItem__updateMediaPresentationCharacteristicsOnFigPlaybackItem__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  if (v9[5])
  {
    _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
    if (_copyFigPlaybackItem)
    {
      figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __72__AVPlayerItem__updateMediaPresentationCharacteristicsOnFigPlaybackItem__block_invoke_2;
      v6[3] = &unk_1E7462AC0;
      v6[4] = &v8;
      v6[5] = _copyFigPlaybackItem;
      dispatch_sync(figPlaybackItemSetterQueue, v6);
      CFRelease(_copyFigPlaybackItem);
    }
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __72__AVPlayerItem__updateMediaPresentationCharacteristicsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1560) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __72__AVPlayerItem__updateMediaPresentationCharacteristicsOnFigPlaybackItem__block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E69729C8];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)_updateItemIdentifierForCoordinatedPlayback
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__AVPlayerItem__updateItemIdentifierForCoordinatedPlayback__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __59__AVPlayerItem__updateItemIdentifierForCoordinatedPlayback__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _playbackCoordinator];
  if (result)
  {
    v3 = result;
    v4 = [result interstitialTimeRangesForPlayerItem:*(a1 + 32)];
    if (v4)
    {
      v5 = v4;
      if ([v4 count])
      {
        v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          v10 = *MEMORY[0x1E695E480];
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v5);
              }

              v12 = *(*(&v25 + 1) + 8 * i);
              if (v12)
              {
                [v12 CMTimeRangeValue];
              }

              else
              {
                memset(&range, 0, sizeof(range));
              }

              v13 = CMTimeRangeCopyAsDictionary(&range, v10);
              if (v13)
              {
                v14 = v13;
                [v6 addObject:v13];
                CFRelease(v14);
              }
            }

            v8 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v8);
        }

        FigBaseObject = FigPlaybackItemGetFigBaseObject();
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v16)
        {
          v16(FigBaseObject, *MEMORY[0x1E6972970], v6);
        }
      }
    }

    v17 = [v3 identifierForPlayerItem:*(a1 + 32)];
    if (dword_1ED5AC298)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v17)
    {
      [*(a1 + 32) _setCoordinatorIdentifier:v17];
    }

    result = [objc_msgSend(*(a1 + 32) _player];
    if (v17 || (result & 1) == 0)
    {
      v19 = FigPlaybackItemGetFigBaseObject();
      VTable = CMBaseObjectGetVTable();
      v21 = *(VTable + 8);
      result = VTable + 8;
      v22 = *(v21 + 56);
      if (v22)
      {
        return v22(v19, *MEMORY[0x1E69728C0], v17);
      }
    }
  }

  return result;
}

- (id)_playbackCoordinator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__AVPlayerItem__playbackCoordinator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__AVPlayerItem__playbackCoordinator__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1160);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setPlaybackCoordinator:(id)coordinator
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__AVPlayerItem__setPlaybackCoordinator___block_invoke;
  v6[3] = &unk_1E7460F30;
  v6[4] = self;
  v6[5] = coordinator;
  v6[6] = &v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (coordinator && (v8[3] & 1) != 0)
  {
    [(AVPlayerItem *)self _updateItemIdentifierForCoordinatedPlayback];
  }

  _Block_object_dispose(&v7, 8);
}

void __40__AVPlayerItem__setPlaybackCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 1160);
  if (v1 != *(a1 + 40))
  {

    *(*(*(a1 + 32) + 8) + 1160) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (*(v3[1] + 1168))
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      *(*(*(a1 + 32) + 8) + 1168) = 0;
      v3 = *(a1 + 32);
    }

    objc_initWeak(&location, v3);
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__AVPlayerItem__setPlaybackCoordinator___block_invoke_2;
    v6[3] = &unk_1E7460BB0;
    objc_copyWeak(&v7, &location);
    *(*(*(a1 + 32) + 8) + 1168) = [v4 addObserverForName:0x1F0A9EE50 object:v5 queue:0 usingBlock:v6];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __40__AVPlayerItem__setPlaybackCoordinator___block_invoke_2(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateItemIdentifierForCoordinatedPlayback];
}

- (void)dispatchIVarWrite:(BOOL)write locked:(BOOL)locked block:(id)block
{
  if (locked)
  {
    (*(block + 2))(block);
  }

  else
  {
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    if (write)
    {
      av_readwrite_dispatch_queue_write(ivarAccessQueue, block);
    }

    else
    {
      av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    }
  }
}

- (void)setPreferredCustomMediaSelectionSchemes:(id)schemes
{
  v19 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__setPreferredCustomMediaSelectionSchemes___block_invoke;
  v17[3] = &unk_1E7461B68;
  v17[4] = self;
  v4 = [schemes objectsAtIndexes:{objc_msgSend(schemes, "indexesOfObjectsPassingTest:", v17)}];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [objc_msgSend(*(*(&v13 + 1) + 8 * v9) "group")];
        if (v10)
        {
          [array addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__setPreferredCustomMediaSelectionSchemes___block_invoke_2;
  v12[3] = &unk_1E7460E90;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = array;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
  [(AVPlayerItem *)self _updatePreferredCustomMediaSelectionSchemesOnFigPlaybackItem];
}

uint64_t __96__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__setPreferredCustomMediaSelectionSchemes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) asset];
  v4 = [objc_msgSend(a2 "group")];

  return [v3 isEqual:v4];
}

uint64_t __96__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__setPreferredCustomMediaSelectionSchemes___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 1128) = *(a1 + 40);

  result = [*(a1 + 48) copy];
  *(*(*(a1 + 32) + 8) + 1136) = result;
  return result;
}

- (NSArray)preferredCustomMediaSelectionSchemes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __92__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__preferredCustomMediaSelectionSchemes__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __92__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__preferredCustomMediaSelectionSchemes__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1128);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)selectMediaPresentationLanguage:(id)language forMediaSelectionGroup:(id)group
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:178];
  if ([group customMediaSelectionScheme])
  {
    v7 = AVTranslateAVMediaCharacteristicToFigMediaCharacteristic([group _primaryMediaCharacteristic]);
    v8 = [language copy];
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __111__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectMediaPresentationLanguage_forMediaSelectionGroup___block_invoke;
    v10[3] = &unk_1E7460E90;
    v10[4] = self;
    v10[5] = v8;
    v10[6] = v7;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v10);
    [(AVPlayerItem *)self _updateMediaPresentationLanguagesOnFigPlaybackItem];
  }

  AVTelemetryIntervalEnd(&v11);
}

uint64_t __111__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectMediaPresentationLanguage_forMediaSelectionGroup___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[4] + 8) + 1544);
  if (!v2)
  {
    *(*(a1[4] + 8) + 1544) = [MEMORY[0x1E695DF90] dictionary];
    v2 = *(*(a1[4] + 8) + 1544);
  }

  v4[0] = a1[5];
  return [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v4, 1), a1[6]}];
}

- (id)selectedMediaPresentationLanguageForMediaSelectionGroup:(id)group
{
  v16 = [[AVTelemetryInterval alloc] initAndStartWith:176];
  if ([group customMediaSelectionScheme])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = __Block_byref_object_copy__8;
    v14 = __Block_byref_object_dispose__8;
    v15 = 0;
    v5 = AVTranslateAVMediaCharacteristicToFigMediaCharacteristic([group _primaryMediaCharacteristic]);
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __112__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectedMediaPresentationLanguageForMediaSelectionGroup___block_invoke;
    v9[3] = &unk_1E7461068;
    v9[5] = v5;
    v9[6] = &v10;
    v9[4] = self;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, v9);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  AVTelemetryIntervalEnd(&v16);
  return v7;
}

uint64_t __112__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectedMediaPresentationLanguageForMediaSelectionGroup___block_invoke(void *a1)
{
  result = [objc_msgSend(objc_msgSend(*(*(a1[4] + 8) + 1544) objectForKey:{a1[5]), "firstObject"), "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)selectMediaPresentationSetting:(id)setting forMediaSelectionGroup:(id)group
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:177];
  customMediaSelectionScheme = [group customMediaSelectionScheme];
  if (customMediaSelectionScheme)
  {
    v8 = AVTranslateAVMediaCharacteristicToFigMediaCharacteristic([group _primaryMediaCharacteristic]);
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __110__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectMediaPresentationSetting_forMediaSelectionGroup___block_invoke;
    v12[3] = &unk_1E7463208;
    v12[4] = self;
    v12[5] = v8;
    v12[6] = customMediaSelectionScheme;
    v12[7] = setting;
    v12[8] = array;
    v12[9] = array2;
    av_readwrite_dispatch_queue_write(ivarAccessQueue, v12);
    [(AVPlayerItem *)self _updateMediaPresentationCharacteristicsOnFigPlaybackItem];
  }

  AVTelemetryIntervalEnd(&v13);
}

uint64_t __110__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectMediaPresentationSetting_forMediaSelectionGroup___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 1552) objectForKey:{*(a1 + 40)), "copy"}];
  v2 = [v16 count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(a1 + 48) selectors];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v17 + 1) + 8 * v8) settings];
        v10 = [v9 containsObject:*(a1 + 56)];
        v11 = v10;
        if (v10)
        {
          [*(a1 + 64) addObject:*(a1 + 56)];
          [*(a1 + 72) addObject:{objc_msgSend(*(a1 + 56), "mediaCharacteristic")}];
        }

        if (v6 < v2)
        {
          v12 = [v16 objectAtIndex:v6];
          if ([v9 containsObject:v12])
          {
            if ((v11 & 1) == 0)
            {
              [*(a1 + 64) addObject:v12];
              [*(a1 + 72) addObject:{objc_msgSend(v12, "mediaCharacteristic")}];
            }

            ++v6;
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v13 = *(*(*(a1 + 32) + 8) + 1552);
  if (!v13)
  {
    *(*(*(a1 + 32) + 8) + 1552) = [MEMORY[0x1E695DF90] dictionary];
    v13 = *(*(*(a1 + 32) + 8) + 1552);
  }

  [v13 setObject:*(a1 + 64) forKey:*(a1 + 40)];
  v14 = *(*(*(a1 + 32) + 8) + 1560);
  if (!v14)
  {
    *(*(*(a1 + 32) + 8) + 1560) = [MEMORY[0x1E695DF90] dictionary];
    v14 = *(*(*(a1 + 32) + 8) + 1560);
  }

  return [v14 setObject:*(a1 + 72) forKey:*(a1 + 40)];
}

- (id)selectedMediaPresentationSettingsForMediaSelectionGroup:(id)group
{
  v17 = [[AVTelemetryInterval alloc] initAndStartWith:175];
  customMediaSelectionScheme = [group customMediaSelectionScheme];
  if (customMediaSelectionScheme)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = __Block_byref_object_copy__8;
    v15 = __Block_byref_object_dispose__8;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = AVTranslateAVMediaCharacteristicToFigMediaCharacteristic([group _primaryMediaCharacteristic]);
    ivarAccessQueue = self->_playerItem->ivarAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectedMediaPresentationSettingsForMediaSelectionGroup___block_invoke;
    block[3] = &unk_1E7461090;
    block[4] = self;
    block[5] = v6;
    block[6] = customMediaSelectionScheme;
    block[7] = &v11;
    av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
    dictionary2 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  }

  AVTelemetryIntervalEnd(&v17);
  return dictionary2;
}

uint64_t __112__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme__selectedMediaPresentationSettingsForMediaSelectionGroup___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 32) + 8) + 1552) objectForKey:*(a1 + 40)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 48) selectors];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [objc_msgSend(v8 "settings")];
        v10 = *(*(*(a1 + 56) + 8) + 40);
        if (!v9)
        {
          v9 = [MEMORY[0x1E695DFB0] null];
        }

        [v10 setObject:v9 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  result = [*(*(*(a1 + 56) + 8) + 40) copy];
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

- (id)effectiveMediaPresentationSettingsForMediaSelectionGroup:(id)group
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = [[AVTelemetryInterval alloc] initAndStartWith:179];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  customMediaSelectionScheme = [group customMediaSelectionScheme];
  if (customMediaSelectionScheme)
  {
    v6 = [(AVPlayerItem *)self selectedMediaOptionInMediaSelectionGroup:group];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    selectors = [customMediaSelectionScheme selectors];
    v8 = [selectors countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      obj = selectors;
      v19 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          settings = [v10 settings];
          v13 = [settings countByEnumeratingWithState:&v21 objects:v30 count:16];
          if (v13)
          {
            v14 = *v22;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(settings);
                }

                v16 = *(*(&v21 + 1) + 8 * j);
                if (-[AVMediaSelectionOption hasMediaCharacteristic:](v6, "hasMediaCharacteristic:", [v16 mediaCharacteristic]))
                {
                  null = v16;
                  goto LABEL_17;
                }
              }

              v13 = [settings countByEnumeratingWithState:&v21 objects:v30 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
          [dictionary setObject:null forKey:v10];
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v8);
    }
  }

  AVTelemetryIntervalEnd(&v29);
  return dictionary;
}

- (void)setMediaCharacteristicsOfPreferredCustomMediaSelectionSchemes:(id)schemes
{
  v4 = [schemes copy];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __126__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme_Private__setMediaCharacteristicsOfPreferredCustomMediaSelectionSchemes___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = v4;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
}

- (NSArray)mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __122__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme_Private__mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes__block_invoke;
  v7[3] = &unk_1E7460E68;
  v7[4] = self;
  v7[5] = &v8;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v7);
  v3 = v9[5];
  if (v3)
  {
    array = v3;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v5 = array;
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __122__AVPlayerItem_AVPlayerItemCustomMediaSelectionScheme_Private__mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1136) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isAuthorizationRequiredForPlayback
{
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  v3 = _copyFigCPEProtector;
  if (_copyFigCPEProtector)
  {
    CFRelease(_copyFigCPEProtector);
  }

  return v3 != 0;
}

- (BOOL)isApplicationAuthorizedForPlayback
{
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector)
  {
    return 1;
  }

  v3 = _copyFigCPEProtector;
  v8 = 0;
  v4 = *(CMBaseObjectGetVTable() + 16);
  v6 = *v4 && (v5 = v4[4]) != 0 && !v5(v3, 3, &v8) && (~v8 & 3) == 0;
  CFRelease(v3);
  return v6;
}

- (BOOL)isContentAuthorizedForPlayback
{
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector)
  {
    return 1;
  }

  v3 = _copyFigCPEProtector;
  v8 = 0;
  v4 = *(CMBaseObjectGetVTable() + 16);
  v6 = *v4 && (v5 = v4[6]) != 0 && !v5(v3, 3, &v8) && (~v8 & 3) == 0;
  CFRelease(v3);
  return v6;
}

+ (id)_initializeProtectedContentPlaybackSupportSessionAsynchronouslyForProvider:(id)provider withOptions:(id)options
{
  v9 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (([provider isEqualToString:@"AVProtectedContentProviderFairPlay"] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayerItem does not support the specified protected content provider" userInfo:0]);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __140__AVPlayerItem_AVPlayerItemProtectedContentPrivate___initializeProtectedContentPlaybackSupportSessionAsynchronouslyForProvider_withOptions___block_invoke;
  v8[3] = &unk_1E7463230;
  v8[4] = dictionary;
  [options enumerateKeysAndObjectsUsingBlock:v8];
  FigCPERemoteInitializeWithOptions();
  return v9;
}

uint64_t __140__AVPlayerItem_AVPlayerItemProtectedContentPrivate___initializeProtectedContentPlaybackSupportSessionAsynchronouslyForProvider_withOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 isEqualToString:@"AVInitializeProtectedContentPlaybackSupportStorageURLKey"])
  {
    v8 = MEMORY[0x1E6971728];
LABEL_7:
    result = [*(a1 + 32) setValue:a3 forKey:*v8];
    goto LABEL_8;
  }

  if ([a2 isEqualToString:@"AVInitializeProtectedContentPlaybackSupportVideoKey"])
  {
    v8 = MEMORY[0x1E6971720];
    goto LABEL_7;
  }

  result = [a2 isEqualToString:@"AVInitializeProtectedContentPlaybackSupportExternalProtectionKey"];
  if (result)
  {
    v8 = MEMORY[0x1E6971718];
    goto LABEL_7;
  }

LABEL_8:
  *a4 = 0;
  return result;
}

+ (void)_uninitializeProtectedContentPlaybackSupportSession:(id)session
{
  if (FigCPERemoteUninitialize())
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayerItem could not uninitialize the specified protected content support session" userInfo:0]);
  }
}

- (id)_isExternalProtectionRequiredForPlaybackInternal
{
  BOOLean = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  v5 = _copyFigPlaybackItem;
  if (_copyFigCPEProtector)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = *MEMORY[0x1E6971770];
    v8 = *MEMORY[0x1E695E480];
    v9 = _copyFigCPEProtector;
  }

  else
  {
    if (!_copyFigPlaybackItem)
    {
      goto LABEL_8;
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = *MEMORY[0x1E6972A78];
    v8 = *MEMORY[0x1E695E480];
    v9 = FigBaseObject;
  }

  v6(v9, v7, v8, &BOOLean);
LABEL_8:
  v11 = MEMORY[0x1E696AD98];
  if (BOOLean)
  {
    v12 = CFBooleanGetValue(BOOLean) != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 numberWithBool:v12];
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (_copyFigCPEProtector)
  {
    CFRelease(_copyFigCPEProtector);
  }

  return v13;
}

- (BOOL)_isExternalProtectionRequiredForPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__AVPlayerItem_AVPlayerItemProtectedContentPrivate___isExternalProtectionRequiredForPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setExternalProtectionRequiredForPlayback:(BOOL)playback
{
  if (!playback)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"AVPlayerItem._externalProtectionRequiredForPlayback can only be set to YES" userInfo:0]);
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __95__AVPlayerItem_AVPlayerItemProtectedContentPrivate___setExternalProtectionRequiredForPlayback___block_invoke;
  v9[3] = &unk_1E7460C00;
  v9[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v9);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v6 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __95__AVPlayerItem_AVPlayerItemProtectedContentPrivate___setExternalProtectionRequiredForPlayback___block_invoke_2;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = v6;
    dispatch_sync(figPlaybackItemSetterQueue, v8);
    CFRelease(v6);
  }
}

uint64_t __95__AVPlayerItem_AVPlayerItemProtectedContentPrivate___setExternalProtectionRequiredForPlayback___block_invoke_2()
{
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v3 = *(VTable + 8);
  result = VTable + 8;
  v4 = *(v3 + 56);
  if (v4)
  {
    v5 = *MEMORY[0x1E6972A78];
    v6 = *MEMORY[0x1E695E4D0];

    return v4(FigBaseObject, v5, v6);
  }

  return result;
}

- (BOOL)_isRental
{
  BOOLean = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector)
  {
    return 0;
  }

  v3 = _copyFigCPEProtector;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v4(v3, *MEMORY[0x1E6971778], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v5 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

- (NSDate)_rentalStartDate
{
  v6 = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector || (v3 = _copyFigCPEProtector, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v4(v3, *MEMORY[0x1E6971790], *MEMORY[0x1E695E480], &v6), !v6))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get rental expiration date information from an AVPlayerItem that does not contain rental content" userInfo:0]);
  }

  CFRelease(v3);
  return v6;
}

- (NSDate)_rentalExpirationDate
{
  v6 = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector || (v3 = _copyFigCPEProtector, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v4(v3, *MEMORY[0x1E6971788], *MEMORY[0x1E695E480], &v6), !v6))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get rental expiration date information from an AVPlayerItem that does not contain rental content" userInfo:0]);
  }

  CFRelease(v3);
  return v6;
}

- (BOOL)_isRentalPlaybackStarted
{
  BOOLean = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector)
  {
    return 0;
  }

  v3 = _copyFigCPEProtector;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4 && (v4(v3, *MEMORY[0x1E6971780], *MEMORY[0x1E695E480], &BOOLean), BOOLean))
  {
    v5 = CFBooleanGetValue(BOOLean) != 0;
    if (BOOLean)
    {
      CFRelease(BOOLean);
    }
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

- (NSDate)_rentalPlaybackStartedDate
{
  v6 = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector || (v3 = _copyFigCPEProtector, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v4(v3, *MEMORY[0x1E69717A0], *MEMORY[0x1E695E480], &v6), !v6))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get rental playback date information from an AVPlayerItem that does not contain rental content or when rental playback has not started" userInfo:0]);
  }

  CFRelease(v3);
  return v6;
}

- (NSDate)_rentalPlaybackExpirationDate
{
  v6 = 0;
  _copyFigCPEProtector = [(AVPlayerItem *)self _copyFigCPEProtector];
  if (!_copyFigCPEProtector || (v3 = _copyFigCPEProtector, (v4 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || (v4(v3, *MEMORY[0x1E6971798], *MEMORY[0x1E695E480], &v6), !v6))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot get rental playback date information from an AVPlayerItem that does not contain rental content or when rental playback has not started" userInfo:0]);
  }

  CFRelease(v3);
  return v6;
}

- (AVPlayerItemAccessLog)accessLog
{
  v12 = 0;
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:180];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || (!v5(FigBaseObject, *MEMORY[0x1E69727A8], *MEMORY[0x1E695E480], &v12) ? (v6 = v12 == 0) : (v6 = 1), v6))
    {
      v11 = 0;
    }

    else
    {
      v9 = v12;
      v10 = objc_allocWithZone(AVPlayerItemAccessLog);
      v11 = [v10 initWithLogArray:v12];
    }

    CFRelease(_copyFigPlaybackItem);
  }

  else
  {
    v11 = 0;
  }

  v7 = v11;
  AVTelemetryIntervalEnd(&v13);
  return v7;
}

- (AVPlayerItemErrorLog)errorLog
{
  v12 = 0;
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:181];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5 || (!v5(FigBaseObject, *MEMORY[0x1E6972908], *MEMORY[0x1E695E480], &v12) ? (v6 = v12 == 0) : (v6 = 1), v6))
    {
      v11 = 0;
    }

    else
    {
      v9 = v12;
      v10 = objc_allocWithZone(AVPlayerItemErrorLog);
      v11 = [v10 initWithLogArray:v12];
    }

    CFRelease(_copyFigPlaybackItem);
  }

  else
  {
    v11 = 0;
  }

  v7 = v11;
  AVTelemetryIntervalEnd(&v13);
  return v7;
}

- (void)_quietlySetEQPreset:(int)preset
{
  valuePtr = preset;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v3)
  {
    v4 = v3;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E69728E8], v4);
    }

    CFRelease(v4);
  }
}

- (void)_setEQPreset:(int)preset
{
  playerItem = self->_playerItem;
  if (HIDWORD(playerItem->coordinationIdentifier) != preset)
  {
    HIDWORD(playerItem->coordinationIdentifier) = preset;
    if (self->_playerItem->figPlaybackItem)
    {
      [(AVPlayerItem *)self _quietlySetEQPreset:?];
    }
  }
}

- (void)_setRampInOutInfo:(id)info
{
  if (self->_playerItem->integratedSessionIdentifier != info)
  {
    v4 = [info copy];

    self->_playerItem->integratedSessionIdentifier = v4;
    if (self->_playerItem->figPlaybackItem)
    {

      [(AVPlayerItem *)self _updatePlaybackPropertiesOnFigPlaybackItem];
    }
  }
}

- (void)_setAudibleDRMInfo:(id)info
{
  if (*&self->_playerItem->participatesInCoordinatedPlayback != info)
  {
    v4 = [info copy];

    *&self->_playerItem->participatesInCoordinatedPlayback = v4;
    if (self->_playerItem->figPlaybackItem)
    {

      [(AVPlayerItem *)self _updatePlaybackPropertiesOnFigPlaybackItem];
    }
  }
}

- (int64_t)fileSize
{
  valuePtr = 0;
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v3 = result;
    number = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(FigBaseObject, *MEMORY[0x1E6972918], *MEMORY[0x1E695E480], &number);
      v7 = number;
      if (!v6)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
        v7 = number;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

- (int64_t)availableFileSize
{
  valuePtr = 0;
  result = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (result)
  {
    v3 = result;
    number = 0;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(FigBaseObject, *MEMORY[0x1E6972858], *MEMORY[0x1E695E480], &number);
      v7 = number;
      if (!v6)
      {
        CFNumberGetValue(number, kCFNumberLongLongType, &valuePtr);
        v7 = number;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

- (id)_videoOutputs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVPlayerItem_AVPlayerItemOutputs___videoOutputs__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__AVPlayerItem_AVPlayerItemOutputs___videoOutputs__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 176) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_legibleOutputsForKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayerItem_AVPlayerItemOutputs___legibleOutputsForKeys__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__AVPlayerItem_AVPlayerItemOutputs___legibleOutputsForKeys__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 184) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_metadataOutputsForKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVPlayerItem_AVPlayerItemOutputs___metadataOutputsForKeys__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __60__AVPlayerItem_AVPlayerItemOutputs___metadataOutputsForKeys__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 192) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_renderedLegibleOutputsForKeys
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlayerItem_AVPlayerItemOutputs___renderedLegibleOutputsForKeys__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __67__AVPlayerItem_AVPlayerItemOutputs___renderedLegibleOutputsForKeys__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 200) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_evaluateVideoOutputs
{
  figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVPlayerItem_AVPlayerItemOutputs___evaluateVideoOutputs__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figPlaybackItemSetterQueue, block);
}

void __58__AVPlayerItem_AVPlayerItemOutputs___evaluateVideoOutputs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _videoOutputs];
    [*(a1 + 32) _updateVideoSuppressionOnFigPlaybackItem:v3 basedOnOutputs:v4];
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v5 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * i), "_visualContext")}];
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, *MEMORY[0x1E6972C28], v5);
    }

    CFRelease(v3);
  }
}

- (void)_evaluateLegibleOutputs
{
  figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVPlayerItem_AVPlayerItemOutputs___evaluateLegibleOutputs__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figPlaybackItemSetterQueue, block);
}

void __60__AVPlayerItem_AVPlayerItemOutputs___evaluateLegibleOutputs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _legibleOutputsForKeys];
    [*(a1 + 32) _updateLegibleSuppressionOnFigPlaybackItem:v3 basedOnOutputs:{objc_msgSend(v4, "allValues")}];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v5 setObject:objc_msgSend(objc_msgSend(v4 forKey:{"objectForKey:", *(*(&v12 + 1) + 8 * i)), "_figLegibleOutputsDictionaryOptions"), *(*(&v12 + 1) + 8 * i)}];
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, *MEMORY[0x1E6972978], v5);
    }

    CFRelease(v3);
  }
}

- (void)_evaluateMetadataOutputs
{
  figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__AVPlayerItem_AVPlayerItemOutputs___evaluateMetadataOutputs__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figPlaybackItemSetterQueue, block);
}

void __61__AVPlayerItem_AVPlayerItemOutputs___evaluateMetadataOutputs__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _metadataOutputsForKeys];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 allKeys];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 setObject:objc_msgSend(objc_msgSend(v4 forKey:{"objectForKey:", *(*(&v13 + 1) + 8 * i)), "_figMetadataOutputsDictionaryOptions"), *(*(&v13 + 1) + 8 * i)}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v12)
    {
      v12(FigBaseObject, *MEMORY[0x1E69729D8], v5);
    }

    CFRelease(v3);
  }
}

- (void)_evaluateRenderedLegibleOutputs
{
  figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__AVPlayerItem_AVPlayerItemOutputs___evaluateRenderedLegibleOutputs__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(figPlaybackItemSetterQueue, block);
}

void __68__AVPlayerItem_AVPlayerItemOutputs___evaluateRenderedLegibleOutputs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _copyFigPlaybackItem];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _renderedLegibleOutputsForKeys];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v5 setObject:objc_msgSend(objc_msgSend(v4 forKey:{"objectForKey:", *(*(&v12 + 1) + 8 * i)), "_figRenderedLegibleOutputsDictionaryOptions"), *(*(&v12 + 1) + 8 * i)}];
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v11)
    {
      v11(FigBaseObject, *MEMORY[0x1E6972A70], v5);
    }

    CFRelease(v3);
  }
}

- (void)_configureVideoCompositionColorProperties
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
    v6 = 0;
    [(AVPlayerItem *)self _getVideoComposition:&v6 customVideoCompositorSession:&v5 figVideoCompositor:0];
    [v6 videoCompositionOutputColorPropertiesWithCustomCompositor:v5 formatDescriptions:-[AVPlayerItem _enabledTrackFormatDescriptions](self colorPrimaries:"_enabledTrackFormatDescriptions") transferFunction:&v10 yCbCrMatrix:&v9 perFrameHDRDisplayMetadataPolicy:{&v8, &v7}];
    [(AVPlayerItem *)self _setVideoCompositionColorPrimaries:v10];
    [(AVPlayerItem *)self _setVideoCompositionColorYCbCrMatrix:v8];
    [(AVPlayerItem *)self _setVideoCompositionColorTransferFunction:v9];
    [(AVPlayerItem *)self _setVideoCompositionHDRDisplayMetadataPolicy:v7];
    CFRelease(v4);
  }
}

- (void)_addVideoOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__AVPlayerItem_AVPlayerItemOutputs___addVideoOutput___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  [output _pixelBufferAttributes];
  VTPixelBufferAttributesMediatorSetRequestedPixelBufferAttributesForKey();
  v6 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemPreferredPixelBufferAttributesDidChangeNotification" object:self userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVPlayerItem *)self _evaluateVideoOutputs];
}

- (void)_addLegibleOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlayerItem_AVPlayerItemOutputs___addLegibleOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateLegibleOutputs];
}

uint64_t __55__AVPlayerItem_AVPlayerItemOutputs___addLegibleOutput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 32) + 8) + 184);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", FigAtomicIncrement32()];

  return [v2 setObject:v1 forKey:v3];
}

- (void)_addMetadataOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__AVPlayerItem_AVPlayerItemOutputs___addMetadataOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateMetadataOutputs];
}

uint64_t __56__AVPlayerItem_AVPlayerItemOutputs___addMetadataOutput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 32) + 8) + 192);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", FigAtomicIncrement32()];

  return [v2 setObject:v1 forKey:v3];
}

- (void)addOutput:(AVPlayerItemOutput *)output
{
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:12];
  AVTelemetryGenerateID();
  v6 = [(AVPlayerItemOutput *)output _attachToPlayerItem:self];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot attach AVPlayerItemSampleBufferOutput to AVPlayerItem", v7, v8, v9, v10, v11, v20);
    goto LABEL_16;
  }

  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"outputs" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __47__AVPlayerItem_AVPlayerItemOutputs__addOutput___block_invoke;
  v21[3] = &unk_1E7462BB0;
  v21[5] = output;
  v21[6] = &v23;
  v21[4] = self;
  v22 = !v6;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v21);
  if (v24[3])
  {
    goto LABEL_13;
  }

  if (!v6)
  {
    v18 = MEMORY[0x1E695DF30];
    v19 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Cannot attach an output that is already attached or nil output", v13, v14, v15, v16, v17, v20);
LABEL_16:
    objc_exception_throw([v18 exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0]);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AVPlayerItem *)self _addVideoOutput:output];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AVPlayerItem *)self _addLegibleOutput:output];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AVPlayerItem *)self _addMetadataOutput:output];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AVPlayerItem *)self _addRenderedLegibleOutput:output];
        }
      }
    }
  }

  [(AVPlayerItemOutput *)output _setTimebase:self->_playerItem->proxyUnfoldedTimebase];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"outputs" on:self];
LABEL_13:
  _Block_object_dispose(&v23, 8);
  AVTelemetryIntervalEnd(&v27);
}

void __47__AVPlayerItem_AVPlayerItemOutputs__addOutput___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 168) containsObject:*(a1 + 40)];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && (*(a1 + 56) & 1) == 0)
  {
    v2 = [*(*(*(a1 + 32) + 8) + 168) arrayByAddingObject:*(a1 + 40)];

    *(*(*(a1 + 32) + 8) + 168) = v2;
  }
}

- (void)_addRenderedLegibleOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVPlayerItem_AVPlayerItemOutputs___addRenderedLegibleOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateRenderedLegibleOutputs];
}

uint64_t __63__AVPlayerItem_AVPlayerItemOutputs___addRenderedLegibleOutput___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 32) + 8) + 200);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", FigAtomicIncrement32()];

  return [v2 setObject:v1 forKey:v3];
}

- (void)_removeVideoOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AVPlayerItem_AVPlayerItemOutputs___removeVideoOutput___block_invoke;
  v6[3] = &unk_1E7460DF0;
  v6[4] = self;
  v6[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  VTPixelBufferAttributesMediatorRemoveRequestedPixelBufferAttributesForKey();
  v5 = [MEMORY[0x1E696AD80] notificationWithName:@"AVPlayerItemPreferredPixelBufferAttributesDidChangeNotification" object:self userInfo:0];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(AVPlayerItem *)self _evaluateVideoOutputs];
}

- (void)_removeLegibleOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVPlayerItem_AVPlayerItemOutputs___removeLegibleOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateLegibleOutputs];
}

uint64_t __58__AVPlayerItem_AVPlayerItemOutputs___removeLegibleOutput___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 184) allKeysForObject:*(a1 + 40)];
  result = [v2 count];
  if (result)
  {
    v4 = *(*(*(a1 + 32) + 8) + 184);
    v5 = [v2 firstObject];

    return [v4 removeObjectForKey:v5];
  }

  return result;
}

- (void)_removeMetadataOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayerItem_AVPlayerItemOutputs___removeMetadataOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateMetadataOutputs];
}

uint64_t __59__AVPlayerItem_AVPlayerItemOutputs___removeMetadataOutput___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(*(a1 + 32) + 8) + 192) allKeysForObject:{*(a1 + 40)), "objectAtIndex:", 0}];
  v3 = *(*(*(a1 + 32) + 8) + 192);

  return [v3 removeObjectForKey:v2];
}

- (void)removeOutput:(AVPlayerItemOutput *)output
{
  v11 = [[AVTelemetryInterval alloc] initAndStartWith:13];
  AVTelemetryGenerateID();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVPlayerItem_AVPlayerItemOutputs__removeOutput___block_invoke;
  v6[3] = &unk_1E7461068;
  v6[5] = output;
  v6[6] = &v7;
  v6[4] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(AVPlayerItemOutput *)output _detachFromPlayerItem];
    [(AVPlayerItemOutput *)output _setTimebase:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(AVPlayerItem *)self _removeVideoOutput:output];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(AVPlayerItem *)self _removeLegibleOutput:output];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(AVPlayerItem *)self _removeMetadataOutput:output];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(AVPlayerItem *)self _removeRenderedLegibleOutput:output];
          }
        }
      }
    }
  }

  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v11);
}

void __50__AVPlayerItem_AVPlayerItemOutputs__removeOutput___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 24) = [*(*(a1[4] + 8) + 168) containsObject:a1[5]];
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v2 = [*(*(a1[4] + 8) + 168) mutableCopy];
    [v2 removeObject:a1[5]];

    *(*(a1[4] + 8) + 168) = v2;
  }
}

- (void)_removeRenderedLegibleOutput:(id)output
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItem_AVPlayerItemOutputs___removeRenderedLegibleOutput___block_invoke;
  v5[3] = &unk_1E7460DF0;
  v5[4] = self;
  v5[5] = output;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v5);
  [(AVPlayerItem *)self _evaluateRenderedLegibleOutputs];
}

uint64_t __66__AVPlayerItem_AVPlayerItemOutputs___removeRenderedLegibleOutput___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 200) allKeysForObject:*(a1 + 40)];
  result = [v2 count];
  if (result)
  {
    v4 = *(*(*(a1 + 32) + 8) + 200);
    v5 = [v2 firstObject];

    return [v4 removeObjectForKey:v5];
  }

  return result;
}

- (NSArray)outputs
{
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:14];
  AVTelemetryGenerateID();
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"outputs" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__AVPlayerItem_AVPlayerItemOutputs__outputs__block_invoke;
  block[3] = &unk_1E7460E68;
  block[4] = self;
  block[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  AVTelemetryIntervalEnd(&v13);
  return v4;
}

id __44__AVPlayerItem_AVPlayerItemOutputs__outputs__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 168);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_addMetadataCollector:(id)collector locked:(BOOL)locked
{
  lockedCopy = locked;
  v7 = [(AVPlayerItem *)self _copyFigPlaybackItemLocked:locked];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__AVPlayerItem_AVPlayerItemMediaDataCollectors___addMetadataCollector_locked___block_invoke;
  v10[3] = &unk_1E7460DF0;
  v10[4] = self;
  v10[5] = collector;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:lockedCopy block:v10];
  if (v7)
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__AVPlayerItem_AVPlayerItemMediaDataCollectors___addMetadataCollector_locked___block_invoke_2;
    v9[3] = &unk_1E7460FA8;
    v9[4] = self;
    v9[5] = v7;
    dispatch_async(figPlaybackItemSetterQueue, v9);
  }
}

void __78__AVPlayerItem_AVPlayerItemMediaDataCollectors___addMetadataCollector_locked___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(*(a1 + 32), "_metadataCollectors"), "count")}];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69728C8], v2);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)_removeMetadataCollector:(id)collector locked:(BOOL)locked
{
  lockedCopy = locked;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = [(AVPlayerItem *)self _copyFigPlaybackItemLocked:locked];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__AVPlayerItem_AVPlayerItemMediaDataCollectors___removeMetadataCollector_locked___block_invoke;
  v9[3] = &unk_1E7460DF0;
  v9[4] = self;
  v9[5] = collector;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:lockedCopy block:v9];
  if (v11[3])
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__AVPlayerItem_AVPlayerItemMediaDataCollectors___removeMetadataCollector_locked___block_invoke_2;
    v8[3] = &unk_1E7460EE0;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_async(figPlaybackItemSetterQueue, v8);
  }

  _Block_object_dispose(&v10, 8);
}

void __81__AVPlayerItem_AVPlayerItemMediaDataCollectors___removeMetadataCollector_locked___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_msgSend(*(a1 + 32), "_metadataCollectors"), "count")}];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E69728C8], v2);
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {

    CFRelease(v5);
  }
}

- (void)addMediaDataCollector:(AVPlayerItemMediaDataCollector *)collector
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:182];
  [(AVPlayerItem *)self addMediaDataCollector:collector locked:0];
  AVTelemetryIntervalEnd(&v5);
}

- (void)addMediaDataCollector:(id)collector locked:(BOOL)locked
{
  lockedCopy = locked;
  v8 = [collector _attachToPlayerItem:self];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"mediaDataCollectors" on:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__AVPlayerItem_AVPlayerItemMediaDataCollectors__addMediaDataCollector_locked___block_invoke;
  v9[3] = &unk_1E7463258;
  v9[4] = self;
  v9[5] = collector;
  v10 = v8 ^ 1;
  v9[6] = v11;
  v9[7] = a2;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:lockedCopy block:v9];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"mediaDataCollectors" on:self];
  _Block_object_dispose(v11, 8);
}

uint64_t __78__AVPlayerItem_AVPlayerItemMediaDataCollectors__addMediaDataCollector_locked___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 632) containsObject:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || (*(a1 + 64) & 1) == 0 && (v7 = [*(*(*(a1 + 32) + 8) + 632) arrayByAddingObject:*(a1 + 40)], *(*(*(a1 + 32) + 8) + 632), *(*(*(a1 + 32) + 8) + 632) = v7, (*(*(*(a1 + 48) + 8) + 24)) || (*(a1 + 64))
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(*(a1 + 32) userInfo:{*(a1 + 56), @"Cannot attach a collector that is already attached", v2, v3, v4, v5, v6, v12), 0}];
    objc_exception_throw(v11);
  }

  result = needsTaggedRanges();
  if (result)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);

    return [v9 _addMetadataCollector:v10 locked:1];
  }

  return result;
}

- (void)removeMediaDataCollector:(AVPlayerItemMediaDataCollector *)collector
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:183];
  [(AVPlayerItem *)self removeMediaDataCollector:collector locked:0];
  AVTelemetryIntervalEnd(&v5);
}

- (void)removeMediaDataCollector:(id)collector locked:(BOOL)locked
{
  lockedCopy = locked;
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"mediaDataCollectors" on:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__AVPlayerItem_AVPlayerItemMediaDataCollectors__removeMediaDataCollector_locked___block_invoke;
  v7[3] = &unk_1E7460DF0;
  v7[4] = self;
  v7[5] = collector;
  [(AVPlayerItem *)self dispatchIVarWrite:1 locked:lockedCopy block:v7];
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"mediaDataCollectors" on:self];
}

uint64_t __81__AVPlayerItem_AVPlayerItemMediaDataCollectors__removeMediaDataCollector_locked___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 632) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = [*(*(*(a1 + 32) + 8) + 632) mutableCopy];
    [v3 removeObject:*(a1 + 40)];

    *(*(*(a1 + 32) + 8) + 632) = v3;
    [*(a1 + 40) _detatchFromPlayerItem];
    result = needsTaggedRanges();
    if (result)
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);

      return [v4 _removeMetadataCollector:v5 locked:1];
    }
  }

  return result;
}

- (NSArray)mediaDataCollectors
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"mediaDataCollectors" on:self];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__AVPlayerItem_AVPlayerItemMediaDataCollectors__mediaDataCollectors__block_invoke;
  v6[3] = &unk_1E7460E68;
  v6[4] = self;
  v6[5] = &v7;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __68__AVPlayerItem_AVPlayerItemMediaDataCollectors__mediaDataCollectors__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 632);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_metadataCollectors
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayerItem_AVPlayerItemMediaDataCollectors___metadataCollectors__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __68__AVPlayerItem_AVPlayerItemMediaDataCollectors___metadataCollectors__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 640);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateTaggedMetadataArray:(id)array
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mediaDataCollectors = [(AVPlayerItem *)self mediaDataCollectors];
  v5 = [(NSArray *)mediaDataCollectors countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(mediaDataCollectors);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (needsTaggedRanges())
        {
          [v9 _updateTaggedRangeMetadataArray:array];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)mediaDataCollectors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_quietlySetServiceIdentifier
{
  figConfigurationQueue = self->_playerItem->figConfigurationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVPlayerItem_AVPlayerItemServiceIdentifier_Private___quietlySetServiceIdentifier__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(figConfigurationQueue, block);
}

uint64_t __83__AVPlayerItem_AVPlayerItemServiceIdentifier_Private___quietlySetServiceIdentifier__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) serviceIdentifier];
  if (result)
  {
    v2 = result;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {
      v7 = *MEMORY[0x1E6972AE0];

      return v6(FigBaseObject, v7, v2);
    }
  }

  return result;
}

- (void)setServiceIdentifier:(id)identifier
{
  v4 = [identifier copy];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AVPlayerItem_AVPlayerItemServiceIdentifier_Private__setServiceIdentifier___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = v4;
  v7[5] = self;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    if (*(v9 + 24) == 1)
    {
      [(AVPlayerItem *)self _quietlySetServiceIdentifier];
    }

    CFRelease(_copyFigPlaybackItem);
  }

  _Block_object_dispose(&v8, 8);
}

void __76__AVPlayerItem_AVPlayerItemServiceIdentifier_Private__setServiceIdentifier___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 8) + 1184)] & 1) == 0)
  {

    *(*(*(a1 + 40) + 8) + 1184) = *(a1 + 32);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (NSString)serviceIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVPlayerItem_AVPlayerItemServiceIdentifier_Private__serviceIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __72__AVPlayerItem_AVPlayerItemServiceIdentifier_Private__serviceIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1184) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_legibleOutputForKey:(id)key
{
  _legibleOutputsForKeys = [(AVPlayerItem *)self _legibleOutputsForKeys];

  return [_legibleOutputsForKeys objectForKey:key];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputAttributedStrings:(id)strings nativeSampleBuffers:(id)buffers atItemTime:(id *)time withLegibleOutputsDictionaryKey:(id)key
{
  v10 = [(AVPlayerItem *)self _legibleOutputForKey:key];
  v11 = *time;
  [v10 _pushAttributedStrings:strings andSampleBuffers:buffers atItemTime:&v11];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushLegibleOutputWithDictionaryKey:(id)key
{
  v4 = [(AVPlayerItem *)self _legibleOutputForKey:key];

  [v4 _signalFlush];
}

- (id)_metadataOutputForKey:(id)key
{
  _metadataOutputsForKeys = [(AVPlayerItem *)self _metadataOutputsForKeys];

  return [_metadataOutputsForKeys objectForKey:key];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputSampleBuffers:(id)buffers fromTrackWithID:(int)d forMetadataOutputWithDictionaryKey:(id)key
{
  v7 = *&d;
  v22 = *MEMORY[0x1E69E9840];
  if ([(AVAsset *)self->_playerItem->asset _isStreaming])
  {
    v10 = 0;
  }

  else
  {
    v10 = [(AVPlayerItem *)self _trackWithTrackID:v7];
  }

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [buffers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(buffers);
        }

        v16 = [[AVTimedMetadataGroup alloc] initWithSampleBuffer:*(*(&v17 + 1) + 8 * v15)];
        [array addObject:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [buffers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  [-[AVPlayerItem _metadataOutputForKey:](self _metadataOutputForKey:{key), "_pushTimedMetadataGroups:fromPlayerItemTrack:", array, v10}];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushMetadataOutputWithDictionaryKey:(id)key
{
  v4 = [(AVPlayerItem *)self _metadataOutputForKey:key];

  [v4 _signalFlush];
}

- (id)_renderedLegibleOutputForKey:(id)key
{
  _renderedLegibleOutputsForKeys = [(AVPlayerItem *)self _renderedLegibleOutputsForKeys];

  return [_renderedLegibleOutputsForKeys objectForKey:key];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didOutputRenderedCaptionImages:(id)images atItemTime:(id *)time withRenderedLegibleOutputsDictionaryKey:(id)key
{
  v8 = [(AVPlayerItem *)self _renderedLegibleOutputForKey:key];
  v9 = *time;
  [v8 _pushRenderedCaptionImages:images atItemTime:&v9];
}

- (void)_figPlaybackItem:(OpaqueFigPlaybackItem *)item didFlushRenderedLegibleOutputWithDictionaryKey:(id)key
{
  v4 = [(AVPlayerItem *)self _renderedLegibleOutputForKey:key];

  [v4 _signalFlush];
}

- (NSArray)supplementalMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerItem_SwiftMedia__supplementalMetadata__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __48__AVPlayerItem_SwiftMedia__supplementalMetadata__block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 32) + 8) + 1568) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setSupplementalMetadata:(id)metadata
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__AVPlayerItem_SwiftMedia__setSupplementalMetadata___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = metadata;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

uint64_t __52__AVPlayerItem_SwiftMedia__setSupplementalMetadata___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 1568);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(*(v2 + 32) + 8) + 1568) = result;
  }

  return result;
}

- (NSObject)AVKitData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVPlayerItem_AVPlayerItemAVKit__AVKitData__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAVKitData:(id)data
{
  if (data)
  {
    if ([data conformsToProtocol:&unk_1F0AD4538])
    {
      if ([data conformsToProtocol:&unk_1F0AD72A8])
      {
        goto LABEL_4;
      }

      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = "newAVKitData == nil || [newAVKitData conformsToProtocol:@protocol(NSCopying)]";
    }

    else
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D940];
      v14 = "newAVKitData == nil || [newAVKitData conformsToProtocol:@protocol(NSObject)]";
    }

    v15 = [v12 exceptionWithName:v13 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, v14), 0}];
    objc_exception_throw(v15);
  }

LABEL_4:
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__AVPlayerItem_AVPlayerItemAVKit__setAVKitData___block_invoke;
  v16[3] = &unk_1E7460DF0;
  v16[4] = self;
  v16[5] = data;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v16);
}

uint64_t __48__AVPlayerItem_AVPlayerItemAVKit__setAVKitData___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) copyWithZone:0];
  *(*(*(a1 + 32) + 8) + 912) = result;
  return result;
}

- (id)interstitialEventID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVPlayerItem_AVPlayerItemAVKit__interstitialEventID__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __54__AVPlayerItem_AVPlayerItemAVKit__interstitialEventID__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1368);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setInterstitialEventID:(id)d
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AVPlayerItem_AVPlayerItemAVKit___setInterstitialEventID___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = d;
  v4[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

void __59__AVPlayerItem_AVPlayerItemAVKit___setInterstitialEventID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 1368) = *(a1 + 32);
}

- (BOOL)playHapticTracks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__AVPlayerItem_AVPlayerItemHaptics__playHapticTracks__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setPlayHapticTracks:(BOOL)tracks
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__AVPlayerItem_AVPlayerItemHaptics__setPlayHapticTracks___block_invoke;
  v11[3] = &unk_1E7460E40;
  v11[4] = self;
  tracksCopy = tracks;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v11);
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v7 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__AVPlayerItem_AVPlayerItemHaptics__setPlayHapticTracks___block_invoke_2;
    v9[3] = &__block_descriptor_41_e5_v8__0l;
    v9[4] = v7;
    tracksCopy2 = tracks;
    dispatch_sync(figPlaybackItemSetterQueue, v9);
    CFRelease(v7);
  }
}

uint64_t __57__AVPlayerItem_AVPlayerItemHaptics__setPlayHapticTracks___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972A08];
    v8 = *v1;

    return v6(FigBaseObject, v7, v8);
  }

  return result;
}

- (NSString)hapticPlaybackLocality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayerItem_AVPlayerItemHaptics__hapticPlaybackLocality__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __59__AVPlayerItem_AVPlayerItemHaptics__hapticPlaybackLocality__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 928);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setHapticPlaybackLocality:(id)locality
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (locality && ([locality isEqualToString:@"Default"] & 1) == 0 && (objc_msgSend(locality, "isEqualToString:", @"FullGamut") & 1) == 0 && (objc_msgSend(locality, "isEqualToString:", @"DefaultWithFullStrength") & 1) == 0)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Haptic playback locality is not valid: %@", v6, v7, v8, v9, v10, locality), 0}];
    objc_exception_throw(v13);
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__AVPlayerItem_AVPlayerItemHaptics__setHapticPlaybackLocality___block_invoke;
  v15[3] = &unk_1E7460F30;
  v15[4] = locality;
  v15[5] = self;
  v15[6] = &v16;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v15);
  if (v17[3])
  {
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AVPlayerItem_AVPlayerItemHaptics__setHapticPlaybackLocality___block_invoke_2;
    block[3] = &unk_1E7460E68;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(figPlaybackItemSetterQueue, block);
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __63__AVPlayerItem_AVPlayerItemHaptics__setHapticPlaybackLocality___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 8) + 928)];
  if ((result & 1) == 0)
  {

    *(*(*(a1 + 40) + 8) + 928) = [*(a1 + 32) copy];
    result = *(*(*(a1 + 40) + 8) + 128);
    if (result)
    {
      result = CFRetain(result);
    }

    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

void __63__AVPlayerItem_AVPlayerItemHaptics__setHapticPlaybackLocality___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hapticPlaybackLocality];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(FigBaseObject, *MEMORY[0x1E6972928], v2);
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);

  CFRelease(v5);
}

- (id)videoEnhancementMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__AVPlayerItem_AVPlayerItemVideoEnhancement__videoEnhancementMode__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __66__AVPlayerItem_AVPlayerItemVideoEnhancement__videoEnhancementMode__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1144);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateVideoEnhancementModeOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __90__AVPlayerItem_AVPlayerItemVideoEnhancement___updateVideoEnhancementModeOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __90__AVPlayerItem_AVPlayerItemVideoEnhancement___updateVideoEnhancementModeOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) videoEnhancementMode];
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972C20];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)setVideoEnhancementMode:(id)mode
{
  v5 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  while (([(__CFString *)sValidVideoEnhancementModes[v5] isEqualToString:mode]& 1) == 0)
  {
    if (++v5 == 4)
    {
      goto LABEL_7;
    }
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AVPlayerItem_AVPlayerItemVideoEnhancement__setVideoEnhancementMode___block_invoke;
  v7[3] = &unk_1E7460F30;
  v7[4] = mode;
  v7[5] = self;
  v7[6] = &v8;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
  if (*(v9 + 24) == 1)
  {
    [(AVPlayerItem *)self _updateVideoEnhancementModeOnFigPlaybackItem];
  }

LABEL_7:
  _Block_object_dispose(&v8, 8);
}

uint64_t __70__AVPlayerItem_AVPlayerItemVideoEnhancement__setVideoEnhancementMode___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:*(*(*(a1 + 40) + 8) + 1144)];
  if ((result & 1) == 0)
  {

    result = [*(a1 + 32) copy];
    *(*(*(a1 + 40) + 8) + 1144) = result;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)automaticallyHandlesInterstitialEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__AVPlayerItem_AVPlayerInterstitialSupport__automaticallyHandlesInterstitialEvents__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __107__AVPlayerItem_AVPlayerInterstitialSupport___updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __107__AVPlayerItem_AVPlayerInterstitialSupport___updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) automaticallyHandlesInterstitialEvents])
  {
    v1 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v1 = MEMORY[0x1E695E4C0];
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *v1;
    v8 = *MEMORY[0x1E6972838];

    return v6(FigBaseObject, v8, v7);
  }

  return result;
}

- (void)setAutomaticallyHandlesInterstitialEvents:(BOOL)automaticallyHandlesInterstitialEvents
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar willChangeValueFor:@"automaticallyHandlesInterstitialEvents" on:self];
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __87__AVPlayerItem_AVPlayerInterstitialSupport__setAutomaticallyHandlesInterstitialEvents___block_invoke;
  v6[3] = &unk_1E7460E40;
  v6[4] = self;
  v7 = automaticallyHandlesInterstitialEvents;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v6);
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar didChangeValueFor:@"automaticallyHandlesInterstitialEvents" on:self];
  [(AVPlayerItem *)self _updateAutomaticallyHandlesInterstitialEventsOnFigPlaybackItem];
}

uint64_t __87__AVPlayerItem_AVPlayerInterstitialSupport__setAutomaticallyHandlesInterstitialEvents___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(result + 40);
  if (*(v1 + 1019) != v2)
  {
    v3 = result;
    if (dword_1ED5AC298)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOBYTE(v2) = *(v3 + 40);
      v1 = *(*(v3 + 32) + 8);
    }

    *(v1 + 1019) = v2;
    v5 = *(v3 + 32);
    if (*(v3 + 40) == 1)
    {
      return [v5 _addInterstitialEventCollectorLocked:1];
    }

    else
    {
      return [v5 _removeInterstitialEventCollectorLocked:1];
    }
  }

  return result;
}

- (AVPlayerItem)templatePlayerItem
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AVPlayerItem_AVPlayerInterstitialSupport__templatePlayerItem__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __63__AVPlayerItem_AVPlayerInterstitialSupport__templatePlayerItem__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1360);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setTemplatePlayerItem:(id)item
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVPlayerItem_AVPlayerInterstitialSupport___setTemplatePlayerItem___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = item;
  v4[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

void __68__AVPlayerItem_AVPlayerInterstitialSupport___setTemplatePlayerItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 1360) = *(a1 + 32);
}

- (id)_coordinationIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__AVPlayerItem_AVPlayerInterstitialSupport___coordinationIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __68__AVPlayerItem_AVPlayerInterstitialSupport___coordinationIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1376);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setCoordinatorIdentifier:(id)identifier
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__AVPlayerItem_AVPlayerInterstitialSupport___setCoordinatorIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = identifier;
  v4[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

void __71__AVPlayerItem_AVPlayerInterstitialSupport___setCoordinatorIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 1376) = *(a1 + 32);
}

- (id)_integratedSessionIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AVPlayerItem_AVPlayerInterstitialSupport___integratedSessionIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __73__AVPlayerItem_AVPlayerInterstitialSupport___integratedSessionIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1384);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setIntegratedSessionIdentifier:(id)identifier
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__AVPlayerItem_AVPlayerInterstitialSupport___setIntegratedSessionIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = identifier;
  v4[5] = self;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

void __77__AVPlayerItem_AVPlayerInterstitialSupport___setIntegratedSessionIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);

  *(*(*(a1 + 40) + 8) + 1384) = *(a1 + 32);
}

- (BOOL)participatesInCoordinatedPlayback
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__AVPlayerItem_AVPlayerInterstitialSupport__participatesInCoordinatedPlayback__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setParticipatesInCoordinatedPlayback:(BOOL)playback
{
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__AVPlayerItem_AVPlayerInterstitialSupport___setParticipatesInCoordinatedPlayback___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  playbackCopy = playback;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (id)_copyIntegratedTimelineIfCreated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport___copyIntegratedTimelineIfCreated__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __87__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport___copyIntegratedTimelineIfCreated__block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 1024);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_attachIntegratedTimelineToFigItem
{
  _copyIntegratedTimelineIfCreated = [(AVPlayerItem *)self _copyIntegratedTimelineIfCreated];
  v4 = [-[AVPlayerItem _player](self "_player")];
  figPlaybackItemAccessorQueue = self->_playerItem->figPlaybackItemAccessorQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport___attachIntegratedTimelineToFigItem__block_invoke;
  block[3] = &unk_1E7460FF0;
  block[4] = _copyIntegratedTimelineIfCreated;
  block[5] = self;
  block[6] = v4;
  dispatch_async(figPlaybackItemAccessorQueue, block);
}

void __89__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport___attachIntegratedTimelineToFigItem__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _attachToItem:*(a1 + 40)];
  [*(a1 + 32) _attachCoordinator:*(a1 + 48)];
  [*(a1 + 32) _attachInterstitialPlayer:{objc_msgSend(objc_msgSend(*(a1 + 40), "_player"), "_interstitialPlayerIfCreated")}];

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (AVPlayerItemIntegratedTimeline)integratedTimeline
{
  [(AVPlayerItemObservationRegistrar *)self->_playerItem->observationRegistrar accessWithKey:@"integratedTimeline" on:self];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  if (([-[AVPlayerItem _player](self "_player")] & 1) == 0)
  {
    _copyIntegratedTimelineIfCreated = [(AVPlayerItem *)self _copyIntegratedTimelineIfCreated];
    v9[5] = _copyIntegratedTimelineIfCreated;
    if (!_copyIntegratedTimelineIfCreated)
    {
      ivarAccessQueue = self->_playerItem->ivarAccessQueue;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __73__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport__integratedTimeline__block_invoke;
      v7[3] = &unk_1E7460EE0;
      v7[4] = self;
      v7[5] = &v8;
      av_readwrite_dispatch_queue_write(ivarAccessQueue, v7);
      [(AVPlayerItem *)self _attachIntegratedTimelineToFigItem];
    }
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __73__AVPlayerItem_AVPlayerItemIntegratedTimelineSupport__integratedTimeline__block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 1024);
  if (!v2)
  {
    *(*(*(a1 + 32) + 8) + 1024) = [[AVPlayerItemIntegratedTimeline alloc] _initInternal];
    v2 = *(*(*(a1 + 32) + 8) + 1024);
  }

  result = v2;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)isDefunct
{
  v8 = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = *(CMBaseObjectGetVTable() + 8);
    if (*v4 < 5uLL)
    {
      goto LABEL_8;
    }

    v5 = v4[11];
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5(_copyFigPlaybackItem, &v8);
    if (v8)
    {
LABEL_9:
      CFRelease(_copyFigPlaybackItem);
      return v8;
    }

    if (v6)
    {
LABEL_8:
      v8 = 1;
      goto LABEL_9;
    }
  }

  result = [(AVAsset *)[(AVPlayerItem *)self asset] isDefunct];
  v8 = result;
  if (_copyFigPlaybackItem)
  {
    goto LABEL_9;
  }

  return result;
}

- (NSArray)speedRamp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__AVPlayerItem_AVPlayerItemSpeedRamp__speedRamp__block_invoke;
  v5[3] = &unk_1E7460EE0;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSpeedRamp:(id)ramp
{
  v110 = *MEMORY[0x1E69E9840];
  if (!ramp || (v49 = [ramp count]) == 0)
  {
    v7 = 0;
    goto LABEL_54;
  }

  v6 = [ramp objectAtIndexedSubscript:0];
  if (v6)
  {
    [v6 CMTimeMappingValue];
  }

  else
  {
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    memset(&v96, 0, sizeof(v96));
  }

  range = v96;
  CMTimeRangeGetEnd(&v95, &range);
  if ((v95.flags & 0x1D) != 1)
  {
    goto LABEL_74;
  }

  v13 = [ramp objectAtIndexedSubscript:0];
  if (v13)
  {
    [v13 CMTimeMappingValue];
  }

  else
  {
    memset(&v94, 0, sizeof(v94));
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
  }

  range = v94;
  CMTimeRangeGetEnd(&v90, &range);
  if ((v90.flags & 0x1D) != 1)
  {
LABEL_74:
    v40 = MEMORY[0x1E695DF30];
    v41 = *MEMORY[0x1E695D940];
    v42 = @"All time mappings must have numeric start and duration times";
LABEL_77:
    selfCopy2 = self;
    v44 = a2;
    goto LABEL_73;
  }

  v14 = [ramp objectAtIndexedSubscript:0];
  if (v14)
  {
    [v14 CMTimeMappingValue];
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
  }

  *&range.start.value = v84;
  range.start.epoch = v85;
  v48 = *MEMORY[0x1E6960CC0];
  *&time2[0].start.value = *MEMORY[0x1E6960CC0];
  v15 = *(MEMORY[0x1E6960CC0] + 16);
  time2[0].start.epoch = v15;
  if (CMTimeCompare(&range.start, &time2[0].start))
  {
    v40 = MEMORY[0x1E695DF30];
    v41 = *MEMORY[0x1E695D940];
    v42 = @"First time mapping must have zero source start time";
    goto LABEL_77;
  }

  v16 = [ramp objectAtIndexedSubscript:0];
  if (v16)
  {
    [v16 CMTimeMappingValue];
  }

  else
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
  }

  *&range.start.value = v81;
  range.start.epoch = v82;
  *&time2[0].start.value = v48;
  time2[0].start.epoch = v15;
  if (CMTimeCompare(&range.start, &time2[0].start))
  {
    v40 = MEMORY[0x1E695DF30];
    v41 = *MEMORY[0x1E695D940];
    v42 = @"First time mapping must have zero target start time";
    goto LABEL_77;
  }

  memset(&v77, 0, sizeof(v77));
  memset(&range, 0, sizeof(range));
  v17 = [ramp objectAtIndexedSubscript:0];
  v47 = a2;
  if (v17)
  {
    [v17 CMTimeMappingValue];
  }

  else
  {
    memset(&v77, 0, sizeof(v77));
    memset(&range, 0, sizeof(range));
  }

  if (v49 != 1)
  {
    v18 = 1;
    while (1)
    {
      v19 = [ramp objectAtIndexedSubscript:v18];
      if (v19)
      {
        [v19 CMTimeMappingValue];
        v20 = HIDWORD(v73);
        v21 = *&v74[0];
      }

      else
      {
        v21 = 0;
        v20 = 0;
        v73 = 0u;
        memset(v74, 0, sizeof(v74));
      }

      v108 = v73;
      v109 = DWORD2(v73);
      v75 = *(v74 + 8);
      v22 = [ramp objectAtIndexedSubscript:v18];
      if (v22)
      {
        [v22 CMTimeMappingValue];
        v23 = HIDWORD(v70);
        v24 = *&v71[0];
      }

      else
      {
        v24 = 0;
        v23 = 0;
        memset(v71, 0, sizeof(v71));
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
      }

      v106 = v70;
      v107 = DWORD2(v70);
      v72 = *(v71 + 8);
      time2[0].start.value = v108;
      time2[0].start.timescale = v109;
      time2[0].start.flags = v20;
      time2[0].start.epoch = v21;
      time2[0].duration = v75;
      CMTimeRangeGetEnd(&v66, time2);
      if ((v66.flags & 0x1D) != 1 || (time2[0].start.value = v106, time2[0].start.timescale = v107, time2[0].start.flags = v23, time2[0].start.epoch = v24, time2[0].duration = v72, CMTimeRangeGetEnd(&v65, time2), (v65.flags & 0x1D) != 1))
      {
        v40 = MEMORY[0x1E695DF30];
        v41 = *MEMORY[0x1E695D940];
        v42 = @"All time mappings must have numeric start and duration times";
        goto LABEL_72;
      }

      time2[0] = range;
      CMTimeRangeGetEnd(&v64, time2);
      if ((v64.flags & 0x1F) != 3 && (v20 & 0x1F) != 3 || (memset(time2, 0, 24), lhs = v64, rhs.value = v108, rhs.timescale = v109, rhs.flags = v20, rhs.epoch = v21, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time2[0].start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time2[0].start, CMTimeCompare(&lhs, &time) > 0))
      {
        time2[0].start = v64;
        time.value = v108;
        time.timescale = v109;
        time.flags = v20;
        time.epoch = v21;
        if (CMTimeCompare(&time2[0].start, &time))
        {
          v40 = MEMORY[0x1E695DF30];
          v41 = *MEMORY[0x1E695D940];
          v42 = @"Each time mapping's source start time must match the previous mapping's source end time";
          goto LABEL_72;
        }
      }

      if ((time2[0] = v77, CMTimeRangeGetEnd(&v64, time2), (v64.flags & 0x1F) != 3) && (v23 & 0x1F) != 3 || (memset(time2, 0, 24), lhs = v64, rhs.value = v106, rhs.timescale = v107, rhs.flags = v23, rhs.epoch = v24, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time2[0].start, &time), CMTimeMake(&time, 1, 1000000000), lhs = time2[0].start, CMTimeCompare(&lhs, &time) > 0))
      {
        time2[0].start = v64;
        time.value = v106;
        time.timescale = v107;
        time.flags = v23;
        time.epoch = v24;
        if (CMTimeCompare(&time2[0].start, &time))
        {
          break;
        }
      }

      v25 = [ramp objectAtIndexedSubscript:v18];
      if (v25)
      {
        [v25 CMTimeMappingValue];
      }

      else
      {
        memset(time2, 0, sizeof(time2));
      }

      range = time2[0];
      v77 = time2[1];
      if (v49 == ++v18)
      {
        goto LABEL_45;
      }
    }

    v40 = MEMORY[0x1E695DF30];
    v41 = *MEMORY[0x1E695D940];
    v42 = @"Each time mapping's target start time must match the previous mapping's target end time";
LABEL_72:
    selfCopy2 = self;
    v44 = v47;
LABEL_73:
    v45 = [v40 exceptionWithName:v41 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy2 userInfo:{v44, v42, v8, v9, v10, v11, v12, v46), 0}];
    objc_exception_throw(v45);
  }

LABEL_45:
  v7 = [MEMORY[0x1E695DF88] dataWithCapacity:96 * self->_playerItem->supplementalMetadata];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v26 = [ramp countByEnumeratingWithState:&v59 objects:v105 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v60;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(ramp);
        }

        v30 = *(*(&v59 + 1) + 8 * i);
        memset(&v77, 0, sizeof(v77));
        memset(&range, 0, sizeof(range));
        if (v30)
        {
          [v30 CMTimeMappingValue];
        }

        [v7 appendBytes:&range length:96];
      }

      v27 = [ramp countByEnumeratingWithState:&v59 objects:v105 count:16];
    }

    while (v27);
  }

LABEL_54:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v31 = [&unk_1F0AD3658 countByEnumeratingWithState:&v55 objects:v104 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v56;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(&unk_1F0AD3658);
        }

        [(AVPlayerItem *)self willChangeValueForKey:*(*(&v55 + 1) + 8 * j)];
      }

      v32 = [&unk_1F0AD3658 countByEnumeratingWithState:&v55 objects:v104 count:16];
    }

    while (v32);
  }

  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __52__AVPlayerItem_AVPlayerItemSpeedRamp__setSpeedRamp___block_invoke;
  v54[3] = &unk_1E7460DF0;
  v54[4] = self;
  v54[5] = v7;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v54);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = [&unk_1F0AD3658 countByEnumeratingWithState:&v50 objects:v103 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v51;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v51 != v38)
        {
          objc_enumerationMutation(&unk_1F0AD3658);
        }

        [(AVPlayerItem *)self didChangeValueForKey:*(*(&v50 + 1) + 8 * k)];
      }

      v37 = [&unk_1F0AD3658 countByEnumeratingWithState:&v50 objects:v103 count:16];
    }

    while (v37);
  }

  [(AVPlayerItem *)self _updateSpeedRampDataOnFigPlaybackItem];
}

unint64_t __52__AVPlayerItem_AVPlayerItemSpeedRamp__setSpeedRamp___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 1576) = *(a1 + 40);
  result = [*(a1 + 40) length];
  *(*(*(a1 + 32) + 8) + 1584) = result / 0x60;
  *(*(*(a1 + 32) + 8) + 1592) = 1;
  return result;
}

- (BOOL)missingAudioEditList
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AVPlayerItem_AVPlayerItemSpeedRamp__missingAudioEditList__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_speedRampDataWasSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVPlayerItem_AVPlayerItemSpeedRampInternal___speedRampDataWasSet__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateSpeedRampDataOnFigPlaybackItem
{
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v4 = _copyFigPlaybackItem;
    figPlaybackItemSetterQueue = self->_playerItem->figPlaybackItemSetterQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__AVPlayerItem_AVPlayerItemSpeedRampInternal___updateSpeedRampDataOnFigPlaybackItem__block_invoke;
    v6[3] = &unk_1E7460FA8;
    v6[4] = self;
    v6[5] = v4;
    dispatch_sync(figPlaybackItemSetterQueue, v6);
    CFRelease(v4);
  }
}

uint64_t __84__AVPlayerItem_AVPlayerItemSpeedRampInternal___updateSpeedRampDataOnFigPlaybackItem__block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 1576);
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 8);
  result = VTable + 8;
  v6 = *(v5 + 56);
  if (v6)
  {
    v7 = *MEMORY[0x1E6972AF8];

    return v6(FigBaseObject, v7, v1);
  }

  return result;
}

- (void)getEventTimelineWithCompletionHandler:(id)handler
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  ivarAccessQueue = self->_playerItem->ivarAccessQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__AVPlayerItem_AVMetricEventStreamPublisherInternal__getEventTimelineWithCompletionHandler___block_invoke;
  v16[3] = &unk_1E74632B8;
  v16[6] = &v25;
  v16[7] = &v21;
  v16[8] = &v17;
  v16[4] = self;
  v16[5] = handler;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v16);
  if (!v22[3])
  {
    goto LABEL_3;
  }

  v6 = v26 + 3;
  if (v26[3])
  {
    goto LABEL_3;
  }

  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v10)
  {
    v7 = v10(FigBaseObject, *MEMORY[0x1E69729E0], *MEMORY[0x1E695E480], v6);
    if (!v7)
    {
      v11 = self->_playerItem->ivarAccessQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __92__AVPlayerItem_AVMetricEventStreamPublisherInternal__getEventTimelineWithCompletionHandler___block_invoke_2;
      v15[3] = &unk_1E7460EE0;
      v15[4] = self;
      v15[5] = &v25;
      av_readwrite_dispatch_queue_write(v11, v15);
LABEL_3:
      v7 = 0;
    }
  }

  else
  {
    v7 = -12782;
  }

  if ((v18[3] & 1) == 0)
  {
    v8 = v26[3];
    if (v8)
    {
      (*(handler + 2))(handler, v8, 0);
    }

    else
    {
      if (v7)
      {
        v12 = AVLocalizedErrorWithUnderlyingOSStatus(v7, 0);
      }

      else
      {
        v12 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
      }

      (*(handler + 2))(handler, 0, v12);
    }
  }

  v13 = v26[3];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = v22[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __92__AVPlayerItem_AVMetricEventStreamPublisherInternal__getEventTimelineWithCompletionHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = *(v2 + 1536);
    if (v4)
    {
      v5 = CFRetain(v4);
      v6 = a1[6];
    }

    else
    {
      v5 = CFRetain(v3);
      v6 = a1[7];
    }

    *(*(v6 + 8) + 24) = v5;
  }

  else
  {
    *(*(a1[8] + 8) + 24) = 1;
    v7 = a1[5];
    if (v7)
    {
      v8 = [v7 copy];
      [*(*(a1[4] + 8) + 1528) addObject:v8];
    }
  }
}

void __92__AVPlayerItem_AVMetricEventStreamPublisherInternal__getEventTimelineWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 1536);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  *(v1 + 1536) = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)_applyCurrentVideoComposition
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  value = 0;
  v10 = 0;
  if (self->_playerItem->figPlaybackItem)
  {
    [(AVPlayerItem *)self _getVideoComposition:&v15 customVideoCompositorSession:&v14 figVideoCompositor:&value];
    [v15 videoCompositionOutputColorPropertiesWithCustomCompositor:v14 formatDescriptions:-[AVPlayerItem _enabledTrackFormatDescriptions](self colorPrimaries:"_enabledTrackFormatDescriptions") transferFunction:&v13 yCbCrMatrix:&v12 perFrameHDRDisplayMetadataPolicy:{&v11, &v10}];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v4 = Mutable;
      if (v15)
      {
        [v15 frameDuration];
      }

      FigCFDictionarySetCMTime();
      [v15 sourceTrackIDForFrameTiming];
      FigCFDictionarySetInt32();
      [v15 renderSize];
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v16);
      FigCFDictionarySetValue();
      [v15 renderScale];
      FigCFDictionarySetFloat();
      [v15 outputBufferDescription];
      OUTLINED_FUNCTION_0_5();
      FigCFDictionarySetValue();
      lookupableSpatialVideoConfigurations = [v15 lookupableSpatialVideoConfigurations];
      if (lookupableSpatialVideoConfigurations)
      {
        AVLookupableSpatialVideoConfigurationMakeSerializableArray(lookupableSpatialVideoConfigurations);
      }

      FigCFDictionarySetValue();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_1_4();
      [v10 isEqual:@"PerFrameHDRDisplayMetadataPolicy_Generate"];
      FigCFDictionarySetValue();
      [v15 _serializableInstructions];
      FigCFDictionarySetValue();
      [v15 sourceSampleDataTrackIDs];
      OUTLINED_FUNCTION_0_5();
      FigCFDictionarySetValue();
      AVVideoCompositionSerializeSourceTrackWindows([v15 sourceVideoTrackWindowsForTrackIDs]);
      OUTLINED_FUNCTION_0_5();
      FigCFDictionarySetValue();
      AVVideoCompositionSerializeSourceTrackWindows([v15 sourceSampleDataTrackWindowsForTrackIDs]);
      OUTLINED_FUNCTION_0_5();
      FigCFDictionarySetValue();
      CFDictionarySetValue(v4, *MEMORY[0x1E6972BB0], value);
      FigBaseObject = FigPlaybackItemGetFigBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(FigBaseObject, *MEMORY[0x1E6972BA8], v4);
      }

      CFRelease(v4);
      if (DictionaryRepresentation)
      {
        CFRelease(DictionaryRepresentation);
      }
    }
  }

  if (value)
  {
    CFRelease(value);
  }
}

- (id)_propertyListForSelectedMediaOptionUsingFigSelectedMediaArrayObtainedFromGroup:(id)group
{
  v45 = *MEMORY[0x1E69E9840];
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  cf = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6 && (v7 = v6(FigBaseObject, *MEMORY[0x1E6972AD8], *MEMORY[0x1E695E480], &cf), !v7) && (v15 = cf, (v16 = OUTLINED_FUNCTION_2_3(v7, v8, v9, v10, v11, v12, v13, v14, 0, 0, 0, 0, 0, 0, 0, 0, v41, cf, v44)) != 0))
  {
    v17 = v16;
    v18 = *v35;
    v19 = *MEMORY[0x1E6973750];
    v20 = *MEMORY[0x1E6973740];
LABEL_5:
    v21 = 0;
    while (1)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(v34 + 8 * v21);
      v23 = [group _matchesGroupID:objc_msgSend(v22 mediaType:{"objectForKey:", v20), objc_msgSend(v22, "objectForKey:", v19)}];
      if (v23)
      {
        break;
      }

      if (v17 == ++v21)
      {
        v17 = OUTLINED_FUNCTION_2_3(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34, v35, v36, v37, v38, v39, v40, v42, cf, v44);
        v31 = 0;
        if (v17)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    v31 = v22;
    if (_copyFigPlaybackItem)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = 0;
LABEL_13:
    if (_copyFigPlaybackItem)
    {
LABEL_14:
      CFRelease(_copyFigPlaybackItem);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v31;
}

- (id)_integratedTimelineOffsets
{
  v7 = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v3 = _copyFigPlaybackItem;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972960], *MEMORY[0x1E695E480], &v7);
    }

    CFRelease(v3);
    _copyFigPlaybackItem = v7;
  }

  return _copyFigPlaybackItem;
}

- (id)_interstitialEventItemTimeOffset
{
  v7 = 0;
  _copyFigPlaybackItem = [(AVPlayerItem *)self _copyFigPlaybackItem];
  if (_copyFigPlaybackItem)
  {
    v3 = _copyFigPlaybackItem;
    FigBaseObject = FigPlaybackItemGetFigBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v5(FigBaseObject, *MEMORY[0x1E6972968], *MEMORY[0x1E695E480], &v7);
    }

    CFRelease(v3);
    _copyFigPlaybackItem = v7;
  }

  return _copyFigPlaybackItem;
}

uint64_t __48__AVPlayerItem_AVPlayerItemSpeedRamp__speedRamp__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (*(v1 + 1576))
  {
    v2 = result;
    result = [MEMORY[0x1E695DF70] arrayWithCapacity:*(v1 + 1584)];
    *(*(*(v2 + 40) + 8) + 40) = result;
    v3 = *(v2 + 32);
    v5 = *(v3 + 8);
    v4 = v3 + 8;
    if (*(v5 + 1584))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        memset(__src, 0, sizeof(__src));
        [*(*v4 + 1576) getBytes:__src range:{v6, 96}];
        v8 = *(*(*(v2 + 40) + 8) + 40);
        memcpy(v11, __src, sizeof(v11));
        result = [v8 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTimeMapping:", v11)}];
        ++v7;
        v9 = *(v2 + 32);
        v10 = *(v9 + 8);
        v4 = v9 + 8;
        v6 += 96;
      }

      while (v7 < *(v10 + 1584));
    }
  }

  return result;
}

- (void)_cacheTrackInformation
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerItem *)self _isReadyForInspectionOfTracks])
  {
    v3 = objc_autoreleasePoolPush();
    tracks = [(AVPlayerItem *)self tracks];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(NSArray *)tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(tracks);
          }

          assetTrack = [*(*(&v15 + 1) + 8 * v8) assetTrack];
          if ([objc_msgSend(assetTrack "mediaType")])
          {
            v10 = [AVPlayerItemAudioTrackInfo playerItemTrackInfoForTrack:assetTrack];
            if (([*&self->_playerItem->speedRamp.wasSet contains:v10] & 1) == 0)
            {
              v11 = [objc_msgSend(assetTrack "formatDescriptions")];
              if (v11)
              {
                if ((v12 = v11, (RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(v11)) != 0) && RichestDecodableFormat->mASBD.mChannelsPerFrame || (StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v12)) != 0 && StreamBasicDescription->mChannelsPerFrame)
                {
                  [v10 setChannelCount:?];
                  [*&self->_playerItem->speedRamp.wasSet store:v10];
                }
              }
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSArray *)tracks countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)_isNonForcedSubtitleDisplayEnabled
{
  BOOLean = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(FigBaseObject, *MEMORY[0x1E69728E0], *MEMORY[0x1E695E480], &BOOLean) && BOOLean)
  {
    v6 = CFBooleanGetValue(BOOLean) != 0;
    CFRelease(BOOLean);
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  CFRelease(self);
}

@end
@interface AVPlayerController
+ (id)_optionsForGroup:(id)group asset:(id)asset;
+ (id)assetInspectionKeysForPrimary;
+ (id)canonicalLanguageIdentifierFromString:(id)string;
+ (id)keyPathsForValuesAffectingContentDimensions;
+ (id)keyPathsForValuesAffectingHasLiveStreamingContent;
+ (id)keyPathsForValuesAffectingHasSeekableLiveStreamingContent;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)reversePlaybackEndTime;
- (AVMediaSelectionOption)currentVideoMediaSelectionOption;
- (AVPlayerController)init;
- (AVPlayerController)initWithPlayer:(id)player;
- (AVPlayerControllerDelegate)internalDelegate;
- (AVPlayerLayer)playerLayerForReducingResources;
- (BOOL)_assetContainsProResRaw:(id)raw;
- (BOOL)_assetIsMarkedNotSerializable:(id)serializable;
- (BOOL)_assetIsRestrictedFromSaving:(id)saving;
- (BOOL)_mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup;
- (BOOL)_mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroupForPlayerItem:(id)item asset:(id)asset;
- (BOOL)_willAutomaticallySelectLegibleFallbackForLanguageMismatch;
- (BOOL)allowsExternalPlayback;
- (BOOL)canPlay;
- (BOOL)canPlayImmediately;
- (BOOL)canScanBackward;
- (BOOL)canScanForward;
- (BOOL)canSeek;
- (BOOL)canSeekChapterBackward;
- (BOOL)canSeekChapterForward;
- (BOOL)canSeekFrameBackward;
- (BOOL)canSeekFrameForward;
- (BOOL)canTogglePlayback;
- (BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused;
- (BOOL)enableMediaPresentationSettingsDisplayStyleIfNecessary;
- (BOOL)hapticsIsOn;
- (BOOL)hasAudioMediaPresentationSelectionOptions;
- (BOOL)hasAudioMediaSelectionOptions;
- (BOOL)hasContent;
- (BOOL)hasContentChapters;
- (BOOL)hasEnabledAudio;
- (BOOL)hasEnabledVideo;
- (BOOL)hasEnhancedDialogueEligibleAudio;
- (BOOL)hasLegibleMediaSelectionOptions;
- (BOOL)hasLiveStreamingContent;
- (BOOL)hasMediaSelectionOptions;
- (BOOL)hasReadableTimecodes;
- (BOOL)hasSeekableLiveStreamingContent;
- (BOOL)hasShareableContent;
- (BOOL)hasTimecodes;
- (BOOL)hasTrimmableContent;
- (BOOL)hasVideo;
- (BOOL)isCompletelySeekable;
- (BOOL)isCurrentItemReadyForInspection;
- (BOOL)isDisplayingNonForcedOnlyLegibleOption;
- (BOOL)isExternalPlaybackActive;
- (BOOL)isMediaPresentationSettingsEnabled;
- (BOOL)isPictureInPicturePossible;
- (BOOL)isPlayableOffline;
- (BOOL)isPlayingOnExternalScreen;
- (BOOL)isReducingResourcesForPictureInPicture;
- (BOOL)isStreaming;
- (BOOL)mediaPresentationOptionsOnlyAvailableOffline;
- (BOOL)mediaPresentationSettingsDisplayStyleEnabled;
- (BOOL)setLegibleMediaOptionVisibility:(BOOL)visibility prefersLastKnownCaptionType:(BOOL)type prefersSystemLanguage:(BOOL)language;
- (BOOL)shouldShowPresentationSettingsAudioTracks;
- (BOOL)startGeneratingTimecodesUsingBlock:(id)block;
- (BOOL)subtitlesActive;
- (BOOL)usesExternalPlaybackWhileExternalScreenIsActive;
- (CGAffineTransform)preferredTransform;
- (CGSize)contentDimensions;
- (CGSize)maximumVideoResolution;
- (CGSize)presentationSize;
- (NSDate)currentDate;
- (NSDate)currentOrEstimatedDate;
- (NSError)error;
- (OpaqueCMTimebase)_activeTimebaseForUI;
- (double)_adjustedSeekTimeFromTime:(double)time toTime:(double)toTime;
- (double)_anchorTimeWithTime:(double)result;
- (double)activeRate;
- (double)contentDuration;
- (double)contentDurationWithinEndTimes;
- (double)currentTime;
- (double)currentTimeWithinEndTimes;
- (double)defaultPlaybackRate;
- (double)maxTime;
- (double)minTime;
- (double)rate;
- (double)timecodeObservationInterval;
- (double)volume;
- (float)nominalFrameRate;
- (id)_applyOfflineFilterForMediaPresentationSettingsIfNecessary:(void *)necessary selector:;
- (id)_availableBCP47Languages;
- (id)_createMetadataDictionaryForCurrentAsset;
- (id)_effectiveMediaSettingsForGroup;
- (id)_languageCodesFromLanguageIdentifiers:(id)identifiers;
- (id)_legibleOptionsForPlayerItem:(id)item asset:(id)asset displayNameCache:(id)cache;
- (id)_optionsForGroup:(id)group;
- (id)_outputContext;
- (id)_photosensitiveDisplayTimes;
- (id)_playableLegibleMediaSelectionOptions;
- (id)_playableLegibleMediaSelectionOptionsForAsset:(id)asset;
- (id)_preferredLanguageCodes;
- (id)_preferredLanguageCodesForPlayer:(id)player;
- (id)_queuePlayer;
- (id)_selectAudioLanguageIfNecessary;
- (id)_selectedMediaOptionWithMediaCharacteristic:(id)characteristic;
- (id)_selectedMediaOptionWithMediaCharacteristic:(id)characteristic playerItem:(id)item asset:(id)asset;
- (id)_timecodeTrack;
- (id)activeAssetIfReady;
- (id)audioOptions;
- (id)audioOptionsForAsset:(id)asset;
- (id)availableCustomMediaSelectionLanguages;
- (id)complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)selector;
- (id)complementarySettingsForSelector:(id)selector;
- (id)currentAssetForAudioAndLegibleOptions;
- (id)currentAudioMediaSelectionOption;
- (id)currentLegibleMediaSelectionOption;
- (id)currentMediaSelectionForActivePlayer;
- (id)effectiveSettingForSelector:(id)selector;
- (id)hapticTracksForCurrentItem;
- (id)legibleOptionsWithCache:(id)cache;
- (id)loadTimecodeControllerIfNeeded;
- (id)loadedTimeRanges;
- (id)maxFrameCountString;
- (id)maxTimecode;
- (id)mediaPresentationSelectors;
- (id)mediaSelectionGroupForMediaCharacteristic:(id)characteristic;
- (id)playerItemForAudioAndLegibleOptions;
- (id)preferredDisplayCriteria;
- (id)scanningDelays;
- (id)seekableTimeRanges;
- (id)selectedPresentationSettingForSelector:(id)selector;
- (id)timecodeForCurrentTime;
- (id)visualOptions;
- (int64_t)externalPlaybackType;
- (int64_t)frameNumberForCurrentTime;
- (int64_t)status;
- (int64_t)timeControlStatus;
- (uint64_t)_mainPlayerIsWaitingForInterstitialPlayback;
- (unint64_t)indexOfEffectivePresentationSettingForSelector:(id)selector;
- (unint64_t)selectedMediaPresentationLanguageIndex;
- (void)_beginPlaybackSuspension_AVFoundationStrategy;
- (void)_cancelOutstandingAtLiveEdgeStateUpdates;
- (void)_cancelPendingSeeksIfNeeded;
- (void)_commonInit;
- (void)_disableLegibleMediaSelectionOptions:(id)options;
- (void)_enableAutoMediaSelection:(id)selection;
- (void)_endPlaybackSuspension_AVFoundationStrategy;
- (void)_ensureOnMainThreadAndObserveValueForKeyPath:(id)path oldValue:(id)value newValue:(id)newValue;
- (void)_ensureUserCaptionDisplayType:(int64_t)type;
- (void)_handleMemoryWarning:(id)warning;
- (void)_observeValueForKeyPath:(id)path oldValue:(id)value newValue:(id)newValue;
- (void)_performAutomaticMediaSelectionForUserCaptionDisplayType:(int64_t)type;
- (void)_playAtRate:(double)rate;
- (void)_prepareAssetForInspection:(id)inspection assetKeys:(id)keys videoTrackKeys:(id)trackKeys completion:(id)completion;
- (void)_prepareAssetForInspectionIfNeeded;
- (void)_prepareInterstitialAssetForInspectionIfNeeded;
- (void)_retryPlayImmediatelyIfNeeded;
- (void)_scheduleAtLiveEdgeStateUpdateIfNeeded;
- (void)_scheduleAtLiveEdgeStateUpdateWithTimeInterval:(double)interval;
- (void)_setMediaOption:(id)option mediaCharacteristic:(id)characteristic;
- (void)_setMinTiming:(id)timing maxTiming:(id)maxTiming;
- (void)_setMostRecentChosenOption:(id)option;
- (void)_setNeedsAtLiveEdgeStateUpdate;
- (void)_setPlaybackSuspended:(BOOL)suspended;
- (void)_setRate_AVFoundationStrategy:(double)strategy;
- (void)_setSuspendedRate:(double)rate;
- (void)_setupInterstitialController;
- (void)_startSuspendingPlayback;
- (void)_stopSuspendingPlayback;
- (void)_throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext:(id)context;
- (void)_updateActivePlayer;
- (void)_updateAtLiveEdgeStateAndScheduleTimerIfNeeded;
- (void)_updateAtLiveEdgeStateIfNeeded;
- (void)_updateCoordinatedPlaybackActive;
- (void)_updateCurrentAudioTrackIfNeeded;
- (void)_updateCurrentVideoTrackIfNeeded;
- (void)_updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded;
- (void)_updateIsPlayingHDRContentIfNeeded;
- (void)_updateMetadata;
- (void)_updateMinMaxTimingIfNeeded;
- (void)_updatePhotosensitivityRegions;
- (void)_updatePlayerMutedState;
- (void)_updatePlayingOnMatchPointDeviceIfNeeded;
- (void)_updateRateForScrubbingAndSeeking;
- (void)_updateScanningBackwardRate;
- (void)_updateScanningForwardRate;
- (void)acquireResourceReductionAssertion;
- (void)actuallySeekToTime;
- (void)autoplay:(id)autoplay;
- (void)beginPlaybackSuspension;
- (void)beginReducingResourcesForPictureInPicturePlayerLayer:(id)layer;
- (void)beginScanningBackward:(id)backward;
- (void)beginScanningForward:(id)forward;
- (void)beginScrubbing;
- (void)beginScrubbing:(id)scrubbing;
- (void)currentEnabledAssetTrackForMediaType:(id)type completionHandler:(id)handler;
- (void)dealloc;
- (void)decreaseVolume:(id)volume;
- (void)endPlaybackSuspension;
- (void)endReducingResourcesForPictureInPicturePlayerLayer:(id)layer;
- (void)endScanningBackward:(id)backward;
- (void)endScanningForward:(id)forward;
- (void)endScrubbing;
- (void)endScrubbing:(id)scrubbing;
- (void)gotoEndOfSeekableRanges:(id)ranges;
- (void)increaseVolume:(id)volume;
- (void)pauseForAllCoordinatedPlaybackParticipants:(BOOL)participants;
- (void)play:(id)play;
- (void)reloadAudioOptions;
- (void)reloadCurrentMediaSelectionsAsynchronously;
- (void)reloadLegibleOptions;
- (void)reloadOptionsAssumingMediaOptionsMayHaveChanged:(BOOL)changed;
- (void)reloadVisualOptions;
- (void)resumePlaybackCoordinatorIfSuspended;
- (void)scanBackward:(id)backward;
- (void)scanForward:(id)forward;
- (void)seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)seekChapterBackward:(id)backward;
- (void)seekChapterForward:(id)forward;
- (void)seekFrameBackward:(id)backward;
- (void)seekFrameForward:(id)forward;
- (void)seekOrStepByFrameCount:(int64_t)count;
- (void)seekToCMTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)seekToChapter:(id)chapter;
- (void)seekToFrame:(int64_t)frame;
- (void)seekToTime:(double)time toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)seekToTimecode:(id)timecode;
- (void)selectAudibleMediaPresentationLanguage:(id)language;
- (void)selectPresentationSetting:(id)setting;
- (void)selectedMediaOptionMayHaveChanged:(BOOL)changed;
- (void)setActivePlayer:(id)player;
- (void)setAllowsAudioPlayback:(BOOL)playback;
- (void)setAllowsExternalPlayback:(BOOL)playback;
- (void)setAtLiveEdge:(BOOL)edge;
- (void)setAudioMediaSelectionOptions:(id)options;
- (void)setCanUseNetworkResourcesForLiveStreamingWhilePaused:(BOOL)paused;
- (void)setCoordinatedPlaybackActive:(BOOL)active;
- (void)setCurrentAssetMediaOption:(id)option;
- (void)setCurrentAudioMediaSelectionOption:(id)option;
- (void)setCurrentLegibleMediaSelectionOption:(id)option;
- (void)setCurrentMediaSelectionForInterstitialPlayer:(id)player;
- (void)setCurrentMediaSelectionForPrimaryPlayer:(id)player;
- (void)setDefaultPlaybackRate:(double)rate;
- (void)setForwardPlaybackEndTime:(id *)time;
- (void)setHandlesAudioSessionInterruptions:(BOOL)interruptions;
- (void)setHapticsIsOn:(BOOL)on;
- (void)setHapticsOn:(BOOL)on trackStates:(id)states;
- (void)setInspectionSuspended:(BOOL)suspended;
- (void)setLegibleMediaSelectionOptions:(id)options;
- (void)setLegibleMediaSelectionOptions:(id)options audioMediaSelectionOptions:(id)selectionOptions assumeMediaOptionMayHaveChanged:(BOOL)changed;
- (void)setLooping:(BOOL)looping;
- (void)setMaxTime:(double)time;
- (void)setMediaOptionCriteriaAlwaysOn:(BOOL)on;
- (void)setMinTime:(double)time;
- (void)setMuted:(BOOL)muted;
- (void)setPictureInPictureInterrupted:(BOOL)interrupted;
- (void)setPlaying:(BOOL)playing;
- (void)setPlayingOnSecondScreen:(BOOL)screen;
- (void)setRate:(double)rate;
- (void)setRateWithForce:(double)force;
- (void)setReduceResourceUsageAssertion:(id)assertion;
- (void)setReversePlaybackEndTime:(id *)time;
- (void)setTouchBarRequiresLinearPlayback:(BOOL)playback;
- (void)setVisualMediaSelectionOptions:(id)options;
- (void)setVolume:(double)volume;
- (void)skipBackwardThirtySeconds:(id)seconds;
- (void)startInspectionIfNeeded;
- (void)startKVO;
- (void)startMediaSelectionInspection;
- (void)startUsingNetworkResourcesForLiveStreamingWhilePaused;
- (void)stopGeneratingTimecodes;
- (void)stopUsingNetworkResourcesForLiveStreamingWhilePaused;
- (void)suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary;
- (void)throttledSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)toggleMuted:(id)muted;
- (void)togglePlayback:(id)playback;
- (void)togglePlaybackEvenWhenInBackground:(id)background;
- (void)updateAtMinMaxTime;
- (void)updateMinMaxTiming;
- (void)updateTiming;
@end

@implementation AVPlayerController

- (id)_playableLegibleMediaSelectionOptions
{
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v4 = [(AVPlayerController *)self _playableLegibleMediaSelectionOptionsForAsset:currentAssetForAudioAndLegibleOptions];

  return v4;
}

- (id)_playableLegibleMediaSelectionOptionsForAsset:(id)asset
{
  assetCopy = asset;
  v4 = [assetCopy avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987578]];
  if (v4)
  {
    v5 = MEMORY[0x1E6987FD0];
    v6 = [AVPlayerController _optionsForGroup:v4 asset:assetCopy];
    v7 = [v5 playableMediaSelectionOptionsFromArray:v6];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_languageCodesFromLanguageIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x1E695DF58]);
        v12 = [v11 initWithLocaleIdentifier:{v10, v15}];
        languageCode = [v12 languageCode];

        if (languageCode && ([v4 containsObject:languageCode] & 1) == 0)
        {
          [v4 addObject:languageCode];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_preferredLanguageCodes
{
  timeline = [(AVPlayerController *)self timeline];

  if (timeline)
  {
    [(AVPlayerController *)self activePlayer];
  }

  else
  {
    [(AVPlayerController *)self player];
  }
  v4 = ;
  v5 = [(AVPlayerController *)self _preferredLanguageCodesForPlayer:v4];

  return v5;
}

- (id)_preferredLanguageCodesForPlayer:(id)player
{
  v4 = MEMORY[0x1E695DF70];
  playerCopy = player;
  v6 = objc_alloc_init(v4);
  legibleFallbackMediaSelectionCriteria = [playerCopy legibleFallbackMediaSelectionCriteria];

  preferredLanguages = [legibleFallbackMediaSelectionCriteria preferredLanguages];

  preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
  if (preferredLanguages)
  {
    [v6 addObjectsFromArray:preferredLanguages];
  }

  if (preferredLanguages2)
  {
    [v6 addObjectsFromArray:preferredLanguages2];
  }

  v10 = [(AVPlayerController *)self _languageCodesFromLanguageIdentifiers:v6];

  return v10;
}

- (BOOL)_willAutomaticallySelectLegibleFallbackForLanguageMismatch
{
  v26 = *MEMORY[0x1E69E9840];
  player = [(AVPlayerController *)self player];
  allowsLegibleFallbackForAllAudibleMediaSelections = [player allowsLegibleFallbackForAllAudibleMediaSelections];

  if (allowsLegibleFallbackForAllAudibleMediaSelections)
  {
    currentAudioMediaSelectionOption = [(AVPlayerController *)self currentAudioMediaSelectionOption];
    legibleMediaSelectionOptions = [(AVPlayerController *)self legibleMediaSelectionOptions];
    v7 = legibleMediaSelectionOptions;
    if (currentAudioMediaSelectionOption && [legibleMediaSelectionOptions count])
    {
      _preferredLanguageCodes = [(AVPlayerController *)self _preferredLanguageCodes];
      locale = [currentAudioMediaSelectionOption locale];
      languageCode = [locale languageCode];
      v11 = [_preferredLanguageCodes containsObject:languageCode];

      if (v11)
      {
        LOBYTE(v12) = 0;
      }

      else
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v13 = v7;
        v12 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          v20 = locale;
          v14 = *v22;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(v13);
              }

              locale2 = [*(*(&v21 + 1) + 8 * i) locale];
              languageCode2 = [locale2 languageCode];
              v18 = [_preferredLanguageCodes containsObject:languageCode2];

              if (v18)
              {
                LOBYTE(v12) = 1;
                goto LABEL_18;
              }
            }

            v12 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

LABEL_18:
          locale = v20;
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_setMostRecentChosenOption:(id)option
{
  optionCopy = option;
  extendedLanguageTag = [optionCopy extendedLanguageTag];
  if (([optionCopy hasMediaCharacteristic:*MEMORY[0x1E6987560]] & 1) != 0 || objc_msgSend(optionCopy, "avkit_preferredSortIndex") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = extendedLanguageTag;
    extendedLanguageTag = 0;
    goto LABEL_7;
  }

  if (!extendedLanguageTag)
  {
    goto LABEL_8;
  }

  if ([optionCopy hasMediaCharacteristic:*MEMORY[0x1E6987578]])
  {
    v4 = +[AVKitGlobalSettings shared];
    [v4 setMostRecentLegibleLanguageCode:extendedLanguageTag];
LABEL_7:

    goto LABEL_8;
  }

  if ([optionCopy hasMediaCharacteristic:*MEMORY[0x1E69874F8]])
  {
    v4 = +[AVKitGlobalSettings shared];
    [v4 setMostRecentAudioLanguageCode:extendedLanguageTag];
    goto LABEL_7;
  }

LABEL_8:
}

- (BOOL)_mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup
{
  selfCopy = self;
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)selfCopy currentAssetForAudioAndLegibleOptions];
  LOBYTE(selfCopy) = [(AVPlayerController *)selfCopy _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroupForPlayerItem:playerItemForAudioAndLegibleOptions asset:currentAssetForAudioAndLegibleOptions];

  return selfCopy;
}

- (BOOL)_mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroupForPlayerItem:(id)item asset:(id)asset
{
  v5 = [asset avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987578]];
  if (v5)
  {
    currentMediaSelectionForActivePlayer = [(AVPlayerController *)self currentMediaSelectionForActivePlayer];
    v7 = [currentMediaSelectionForActivePlayer mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_selectedMediaOptionWithMediaCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v7 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:characteristicCopy playerItem:playerItemForAudioAndLegibleOptions asset:currentAssetForAudioAndLegibleOptions];

  return v7;
}

- (id)_selectedMediaOptionWithMediaCharacteristic:(id)characteristic playerItem:(id)item asset:(id)asset
{
  v6 = [asset avkit_mediaSelectionGroupForMediaCharacteristic:{characteristic, item}];
  if (v6)
  {
    currentMediaSelectionForActivePlayer = [(AVPlayerController *)self currentMediaSelectionForActivePlayer];
    v8 = [currentMediaSelectionForActivePlayer selectedMediaOptionInMediaSelectionGroup:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_setMediaOption:(id)option mediaCharacteristic:(id)characteristic
{
  v27 = *MEMORY[0x1E69E9840];
  optionCopy = option;
  characteristicCopy = characteristic;
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "[AVPlayerController(AVMediaSelection) _setMediaOption:mediaCharacteristic:]";
    v23 = 2114;
    v24 = optionCopy;
    v25 = 2114;
    v26 = characteristicCopy;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s mediaOption: %{public}@ mediaCharacteristic: %{public}@", &v21, 0x20u);
  }

  if (optionCopy && [characteristicCopy isEqualToString:*MEMORY[0x1E6987578]] && (objc_msgSend(optionCopy, "hasMediaCharacteristic:", *MEMORY[0x1E6987518]) & 1) == 0)
  {
    extendedLanguageTag = [optionCopy extendedLanguageTag];
    v10 = extendedLanguageTag;
    if (extendedLanguageTag)
    {
      v11 = extendedLanguageTag;
    }

    else
    {
      v11 = @"und";
    }

    objc_storeStrong(&self->_lastKnownPersistedExtendedLanguageTag, v11);

    MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, self->_lastKnownPersistedExtendedLanguageTag);
    [(AVPlayerController *)self _ensureUserCaptionDisplayType:2];
  }

  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v14 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:characteristicCopy];
  if (v14)
  {
    currentMediaSelectionForActivePlayer = [(AVPlayerController *)self currentMediaSelectionForActivePlayer];
    v16 = [currentMediaSelectionForActivePlayer selectedMediaOptionInMediaSelectionGroup:v14];
    propertyList = [optionCopy propertyList];
    propertyList2 = [v16 propertyList];
    v19 = [propertyList isEqual:propertyList2];

    if (v19)
    {
      v20 = _AVLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[AVPlayerController(AVMediaSelection) _setMediaOption:mediaCharacteristic:]";
        _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s Skipped setting identical option.", &v21, 0xCu);
      }
    }

    else
    {
      [playerItemForAudioAndLegibleOptions selectMediaOption:optionCopy inMediaSelectionGroup:v14];
    }
  }
}

- (void)setMediaOptionCriteriaAlwaysOn:(BOOL)on
{
  onCopy = on;
  v41 = *MEMORY[0x1E69E9840];
  avkit_subtitleAutomaticallyEnabledState = [MEMORY[0x1E6987FD8] avkit_subtitleAutomaticallyEnabledState];
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];

  if (currentAssetIfReady)
  {
    player = [(AVPlayerController *)self player];
    appliesMediaSelectionCriteriaAutomatically = [player appliesMediaSelectionCriteriaAutomatically];

    v9 = onCopy & appliesMediaSelectionCriteriaAutomatically;
    captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
    isDisplayingNonForcedOnlyLegibleOption = [(AVPlayerController *)self isDisplayingNonForcedOnlyLegibleOption];
    _willAutomaticallySelectLegibleFallbackForLanguageMismatch = [(AVPlayerController *)self _willAutomaticallySelectLegibleFallbackForLanguageMismatch];
    v13 = _AVLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "NO";
      *v32 = 136317186;
      *&v32[4] = "[AVPlayerController(AVMediaSelection) setMediaOptionCriteriaAlwaysOn:]";
      if (v9)
      {
        v15 = "YES";
      }

      else
      {
        v15 = "NO";
      }

      *&v32[12] = 2082;
      *&v32[14] = v15;
      if (appliesMediaSelectionCriteriaAutomatically)
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      *&v32[22] = 2082;
      v33 = v16;
      if (captionAppearanceDisplayType == 1)
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      *v34 = 2048;
      if (captionAppearanceDisplayType)
      {
        v18 = "NO";
      }

      else
      {
        v18 = "YES";
      }

      *&v34[2] = avkit_subtitleAutomaticallyEnabledState;
      if (_willAutomaticallySelectLegibleFallbackForLanguageMismatch)
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      *&v34[10] = 2082;
      if (captionAppearanceDisplayType == 2)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      *&v34[12] = v17;
      if (isDisplayingNonForcedOnlyLegibleOption)
      {
        v14 = "YES";
      }

      *&v34[20] = 2082;
      *&v34[22] = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 2082;
      v38 = v20;
      v39 = 2082;
      v40 = v14;
      _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s \nmediaOption:\nenableSubtitles: %{public}s\nplayerAppliesMediaSelectionCriteriaAutomatically: %{public}s\nautoSubtitlesActive: %lu\nisDisplayTypeAutomatic: %{public}s\nisDisplayTypeForcedOnly: %{public}s \nLanguageMismatch: %{public}s\nalwaysOn: %{public}s\nisDisplayingNonForcedOnlyLegibleOption: %{public}s", v32, 0x5Cu);
    }

    if (!isDisplayingNonForcedOnlyLegibleOption && (v9 & 1) != 0)
    {
      autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];
      v26 = [AVPlayerController canonicalLanguageIdentifierFromString:localeIdentifier];

      v27 = MACaptionAppearanceCopySelectedLanguages(kMACaptionAppearanceDomainUser);
      v28 = _AVLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136315650;
        *&v32[4] = "[AVPlayerController(AVMediaSelection) setMediaOptionCriteriaAlwaysOn:]";
        *&v32[12] = 2114;
        *&v32[14] = v26;
        *&v32[22] = 2112;
        v33 = v27;
        _os_log_impl(&dword_18B49C000, v28, OS_LOG_TYPE_DEFAULT, "%s mediaOption: enableSubtitles: Setting preferred caption language to %{public}@, %@", v32, 0x20u);
      }

      CFRelease(v27);
      MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, v26);
      [(AVPlayerController *)self _performAutomaticMediaSelectionForUserCaptionDisplayType:2];
      if (captionAppearanceDisplayType)
      {
        v29 = avkit_subtitleAutomaticallyEnabledState;
      }

      else
      {
        v29 = 2;
      }

      if (captionAppearanceDisplayType == 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      goto LABEL_51;
    }

    if (!onCopy && avkit_subtitleAutomaticallyEnabledState == 1)
    {
      if (captionAppearanceDisplayType != 1 || !_willAutomaticallySelectLegibleFallbackForLanguageMismatch)
      {
        [(AVPlayerController *)self _enableAutoMediaSelection:self];
      }

LABEL_50:
      v23 = 0;
LABEL_51:
      if (v23 == avkit_subtitleAutomaticallyEnabledState)
      {
        return;
      }

      v30 = _AVLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 136315394;
        *&v32[4] = "[AVPlayerController(AVMediaSelection) setMediaOptionCriteriaAlwaysOn:]";
        *&v32[12] = 1024;
        *&v32[14] = v23;
        _os_log_impl(&dword_18B49C000, v30, OS_LOG_TYPE_DEFAULT, "%s mediaOption: set subtitle state: %d", v32, 0x12u);
      }

      goto LABEL_55;
    }

    if (!onCopy && avkit_subtitleAutomaticallyEnabledState == 2)
    {
      if (isDisplayingNonForcedOnlyLegibleOption || !_willAutomaticallySelectLegibleFallbackForLanguageMismatch)
      {
        [(AVPlayerController *)self _ensureUserCaptionDisplayType:0];
      }

      goto LABEL_50;
    }
  }

  else if (!onCopy && avkit_subtitleAutomaticallyEnabledState)
  {
    v22 = _AVLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 136315138;
      *&v32[4] = "[AVPlayerController(AVMediaSelection) setMediaOptionCriteriaAlwaysOn:]";
      _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s mediaOption: init subtitle state, current asset not ready", v32, 0xCu);
    }

    [(AVPlayerController *)self _enableAutoMediaSelection:self];
    v23 = 0;
LABEL_55:
    v31 = [AVKitGlobalSettings shared:*v32];
    [v31 setSubtitleAutomaticallyEnabledState:v23];
  }
}

- (void)setCurrentAssetMediaOption:(id)option
{
  optionCopy = option;
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987578]];
  [playerItemForAudioAndLegibleOptions selectMediaOption:optionCopy inMediaSelectionGroup:v6];
}

- (BOOL)subtitlesActive
{
  v21 = *MEMORY[0x1E69E9840];
  player = [(AVPlayerController *)self player];
  appliesMediaSelectionCriteriaAutomatically = [player appliesMediaSelectionCriteriaAutomatically];

  captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
  captionAppearanceDisplayType2 = [(AVPlayerController *)self captionAppearanceDisplayType];
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "NO";
    if (appliesMediaSelectionCriteriaAutomatically)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v13 = 136315906;
    v14 = "[AVPlayerController(AVMediaSelection) subtitlesActive]";
    if (captionAppearanceDisplayType == 1)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    v16 = v9;
    v15 = 2082;
    v17 = 2082;
    v18 = v10;
    if (!captionAppearanceDisplayType2)
    {
      v8 = "YES";
    }

    v19 = 2082;
    v20 = v8;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s mediaOption: playerAppliesMediaSelectionCriteriaAutomatically:%{public}s isDisplayTypeAutomatic:%{public}s isDisplayTypeForcedOnly:%{public}s", &v13, 0x2Au);
  }

  return captionAppearanceDisplayType != 1 && captionAppearanceDisplayType2 != 0;
}

- (BOOL)setLegibleMediaOptionVisibility:(BOOL)visibility prefersLastKnownCaptionType:(BOOL)type prefersSystemLanguage:(BOOL)language
{
  languageCopy = language;
  typeCopy = type;
  visibilityCopy = visibility;
  v88 = *MEMORY[0x1E69E9840];
  player = [(AVPlayerController *)self player];
  appliesMediaSelectionCriteriaAutomatically = [player appliesMediaSelectionCriteriaAutomatically];

  if (!appliesMediaSelectionCriteriaAutomatically)
  {
    v24 = *MEMORY[0x1E6987578];
    v25 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E6987578]];
    v26 = v25;
    if (v25)
    {
      v27 = *MEMORY[0x1E6987518];
      if ([v25 hasMediaCharacteristic:*MEMORY[0x1E6987518]] == visibilityCopy)
      {
        v28 = MEMORY[0x1E6987FD0];
        if ((visibilityCopy & 1) == 0)
        {
          _playableLegibleMediaSelectionOptions = [(AVPlayerController *)self _playableLegibleMediaSelectionOptions];
          v70 = v27;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
          v31 = [v28 mediaSelectionOptionsFromArray:_playableLegibleMediaSelectionOptions withMediaCharacteristics:v30];
          goto LABEL_42;
        }

LABEL_41:
        _playableLegibleMediaSelectionOptions = [(AVPlayerController *)self legibleMediaSelectionOptions];
        v71 = v27;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
        v31 = [v28 mediaSelectionOptionsFromArray:_playableLegibleMediaSelectionOptions withoutMediaCharacteristics:v30];
LABEL_42:
        v35 = v31;

        v36 = self->_lastKnownPersistedExtendedLanguageTag;
        if (v36)
        {
          extendedLanguageTag = v36;
        }

        else
        {
          locale = [v26 locale];
          languageCode = [locale languageCode];

          if (!languageCode || (-[AVPlayerController _preferredLanguageCodes](self, "_preferredLanguageCodes"), v54 = objc_claimAutoreleasedReturnValue(), v55 = [v54 containsObject:languageCode], v54, !v55))
          {
            extendedLanguageTag = 0;
LABEL_69:

            goto LABEL_70;
          }

          extendedLanguageTag = [v26 extendedLanguageTag];

          if (!extendedLanguageTag)
          {
LABEL_70:
            v56 = MEMORY[0x1E6987FD0];
            autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
            v58 = [v56 mediaSelectionOptionsFromArray:v35 withLocale:autoupdatingCurrentLocale];
            firstObject = [v58 firstObject];

            if (firstObject || (visibilityCopy & 1) == 0)
            {
LABEL_73:
              v59 = _AVLog();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
                v74 = 2114;
                v75 = firstObject;
                _os_log_impl(&dword_18B49C000, v59, OS_LOG_TYPE_DEFAULT, "%s Setting legible selection option: %{public}@", buf, 0x16u);
              }

              [(AVPlayerController *)self _setMediaOption:firstObject mediaCharacteristic:v24];
              if ((visibilityCopy & 1) == 0)
              {
                [(AVPlayerController *)self _disableLegibleMediaSelectionOptions:0];
              }

              v23 = 1;
            }

            else
            {
              firstObject = 0;
              v23 = 0;
            }

            goto LABEL_79;
          }
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        languageCode = v35;
        v39 = [languageCode countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v39)
        {
          v40 = v39;
          v62 = v35;
          v63 = v24;
          v64 = v26;
          v41 = *v66;
LABEL_46:
          v42 = 0;
          while (1)
          {
            if (*v66 != v41)
            {
              objc_enumerationMutation(languageCode);
            }

            v43 = *(*(&v65 + 1) + 8 * v42);
            extendedLanguageTag2 = [v43 extendedLanguageTag];
            v45 = [extendedLanguageTag2 isEqualToString:extendedLanguageTag];

            if (v45)
            {
              break;
            }

            if (v40 == ++v42)
            {
              v40 = [languageCode countByEnumeratingWithState:&v65 objects:v69 count:16];
              if (v40)
              {
                goto LABEL_46;
              }

              v24 = v63;
              v26 = v64;
              v35 = v62;
              goto LABEL_69;
            }
          }

          firstObject = v43;

          v24 = v63;
          v26 = v64;
          v35 = v62;
          if (firstObject)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        }

        goto LABEL_69;
      }
    }

    else if (visibilityCopy)
    {
      v28 = MEMORY[0x1E6987FD0];
      v27 = *MEMORY[0x1E6987518];
      goto LABEL_41;
    }

    v23 = 0;
LABEL_79:

    return v23;
  }

  captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
  v12 = LastKnownCaptionAppearanceDisplayType;
  isDisplayingNonForcedOnlyLegibleOption = [(AVPlayerController *)self isDisplayingNonForcedOnlyLegibleOption];
  _willAutomaticallySelectLegibleFallbackForLanguageMismatch = [(AVPlayerController *)self _willAutomaticallySelectLegibleFallbackForLanguageMismatch];
  v15 = _AVLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = "NO";
    *buf = 136316930;
    v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
    if (visibilityCopy)
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    v74 = 2082;
    v75 = v17;
    if (captionAppearanceDisplayType)
    {
      v18 = "NO";
    }

    else
    {
      v18 = "YES";
    }

    v76 = 2082;
    v77 = "YES";
    if (captionAppearanceDisplayType == 1)
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    v78 = 2082;
    if (captionAppearanceDisplayType == 2)
    {
      v20 = "YES";
    }

    else
    {
      v20 = "NO";
    }

    v79 = v18;
    if (isDisplayingNonForcedOnlyLegibleOption)
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    v80 = 2082;
    if (_willAutomaticallySelectLegibleFallbackForLanguageMismatch)
    {
      v16 = "YES";
    }

    v81 = v19;
    v82 = 2082;
    v83 = v20;
    v84 = 2082;
    v85 = v21;
    v86 = 2082;
    v87 = v16;
    _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s Calculating caption appearance type to set, given: visible: %{public}s, playerAppliesMediaSelectionCriteriaAutomatically:%{public}s captionAppearanceDisplayType forcedOnly: %{public}s, automatic: %{public}s, alwaysOn: %{public}s, isDisplayingNonForcedOnlyLegibleOption: %{public}s, willAutomaticallySelectLegibleFallbackForLanguageMismatch: %{public}s", buf, 0x52u);
  }

  if (!isDisplayingNonForcedOnlyLegibleOption && (visibilityCopy & 1) != 0 && captionAppearanceDisplayType != 2)
  {
    if (v12 == 1 && _willAutomaticallySelectLegibleFallbackForLanguageMismatch && captionAppearanceDisplayType != 1 && !languageCopy)
    {
      v22 = _AVLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
        _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s Setting caption appearance type to automatic", buf, 0xCu);
      }

LABEL_28:

      v23 = 1;
      [(AVPlayerController *)self _performAutomaticMediaSelectionForUserCaptionDisplayType:1];
      return v23;
    }

    LastKnownCaptionAppearanceDisplayType = captionAppearanceDisplayType;
    if (languageCopy)
    {
      autoupdatingCurrentLocale2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      localeIdentifier = [autoupdatingCurrentLocale2 localeIdentifier];
      v48 = [AVPlayerController canonicalLanguageIdentifierFromString:localeIdentifier];

      v49 = MACaptionAppearanceCopySelectedLanguages(kMACaptionAppearanceDomainUser);
      v50 = _AVLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
        v74 = 2114;
        v75 = v48;
        v76 = 2112;
        v77 = v49;
        _os_log_impl(&dword_18B49C000, v50, OS_LOG_TYPE_DEFAULT, "%s Setting preferred caption language to %{public}@, %@", buf, 0x20u);
      }

      CFRelease(v49);
      MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, v48);
    }

    v51 = _AVLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
      _os_log_impl(&dword_18B49C000, v51, OS_LOG_TYPE_DEFAULT, "%s Setting caption appearance type to always on", buf, 0xCu);
    }

    selfCopy3 = self;
    v34 = 2;
    goto LABEL_61;
  }

  v23 = 0;
  if ((visibilityCopy & 1) == 0 && captionAppearanceDisplayType)
  {
    if (typeCopy)
    {
      v32 = _AVLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
        _os_log_impl(&dword_18B49C000, v32, OS_LOG_TYPE_DEFAULT, "%s Setting caption appearance type back to last known type", buf, 0xCu);
      }

      selfCopy3 = self;
      v34 = v12;
    }

    else
    {
      if (v12 == 1 && !_willAutomaticallySelectLegibleFallbackForLanguageMismatch && captionAppearanceDisplayType != 1)
      {
        v22 = _AVLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
          _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s Setting caption appearance type to automatic", buf, 0xCu);
        }

        goto LABEL_28;
      }

      LastKnownCaptionAppearanceDisplayType = captionAppearanceDisplayType;
      v61 = _AVLog();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v73 = "[AVPlayerController(AVMediaSelection) setLegibleMediaOptionVisibility:prefersLastKnownCaptionType:prefersSystemLanguage:]";
        _os_log_impl(&dword_18B49C000, v61, OS_LOG_TYPE_DEFAULT, "%s Setting caption appearance type to forced only", buf, 0xCu);
      }

      selfCopy3 = self;
      v34 = 0;
    }

LABEL_61:
    [(AVPlayerController *)selfCopy3 _performAutomaticMediaSelectionForUserCaptionDisplayType:v34];
    return 1;
  }

  return v23;
}

- (void)_enableAutoMediaSelection:(id)selection
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPlayerController(AVMediaSelection) _enableAutoMediaSelection:]";
    v9 = 1024;
    v10 = 1173;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  v5 = MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(kMACaptionAppearanceDomainUser);
  if ([v5 containsObject:*MEMORY[0x1E6987588]] & 1) != 0 || (objc_msgSend(v5, "containsObject:", *MEMORY[0x1E6987528]))
  {
    v6 = 2;
  }

  else if ([v5 containsObject:*MEMORY[0x1E6987530]])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(AVPlayerController *)self _performAutomaticMediaSelectionForUserCaptionDisplayType:v6];
}

- (void)_disableLegibleMediaSelectionOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AVPlayerController(AVMediaSelection) _disableLegibleMediaSelectionOptions:]";
    v7 = 1024;
    v8 = 1166;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v5, 0x12u);
  }

  [(AVPlayerController *)self _performAutomaticMediaSelectionForUserCaptionDisplayType:0];
}

- (void)_performAutomaticMediaSelectionForUserCaptionDisplayType:(int64_t)type
{
  [(AVPlayerController *)self _ensureUserCaptionDisplayType:type];
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v5 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987578]];

  [playerItemForAudioAndLegibleOptions selectMediaOptionAutomaticallyInMediaSelectionGroup:v5];
}

- (void)_ensureUserCaptionDisplayType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self captionAppearanceDisplayType]!= type)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "[AVPlayerController(AVMediaSelection) _ensureUserCaptionDisplayType:]";
      v8 = 2048;
      captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
      v10 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s Changing MACaptionAppearanceDisplayType: %ld -> %ld", &v6, 0x20u);
    }

    MACaptionAppearanceSetDisplayType(kMACaptionAppearanceDomainUser, type);
  }
}

- (id)currentMediaSelectionForActivePlayer
{
  activePlayer = [(AVPlayerController *)self activePlayer];
  interstitialController = [(AVPlayerController *)self interstitialController];
  interstitialPlayer = [interstitialController interstitialPlayer];

  player = [(AVPlayerController *)self player];

  if (activePlayer == player)
  {
    currentMediaSelectionForPrimaryPlayer = [(AVPlayerController *)self currentMediaSelectionForPrimaryPlayer];
    goto LABEL_6;
  }

  v7 = 0;
  if (interstitialPlayer && activePlayer == interstitialPlayer)
  {
    currentMediaSelectionForPrimaryPlayer = [(AVPlayerController *)self currentMediaSelectionForInterstitialPlayer];
LABEL_6:
    v7 = currentMediaSelectionForPrimaryPlayer;
  }

  return v7;
}

- (void)setCurrentMediaSelectionForInterstitialPlayer:(id)player
{
  playerCopy = player;
  currentMediaSelectionForInterstitialPlayer = self->_currentMediaSelectionForInterstitialPlayer;
  p_currentMediaSelectionForInterstitialPlayer = &self->_currentMediaSelectionForInterstitialPlayer;
  if (currentMediaSelectionForInterstitialPlayer != playerCopy)
  {
    v8 = playerCopy;
    objc_storeStrong(p_currentMediaSelectionForInterstitialPlayer, player);
    playerCopy = v8;
  }
}

- (void)setCurrentMediaSelectionForPrimaryPlayer:(id)player
{
  playerCopy = player;
  currentMediaSelectionForPrimaryPlayer = self->_currentMediaSelectionForPrimaryPlayer;
  p_currentMediaSelectionForPrimaryPlayer = &self->_currentMediaSelectionForPrimaryPlayer;
  if (currentMediaSelectionForPrimaryPlayer != playerCopy)
  {
    v8 = playerCopy;
    objc_storeStrong(p_currentMediaSelectionForPrimaryPlayer, player);
    playerCopy = v8;
  }
}

- (void)reloadCurrentMediaSelectionsAsynchronously
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  objc_initWeak(&location, currentItem);

  interstitialController = [(AVPlayerController *)self interstitialController];
  interstitialPlayer = [interstitialController interstitialPlayer];
  currentItem2 = [interstitialPlayer currentItem];
  objc_initWeak(&v14, currentItem2);

  objc_initWeak(&from, self);
  playerItemInspectionQueue = [(AVPlayerController *)self playerItemInspectionQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__AVPlayerController_AVMediaSelection__reloadCurrentMediaSelectionsAsynchronously__block_invoke;
  v9[3] = &unk_1E72075E0;
  objc_copyWeak(&v10, &from);
  objc_copyWeak(&v11, &location);
  objc_copyWeak(&v12, &v14);
  dispatch_async(playerItemInspectionQueue, v9);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __82__AVPlayerController_AVMediaSelection__reloadCurrentMediaSelectionsAsynchronously__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 5);
    v4 = v3;
    if (v3)
    {
      v5 = [v3 currentMediaSelection];
    }

    else
    {
      v5 = 0;
    }

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = v7;
    if (v7)
    {
      v6 = [v7 currentMediaSelection];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AVPlayerController_AVMediaSelection__reloadCurrentMediaSelectionsAsynchronously__block_invoke_2;
  block[3] = &unk_1E72095F0;
  objc_copyWeak(&v14, a1 + 4);
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v14);
}

void __82__AVPlayerController_AVMediaSelection__reloadCurrentMediaSelectionsAsynchronously__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setCurrentMediaSelectionForPrimaryPlayer:*(a1 + 32)];
    [v3 setCurrentMediaSelectionForInterstitialPlayer:*(a1 + 40)];
    [v3 selectedMediaOptionMayHaveChanged];
    WeakRetained = v3;
  }
}

- (BOOL)isDisplayingNonForcedOnlyLegibleOption
{
  v2 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E6987578]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 hasMediaCharacteristic:*MEMORY[0x1E6987518]] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)legibleOptionsWithCache:(id)cache
{
  cacheCopy = cache;
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v7 = [(AVPlayerController *)self _legibleOptionsForPlayerItem:playerItemForAudioAndLegibleOptions asset:currentAssetForAudioAndLegibleOptions displayNameCache:cacheCopy];

  return v7;
}

- (id)_legibleOptionsForPlayerItem:(id)item asset:(id)asset displayNameCache:(id)cache
{
  v77[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  assetCopy = asset;
  cacheCopy = cache;
  v62 = assetCopy;
  if (!assetCopy)
  {
    legibleMediaSelectionOptions2 = MEMORY[0x1E695E0F0];
    goto LABEL_45;
  }

  v60 = cacheCopy;
  v63 = [assetCopy avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987578]];
  if (v63)
  {
    currentMediaSelectionForActivePlayer = [(AVPlayerController *)self currentMediaSelectionForActivePlayer];
    v11 = [currentMediaSelectionForActivePlayer selectedMediaOptionInMediaSelectionGroup:v63];

    v12 = MEMORY[0x1E6987FD0];
    v13 = [AVPlayerController _optionsForGroup:v63 asset:assetCopy];
    v59 = [v12 playableMediaSelectionOptionsFromArray:v13];

    v14 = MEMORY[0x1E6987FD0];
    v77[0] = *MEMORY[0x1E6987518];
    v15 = v77[0];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:1];
    v56 = [v14 mediaSelectionOptionsFromArray:v59 withoutMediaCharacteristics:v16];

    v17 = MEMORY[0x1E6987FD0];
    v18 = *MEMORY[0x1E6987550];
    v76[0] = v15;
    v76[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
    v55 = [v17 mediaSelectionOptionsFromArray:v59 withMediaCharacteristics:v19];

    v57 = [v56 arrayByAddingObjectsFromArray:v55];
    avkit_recentLegibleLanguageCode = [MEMORY[0x1E6987FD8] avkit_recentLegibleLanguageCode];
    recentLegibleLanguageForLastSort = self->_recentLegibleLanguageForLastSort;
    if (avkit_recentLegibleLanguageCode != recentLegibleLanguageForLastSort && (!avkit_recentLegibleLanguageCode || !recentLegibleLanguageForLastSort || ![(NSString *)avkit_recentLegibleLanguageCode isEqualToString:?]))
    {
      goto LABEL_19;
    }

    v21 = MEMORY[0x1E695DFA8];
    v22 = [v57 valueForKey:@"avkit_persistentIdentifier"];
    v23 = [v21 setWithArray:v22];

    currentLegibleMediaSelectionOption = [(AVPlayerController *)self currentLegibleMediaSelectionOption];
    if (currentLegibleMediaSelectionOption)
    {
      avkit_offOption = [MEMORY[0x1E6987FD8] avkit_offOption];
      if (currentLegibleMediaSelectionOption != avkit_offOption)
      {
        avkit_autoOption = [MEMORY[0x1E6987FD8] avkit_autoOption];
        v27 = currentLegibleMediaSelectionOption == avkit_autoOption;

        if (v27)
        {
          goto LABEL_13;
        }

        avkit_offOption = [currentLegibleMediaSelectionOption avkit_persistentIdentifier];
        if (avkit_offOption)
        {
          [v23 addObject:avkit_offOption];
        }
      }
    }

LABEL_13:
    v28 = MEMORY[0x1E695DFA8];
    legibleMediaSelectionOptions = [(AVPlayerController *)self legibleMediaSelectionOptions];
    v30 = [legibleMediaSelectionOptions valueForKey:@"avkit_persistentIdentifier"];
    v31 = [v28 setWithArray:v30];

    avkit_autoOption2 = [MEMORY[0x1E6987FD8] avkit_autoOption];
    avkit_persistentIdentifier = [avkit_autoOption2 avkit_persistentIdentifier];
    [v31 removeObject:avkit_persistentIdentifier];

    avkit_offOption2 = [MEMORY[0x1E6987FD8] avkit_offOption];
    avkit_persistentIdentifier2 = [avkit_offOption2 avkit_persistentIdentifier];
    [v31 removeObject:avkit_persistentIdentifier2];

    v36 = [v57 count];
    if (v36 == [v23 count] && (objc_msgSend(v31, "isEqualToSet:", v23) & 1) != 0)
    {
      legibleMediaSelectionOptions2 = [(AVPlayerController *)self legibleMediaSelectionOptions];

LABEL_43:
      goto LABEL_44;
    }

LABEL_19:
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x3032000000;
    v72[3] = __Block_byref_object_copy_;
    v72[4] = __Block_byref_object_dispose_;
    v73 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __92__AVPlayerController_AVMediaSelection___legibleOptionsForPlayerItem_asset_displayNameCache___block_invoke;
    aBlock[3] = &unk_1E7207570;
    aBlock[4] = v72;
    v38 = _Block_copy(aBlock);
    _UpdatePreferredMediaSelectionOptions(v57);
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __92__AVPlayerController_AVMediaSelection___legibleOptionsForPlayerItem_asset_displayNameCache___block_invoke_2;
    v68[3] = &unk_1E72075B8;
    v69 = v60;
    v54 = v38;
    v70 = v54;
    v39 = [v57 sortedArrayUsingComparator:v68];
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v43 = v39;
    v44 = [v43 countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (!v44)
    {
LABEL_39:

      if ([array count])
      {
        avkit_autoOption3 = [MEMORY[0x1E6987FD8] avkit_autoOption];
        v74[0] = avkit_autoOption3;
        avkit_offOption3 = [MEMORY[0x1E6987FD8] avkit_offOption];
        v74[1] = avkit_offOption3;
        v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
        legibleMediaSelectionOptions2 = [v52 arrayByAddingObjectsFromArray:array];
      }

      else
      {
        legibleMediaSelectionOptions2 = 0;
      }

      _Block_object_dispose(v72, 8);
      goto LABEL_43;
    }

    v45 = *v65;
LABEL_21:
    v46 = 0;
    while (1)
    {
      if (*v65 != v45)
      {
        objc_enumerationMutation(v43);
      }

      v47 = *(*(&v64 + 1) + 8 * v46);
      extendedLanguageTag = [v47 extendedLanguageTag];
      if (!extendedLanguageTag || ![v47 isMain])
      {
        goto LABEL_31;
      }

      if ([array2 containsObject:extendedLanguageTag])
      {
        break;
      }

      [array addObject:v47];
      [array2 addObject:extendedLanguageTag];
      if ([v47 isCC])
      {
        goto LABEL_37;
      }

LABEL_32:

      if (v44 == ++v46)
      {
        v49 = [v43 countByEnumeratingWithState:&v64 objects:v75 count:16];
        v44 = v49;
        if (!v49)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }
    }

    if ([v47 isCC] && (objc_msgSend(array3, "containsObject:", extendedLanguageTag) & 1) == 0)
    {
      [array addObject:v47];
LABEL_37:
      [array3 addObject:extendedLanguageTag];
      goto LABEL_32;
    }

    if (([array containsObject:v47] & 1) != 0 || !objc_msgSend(v47, "isEqual:", v11))
    {
      goto LABEL_32;
    }

LABEL_31:
    [array addObject:v47];
    goto LABEL_32;
  }

  legibleMediaSelectionOptions2 = MEMORY[0x1E695E0F0];
LABEL_44:

  cacheCopy = v60;
LABEL_45:

  return legibleMediaSelectionOptions2;
}

uint64_t __92__AVPlayerController_AVMediaSelection___legibleOptionsForPlayerItem_asset_displayNameCache___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v2 BOOLValue];
}

uint64_t __92__AVPlayerController_AVMediaSelection___legibleOptionsForPlayerItem_asset_displayNameCache___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if ([v7 isCC])
  {
    v9 = [v7 extendedLanguageTag];

    if (!v9)
    {
      if ([v8 isCC])
      {
        v12 = [v8 extendedLanguageTag];
        v10 = v12 != 0;

        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v10 = [v7 languageCompare:v8 displayNameCache:*(a1 + 32)];
  if (!v10)
  {
    if ([v7 isAuxiliary])
    {
      v11 = [v8 isAuxiliary];
LABEL_6:
      v10 = v11 ^ 1u;
      goto LABEL_31;
    }

    if ([v7 isEasyReader])
    {
      if (([v8 isAuxiliary] & 1) == 0)
      {
        v11 = [v8 isEasyReader];
        goto LABEL_6;
      }

LABEL_11:
      v10 = -1;
      goto LABEL_31;
    }

    v13 = (*(*(a1 + 40) + 16))();
    v14 = [v7 isSDH];
    if (v13)
    {
      if (v14)
      {
        v15 = [v8 isSDH];
LABEL_15:
        v10 = v15 - 1;
        goto LABEL_31;
      }

      v16 = [v7 isCC];
      v17 = [v8 isSDH];
      if (v16)
      {
        if ((v17 & 1) == 0)
        {
          v15 = [v8 isCC];
          goto LABEL_15;
        }

LABEL_30:
        v10 = 1;
        goto LABEL_31;
      }

      if (v17 & 1) != 0 || ([v8 isCC])
      {
        goto LABEL_30;
      }

LABEL_34:
      if (([v8 isEasyReader] & 1) == 0)
      {
        v10 = [v8 isAuxiliary] << 63 >> 63;
        goto LABEL_31;
      }

      goto LABEL_11;
    }

    if (v14)
    {
      if (([v8 isCC] & 1) == 0 && (objc_msgSend(v8, "isEasyReader") & 1) == 0 && (objc_msgSend(v8, "isAuxiliary") & 1) == 0)
      {
        v11 = [v8 isSDH];
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    if (![v7 isCC])
    {
      if ([v8 isSDH] & 1) != 0 || (objc_msgSend(v8, "isCC"))
      {
        goto LABEL_11;
      }

      goto LABEL_34;
    }

    if ([v8 isCC])
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
      if (([v8 isEasyReader] & 1) == 0 && !objc_msgSend(v8, "isAuxiliary"))
      {
        v10 = 1;
      }
    }
  }

LABEL_31:

  return v10;
}

- (id)audioOptions
{
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v4 = [(AVPlayerController *)self audioOptionsForAsset:currentAssetForAudioAndLegibleOptions];

  return v4;
}

- (id)audioOptionsForAsset:(id)asset
{
  v27 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = [assetCopy avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];
  if (v4)
  {
    v5 = MEMORY[0x1E6987FD0];
    v6 = [AVPlayerController _optionsForGroup:v4 asset:assetCopy];
    v7 = [v5 playableMediaSelectionOptionsFromArray:v6];

    _UpdatePreferredMediaSelectionOptions(v7);
    v8 = [AVPlayerController _sortedAudibleOption:v7];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x3032000000;
    v24[3] = __Block_byref_object_copy_;
    v24[4] = __Block_byref_object_dispose_;
    v25 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__AVPlayerController_AVMediaSelection__audioOptionsForAsset___block_invoke;
    aBlock[3] = &unk_1E7207570;
    aBlock[4] = v24;
    v9 = _Block_copy(aBlock);
    array = [MEMORY[0x1E695DF70] array];
    v18 = v7;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (![v15 isAC3Only] || v9[2](v9))
          {
            [array addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v12);
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:array];

    _Block_object_dispose(v24, 8);
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

uint64_t __61__AVPlayerController_AVMediaSelection__audioOptionsForAsset___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (!v2)
  {
    v3 = MEMORY[0x1E696AD98];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [MEMORY[0x1E6958460] sharedInstance];
    v5 = [v4 audioFormats];

    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * i) integerValue] == 1667326771)
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v9 = [v3 numberWithBool:v6];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v2 = *(*(*(a1 + 32) + 8) + 40);
  }

  return [v2 BOOLValue];
}

- (id)visualOptions
{
  v19 = *MEMORY[0x1E69E9840];
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  v3 = [currentAssetIfReady avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E6987590]];
  v4 = v3;
  if (v3)
  {
    options = [v3 options];
    v6 = MEMORY[0x1E6987FD0];
    v7 = [AVPlayerController _optionsForGroup:v4 asset:currentAssetIfReady];
    v8 = [v6 playableMediaSelectionOptionsFromArray:v7];

    if (options != v8 && ([options isEqualToArray:v8]& 1) == 0)
    {
      v9 = _AVLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = "[AVPlayerController(AVMediaSelection) visualOptions]";
        v15 = 2114;
        v16 = options;
        v17 = 2114;
        v18 = v8;
        _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s group.options != playable options from filtered options for group; unfiltered options: %{public}@; filterd options: %{public}@", &v13, 0x20u);
      }
    }

    v10 = MEMORY[0x1E695E0F0];
    if (options)
    {
      v10 = options;
    }

    v11 = v10;

LABEL_14:
    goto LABEL_15;
  }

  if (currentAssetIfReady)
  {
    options = _AVLog();
    if (os_log_type_enabled(options, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[AVPlayerController(AVMediaSelection) visualOptions]";
      _os_log_impl(&dword_18B49C000, options, OS_LOG_TYPE_DEFAULT, "%s currentAsset is ready but reports no media selection group for AVMediaCharacteristicVisual", &v13, 0xCu);
    }

    v11 = MEMORY[0x1E695E0F0];
    goto LABEL_14;
  }

  v11 = MEMORY[0x1E695E0F0];
LABEL_15:

  return v11;
}

- (void)reloadVisualOptions
{
  visualOptions = [(AVPlayerController *)self visualOptions];
  [(AVPlayerController *)self setVisualMediaSelectionOptions:visualOptions];
}

- (void)reloadLegibleOptions
{
  kdebug_trace();
  displayNameCache = [(AVPlayerController *)self displayNameCache];
  v7 = [(AVPlayerController *)self legibleOptionsWithCache:displayNameCache];

  kdebug_trace();
  if (v7)
  {
    v4 = v7;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  [(AVPlayerController *)self setLegibleMediaSelectionOptions:v4 audioMediaSelectionOptions:0 assumeMediaOptionMayHaveChanged:0];
  avkit_recentLegibleLanguageCode = [MEMORY[0x1E6987FD8] avkit_recentLegibleLanguageCode];
  recentLegibleLanguageForLastSort = self->_recentLegibleLanguageForLastSort;
  self->_recentLegibleLanguageForLastSort = avkit_recentLegibleLanguageCode;
}

- (void)reloadAudioOptions
{
  kdebug_trace();
  audioOptions = [(AVPlayerController *)self audioOptions];
  kdebug_trace();
  if (audioOptions)
  {
    v3 = audioOptions;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  [(AVPlayerController *)self setLegibleMediaSelectionOptions:0 audioMediaSelectionOptions:v3 assumeMediaOptionMayHaveChanged:0];
}

- (void)reloadOptionsAssumingMediaOptionsMayHaveChanged:(BOOL)changed
{
  changedCopy = changed;
  kdebug_trace();
  audioOptions = [(AVPlayerController *)self audioOptions];
  v6 = audioOptions;
  v7 = MEMORY[0x1E695E0F0];
  if (audioOptions)
  {
    v8 = audioOptions;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v18 = v8;

  kdebug_trace();
  kdebug_trace();
  displayNameCache = [(AVPlayerController *)self displayNameCache];
  v10 = [(AVPlayerController *)self legibleOptionsWithCache:displayNameCache];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  kdebug_trace();
  kdebug_trace();
  [(AVPlayerController *)self setLegibleMediaSelectionOptions:v13 audioMediaSelectionOptions:v18 assumeMediaOptionMayHaveChanged:changedCopy];
  kdebug_trace();
  if ([(AVPlayerController *)self shouldLoadVisualMediaSelectionOptions])
  {
    visualOptions = [(AVPlayerController *)self visualOptions];
    v15 = visualOptions;
    if (visualOptions)
    {
      v16 = visualOptions;
    }

    else
    {
      v16 = v7;
    }

    v17 = v16;

    [(AVPlayerController *)self setVisualMediaSelectionOptions:v17];
  }
}

- (void)selectedMediaOptionMayHaveChanged:(BOOL)changed
{
  changedCopy = changed;
  v47 = *MEMORY[0x1E69E9840];
  p_cachedSelectedLegibleMediaSelectionOption = &self->_cachedSelectedLegibleMediaSelectionOption;
  v5 = self->_cachedSelectedLegibleMediaSelectionOption;
  v6 = self->_cachedSelectedAudioMediaSelectionOption;
  v7 = self->_cachedSelectedLegibleMediaSelectionOptionAccordingToAVFoundation;
  v8 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E6987578]];
  objc_storeStrong(&self->_cachedSelectedLegibleMediaSelectionOptionAccordingToAVFoundation, v8);
  v9 = [v8 hasMediaCharacteristic:*MEMORY[0x1E6987518]];
  externalPlaybackType = [(AVPlayerController *)self externalPlaybackType];
  v40 = v7;
  v11 = [(AVMediaSelectionOption *)v7 isEqual:v8];
  if (externalPlaybackType == 1 && !(v11 & 1 | ![(AVPlayerController *)self handlesAudioSessionInterruptions]) && ![(AVPlayerController *)self _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup])
  {
    captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
    if (v9)
    {
      if ([(AVPlayerController *)self captionAppearanceDisplayType]!= 2)
      {
LABEL_24:
        [(AVPlayerController *)self _ensureUserCaptionDisplayType:captionAppearanceDisplayType];
        goto LABEL_25;
      }

      v13 = MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(kMACaptionAppearanceDomainUser);
      if (([v13 containsObject:*MEMORY[0x1E6987588]] & 1) == 0 && (objc_msgSend(v13, "containsObject:", *MEMORY[0x1E6987528]) & 1) == 0 && (objc_msgSend(v13, "containsObject:", *MEMORY[0x1E6987530]) & 1) == 0)
      {
        v14 = _AVLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v42 = "[AVPlayerController(AVMediaSelection) selectedMediaOptionMayHaveChanged:]";
          _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s Enabling automatic display type because receiver changed captions to forced-only.", buf, 0xCu);
        }

        captionAppearanceDisplayType = 1;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_24;
      }

      lastKnownPersistedExtendedLanguageTag = self->_lastKnownPersistedExtendedLanguageTag;
      extendedLanguageTag = [v8 extendedLanguageTag];
      LOBYTE(lastKnownPersistedExtendedLanguageTag) = [(NSString *)lastKnownPersistedExtendedLanguageTag isEqualToString:extendedLanguageTag];

      if (lastKnownPersistedExtendedLanguageTag)
      {
        goto LABEL_24;
      }

      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_lastKnownPersistedExtendedLanguageTag;
        extendedLanguageTag2 = [v8 extendedLanguageTag];
        *buf = 136315650;
        v42 = "[AVPlayerController(AVMediaSelection) selectedMediaOptionMayHaveChanged:]";
        v43 = 2114;
        p_isa = v18;
        v45 = 2114;
        v46 = extendedLanguageTag2;
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s Persisting preferences for remote legible option change: %{public}@ -> %{public}@", buf, 0x20u);
      }

      extendedLanguageTag3 = [v8 extendedLanguageTag];
      v21 = extendedLanguageTag3;
      if (extendedLanguageTag3)
      {
        v22 = extendedLanguageTag3;
      }

      else
      {
        v22 = @"und";
      }

      objc_storeStrong(&self->_lastKnownPersistedExtendedLanguageTag, v22);

      extendedLanguageTag4 = [v8 extendedLanguageTag];
      v13 = extendedLanguageTag4;
      if (extendedLanguageTag4)
      {
        v24 = extendedLanguageTag4;
      }

      else
      {
        v24 = @"und";
      }

      MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, v24);
      captionAppearanceDisplayType = 2;
    }

    goto LABEL_24;
  }

LABEL_25:
  v25 = v6;
  currentLegibleMediaSelectionOption = [(AVPlayerController *)self currentLegibleMediaSelectionOption];
  currentAudioMediaSelectionOption = [(AVPlayerController *)self currentAudioMediaSelectionOption];
  propertyList = [(AVMediaSelectionOption *)currentLegibleMediaSelectionOption propertyList];
  [(AVMediaSelectionOption *)v5 propertyList];
  v30 = v29 = v5;
  v31 = [propertyList isEqual:v30];

  if ((v31 & 1) == 0 && currentLegibleMediaSelectionOption != v29)
  {
    v32 = _AVLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[AVPlayerController(AVMediaSelection) selectedMediaOptionMayHaveChanged:]";
      v43 = 2114;
      p_isa = &currentLegibleMediaSelectionOption->super.isa;
      _os_log_impl(&dword_18B49C000, v32, OS_LOG_TYPE_DEFAULT, "%s Selected legible option: %{public}@ ", buf, 0x16u);
    }

    objc_storeStrong(p_cachedSelectedLegibleMediaSelectionOption, currentLegibleMediaSelectionOption);
    changedCopy = 1;
  }

  v33 = v29;
  propertyList2 = [(AVMediaSelectionOption *)currentAudioMediaSelectionOption propertyList];
  propertyList3 = [(AVMediaSelectionOption *)v25 propertyList];
  v36 = [propertyList2 isEqual:propertyList3];

  if ((v36 & 1) == 0 && currentAudioMediaSelectionOption != v25)
  {
    v37 = _AVLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[AVPlayerController(AVMediaSelection) selectedMediaOptionMayHaveChanged:]";
      v43 = 2114;
      p_isa = &currentAudioMediaSelectionOption->super.isa;
      _os_log_impl(&dword_18B49C000, v37, OS_LOG_TYPE_DEFAULT, "%s Selected audible option: %{public}@ ", buf, 0x16u);
    }

    objc_storeStrong(&self->_cachedSelectedAudioMediaSelectionOption, currentAudioMediaSelectionOption);
    goto LABEL_36;
  }

  if (changedCopy)
  {
LABEL_36:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"AVPlayerControllerSelectedMediaOptionDidChangeNotification" object:self];
  }
}

- (id)_optionsForGroup:(id)group
{
  groupCopy = group;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [objc_opt_class() _optionsForGroup:groupCopy asset:currentAssetForAudioAndLegibleOptions];

  return v6;
}

- (id)mediaSelectionGroupForMediaCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:characteristicCopy];

  return v6;
}

- (void)setCurrentLegibleMediaSelectionOption:(id)option
{
  optionCopy = option;
  DisplayType = MACaptionAppearanceGetDisplayType(kMACaptionAppearanceDomainUser);
  if (DisplayType != kMACaptionAppearanceDisplayTypeAlwaysOn)
  {
    LastKnownCaptionAppearanceDisplayType = DisplayType;
  }

  avkit_offOption = [MEMORY[0x1E6987FD8] avkit_offOption];

  if (avkit_offOption == optionCopy)
  {
    [(AVPlayerController *)self _disableLegibleMediaSelectionOptions:0];
  }

  else
  {
    avkit_autoOption = [MEMORY[0x1E6987FD8] avkit_autoOption];

    if (avkit_autoOption == optionCopy)
    {
      [(AVPlayerController *)self _enableAutoMediaSelection:self];
    }

    else
    {
      [(AVPlayerController *)self _setMediaOption:optionCopy mediaCharacteristic:*MEMORY[0x1E6987578]];
      [(AVPlayerController *)self _setMostRecentChosenOption:optionCopy];
      [(AVPlayerController *)self reloadLegibleOptions];
    }
  }

  v7 = +[AVKitGlobalSettings shared];
  [v7 setSubtitleAutomaticallyEnabledState:0];
}

- (id)currentLegibleMediaSelectionOption
{
  v27 = *MEMORY[0x1E69E9840];
  avkit_offOption = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E6987578]];
  legibleMediaSelectionOptions = [(AVPlayerController *)self legibleMediaSelectionOptions];
  if (![legibleMediaSelectionOptions count])
  {

    goto LABEL_21;
  }

  v5 = [avkit_offOption hasMediaCharacteristic:*MEMORY[0x1E6987550]];

  if (v5)
  {
    goto LABEL_21;
  }

  v6 = [avkit_offOption hasMediaCharacteristic:*MEMORY[0x1E6987518]];
  captionAppearanceDisplayType = [(AVPlayerController *)self captionAppearanceDisplayType];
  captionAppearanceDisplayType2 = [(AVPlayerController *)self captionAppearanceDisplayType];
  captionAppearanceDisplayType3 = [(AVPlayerController *)self captionAppearanceDisplayType];
  player = [(AVPlayerController *)self player];
  appliesMediaSelectionCriteriaAutomatically = [player appliesMediaSelectionCriteriaAutomatically];

  _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup = [(AVPlayerController *)self _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup];
  v13 = _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup;
  if (captionAppearanceDisplayType2 == 1 && appliesMediaSelectionCriteriaAutomatically)
  {
    goto LABEL_5;
  }

  if (v6)
  {
    if (captionAppearanceDisplayType != 0 && !_mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup)
    {
      v15 = _AVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315906;
        v20 = "[AVPlayerController(AVMediaSelection) currentLegibleMediaSelectionOption]";
        v21 = 2114;
        v22 = avkit_offOption;
        v23 = 2048;
        captionAppearanceDisplayType4 = [(AVPlayerController *)self captionAppearanceDisplayType];
        v25 = 1024;
        v26 = 0;
        _os_log_error_impl(&dword_18B49C000, v15, OS_LOG_TYPE_ERROR, "*** %s Received a forced-only media selection (%{public}@) when display type was NOT forced-only (was %ld). mediaSelectionCriteriaCanBeAppliedAutomaticallyToMediaSelectionGroup: %d. ***", &v19, 0x26u);
      }
    }

    if (!v13 || !captionAppearanceDisplayType)
    {
      goto LABEL_17;
    }

LABEL_5:
    avkit_autoOption = [MEMORY[0x1E6987FD8] avkit_autoOption];
LABEL_18:
    v16 = avkit_autoOption;

    avkit_offOption = v16;
    goto LABEL_19;
  }

  if (!avkit_offOption && !captionAppearanceDisplayType)
  {
LABEL_17:
    avkit_autoOption = [MEMORY[0x1E6987FD8] avkit_offOption];
    goto LABEL_18;
  }

  if (captionAppearanceDisplayType3 != 2 && _mediaSelectionCriteriaCanBeAppliedAutomaticallyToLegibleMediaSelectionGroup)
  {
    if (!captionAppearanceDisplayType)
    {
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315394;
        v20 = "[AVPlayerController(AVMediaSelection) currentLegibleMediaSelectionOption]";
        v21 = 2114;
        v22 = avkit_offOption;
        _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "*** %s Received a non-forced-only media selection (%{public}@) from automatic media selection when display type was forced-only. ***", &v19, 0x16u);
      }
    }

    goto LABEL_5;
  }

LABEL_19:
  if (!avkit_offOption)
  {
    avkit_offOption = [MEMORY[0x1E6987FD8] avkit_offOption];
  }

LABEL_21:

  return avkit_offOption;
}

- (void)setLegibleMediaSelectionOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  legibleMediaSelectionOptions = self->_legibleMediaSelectionOptions;
  p_legibleMediaSelectionOptions = &self->_legibleMediaSelectionOptions;
  if (legibleMediaSelectionOptions != optionsCopy)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVPlayerController(AVMediaSelection) setLegibleMediaSelectionOptions:]";
      v11 = 2114;
      v12 = optionsCopy;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s LegibleMediaSelectionOptions: %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(p_legibleMediaSelectionOptions, options);
  }
}

- (BOOL)hasLegibleMediaSelectionOptions
{
  legibleMediaSelectionOptions = [(AVPlayerController *)self legibleMediaSelectionOptions];
  v3 = [legibleMediaSelectionOptions count] != 0;

  return v3;
}

- (AVMediaSelectionOption)currentVideoMediaSelectionOption
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E6987590]];
  visualMediaSelectionOptions = [(AVPlayerController *)self visualMediaSelectionOptions];
  if ([visualMediaSelectionOptions containsObject:v3])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 != v3)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVPlayerController(AVMediaSelection) currentVideoMediaSelectionOption]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Have visual option %{}@ selected but it is not in our options list", &v9, 0x16u);
    }
  }

  return v6;
}

- (void)setCurrentAudioMediaSelectionOption:(id)option
{
  v4 = *MEMORY[0x1E69874F8];
  optionCopy = option;
  [(AVPlayerController *)self _setMediaOption:optionCopy mediaCharacteristic:v4];
  [(AVPlayerController *)self _setMostRecentChosenOption:optionCopy];

  [(AVPlayerController *)self reloadAudioOptions];
}

- (id)currentAudioMediaSelectionOption
{
  v3 = [(AVPlayerController *)self _selectedMediaOptionWithMediaCharacteristic:*MEMORY[0x1E69874F8]];
  audioMediaSelectionOptions = [(AVPlayerController *)self audioMediaSelectionOptions];
  if ([audioMediaSelectionOptions containsObject:v3])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setVisualMediaSelectionOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  visualMediaSelectionOptions = self->_visualMediaSelectionOptions;
  p_visualMediaSelectionOptions = &self->_visualMediaSelectionOptions;
  if (visualMediaSelectionOptions != optionsCopy)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVPlayerController(AVMediaSelection) setVisualMediaSelectionOptions:]";
      v11 = 2114;
      v12 = optionsCopy;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s VisualMediaSelectionOptions: %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(p_visualMediaSelectionOptions, options);
  }
}

- (void)setAudioMediaSelectionOptions:(id)options
{
  v13 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  audioMediaSelectionOptions = self->_audioMediaSelectionOptions;
  p_audioMediaSelectionOptions = &self->_audioMediaSelectionOptions;
  if (audioMediaSelectionOptions != optionsCopy)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVPlayerController(AVMediaSelection) setAudioMediaSelectionOptions:]";
      v11 = 2114;
      v12 = optionsCopy;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s AudioMediaSelectionOptions: %{public}@", &v9, 0x16u);
    }

    objc_storeStrong(p_audioMediaSelectionOptions, options);
  }
}

- (void)setLegibleMediaSelectionOptions:(id)options audioMediaSelectionOptions:(id)selectionOptions assumeMediaOptionMayHaveChanged:(BOOL)changed
{
  changedCopy = changed;
  optionsCopy = options;
  selectionOptionsCopy = selectionOptions;
  if (selectionOptionsCopy && ![(NSArray *)self->_audioMediaSelectionOptions isEqualToArray:selectionOptionsCopy])
  {
    [(AVPlayerController *)self setAudioMediaSelectionOptions:selectionOptionsCopy];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (optionsCopy && ![(NSArray *)self->_legibleMediaSelectionOptions isEqualToArray:optionsCopy])
  {
    [(AVPlayerController *)self setLegibleMediaSelectionOptions:optionsCopy];
    goto LABEL_10;
  }

  if ((v9 | changedCopy) == 1)
  {
LABEL_10:
    [(AVPlayerController *)self selectedMediaOptionMayHaveChanged:1];
  }
}

- (BOOL)hasAudioMediaSelectionOptions
{
  audioMediaSelectionOptions = [(AVPlayerController *)self audioMediaSelectionOptions];
  v3 = [audioMediaSelectionOptions count] > 1;

  return v3;
}

- (BOOL)hasMediaSelectionOptions
{
  if ([(AVPlayerController *)self hasAudioMediaSelectionOptions])
  {
    return 1;
  }

  return [(AVPlayerController *)self hasLegibleMediaSelectionOptions];
}

- (id)currentAssetForAudioAndLegibleOptions
{
  timeline = [(AVPlayerController *)self timeline];

  if (timeline)
  {
    [(AVPlayerController *)self activeAssetIfReady];
  }

  else
  {
    [(AVPlayerController *)self currentAssetIfReady];
  }
  v4 = ;

  return v4;
}

- (id)playerItemForAudioAndLegibleOptions
{
  timeline = [(AVPlayerController *)self timeline];

  if (timeline)
  {
    [(AVPlayerController *)self activePlayer];
  }

  else
  {
    [(AVPlayerController *)self player];
  }
  v4 = ;
  currentItem = [v4 currentItem];

  return currentItem;
}

- (void)startMediaSelectionInspection
{
  v10[1] = *MEMORY[0x1E69E9840];
  observationController = [(AVPlayerController *)self observationController];
  player = [(AVPlayerController *)self player];
  v10[0] = @"currentItem.currentMediaSelection";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [observationController startObserving:player keyPaths:v5 includeInitialValue:0 includeChanges:0 observationHandler:&__block_literal_global_3153];

  v9 = @"interstitialController.interstitialPlayer.currentItem.currentMediaSelection";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v8 = [observationController startObserving:self keyPaths:v7 includeInitialValue:0 includeChanges:0 observationHandler:&__block_literal_global_7];

  [(AVPlayerController *)self reloadCurrentMediaSelectionsAsynchronously];
}

+ (id)_optionsForGroup:(id)group asset:(id)asset
{
  v38 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  assetCopy = asset;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  assetCache = [assetCopy assetCache];
  if (([assetCache isPlayableOffline] & 1) == 0)
  {

    goto LABEL_21;
  }

  isNetworkAvailable = _isNetworkAvailable();

  if (isNetworkAvailable)
  {
LABEL_21:
    options = [groupCopy options];
    goto LABEL_22;
  }

  assetCache2 = [assetCopy assetCache];
  v10 = [assetCache2 mediaSelectionOptionsInMediaSelectionGroup:groupCopy];
  v11 = v10;
  v12 = MEMORY[0x1E695E0F0];
  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  options = v13;

  v15 = MEMORY[0x1E695DFA8];
  v32 = groupCopy;
  options2 = [groupCopy options];
  v17 = options2;
  if (options2)
  {
    v18 = options2;
  }

  else
  {
    v18 = v12;
  }

  v19 = [v15 setWithArray:v18];

  v20 = [MEMORY[0x1E695DFD8] setWithArray:options];
  [v19 minusSet:v20];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    v25 = *MEMORY[0x1E69875B8];
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v33 + 1) + 8 * i);
        mediaType = [v27 mediaType];
        v29 = [mediaType isEqualToString:v25];

        if (v29)
        {
          v30 = [options arrayByAddingObject:v27];

          options = v30;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v23);
  }

  groupCopy = v32;
LABEL_22:

  return options;
}

+ (id)canonicalLanguageIdentifierFromString:(id)string
{
  v10 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "+[AVPlayerController(AVMediaSelection) canonicalLanguageIdentifierFromString:]";
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", &v8, 0xCu);
    }
  }

  if (canonicalLanguageIdentifierFromString__createQueueOnceToken != -1)
  {
    dispatch_once(&canonicalLanguageIdentifierFromString__createQueueOnceToken, &__block_literal_global_11);
  }

  if (stringCopy)
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = @"NilString";
  }

  v6 = [canonicalLanguageIdentifierFromString__canonicalLanguageIdentifiersCache objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:stringCopy];
    [canonicalLanguageIdentifierFromString__canonicalLanguageIdentifiersCache setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

uint64_t __78__AVPlayerController_AVMediaSelection__canonicalLanguageIdentifierFromString___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = canonicalLanguageIdentifierFromString__canonicalLanguageIdentifiersCache;
  canonicalLanguageIdentifierFromString__canonicalLanguageIdentifiersCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)setHapticsOn:(BOOL)on trackStates:(id)states
{
  onCopy = on;
  v30 = *MEMORY[0x1E69E9840];
  statesCopy = states;
  [(AVPlayerController *)self setHapticsIsOn:onCopy];
  activePlayer = [(AVPlayerController *)self activePlayer];
  currentItem = [activePlayer currentItem];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = currentItem;
  tracks = [currentItem tracks];
  v10 = [tracks countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v13 = *MEMORY[0x1E69875C8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(tracks);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        assetTrack = [v15 assetTrack];
        mediaType = [assetTrack mediaType];
        v18 = [mediaType isEqualToString:v13];

        if (v18)
        {
          v19 = MEMORY[0x1E696AD98];
          assetTrack2 = [v15 assetTrack];
          v21 = [v19 numberWithInteger:{objc_msgSend(assetTrack2, "trackID")}];

          v22 = [statesCopy objectForKeyedSubscript:v21];
          isOn = [v22 isOn];

          [v15 setEnabled:isOn];
        }
      }

      v11 = [tracks countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (id)hapticTracksForCurrentItem
{
  v41 = *MEMORY[0x1E69E9840];
  v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
  activePlayer = [(AVPlayerController *)self activePlayer];
  currentItem = [activePlayer currentItem];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = currentItem;
  tracks = [currentItem tracks];
  v6 = [tracks countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v6)
  {

    if (![(AVPlayerController *)self isFirstReadOfHapticTracks])
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = v6;
  selfCopy = self;
  isEnabled = 0;
  v9 = *v37;
  v10 = *MEMORY[0x1E69875C8];
  v32 = *MEMORY[0x1E6987910];
  v31 = *MEMORY[0x1E6987858];
  v33 = tracks;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(tracks);
      }

      v12 = *(*(&v36 + 1) + 8 * i);
      assetTrack = [v12 assetTrack];
      mediaType = [assetTrack mediaType];
      v15 = [mediaType isEqualToString:v10];

      if (v15)
      {
        v16 = MEMORY[0x1E6987FE0];
        assetTrack2 = [v12 assetTrack];
        metadata = [assetTrack2 metadata];
        v19 = [v16 metadataItemsFromArray:metadata withKey:v32 keySpace:v31];

        firstObject = [v19 firstObject];

        if (firstObject)
        {
          firstObject2 = [v19 firstObject];
          firstObject = [firstObject2 stringValue];
        }

        isEnabled = [v12 isEnabled];
        playHapticTracks = [v34 playHapticTracks];
        v23 = [AVMobileHapticsTrackItem alloc];
        if (playHapticTracks)
        {
          isEnabled2 = [v12 isEnabled];
        }

        else
        {
          isEnabled2 = 0;
        }

        v25 = [(AVMobileHapticsTrackItem *)v23 initWithIsOn:isEnabled2 trackName:firstObject];
        v26 = MEMORY[0x1E696AD98];
        assetTrack3 = [v12 assetTrack];
        v28 = [v26 numberWithInteger:{objc_msgSend(assetTrack3, "trackID")}];
        [v35 setObject:v25 forKey:v28];

        tracks = v33;
      }
    }

    v7 = [tracks countByEnumeratingWithState:&v36 objects:v40 count:16];
  }

  while (v7);

  self = selfCopy;
  if ([(AVPlayerController *)selfCopy isFirstReadOfHapticTracks])
  {
    if (isEnabled)
    {
      [(AVPlayerController *)selfCopy setHapticsIsOn:1];
    }

LABEL_19:
    [(AVPlayerController *)self setIsFirstReadOfHapticTracks:0];
  }

LABEL_20:

  return v35;
}

- (id)complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)selector
{
  v58 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v6 customMediaSelectionScheme];
  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [selectorCopy identifier];
    *buf = 136315394;
    v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
    v47 = 2112;
    v48 = identifier;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s cmss selector identifier: %@", buf, 0x16u);
  }

  _selectAudioLanguageIfNecessary = [(AVPlayerController *)self _selectAudioLanguageIfNecessary];
  v11 = _selectAudioLanguageIfNecessary;
  if (customMediaSelectionScheme)
  {
    v12 = _selectAudioLanguageIfNecessary == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v35 = _selectAudioLanguageIfNecessary;
    v38 = v6;
    array = [MEMORY[0x1E695DF70] array];
    selfCopy = self;
    _effectiveMediaSettingsForGroup = [(AVPlayerController *)self _effectiveMediaSettingsForGroup];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v37 = customMediaSelectionScheme;
    obj = [customMediaSelectionScheme selectors];
    v15 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          v20 = _AVLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v19 identifier];
            identifier3 = [selectorCopy identifier];
            *buf = 136315650;
            v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
            v47 = 2112;
            v48 = identifier2;
            v49 = 2112;
            v50 = identifier3;
            _os_log_impl(&dword_18B49C000, v20, OS_LOG_TYPE_DEFAULT, "%s cmss higherPrioritySelector: identifier %@ selector identifier: %@", buf, 0x20u);
          }

          identifier4 = [v19 identifier];
          identifier5 = [selectorCopy identifier];
          v25 = [identifier4 isEqualToString:identifier5];

          if (v25)
          {
            v29 = _AVLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
              v47 = 2112;
              v48 = v19;
              _os_log_impl(&dword_18B49C000, v29, OS_LOG_TYPE_DEFAULT, "%s cmss higherPrioritySelector: break %@", buf, 0x16u);
            }

            goto LABEL_29;
          }

          v26 = [_effectiveMediaSettingsForGroup objectForKey:v19];
          v27 = _AVLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
            v47 = 2112;
            v48 = v19;
            v49 = 2112;
            v50 = v26;
            _os_log_impl(&dword_18B49C000, v27, OS_LOG_TYPE_DEFAULT, "%s cmss higherPrioritySelector: %@ evaluate currentSelectorSetting: %@", buf, 0x20u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v26];
            v28 = _AVLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
              v47 = 2112;
              v48 = v26;
              _os_log_impl(&dword_18B49C000, v28, OS_LOG_TYPE_DEFAULT, "%s cmss higherPrioritySelector: add current: %@", buf, 0x16u);
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v41 objects:v57 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    customMediaSelectionScheme = v37;
    v11 = v35;
    v30 = [v37 mediaPresentationSettingsForSelector:selectorCopy complementaryToLanguage:v35 settings:array];
    v31 = _AVLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      identifier6 = [selectorCopy identifier];
      allValues = [_effectiveMediaSettingsForGroup allValues];
      *buf = 136316418;
      v46 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelectedMediaPresentationSettingsForSelector:]";
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = identifier6;
      v51 = 2112;
      v52 = v35;
      v53 = 2112;
      v54 = allValues;
      v55 = 2112;
      v56 = array;
      _os_log_impl(&dword_18B49C000, v31, OS_LOG_TYPE_DEFAULT, "%s cmss \n\ncomplementarySettings settings: %@ \n\nselector identifier: %@ \n\nlanguage: %@ \n\npresentationSettings: %@ \n\nhigherPrioritySettings: %@", buf, 0x3Eu);
    }

    v13 = [(AVPlayerController *)selfCopy _applyOfflineFilterForMediaPresentationSettingsIfNecessary:v30 selector:selectorCopy];

    v6 = v38;
  }

  return v13;
}

- (id)_selectAudioLanguageIfNecessary
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    currentAssetForAudioAndLegibleOptions = [self currentAssetForAudioAndLegibleOptions];
    v3 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

    playerItemForAudioAndLegibleOptions = [self playerItemForAudioAndLegibleOptions];
    currentMediaSelection = [playerItemForAudioAndLegibleOptions currentMediaSelection];
    v6 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v3];
    extendedLanguageTag = [v6 extendedLanguageTag];
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[AVPlayerController(AVMediaPresentationSettings) _selectAudioLanguageIfNecessary]";
      v12 = 2112;
      v13 = extendedLanguageTag;
      _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s cmss selected language: %@", &v10, 0x16u);
    }
  }

  else
  {
    extendedLanguageTag = 0;
  }

  return extendedLanguageTag;
}

- (id)_effectiveMediaSettingsForGroup
{
  selfCopy = self;
  if (self)
  {
    currentAssetForAudioAndLegibleOptions = [self currentAssetForAudioAndLegibleOptions];
    v3 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

    playerItemForAudioAndLegibleOptions = [selfCopy playerItemForAudioAndLegibleOptions];
    selfCopy = [playerItemForAudioAndLegibleOptions effectiveMediaPresentationSettingsForMediaSelectionGroup:v3];
  }

  return selfCopy;
}

- (id)_applyOfflineFilterForMediaPresentationSettingsIfNecessary:(void *)necessary selector:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  necessaryCopy = necessary;
  if (!self)
  {
    v22 = 0;
    goto LABEL_19;
  }

  currentAssetForAudioAndLegibleOptions = [self currentAssetForAudioAndLegibleOptions];
  v8 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  currentAssetIfReady = [self currentAssetIfReady];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetCache = [currentAssetIfReady assetCache];
    if ([assetCache isPlayableOffline])
    {
      if (_isNetworkAvailable())
      {
        player = [self player];
        currentItem = [player currentItem];
        restrictsAutomaticMediaSelectionToAvailableOfflineOptions = [currentItem restrictsAutomaticMediaSelectionToAvailableOfflineOptions];

        if ((restrictsAutomaticMediaSelectionToAvailableOfflineOptions & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }

      assetCache2 = [currentAssetIfReady assetCache];
      v15 = [assetCache2 mediaPresentationSettingsForMediaSelectionGroup:v8];

      v16 = [v15 objectForKey:necessaryCopy];
      v17 = v16;
      if (v16 && [v16 count])
      {
        v18 = _AVLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = "[AVPlayerController(AVMediaPresentationSettings) _applyOfflineFilterForMediaPresentationSettingsIfNecessary:selector:]";
          v26 = 2112;
          v27 = v17;
          v28 = 2112;
          v29 = necessaryCopy;
          _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s cmss offline apply filtered settings:%@ selector: %@", buf, 0x20u);
        }

        v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v17];
        v20 = [v5 filteredArrayUsingPredicate:v19];
      }

      else
      {

        v20 = 0;
      }

      v5 = v20;
      goto LABEL_16;
    }
  }

LABEL_16:
  v21 = _AVLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[AVPlayerController(AVMediaPresentationSettings) _applyOfflineFilterForMediaPresentationSettingsIfNecessary:selector:]";
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_18B49C000, v21, OS_LOG_TYPE_DEFAULT, "%s cmss offline apply filtered settings:%@", buf, 0x16u);
  }

  v5 = v5;
  v22 = v5;
LABEL_19:

  return v22;
}

- (id)complementarySettingsForSelector:(id)selector
{
  v29 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v6 customMediaSelectionScheme];
  _selectAudioLanguageIfNecessary = [(AVPlayerController *)self _selectAudioLanguageIfNecessary];
  v9 = _selectAudioLanguageIfNecessary;
  if (customMediaSelectionScheme)
  {
    v10 = _selectAudioLanguageIfNecessary == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [customMediaSelectionScheme mediaPresentationSettingsForSelector:selectorCopy complementaryToLanguage:_selectAudioLanguageIfNecessary settings:MEMORY[0x1E695E0F0]];
    playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
    v14 = [playerItemForAudioAndLegibleOptions effectiveMediaPresentationSettingsForMediaSelectionGroup:v6];

    v15 = _AVLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [selectorCopy identifier];
      v19 = 136316162;
      v20 = "[AVPlayerController(AVMediaPresentationSettings) complementarySettingsForSelector:]";
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = identifier;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s cmss \n\ncomplementarySettings: %@ \n\nselector identifier: %@ \n\nlanguage: %@ \n\neffectiveSettings: %@", &v19, 0x34u);
    }

    v11 = [(AVPlayerController *)self _applyOfflineFilterForMediaPresentationSettingsIfNecessary:v12 selector:selectorCopy];
  }

  return v11;
}

- (id)effectiveSettingForSelector:(id)selector
{
  v19 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  _effectiveMediaSettingsForGroup = [(AVPlayerController *)self _effectiveMediaSettingsForGroup];
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [selectorCopy identifier];
    v8 = [_effectiveMediaSettingsForGroup objectForKey:selectorCopy];
    v11 = 136315906;
    v12 = "[AVPlayerController(AVMediaPresentationSettings) effectiveSettingForSelector:]";
    v13 = 2112;
    v14 = _effectiveMediaSettingsForGroup;
    v15 = 2112;
    v16 = identifier;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s cmss \n\neffectiveSettings: %@ \n\nselector identifier: %@ \n\neffectiveSetting for selector: %@", &v11, 0x2Au);
  }

  v9 = [_effectiveMediaSettingsForGroup objectForKey:selectorCopy];

  return v9;
}

- (unint64_t)indexOfEffectivePresentationSettingForSelector:(id)selector
{
  v35 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  v8 = [playerItemForAudioAndLegibleOptions effectiveMediaPresentationSettingsForMediaSelectionGroup:v6];
  _selectAudioLanguageIfNecessary = [(AVPlayerController *)self _selectAudioLanguageIfNecessary];
  v10 = _AVLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (_selectAudioLanguageIfNecessary)
  {
    if (v11)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v13 = [currentLocale localizedStringForLocaleIdentifier:_selectAudioLanguageIfNecessary];
      *buf = 136315650;
      v32 = "[AVPlayerController(AVMediaPresentationSettings) indexOfEffectivePresentationSettingForSelector:]";
      v33 = 2112;
      *v34 = v13;
      *&v34[8] = 2112;
      *&v34[10] = _selectAudioLanguageIfNecessary;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s \tcmss %@ (%@)", buf, 0x20u);
    }
  }

  else if (v11)
  {
    *buf = 136315138;
    v32 = "[AVPlayerController(AVMediaPresentationSettings) indexOfEffectivePresentationSettingForSelector:]";
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s \tcmss None (null)", buf, 0xCu);
  }

  v14 = [v8 objectForKey:selectorCopy];
  v15 = _AVLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [selectorCopy identifier];
    *buf = 136315394;
    v32 = "[AVPlayerController(AVMediaPresentationSettings) indexOfEffectivePresentationSettingForSelector:]";
    v33 = 2112;
    *v34 = identifier;
    _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s \tcmss selector: %@", buf, 0x16u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  settings2 = _AVLog();
  v19 = os_log_type_enabled(settings2, OS_LOG_TYPE_DEFAULT);
  if (isKindOfClass)
  {
    if (v19)
    {
      settings = [selectorCopy settings];
      v20 = v6;
      v21 = [settings indexOfObject:v14];
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      [preferredLanguages firstObject];
      v23 = v30 = playerItemForAudioAndLegibleOptions;
      v24 = [v14 displayNameForLocaleIdentifier:v23];
      [v14 mediaCharacteristic];
      v25 = v29 = v8;
      *buf = 136315906;
      v32 = "[AVPlayerController(AVMediaPresentationSettings) indexOfEffectivePresentationSettingForSelector:]";
      v33 = 1024;
      *v34 = v21;
      v6 = v20;
      *&v34[4] = 2112;
      *&v34[6] = v24;
      *&v34[14] = 2112;
      *&v34[16] = v25;
      _os_log_impl(&dword_18B49C000, settings2, OS_LOG_TYPE_DEFAULT, "%s \t\tcmss #%d: %@ (%@)", buf, 0x26u);

      playerItemForAudioAndLegibleOptions = v30;
      v8 = v29;
    }

    settings2 = [selectorCopy settings];
    v26 = [settings2 indexOfObject:v14];
  }

  else
  {
    if (v19)
    {
      *buf = 136315138;
      v32 = "[AVPlayerController(AVMediaPresentationSettings) indexOfEffectivePresentationSettingForSelector:]";
      _os_log_impl(&dword_18B49C000, settings2, OS_LOG_TYPE_DEFAULT, "%s \t\tcmss null", buf, 0xCu);
    }

    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v26;
}

- (id)selectedPresentationSettingForSelector:(id)selector
{
  v20 = *MEMORY[0x1E69E9840];
  selectorCopy = selector;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  v8 = [playerItemForAudioAndLegibleOptions selectedMediaPresentationSettingsForMediaSelectionGroup:v6];

  v9 = [v8 objectForKey:selectorCopy];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  if (v11)
  {

    v9 = 0;
  }

  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[AVPlayerController(AVMediaPresentationSettings) selectedPresentationSettingForSelector:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = selectorCopy;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s cmss select setting: %@ for selector: %@", &v14, 0x20u);
  }

  return v9;
}

- (void)selectPresentationSetting:(id)setting
{
  v13 = *MEMORY[0x1E69E9840];
  settingCopy = setting;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[AVPlayerController(AVMediaPresentationSettings) selectPresentationSetting:]";
      v11 = 2112;
      v12 = settingCopy;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s cmss select setting: %@", &v9, 0x16u);
    }

    playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
    [playerItemForAudioAndLegibleOptions selectMediaPresentationSetting:settingCopy forMediaSelectionGroup:v6];
  }
}

- (id)mediaPresentationSelectors
{
  v52 = *MEMORY[0x1E69E9840];
  if (![(AVPlayerController *)self isMediaPresentationSettingsEnabled])
  {
    v11 = 0;
    goto LABEL_13;
  }

  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  v4 = [currentAssetIfReady avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];
  customMediaSelectionScheme = [v4 customMediaSelectionScheme];
  selectors = [customMediaSelectionScheme selectors];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetCache = [currentAssetIfReady assetCache];
    if ([assetCache isPlayableOffline])
    {
      if (!_isNetworkAvailable())
      {

LABEL_17:
        v32 = selectors;
        v33 = customMediaSelectionScheme;
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v35 = currentAssetIfReady;
        assetCache2 = [currentAssetIfReady assetCache];
        v34 = v4;
        v15 = [assetCache2 mediaPresentationSettingsForMediaSelectionGroup:v4];

        allKeys = [v15 allKeys];
        v17 = _AVLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v46 = "[AVPlayerController(AVMediaPresentationSettings) mediaPresentationSelectors]";
          v47 = 2112;
          v48 = allKeys;
          _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "%s cmss offline selectors: %@", buf, 0x16u);
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v18 = allKeys;
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v41;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v41 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v40 + 1) + 8 * i);
              v24 = [v15 objectForKey:{v23, v32}];
              if ([v24 count])
              {
                v25 = _AVLog();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v46 = "[AVPlayerController(AVMediaPresentationSettings) mediaPresentationSelectors]";
                  v47 = 2112;
                  v48 = v24;
                  v49 = 2112;
                  v50 = v23;
                  _os_log_impl(&dword_18B49C000, v25, OS_LOG_TYPE_DEFAULT, "%s cmss offline settings:%@ selector: %@", buf, 0x20u);
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v40 objects:v51 count:16];
          }

          while (v20);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        selectors = v32;
        v26 = v32;
        v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v37;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v37 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v36 + 1) + 8 * j);
              if ([v18 containsObject:{v31, v32}])
              {
                [v11 addObject:v31];
              }
            }

            v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v28);
        }

        v4 = v34;
        currentAssetIfReady = v35;
        customMediaSelectionScheme = v33;
        goto LABEL_10;
      }

      player = [(AVPlayerController *)self player];
      currentItem = [player currentItem];
      restrictsAutomaticMediaSelectionToAvailableOfflineOptions = [currentItem restrictsAutomaticMediaSelectionToAvailableOfflineOptions];

      if (restrictsAutomaticMediaSelectionToAvailableOfflineOptions)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  v11 = [selectors mutableCopy];
LABEL_10:
  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = "[AVPlayerController(AVMediaPresentationSettings) mediaPresentationSelectors]";
    v47 = 2112;
    v48 = v11;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s cmss selectors: %@", buf, 0x16u);
  }

LABEL_13:

  return v11;
}

- (unint64_t)selectedMediaPresentationLanguageIndex
{
  v20 = *MEMORY[0x1E69E9840];
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v4 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v4 customMediaSelectionScheme];
  if (customMediaSelectionScheme)
  {
    _availableBCP47Languages = [(AVPlayerController *)self _availableBCP47Languages];
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      shouldOfferLanguageSelection = [customMediaSelectionScheme shouldOfferLanguageSelection];
      v9 = "NO";
      v15 = "[AVPlayerController(AVMediaPresentationSettings) selectedMediaPresentationLanguageIndex]";
      v14 = 136315650;
      if (shouldOfferLanguageSelection)
      {
        v9 = "YES";
      }

      v16 = 2082;
      v17 = v9;
      v18 = 2112;
      v19 = _availableBCP47Languages;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s cmss shouldOfferLanguageSelection: %{public}s availableCustomMediaSelectionLanguages: %@", &v14, 0x20u);
    }

    if ([_availableBCP47Languages count])
    {
      _selectAudioLanguageIfNecessary = [(AVPlayerController *)self _selectAudioLanguageIfNecessary];
      v11 = [_availableBCP47Languages indexOfObject:_selectAudioLanguageIfNecessary];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = _AVLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[AVPlayerController(AVMediaPresentationSettings) selectedMediaPresentationLanguageIndex]";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s cmss index of selected language: %ld", &v14, 0x16u);
  }

  return v11;
}

- (id)_availableBCP47Languages
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    currentAssetIfReady = [self currentAssetIfReady];
    v3 = [currentAssetIfReady avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];
    customMediaSelectionScheme = [v3 customMediaSelectionScheme];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetCache = [currentAssetIfReady assetCache];
      if ([assetCache isPlayableOffline])
      {
        if (!_isNetworkAvailable())
        {

LABEL_11:
          v25 = customMediaSelectionScheme;
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v27 = currentAssetIfReady;
          assetCache2 = [currentAssetIfReady assetCache];
          v26 = v3;
          v12 = [assetCache2 mediaSelectionOptionsInMediaSelectionGroup:v3];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * i);
                v19 = _AVLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  extendedLanguageTag = [v18 extendedLanguageTag];
                  *buf = 136315394;
                  v33 = "[AVPlayerController(AVMediaPresentationSettings) _availableBCP47Languages]";
                  v34 = 2112;
                  v35 = extendedLanguageTag;
                  _os_log_impl(&dword_18B49C000, v19, OS_LOG_TYPE_DEFAULT, "%s cmss offline extendedLanguageTag: %@", buf, 0x16u);
                }

                extendedLanguageTag2 = [v18 extendedLanguageTag];
                [v10 addObject:extendedLanguageTag2];
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v15);
          }

          v22 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v10];
          array = [v22 array];
          v23 = _AVLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v33 = "[AVPlayerController(AVMediaPresentationSettings) _availableBCP47Languages]";
            v34 = 2112;
            v35 = array;
            _os_log_impl(&dword_18B49C000, v23, OS_LOG_TYPE_DEFAULT, "%s cmss offline availableLanguages: %@", buf, 0x16u);
          }

          v3 = v26;
          currentAssetIfReady = v27;
          customMediaSelectionScheme = v25;
LABEL_23:

          goto LABEL_24;
        }

        player = [self player];
        currentItem = [player currentItem];
        restrictsAutomaticMediaSelectionToAvailableOfflineOptions = [currentItem restrictsAutomaticMediaSelectionToAvailableOfflineOptions];

        if (restrictsAutomaticMediaSelectionToAvailableOfflineOptions)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    array = [customMediaSelectionScheme availableLanguages];
    v10 = _AVLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[AVPlayerController(AVMediaPresentationSettings) _availableBCP47Languages]";
      v34 = 2112;
      v35 = array;
      _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s cmss: %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  array = 0;
LABEL_24:

  return array;
}

- (void)selectAudibleMediaPresentationLanguage:(id)language
{
  v41 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v5 = *MEMORY[0x1E69874F8];
  v6 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v6 customMediaSelectionScheme];
  if (customMediaSelectionScheme)
  {
    v29 = v5;
    v8 = objc_alloc(MEMORY[0x1E695DF58]);
    preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
    languageIdentifier = [preferredLocale languageIdentifier];
    v11 = [v8 initWithLocaleIdentifier:languageIdentifier];

    selfCopy = self;
    [(AVPlayerController *)self _availableBCP47Languages];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v35 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v28 = customMediaSelectionScheme;
      v15 = *v33;
      v16 = *MEMORY[0x1E695D9A8];
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          null = [MEMORY[0x1E695DFB0] null];
          v20 = [v18 isEqual:null];

          if ((v20 & 1) == 0)
          {
            v21 = [v11 displayNameForKey:v16 value:v18];
            if ([v21 length] && (objc_msgSend(languageCopy, "isEqualToString:", v21) & 1) != 0)
            {
              v22 = v18;

              customMediaSelectionScheme = v28;
              goto LABEL_16;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      customMediaSelectionScheme = v28;
    }

    v22 = &stru_1EFED57D8;
LABEL_16:

    v23 = _AVLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[AVPlayerController(AVMediaPresentationSettings) selectAudibleMediaPresentationLanguage:]";
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_18B49C000, v23, OS_LOG_TYPE_DEFAULT, "%s cmss selectLanguageTag: %@", buf, 0x16u);
    }

    v24 = v22;
    if (selfCopy)
    {
      currentAssetForAudioAndLegibleOptions2 = [(AVPlayerController *)selfCopy currentAssetForAudioAndLegibleOptions];
      v26 = [currentAssetForAudioAndLegibleOptions2 avkit_mediaSelectionGroupForMediaCharacteristic:v29];

      if (v24)
      {
        playerItemForAudioAndLegibleOptions = [(AVPlayerController *)selfCopy playerItemForAudioAndLegibleOptions];
        [playerItemForAudioAndLegibleOptions selectMediaPresentationLanguage:v24 forMediaSelectionGroup:v26];
      }
    }
  }
}

- (id)availableCustomMediaSelectionLanguages
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(AVPlayerController *)self isMediaPresentationSettingsEnabled])
  {
    _availableBCP47Languages = [(AVPlayerController *)self _availableBCP47Languages];
    if ([_availableBCP47Languages count])
    {
      v4 = objc_alloc(MEMORY[0x1E695DF58]);
      preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
      languageIdentifier = [preferredLocale languageIdentifier];
      v7 = [v4 initWithLocaleIdentifier:languageIdentifier];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = _availableBCP47Languages;
      v8 = _availableBCP47Languages;
      v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v24;
        v12 = *MEMORY[0x1E695D9A8];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v24 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v23 + 1) + 8 * i);
            null = [MEMORY[0x1E695DFB0] null];
            v16 = [v14 isEqual:null];

            if ((v16 & 1) == 0)
            {
              v17 = [v7 displayNameForKey:v12 value:v14];
              if ([v17 length])
              {
                [v22 addObject:v17];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v10);
      }

      _availableBCP47Languages = v21;
    }
  }

  v18 = _AVLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[AVPlayerController(AVMediaPresentationSettings) availableCustomMediaSelectionLanguages]";
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&dword_18B49C000, v18, OS_LOG_TYPE_DEFAULT, "%s cmss available languages: %@", buf, 0x16u);
  }

  v19 = [v22 copy];

  return v19;
}

- (BOOL)hasAudioMediaPresentationSelectionOptions
{
  mediaPresentationSelectors = [(AVPlayerController *)self mediaPresentationSelectors];
  v4 = [mediaPresentationSelectors count];

  if (v4 >= 2)
  {
    currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      assetCache = [currentAssetIfReady assetCache];
      if ([assetCache isPlayableOffline])
      {
        if (_isNetworkAvailable())
        {
          player = [(AVPlayerController *)self player];
          currentItem = [player currentItem];
          restrictsAutomaticMediaSelectionToAvailableOfflineOptions = [currentItem restrictsAutomaticMediaSelectionToAvailableOfflineOptions];

          if ((restrictsAutomaticMediaSelectionToAvailableOfflineOptions & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }

        _selectAudioLanguageIfNecessary = [(AVPlayerController *)self _selectAudioLanguageIfNecessary];
      }

      else
      {
      }
    }

LABEL_10:
  }

  return v4 > 1;
}

- (BOOL)shouldShowPresentationSettingsAudioTracks
{
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v3 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v3 customMediaSelectionScheme];
  shouldOfferLanguageSelection = [customMediaSelectionScheme shouldOfferLanguageSelection];

  return shouldOfferLanguageSelection;
}

- (BOOL)mediaPresentationOptionsOnlyAvailableOffline
{
  v13 = *MEMORY[0x1E69E9840];
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  assetCache = [currentAssetIfReady assetCache];
  if (![assetCache isPlayableOffline])
  {

    goto LABEL_7;
  }

  if (_isNetworkAvailable())
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    restrictsAutomaticMediaSelectionToAvailableOfflineOptions = [currentItem restrictsAutomaticMediaSelectionToAvailableOfflineOptions];

    if (restrictsAutomaticMediaSelectionToAvailableOfflineOptions)
    {
      goto LABEL_10;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

LABEL_10:
  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[AVPlayerController(AVMediaPresentationSettings) mediaPresentationOptionsOnlyAvailableOffline]";
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s cmss offline assets only", &v11, 0xCu);
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)enableMediaPresentationSettingsDisplayStyleIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  playerItemForAudioAndLegibleOptions = [(AVPlayerController *)self playerItemForAudioAndLegibleOptions];
  mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes = [playerItemForAudioAndLegibleOptions mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[AVPlayerController(AVMediaPresentationSettings) enableMediaPresentationSettingsDisplayStyleIfNecessary]";
    v13 = 2112;
    v14 = mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s cmss preferredCustomMediaSelectionSchemes: %@ ", &v11, 0x16u);
  }

  v6 = [mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes containsObject:*MEMORY[0x1E69874F8]];
  if (v6)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[AVPlayerController(AVMediaPresentationSettings) enableMediaPresentationSettingsDisplayStyleIfNecessary]";
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s cmss client opt-in to CustomMediaSelectionSchemes", &v11, 0xCu);
    }
  }

  v8 = AVMediaPresentationSettingsDisplayStyleEnabled;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  objc_setAssociatedObject(self, v8, v9, 1);

  return v6;
}

- (BOOL)mediaPresentationSettingsDisplayStyleEnabled
{
  v2 = objc_getAssociatedObject(self, AVMediaPresentationSettingsDisplayStyleEnabled);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isMediaPresentationSettingsEnabled
{
  currentAssetForAudioAndLegibleOptions = [(AVPlayerController *)self currentAssetForAudioAndLegibleOptions];
  v4 = [currentAssetForAudioAndLegibleOptions avkit_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x1E69874F8]];

  customMediaSelectionScheme = [v4 customMediaSelectionScheme];
  v6 = +[AVKitGlobalSettings shared];
  customMediaSelectionSchemeEnabled = [v6 customMediaSelectionSchemeEnabled];

  mediaPresentationSettingsDisplayStyleEnabled = [(AVPlayerController *)self mediaPresentationSettingsDisplayStyleEnabled];
  if (customMediaSelectionScheme)
  {
    v9 = customMediaSelectionSchemeEnabled;
  }

  else
  {
    v9 = 0;
  }

  v10 = mediaPresentationSettingsDisplayStyleEnabled && v9;

  return v10;
}

- (AVPlayerLayer)playerLayerForReducingResources
{
  WeakRetained = objc_loadWeakRetained(&self->_interstitialController);

  return WeakRetained;
}

- (CGSize)presentationSize
{
  suspendedRate = self->_suspendedRate;
  width = self->_presentationSize.width;
  result.height = width;
  result.width = suspendedRate;
  return result;
}

- (void)_handleMemoryWarning:(id)warning
{
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Received memory warning, clearing AVMediaSelectionOption.displayNamecache", v5, 2u);
  }

  [(OS_dispatch_source *)self->_seekTimer removeAllObjects];
}

- (void)setHapticsIsOn:(BOOL)on
{
  if (BYTE2(self->_liveEdgeTimer) != on)
  {
    BYTE2(self->_liveEdgeTimer) = on;
    activePlayer = [(AVPlayerController *)self activePlayer];
    currentItem = [activePlayer currentItem];

    LODWORD(activePlayer) = BYTE2(self->_liveEdgeTimer);
    if (activePlayer != [currentItem playHapticTracks])
    {
      [currentItem setPlayHapticTracks:BYTE2(self->_liveEdgeTimer)];
    }
  }
}

- (BOOL)hapticsIsOn
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  LOBYTE(player) = [currentItem playHapticTracks];
  return player;
}

- (double)_adjustedSeekTimeFromTime:(double)time toTime:(double)toTime
{
  activePlayer = [(AVPlayerController *)self activePlayer];
  player = [(AVPlayerController *)self player];

  if (activePlayer == player)
  {
    interstitialController = [(AVPlayerController *)self interstitialController];
    [interstitialController timeToSeekAfterUserNavigatedFromTime:time toTime:toTime];
    toTime = v10;
  }

  return toTime;
}

- (void)_updateActivePlayer
{
  if ([(AVPlayerController *)self _mainPlayerIsWaitingForInterstitialPlayback])
  {
    player = self->_player;
    interstitialController = [(AVPlayerController *)self interstitialController];
    interstitialPlayer = [interstitialController interstitialPlayer];

    if (player == interstitialPlayer)
    {
      return;
    }

    interstitialController2 = [(AVPlayerController *)self interstitialController];
    interstitialPlayer2 = [interstitialController2 interstitialPlayer];
    [(AVPlayerController *)self setActivePlayer:interstitialPlayer2];
  }

  else
  {
    interstitialController2 = [(AVPlayerController *)self player];
    [(AVPlayerController *)self setActivePlayer:?];
  }
}

- (uint64_t)_mainPlayerIsWaitingForInterstitialPlayback
{
  if (!self)
  {
    return 0;
  }

  player = [self player];
  timeControlStatus = [player timeControlStatus];

  player2 = [self player];
  reasonForWaitingToPlay = [player2 reasonForWaitingToPlay];

  if (timeControlStatus == 1)
  {
    v6 = [reasonForWaitingToPlay isEqualToString:*MEMORY[0x1E6987AC0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setupInterstitialController
{
  v3 = objc_alloc_init(AVInterstitialController);
  player = [(AVPlayerController *)self player];
  [(AVInterstitialController *)v3 setPlayer:player];

  [(AVPlayerController *)self willChangeValueForKey:@"interstitialController"];
  objc_storeStrong(&self->_pipActivitySessionIdentifier, v3);
  [(AVPlayerController *)self didChangeValueForKey:@"interstitialController"];
  [(AVInterstitialController *)v3 setTimeline:self->_photosensitivityRegions];
  objc_initWeak(&location, self);
  pipActivitySessionIdentifier = self->_pipActivitySessionIdentifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVPlayerController__setupInterstitialController__block_invoke;
  v6[3] = &unk_1E7209C68;
  objc_copyWeak(&v7, &location);
  [(NSString *)pipActivitySessionIdentifier setDidLeaveRequiredInterstitialTimeRangeBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __50__AVPlayerController__setupInterstitialController__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained seekToTime:a2 toleranceBefore:0.0 toleranceAfter:0.0];
}

- (id)activeAssetIfReady
{
  activePlayer = [(AVPlayerController *)self activePlayer];
  interstitialController = [(AVPlayerController *)self interstitialController];
  interstitialPlayer = [interstitialController interstitialPlayer];

  player = [(AVPlayerController *)self player];

  if (activePlayer == player)
  {
    currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
    goto LABEL_6;
  }

  v7 = 0;
  if (interstitialPlayer && activePlayer == interstitialPlayer)
  {
    currentAssetIfReady = [(AVPlayerController *)self interstitialAssetIfReady];
LABEL_6:
    v7 = currentAssetIfReady;
  }

  return v7;
}

- (void)_prepareAssetForInspectionIfNeeded
{
  if (!-[AVPlayerController isReadyToPlay](self, "isReadyToPlay") || (-[AVPlayerController currentAssetIfReady](self, "currentAssetIfReady"), v3 = objc_claimAutoreleasedReturnValue(), -[AVPlayerController player](self, "player"), v4 = objc_claimAutoreleasedReturnValue(), [v4 currentItem], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "asset"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v3, v3 != v6))
  {
    [(AVPlayerController *)self setCurrentAssetIfReady:0];
  }

  assetBeingPrepared = [(AVPlayerController *)self assetBeingPrepared];
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];

  if (assetBeingPrepared != asset)
  {
    [(AVPlayerController *)self setAssetBeingPrepared:0];
  }

  assetBeingPrepared2 = [(AVPlayerController *)self assetBeingPrepared];
  v12 = assetBeingPrepared2;
  if (assetBeingPrepared2 || (assetBeingPrepared2 = [(AVPlayerController *)self isReadyToPlay], v12 = 0, !assetBeingPrepared2) || (assetBeingPrepared2 = [(AVPlayerController *)self isInspectionSuspended], v12 = 0, (assetBeingPrepared2 & 1) != 0))
  {

    MEMORY[0x1EEE66BB8](assetBeingPrepared2, v12);
  }

  else
  {
    player2 = [(AVPlayerController *)self player];
    currentItem2 = [player2 currentItem];
    asset2 = [currentItem2 asset];
    if (asset2)
    {
      v15 = asset2;
      currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
      player3 = [(AVPlayerController *)self player];
      currentItem3 = [player3 currentItem];
      asset3 = [currentItem3 asset];

      if (currentAssetIfReady != asset3)
      {
        player4 = [(AVPlayerController *)self player];
        currentItem4 = [player4 currentItem];
        asset4 = [currentItem4 asset];
        [(AVPlayerController *)self setAssetBeingPrepared:asset4];

        objc_initWeak(&location, self);
        player5 = [(AVPlayerController *)self player];
        currentItem5 = [player5 currentItem];
        objc_initWeak(&v35, currentItem5);

        v25 = objc_loadWeakRetained(&v35);
        asset5 = [v25 asset];
        objc_initWeak(&from, asset5);

        v27 = objc_loadWeakRetained(&from);
        v28 = +[AVPlayerController assetInspectionKeysForPrimary];
        v29 = +[AVPlayerController videoTrackInspectionKeysForPrimary];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __56__AVPlayerController__prepareAssetForInspectionIfNeeded__block_invoke;
        v31[3] = &unk_1E7209C40;
        objc_copyWeak(&v32, &location);
        objc_copyWeak(&v33, &from);
        [(AVPlayerController *)self _prepareAssetForInspection:v27 assetKeys:v28 videoTrackKeys:v29 completion:v31];

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v32);
        objc_destroyWeak(&from);
        objc_destroyWeak(&v35);
        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

void __56__AVPlayerController__prepareAssetForInspectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    v3 = [WeakRetained assetBeingPrepared];

    if (v2 == v3)
    {
      [WeakRetained setAssetBeingPrepared:0];
    }

    v4 = [WeakRetained player];
    v5 = [v4 currentItem];
    v6 = [v5 asset];

    if (v2 == v6)
    {
      [WeakRetained setCurrentAssetIfReady:v2];
    }
  }
}

- (void)_prepareInterstitialAssetForInspectionIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  interstitialController = [(AVPlayerController *)self interstitialController];
  interstitialPlayer = [interstitialController interstitialPlayer];

  currentItem = [interstitialPlayer currentItem];
  asset = [currentItem asset];
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[AVPlayerController _prepareInterstitialAssetForInspectionIfNeeded]";
    v27 = 2114;
    v28 = currentItem;
    v29 = 2114;
    v30 = asset;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s reload %{public}@ [asset %{public}@]", buf, 0x20u);
  }

  status = [interstitialPlayer status];
  if (status != 1 || ([(AVPlayerController *)self interstitialAssetIfReady], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == asset, v9, !v10))
  {
    [(AVPlayerController *)self setInterstitialAssetIfReady:0];
  }

  interstitialAssetBeingPrepared = [(AVPlayerController *)self interstitialAssetBeingPrepared];
  v12 = interstitialAssetBeingPrepared == asset;

  if (!v12)
  {
    [(AVPlayerController *)self setInterstitialAssetBeingPrepared:0];
  }

  v13 = status != 1;
  interstitialAssetBeingPrepared2 = [(AVPlayerController *)self interstitialAssetBeingPrepared];
  if (interstitialAssetBeingPrepared2)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  if ((v15 & 1) != 0 || ((v16 = [(AVPlayerController *)self isInspectionSuspended], !asset) ? (v17 = 1) : (v17 = v16), v17 == 1))
  {
  }

  else
  {
    interstitialAssetIfReady = [(AVPlayerController *)self interstitialAssetIfReady];
    v19 = interstitialAssetIfReady == asset;

    if (!v19)
    {
      [(AVPlayerController *)self setInterstitialAssetBeingPrepared:asset];
      objc_initWeak(buf, self);
      objc_initWeak(&location, asset);
      v20 = +[AVPlayerController assetInspectionKeysForInterstitial];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68__AVPlayerController__prepareInterstitialAssetForInspectionIfNeeded__block_invoke;
      v21[3] = &unk_1E7209C40;
      objc_copyWeak(&v22, buf);
      objc_copyWeak(&v23, &location);
      [(AVPlayerController *)self _prepareAssetForInspection:asset assetKeys:v20 videoTrackKeys:MEMORY[0x1E695E0F0] completion:v21];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }
}

void __68__AVPlayerController__prepareInterstitialAssetForInspectionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v2)
    {
      v3 = [WeakRetained interstitialAssetBeingPrepared];

      if (v2 == v3)
      {
        [WeakRetained setInterstitialAssetBeingPrepared:0];
        [WeakRetained setInterstitialAssetIfReady:v2];
      }
    }
  }
}

- (void)_prepareAssetForInspection:(id)inspection assetKeys:(id)keys videoTrackKeys:(id)trackKeys completion:(id)completion
{
  inspectionCopy = inspection;
  keysCopy = keys;
  trackKeysCopy = trackKeys;
  completionCopy = completion;
  objc_initWeak(&location, self);
  objc_initWeak(&from, inspectionCopy);
  v14 = [completionCopy copy];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke;
  v17[3] = &unk_1E7209C18;
  objc_copyWeak(&v20, &location);
  objc_copyWeak(&v21, &from);
  v15 = v14;
  v19 = v15;
  v16 = trackKeysCopy;
  v18 = v16;
  [inspectionCopy loadValuesAsynchronouslyForKeys:keysCopy completionHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke(id *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__30772;
  v13 = __Block_byref_object_dispose__30773;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v2 = v10[5];
  if (v2)
  {
    v3 = [v2 assetInspectionQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke_579;
    v4[3] = &unk_1E7209BF0;
    objc_copyWeak(&v8, a1 + 7);
    v6 = a1[5];
    v5 = a1[4];
    v7 = &v9;
    dispatch_async(v3, v4);

    objc_destroyWeak(&v8);
  }

  _Block_object_dispose(&v9, 8);
}

void __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke_579(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke_2;
    aBlock[3] = &unk_1E72099C8;
    v8 = *(a1 + 40);
    v3 = _Block_copy(aBlock);
    if ([*(a1 + 32) count] && (objc_msgSend(WeakRetained, "avkit_tracksWithMediaType:", *MEMORY[0x1E6987608]), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
    {
      [v5 loadValuesAsynchronouslyForKeys:*(a1 + 32) completionHandler:v3];
    }

    else
    {
      v3[2](v3);
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke_3;
  v6[3] = &unk_1E7209BC8;
  v6[4] = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __85__AVPlayerController__prepareAssetForInspection_assetKeys_videoTrackKeys_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)scanningDelays
{
  hasEnabledAudio = [(AVPlayerController *)self hasEnabledAudio];
  hasEnabledVideo = [(AVPlayerController *)self hasEnabledVideo];
  v5 = &unk_1EFF13028;
  if (!hasEnabledAudio)
  {
    v5 = 0;
  }

  if (hasEnabledVideo)
  {
    return &unk_1EFF13040;
  }

  else
  {
    return v5;
  }
}

- (void)_updateRateForScrubbingAndSeeking
{
  v11 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[AVPlayerController _updateRateForScrubbingAndSeeking]";
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", &v7, 0xCu);
    }
  }

  if (![(AVPlayerController *)self isSeeking]&& ![(AVPlayerController *)self isPlaybackSuspended])
  {
    isScrubbing = [(AVPlayerController *)self isScrubbing];
    [(AVPlayerController *)self rateBeforeScrubBegan];
    if (!isScrubbing)
    {
      v5 = _AVLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        [(AVPlayerController *)self rateBeforeScrubBegan];
        v7 = 136315394;
        v8 = "[AVPlayerController _updateRateForScrubbingAndSeeking]";
        v9 = 2048;
        v10 = v6;
        _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s rate: %f exiting scrub", &v7, 0x16u);
      }

      [(AVPlayerController *)self rateBeforeScrubBegan];
      [(AVPlayerController *)self setRate:?];
      [(AVPlayerController *)self setRateBeforeScrubBegan:NAN];
    }
  }
}

- (void)_updatePlayerMutedState
{
  v14 = *MEMORY[0x1E69E9840];
  if ((BYTE1(self->_photosensitivityMetadataHandler) & 1) == 0)
  {
    player = [(AVPlayerController *)self player];
    v4 = player;
    if (LOBYTE(self->_photosensitivityMetadataHandler) == 1)
    {
      if (([player isMuted] & 1) == 0)
      {
        v5 = 1;
        v6 = 1;
LABEL_6:
        v7 = _AVLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = "[AVPlayerController _updatePlayerMutedState]";
          v10 = 2112;
          v11 = v4;
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s Updating %@ muted state to %d", &v8, 0x1Cu);
        }

        BYTE1(self->_photosensitivityMetadataHandler) = 1;
        [v4 setMuted:v6 & 1];
        BYTE1(self->_photosensitivityMetadataHandler) = 0;
      }
    }

    else
    {
      v6 = BYTE2(self->_photosensitivityMetadataHandler) ^ 1;
      v5 = v6 & 1;
      if ([player isMuted] != v5)
      {
        goto LABEL_6;
      }
    }
  }
}

- (void)_updateMetadata
{
  v24 = *MEMORY[0x1E69E9840];
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  if (currentAssetIfReady)
  {
    val = self;
    v4 = dispatch_group_create();
    v13 = currentAssetIfReady;
    commonMetadata = [currentAssetIfReady commonMetadata];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [commonMetadata countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(commonMetadata);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          dispatch_group_enter(v4);
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __37__AVPlayerController__updateMetadata__block_invoke;
          v17[3] = &unk_1E720A090;
          v18 = v4;
          [v10 loadValuesAsynchronouslyForKeys:&unk_1EFF13010 completionHandler:v17];

          ++v9;
        }

        while (v7 != v9);
        v7 = [commonMetadata countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    objc_initWeak(&location, val);
    v11 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__AVPlayerController__updateMetadata__block_invoke_2;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    dispatch_group_notify(v4, v11, block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);

    currentAssetIfReady = v13;
  }
}

void __37__AVPlayerController__updateMetadata__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _createMetadataDictionaryForCurrentAsset];
    if ([v4 count])
    {
      v5 = [v3 _createMetadataDictionaryForCurrentAsset];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __37__AVPlayerController__updateMetadata__block_invoke_3;
      v7[3] = &unk_1E7209A10;
      objc_copyWeak(&v9, (a1 + 32));
      v8 = v5;
      v6 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v7);

      objc_destroyWeak(&v9);
    }
  }
}

void __37__AVPlayerController__updateMetadata__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:*(a1 + 32)];
  [WeakRetained setMetadata:v2];
}

- (id)_outputContext
{
  player = [(AVPlayerController *)self player];
  outputContext = [player outputContext];

  return outputContext;
}

- (id)_timecodeTrack
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  v4 = [currentAssetIfReady avkit_tracksWithMediaType:*MEMORY[0x1E6987608]];
  firstObject = [v4 firstObject];
  v6 = *MEMORY[0x1E69875F8];
  v7 = [firstObject avkit_associatedTracksOfType:*MEMORY[0x1E69875F8]];
  firstObject2 = [v7 firstObject];
  v9 = firstObject2;
  if (firstObject2)
  {
    firstObject3 = firstObject2;
  }

  else
  {
    currentAssetIfReady2 = [(AVPlayerController *)self currentAssetIfReady];
    v12 = [currentAssetIfReady2 avkit_tracksWithMediaType:v6];
    firstObject3 = [v12 firstObject];
  }

  return firstObject3;
}

- (void)_stopSuspendingPlayback
{
  [(AVPlayerController *)self _setPlaybackSuspended:0];
  [(AVPlayerController *)self resumePlaybackCoordinatorIfSuspended];

  [(AVPlayerController *)self _endPlaybackSuspension_AVFoundationStrategy];
}

- (void)_startSuspendingPlayback
{
  [(AVPlayerController *)self suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary];
  [(AVPlayerController *)self _beginPlaybackSuspension_AVFoundationStrategy];

  [(AVPlayerController *)self _setPlaybackSuspended:1];
}

- (void)_setSuspendedRate:(double)rate
{
  if (*&self->_captionAppearanceDisplayType != rate)
  {
    *&self->_captionAppearanceDisplayType = rate;
  }
}

- (void)_setPlaybackSuspended:(BOOL)suspended
{
  if (self->_disablingAutomaticTermination != suspended)
  {
    self->_disablingAutomaticTermination = suspended;
  }
}

- (void)_endPlaybackSuspension_AVFoundationStrategy
{
  [(AVPlayerController *)self setRate:*&self->_captionAppearanceDisplayType];

  [(AVPlayerController *)self _setSuspendedRate:NAN];
}

- (id)_createMetadataDictionaryForCurrentAsset
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  v3 = currentAssetIfReady;
  if (currentAssetIfReady)
  {
    commonMetadata = [currentAssetIfReady commonMetadata];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = *MEMORY[0x1E69876B8];
    v7 = *MEMORY[0x1E6987838];
    v8 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E69876B8] keySpace:*MEMORY[0x1E6987838]];
    firstObject = [v8 firstObject];
    stringValue = [firstObject stringValue];

    if (stringValue && [stringValue length])
    {
      [dictionary setObject:stringValue forKeyedSubscript:v6];
    }

    v11 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata filteredByIdentifier:*MEMORY[0x1E6987808]];
    firstObject2 = [v11 firstObject];
    stringValue2 = [firstObject2 stringValue];

    if (stringValue2 && [stringValue2 length])
    {
      [dictionary setObject:stringValue2 forKeyedSubscript:*MEMORY[0x1E6987938]];
    }

    v29 = stringValue;
    v14 = *MEMORY[0x1E6987690];
    v15 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E6987690] keySpace:v7];
    firstObject3 = [v15 firstObject];
    stringValue3 = [firstObject3 stringValue];

    if (stringValue3 && [stringValue3 length])
    {
      [dictionary setObject:stringValue3 forKeyedSubscript:v14];
    }

    v18 = dictionary;
    v19 = *MEMORY[0x1E6987678];
    v20 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E6987678] keySpace:v7];
    firstObject4 = [v20 firstObject];
    stringValue4 = [firstObject4 stringValue];

    if (stringValue4 && [stringValue4 length])
    {
      [v18 setObject:stringValue4 forKeyedSubscript:v19];
    }

    v23 = *MEMORY[0x1E6987680];
    v24 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:commonMetadata withKey:*MEMORY[0x1E6987680] keySpace:v7];
    firstObject5 = [v24 firstObject];
    dataValue = [firstObject5 dataValue];

    if (dataValue && [dataValue length])
    {
      v27 = [MEMORY[0x1E69DCAB8] imageWithData:dataValue];
      if (v27)
      {
        [v18 setObject:v27 forKeyedSubscript:v23];
      }
    }
  }

  return 0;
}

- (void)_cancelPendingSeeksIfNeeded
{
  objc_initWeak(&location, self);
  seekQueue = self->_seekQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AVPlayerController__cancelPendingSeeksIfNeeded__block_invoke;
  v4[3] = &unk_1E7209EA8;
  objc_copyWeak(&v5, &location);
  dispatch_async(seekQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __49__AVPlayerController__cancelPendingSeeksIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[184] = 0;
    [WeakRetained setSeekingInternal:0];
    v7 = *MEMORY[0x1E6960C70];
    v6 = v7;
    v8 = *(MEMORY[0x1E6960C70] + 16);
    v3 = v8;
    [v2 setSeekToTimeInternal:&v7];
    *(v2 + 188) = v6;
    *(v2 + 204) = v3;
    *(v2 + 212) = v6;
    *(v2 + 228) = v3;
    v4 = [v2 player];
    v5 = [v4 currentItem];
    [v5 cancelPendingSeeks];
  }
}

- (void)_beginPlaybackSuspension_AVFoundationStrategy
{
  [(AVPlayerController *)self rate];
  [(AVPlayerController *)self _setSuspendedRate:?];

  [(AVPlayerController *)self setRate:0.0];
}

- (id)_photosensitiveDisplayTimes
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  photosensitivityRegions = [(NSTimer *)self->_updatePlayingOnMatchPointDeviceThrottleTimer photosensitivityRegions];
  currentDate = [currentItem currentDate];
  v7 = [AVPhotosensitiveTimeRange timeRangesFromMetadata:photosensitivityRegions initialDate:currentDate];

  return v7;
}

- (void)_updatePhotosensitivityRegions
{
  [(AVPlayerController *)self setPhotosensitivityRegions:0];
  if (_AXSPhotosensitiveMitigationEnabled())
  {
    observationController = [(AVPlayerController *)self observationController];
    [observationController startObservingNotificationForName:@"AVPlayerItemPhotosensitiveRegionsChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_495];

    v4 = [AVPlayerItemPhotosensitivityMetadataHandler alloc];
    player = [(AVPlayerController *)self player];
    currentItem = [(NSTimer *)player currentItem];
    v6 = [(AVPlayerItemPhotosensitivityMetadataHandler *)v4 initWithPlayerItem:currentItem];
    updatePlayingOnMatchPointDeviceThrottleTimer = self->_updatePlayingOnMatchPointDeviceThrottleTimer;
    self->_updatePlayingOnMatchPointDeviceThrottleTimer = v6;

    v8 = player;
  }

  else
  {
    v8 = self->_updatePlayingOnMatchPointDeviceThrottleTimer;
    self->_updatePlayingOnMatchPointDeviceThrottleTimer = 0;
  }
}

void __52__AVPlayerController__updatePhotosensitivityRegions__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = [a4 object];
  v6 = [v9 player];
  v7 = [v6 currentItem];

  if ([v7 isEqual:v5])
  {
    v8 = [v9 _photosensitiveDisplayTimes];
    [v9 setPhotosensitivityRegions:v8];
  }
}

- (void)_cancelOutstandingAtLiveEdgeStateUpdates
{
  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop cancelPerformSelector:sel__updateAtLiveEdgeStateAndScheduleTimerIfNeeded target:self argument:0];
}

- (void)_updateAtLiveEdgeStateIfNeeded
{
  hasLiveStreamingContent = [(AVPlayerController *)self hasLiveStreamingContent];
  v4 = ![(AVPlayerController *)self hasSeekableLiveStreamingContent];
  if (v4)
  {
    v12 = hasLiveStreamingContent & v4;
  }

  else
  {
    [(AVPlayerController *)self maxTime];
    v6 = v5;
    v7 = *&v5 & 0x7FFFFFFFFFFFFFFFLL;
    [(AVPlayerController *)self currentTime];
    v9 = vabdd_f64(v6, v8);
    v11 = v7 < 0x7FF0000000000000 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    v12 = v9 <= 10.0 && v11;
  }

  [(AVPlayerController *)self setAtLiveEdge:v12];
}

- (void)_updateAtLiveEdgeStateAndScheduleTimerIfNeeded
{
  if (BYTE3(self->_photosensitivityMetadataHandler) == 1)
  {
    [(AVPlayerController *)self _cancelOutstandingAtLiveEdgeStateUpdates];
    BYTE3(self->_photosensitivityMetadataHandler) = 0;
    [(AVPlayerController *)self _updateAtLiveEdgeStateIfNeeded];
    if ([(AVPlayerController *)self hasSeekableLiveStreamingContent])
    {

      [(AVPlayerController *)self _scheduleAtLiveEdgeStateUpdateIfNeeded];
    }
  }
}

- (void)_setNeedsAtLiveEdgeStateUpdate
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ((BYTE3(self->_photosensitivityMetadataHandler) & 1) == 0)
  {
    BYTE3(self->_photosensitivityMetadataHandler) = 1;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v5[0] = *MEMORY[0x1E695DA28];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [mainRunLoop performSelector:sel__updateAtLiveEdgeStateAndScheduleTimerIfNeeded target:self argument:0 order:0 modes:v4];
  }
}

- (void)_scheduleAtLiveEdgeStateUpdateWithTimeInterval:(double)interval
{
  [*&self->_muted invalidate];
  v5 = *&self->_muted;
  *&self->_muted = 0;

  objc_initWeak(&location, self);
  v6 = MEMORY[0x1E695DFF0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__AVPlayerController__scheduleAtLiveEdgeStateUpdateWithTimeInterval___block_invoke;
  v9[3] = &unk_1E7209DA8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:interval];
  v8 = *&self->_muted;
  *&self->_muted = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__AVPlayerController__scheduleAtLiveEdgeStateUpdateWithTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAtLiveEdgeStateIfNeeded];
}

- (void)_scheduleAtLiveEdgeStateUpdateIfNeeded
{
  [(AVPlayerController *)self rate];
  v4 = v3;
  [(AVPlayerController *)self currentTime];
  v6 = v5;
  [(AVPlayerController *)self maxTime];
  v8 = vabdd_f64(v7, v6);
  if (v4 < 1.0)
  {
    if (v8 >= 10.0)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 > 1.0 && v8 >= 10.0)
  {
LABEL_3:

    [(AVPlayerController *)self _scheduleAtLiveEdgeStateUpdateWithTimeInterval:?];
  }
}

- (void)setCanUseNetworkResourcesForLiveStreamingWhilePaused:(BOOL)paused
{
  pausedCopy = paused;
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  [currentItem setCanUseNetworkResourcesForLiveStreamingWhilePaused:pausedCopy];
}

- (BOOL)canUseNetworkResourcesForLiveStreamingWhilePaused
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  canUseNetworkResourcesForLiveStreamingWhilePaused = [currentItem canUseNetworkResourcesForLiveStreamingWhilePaused];

  return canUseNetworkResourcesForLiveStreamingWhilePaused;
}

- (BOOL)isReducingResourcesForPictureInPicture
{
  reduceResourceUsageAssertion = [(AVPlayerController *)self reduceResourceUsageAssertion];
  v3 = reduceResourceUsageAssertion != 0;

  return v3;
}

- (void)setReduceResourceUsageAssertion:(id)assertion
{
  assertionCopy = assertion;
  v6 = *&self->_playingOnSecondScreen;
  if (v6 != assertionCopy)
  {
    v7 = assertionCopy;
    [v6 invalidate];
    objc_storeStrong(&self->_playingOnSecondScreen, assertion);
    assertionCopy = v7;
  }

  MEMORY[0x1EEE66BB8](v6, assertionCopy);
}

- (void)acquireResourceReductionAssertion
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  [currentItem preferredPeakBitRate];
  v6 = v5;

  player2 = [(AVPlayerController *)self player];
  currentItem2 = [player2 currentItem];
  [currentItem2 preferredForwardBufferDuration];
  v10 = v9;

  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x1E698E778]);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__AVPlayerController_acquireResourceReductionAssertion__block_invoke;
  v16 = &unk_1E7209BA0;
  objc_copyWeak(v17, &location);
  v17[1] = v6;
  v17[2] = v10;
  v12 = [v11 initWithIdentifier:@"AVPlayerControllerResourceReductionIdentifier" forReason:@"Reducing Resources for Picture in Picture" invalidationBlock:&v13];
  [(AVPlayerController *)self setReduceResourceUsageAssertion:v12, v13, v14, v15, v16];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __55__AVPlayerController_acquireResourceReductionAssertion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Resource Reduction assertion was invalidated.", v10, 2u);
    }

    v4 = [WeakRetained playerLayerForReducingResources];
    v5 = [WeakRetained player];
    [v4 setPlayer:v5];

    if ([WeakRetained isStreaming] && (*(a1 + 40) != 0.0 || *(a1 + 48) != 0.0))
    {
      v6 = [WeakRetained player];
      v7 = [v6 currentItem];
      [v7 setPreferredPeakBitRate:*(a1 + 40)];

      v8 = [WeakRetained player];
      v9 = [v8 currentItem];
      [v9 setPreferredForwardBufferDuration:*(a1 + 48)];
    }
  }
}

- (void)endReducingResourcesForPictureInPicturePlayerLayer:(id)layer
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AVPlayerController endReducingResourcesForPictureInPicturePlayerLayer:]";
    v8 = 1024;
    v9 = 4557;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
  }

  reduceResourceUsageAssertion = [(AVPlayerController *)self reduceResourceUsageAssertion];
  [reduceResourceUsageAssertion invalidate];

  [(AVPlayerController *)self setPlayerLayerForReducingResources:0];
}

- (void)beginReducingResourcesForPictureInPicturePlayerLayer:(id)layer
{
  v22 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[AVPlayerController beginReducingResourcesForPictureInPicturePlayerLayer:]";
    v20 = 1024;
    v21 = 4537;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v18, 0x12u);
  }

  [(AVPlayerController *)self setPlayerLayerForReducingResources:layerCopy];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:@"PIPStashBufferDuration"];
  [v7 floatValue];
  v9 = v8;

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [standardUserDefaults2 objectForKey:@"PIPStashPeakBitRate"];
  [v11 floatValue];
  v13 = v12;

  [(AVPlayerController *)self acquireResourceReductionAssertion];
  [layerCopy setPlayer:0];

  if ([(AVPlayerController *)self isStreaming]&& (v13 != 0.0 || v9 != 0.0))
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    [currentItem setPreferredPeakBitRate:v13];

    player2 = [(AVPlayerController *)self player];
    currentItem2 = [player2 currentItem];
    [currentItem2 setPreferredForwardBufferDuration:v9];
  }
}

- (void)setPictureInPictureInterrupted:(BOOL)interrupted
{
  if (self->_pictureInPictureInterrupted != interrupted)
  {
    self->_pictureInPictureInterrupted = interrupted;
    if (interrupted)
    {
      if ([(AVPlayerController *)self isPlaying])
      {

        [(AVPlayerController *)self pauseForAllCoordinatedPlaybackParticipants:0];
      }
    }
  }
}

- (BOOL)isPictureInPicturePossible
{
  v24 = *MEMORY[0x1E69E9840];
  pipActivitySessionIdentifier = [(AVPlayerController *)self pipActivitySessionIdentifier];

  if (pipActivitySessionIdentifier)
  {
    goto LABEL_2;
  }

  if (![(AVPlayerController *)self isPictureInPictureSupported]|| [(AVPlayerController *)self isPlayingOnExternalScreen])
  {
    goto LABEL_9;
  }

  status = [(AVPlayerController *)self status];
  if (status == 1)
  {
    return status;
  }

  if (status == 2 && ([(AVPlayerController *)self hasVideo]|| [(AVPlayerController *)self hasEnabledVideo]))
  {
LABEL_2:
    LOBYTE(status) = 1;
  }

  else
  {
LABEL_9:
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "yes";
      if ([(AVPlayerController *)self isPictureInPictureSupported])
      {
        v7 = "yes";
      }

      else
      {
        v7 = "no";
      }

      if ([(AVPlayerController *)self isPlayingOnExternalScreen])
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      status2 = [(AVPlayerController *)self status];
      if (![(AVPlayerController *)self hasVideo]&& ![(AVPlayerController *)self hasEnabledVideo])
      {
        v6 = "no";
      }

      pipActivitySessionIdentifier2 = [(AVPlayerController *)self pipActivitySessionIdentifier];
      v12 = 136316418;
      v13 = "[AVPlayerController isPictureInPicturePossible]";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      v18 = 2048;
      v19 = status2;
      v20 = 2080;
      v21 = v6;
      v22 = 2114;
      v23 = pipActivitySessionIdentifier2;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s !isPictureInPicturePossible. supported = %s, isPlayingOnExternalScreen = %s, status = %ld, hasVideo = %s; pipActivitySessionIdentifier = %{public}@", &v12, 0x3Eu);
    }

    LOBYTE(status) = 0;
  }

  return status;
}

- (void)_updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self isExternalPlaybackActive]&& [(AVPlayerController *)self externalPlaybackType]== 1)
  {
    _outputContext = [(AVPlayerController *)self _outputContext];
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[AVPlayerController _updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded]";
      v29 = 2112;
      v30 = _outputContext;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Using output context %@", buf, 0x16u);
    }

    if ([_outputContext supportsMultipleOutputDevices])
    {
      array = [MEMORY[0x1E695DF70] array];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = _outputContext;
      outputDevices = [_outputContext outputDevices];
      v7 = [outputDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(outputDevices);
            }

            deviceName = [*(*(&v22 + 1) + 8 * i) deviceName];
            v12 = [deviceName copy];
            v13 = v12;
            if (v12)
            {
              v14 = v12;
            }

            else
            {
              v14 = AVLocalizedString(@"EXTERNAL_PLAYBACK_DEVICE_NAME_NIL");
            }

            v15 = v14;

            [array addObject:v15];
          }

          v8 = [outputDevices countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v8);
      }

      deviceName2 = [array componentsJoinedByString:@" + "];

      _outputContext = v18;
    }

    else
    {
      deviceName2 = [_outputContext deviceName];
    }
  }

  else
  {
    deviceName2 = 0;
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AVPlayerController__updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded__block_invoke;
  block[3] = &unk_1E7209A10;
  objc_copyWeak(&v21, buf);
  v20 = deviceName2;
  v17 = deviceName2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

void __79__AVPlayerController__updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setExternalPlaybackAirPlayDeviceLocalizedName:*(a1 + 32)];
}

- (int64_t)externalPlaybackType
{
  if (!-[AVPlayerController isExternalPlaybackActive](self, "isExternalPlaybackActive") || (-[AVPlayerController player](self, "player"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 externalPlaybackType], v3, (v4 - 1) >= 2))
  {
    if ([(AVPlayerController *)self isPlayingOnSecondScreen])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (BOOL)isExternalPlaybackActive
{
  player = [(AVPlayerController *)self player];
  isExternalPlaybackActive = [player isExternalPlaybackActive];

  return isExternalPlaybackActive;
}

- (BOOL)isPlayingOnExternalScreen
{
  if ([(AVPlayerController *)self isExternalPlaybackActive])
  {
    return 1;
  }

  return [(AVPlayerController *)self isPlayingOnSecondScreen];
}

- (void)setAllowsExternalPlayback:(BOOL)playback
{
  playbackCopy = playback;
  player = [(AVPlayerController *)self player];
  [player setAllowsExternalPlayback:playbackCopy];
}

- (BOOL)allowsExternalPlayback
{
  player = [(AVPlayerController *)self player];
  allowsExternalPlayback = [player allowsExternalPlayback];

  return allowsExternalPlayback;
}

- (void)_updateMinMaxTimingIfNeeded
{
  if (!self->_hasSetUpSeekableLiveStreamState && [(AVPlayerController *)self hasLiveStreamingContent])
  {
    self->_hasSetUpSeekableLiveStreamState = 1;

    [(AVPlayerController *)self updateMinMaxTiming];
  }
}

- (void)updateMinMaxTiming
{
  v52 = *MEMORY[0x1E69E9840];
  if (![(AVPlayerController *)self isReadyToPlay]|| ![(AVPlayerController *)self hasLiveStreamingContent])
  {
    goto LABEL_8;
  }

  seekableTimeRanges = [(AVPlayerController *)self seekableTimeRanges];
  maxTiming2 = [seekableTimeRanges count];

  if (!maxTiming2)
  {
LABEL_9:
    [(AVPlayerController *)self minTime];
    minTiming3 = [AVValueTiming valueTimingWithAnchorValue:"valueTimingWithAnchorValue:anchorTimeStamp:rate:" anchorTimeStamp:? rate:?];
    goto LABEL_10;
  }

  memset(v46, 0, sizeof(v46));
  v45 = 0u;
  seekableTimeRanges2 = [(AVPlayerController *)self seekableTimeRanges];
  firstObject = [seekableTimeRanges2 firstObject];
  v7 = firstObject;
  if (firstObject)
  {
    [firstObject CMTimeRangeValue];
  }

  else
  {
    memset(v46, 0, sizeof(v46));
    v45 = 0u;
  }

  if ((BYTE12(v45) & 1) == 0 || (BYTE4(v46[1]) & 1) == 0 || *(&v46[1] + 1) || (*(&v46[0] + 1) & 0x8000000000000000) != 0)
  {
LABEL_8:
    maxTiming2 = 0;
    goto LABEL_9;
  }

  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CACurrentMediaTime();
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    [currentItem seekableTimeRangesLastModifiedTime];
    *buf = 134217984;
    *&buf[4] = v10 - v13;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "Modifying seekableTimeRange by: %f", buf, 0xCu);
  }

  minTiming = [(AVPlayerController *)self minTiming];
  [minTiming currentValue];
  v16 = v15;

  maxTiming = [(AVPlayerController *)self maxTiming];
  [maxTiming currentValue];
  v19 = v18;

  *buf = v45;
  *&buf[16] = *&v46[0];
  Seconds = CMTimeGetSeconds(buf);
  *buf = v45;
  *&buf[16] = *&v46[0];
  v21 = CMTimeGetSeconds(buf);
  *buf = *(v46 + 8);
  *&buf[16] = *(&v46[1] + 1);
  v22 = v21 + CMTimeGetSeconds(buf);
  v23 = CACurrentMediaTime();
  player2 = [(AVPlayerController *)self player];
  currentItem2 = [player2 currentItem];
  [currentItem2 seekableTimeRangesLastModifiedTime];
  v27 = v22 + v23 - v26;

  if (LOBYTE(self->_liveStreamMaxTiming))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  player3 = [(AVPlayerController *)self player];
  currentItem3 = [player3 currentItem];
  [currentItem3 liveUpdateInterval];
  v32 = v31;
  v33 = v31;

  v34 = 1;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v35 = 1;
  }

  else
  {
    v35 = 1;
    if (v32 > 1.0)
    {
      if (vabdd_f64(v16, Seconds) <= v32 + 3.0)
      {
        minTiming2 = [(AVPlayerController *)self minTiming];
        [minTiming2 rate];
        v34 = v37 != v28;
      }

      v35 = vabdd_f64(v19, v27) > v32 + 3.0;
      if (!v34 && !v35)
      {
        minTiming3 = [(AVPlayerController *)self minTiming];
        maxTiming2 = [(AVPlayerController *)self maxTiming];
        goto LABEL_38;
      }
    }
  }

  +[AVValueTiming currentTimeStamp];
  minTiming3 = [AVValueTiming valueTimingWithAnchorValue:Seconds anchorTimeStamp:v38 rate:v28];
  +[AVValueTiming currentTimeStamp];
  maxTiming2 = [AVValueTiming valueTimingWithAnchorValue:v27 anchorTimeStamp:v39 rate:1.0];
  v40 = _AVLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[AVPlayerController updateMinMaxTiming]";
    *&buf[12] = 1024;
    *&buf[14] = 4297;
    _os_log_impl(&dword_18B49C000, v40, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v41 = _AVLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v32;
    _os_log_impl(&dword_18B49C000, v41, OS_LOG_TYPE_DEFAULT, "segmentDuration: %f", buf, 0xCu);
  }

  v42 = _AVLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    [minTiming3 rate];
    *buf = 67110144;
    *&buf[4] = v34;
    *&buf[8] = 2048;
    *&buf[10] = Seconds;
    *&buf[18] = 2048;
    *&buf[20] = v43;
    v48 = 2048;
    v49 = v16;
    v50 = 2048;
    v51 = vabdd_f64(v16, Seconds);
    _os_log_impl(&dword_18B49C000, v42, OS_LOG_TYPE_DEFAULT, "minTimingNeedsUpdate: %d, new minTiming with minTime: %f, rate: %f, old minTime: %f, delta: %f", buf, 0x30u);
  }

  v44 = _AVLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v35;
    *&buf[8] = 2048;
    *&buf[10] = v27;
    *&buf[18] = 2048;
    *&buf[20] = v19;
    v48 = 2048;
    v49 = vabdd_f64(v19, v27);
    _os_log_impl(&dword_18B49C000, v44, OS_LOG_TYPE_DEFAULT, "maxTimingNeedsUpdate: %d, new maxTiming with maxTime: %f old maxTime: %f, delta: %f", buf, 0x26u);
  }

LABEL_38:
  if (!minTiming3)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!maxTiming2)
  {
    [(AVPlayerController *)self maxTime];
    maxTiming2 = [AVValueTiming valueTimingWithAnchorValue:"valueTimingWithAnchorValue:anchorTimeStamp:rate:" anchorTimeStamp:? rate:?];
  }

  [(AVPlayerController *)self _setMinTiming:minTiming3 maxTiming:maxTiming2];
}

- (void)updateTiming
{
  _activeTimebaseForUI = [(AVPlayerController *)self _activeTimebaseForUI];
  if (_activeTimebaseForUI)
  {
    v4 = _activeTimebaseForUI;
    memset(&v21, 0, sizeof(v21));
    CMTimebaseGetTime(&v21, _activeTimebaseForUI);
    EffectiveRate = CMTimebaseGetEffectiveRate(v4);
    if (EffectiveRate == 0.0)
    {
      time = v21;
      [(AVPlayerController *)self _anchorTimeWithTime:CMTimeGetSeconds(&time)];
      v7 = NAN;
      v8 = 0.0;
    }

    else
    {
      v9 = EffectiveRate;
      +[AVValueTiming currentTimeStamp];
      v11 = v10;
      activePlayer = [(AVPlayerController *)self activePlayer];
      player = [(AVPlayerController *)self player];
      if (activePlayer == player)
      {
        [(AVPlayerController *)self player];
      }

      else
      {
        [(AVPlayerController *)self activePlayer];
      }
      v14 = ;
      currentItem = [v14 currentItem];
      v16 = currentItem;
      if (currentItem)
      {
        [currentItem currentTime];
      }

      else
      {
        memset(&v20, 0, sizeof(v20));
      }

      time = v20;
      Seconds = CMTimeGetSeconds(&time);

      time = v21;
      v18 = fabs((Seconds - CMTimeGetSeconds(&time)) / v9);
      [(AVPlayerController *)self _anchorTimeWithTime:Seconds];
      v7 = v11 + v18;
      v8 = v9;
    }
  }

  else
  {
    v6 = NAN;
    v7 = NAN;
    v8 = NAN;
  }

  v19 = [AVValueTiming valueTimingWithAnchorValue:v6 anchorTimeStamp:v7 rate:v8, *&v20.value, v20.epoch];
  [(AVPlayerController *)self setTiming:v19];
}

- (double)_anchorTimeWithTime:(double)result
{
  photosensitivityRegions = self->_photosensitivityRegions;
  if (photosensitivityRegions)
  {
    [(NSArray *)photosensitivityRegions currentTimeInterval];
  }

  return result;
}

- (OpaqueCMTimebase)_activeTimebaseForUI
{
  interstitialController = [(AVPlayerController *)self interstitialController];
  currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];

  if (currentInterstitialTimeRange)
  {
    isCollapsedInTimeLine = [currentInterstitialTimeRange isCollapsedInTimeLine];
  }

  else
  {
    isCollapsedInTimeLine = 1;
  }

  photosensitivityRegions = self->_photosensitivityRegions;
  activePlayer = [(AVPlayerController *)self activePlayer];
  player = [(AVPlayerController *)self player];

  activePlayer2 = [(AVPlayerController *)self activePlayer];
  status = [activePlayer2 status];

  if (!photosensitivityRegions || activePlayer == player || status != 1 || (isCollapsedInTimeLine & 1) != 0)
  {
    if (![(AVPlayerController *)self isReadyToPlay])
    {
      timebase = 0;
      goto LABEL_13;
    }

    player2 = [(AVPlayerController *)self player];
  }

  else
  {
    player2 = [(AVPlayerController *)self activePlayer];
  }

  v12 = player2;
  currentItem = [player2 currentItem];
  timebase = [currentItem timebase];

LABEL_13:
  return timebase;
}

- (void)seekChapterBackward:(id)backward
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self canSeekChapterBackward])
  {
    memset(&preferredTimescale, 0, sizeof(preferredTimescale));
    player = [(AVPlayerController *)self player];
    v5 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      memset(&preferredTimescale, 0, sizeof(preferredTimescale));
    }

    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    contentChapters = [(AVPlayerController *)self contentChapters];
    reverseObjectEnumerator = [contentChapters reverseObjectEnumerator];

    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v27 + 1) + 8 * v11);
        memset(&v26, 0, sizeof(v26));
        [v12 startTime];
        CMTimeMakeWithSeconds(&v26, v13, preferredTimescale.timescale);
        memset(&v25, 0, sizeof(v25));
        [v12 startTime];
        v15 = v14;
        [v12 duration];
        CMTimeMakeWithSeconds(&v25, v15 + v16 * 0.333333333, preferredTimescale.timescale);
        memset(&v24, 0, sizeof(v24));
        [v12 startTime];
        v18 = v17;
        [v12 duration];
        CMTimeMakeWithSeconds(&v24, v18 + v19, preferredTimescale.timescale);
        time1 = preferredTimescale;
        v23 = v25;
        if (CMTimeCompare(&time1, &v23) >= 1)
        {
          time1 = preferredTimescale;
          v23 = v24;
          if (CMTimeCompare(&time1, &v23) < 1)
          {
            break;
          }
        }

        time1 = preferredTimescale;
        v23 = v24;
        if (CMTimeCompare(&time1, &v23) > 0)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }
      }

      v20 = v12;
      time1 = v26;

      if (!v20)
      {
        return;
      }

      v26 = time1;
      v25 = **&MEMORY[0x1E6960CC0];
      v24 = v25;
      [(AVPlayerController *)self seekToCMTime:&v26 toleranceBefore:&v25 toleranceAfter:&v24];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v33 = @"AVPlayerControllerDidSeekChapterChapterKey";
      v34 = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      [defaultCenter postNotificationName:@"AVPlayerControllerDidSeekChapterNotification" object:self userInfo:v22];

      reverseObjectEnumerator = v20;
    }

LABEL_18:
  }
}

- (BOOL)canSeekChapterBackward
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self canSeek])
  {
    player = [(AVPlayerController *)self player];
    v4 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      memset(&v20, 0, sizeof(v20));
    }

    time = v20;
    Seconds = CMTimeGetSeconds(&time);

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    contentChapters = [(AVPlayerController *)self contentChapters];
    v5 = [contentChapters countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v5)
    {
      v8 = *v17;
      v9 = floor(Seconds * 1000000.0);
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(contentChapters);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          [v11 startTime];
          v13 = v12;
          [v11 duration];
          if (v9 > floor((v13 + v14 * 0.333333333) * 1000000.0))
          {
            LOBYTE(v5) = 1;
            goto LABEL_16;
          }
        }

        v5 = [contentChapters countByEnumeratingWithState:&v16 objects:v22 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)seekChapterForward:(id)forward
{
  v28 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self canSeekChapterForward])
  {
    memset(&preferredTimescale, 0, sizeof(preferredTimescale));
    player = [(AVPlayerController *)self player];
    v5 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      memset(&preferredTimescale, 0, sizeof(preferredTimescale));
    }

    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    contentChapters = [(AVPlayerController *)self contentChapters];
    v7 = [contentChapters countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
LABEL_7:
      v10 = 0;
      while (1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(contentChapters);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        memset(&v18, 0, sizeof(v18));
        [v11 startTime];
        CMTimeMakeWithSeconds(&v18, v12, preferredTimescale.timescale);
        time1 = preferredTimescale;
        time2 = v18;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [contentChapters countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v13 = v11;
      time1 = v18;

      if (!v13)
      {
        return;
      }

      v18 = time1;
      time2 = **&MEMORY[0x1E6960CC0];
      v16 = time2;
      [(AVPlayerController *)self seekToCMTime:&v18 toleranceBefore:&time2 toleranceAfter:&v16];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v25 = @"AVPlayerControllerDidSeekChapterChapterKey";
      v26 = v13;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      [defaultCenter postNotificationName:@"AVPlayerControllerDidSeekChapterNotification" object:self userInfo:v15];

      contentChapters = v13;
    }

LABEL_16:
  }
}

- (BOOL)canSeekChapterForward
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self canSeek])
  {
    player = [(AVPlayerController *)self player];
    v4 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      memset(&v17, 0, sizeof(v17));
    }

    time = v17;
    Seconds = CMTimeGetSeconds(&time);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    contentChapters = [(AVPlayerController *)self contentChapters];
    v5 = [contentChapters countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v5)
    {
      v8 = *v14;
      v9 = floor(Seconds * 1000000.0);
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(contentChapters);
          }

          [*(*(&v13 + 1) + 8 * i) startTime];
          if (v9 < floor(v11 * 1000000.0))
          {
            LOBYTE(v5) = 1;
            goto LABEL_16;
          }
        }

        v5 = [contentChapters countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)seekToChapter:(id)chapter
{
  [chapter startTime];

  [(AVPlayerController *)self seekToTime:?];
}

- (void)endScrubbing:(id)scrubbing
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVPlayerController endScrubbing:]";
    v10 = 1024;
    v11 = 4041;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v8, 0x12u);
  }

  scrubbingCount = self->_scrubbingCount;
  if (scrubbingCount > 0)
  {
    goto LABEL_7;
  }

  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8) = 0;
    _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Calls to endScrubbing: must be balanced with calls to beginScrubbing:", &v8, 2u);
  }

  scrubbingCount = self->_scrubbingCount;
  if (scrubbingCount >= 1)
  {
LABEL_7:
    v7 = scrubbingCount - 1;
    self->_scrubbingCount = v7;
    if (!v7)
    {
      [(AVPlayerController *)self endScrubbing];
    }
  }
}

- (void)beginScrubbing:(id)scrubbing
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[AVPlayerController beginScrubbing:]";
    v8 = 1024;
    v9 = 4029;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
  }

  scrubbingCount = self->_scrubbingCount;
  if (!scrubbingCount)
  {
    [(AVPlayerController *)self beginScrubbing];
    scrubbingCount = self->_scrubbingCount;
  }

  self->_scrubbingCount = scrubbingCount + 1;
}

- (void)gotoEndOfSeekableRanges:(id)ranges
{
  v7 = *MEMORY[0x1E6960C88];
  v8 = *(MEMORY[0x1E6960C88] + 16);
  v5 = v7;
  v6 = v8;
  v3 = v7;
  v4 = v8;
  [(AVPlayerController *)self seekToCMTime:&v7 toleranceBefore:&v5 toleranceAfter:&v3];
}

- (void)skipBackwardThirtySeconds:(id)seconds
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem)
  {
    minTiming = [(AVPlayerController *)self minTiming];

    if (minTiming)
    {
      minTiming2 = [(AVPlayerController *)self minTiming];
      [minTiming2 currentValue];
      v8 = v7;

      if ([(AVPlayerController *)self isSeeking])
      {
        [(AVPlayerController *)self seekToTime];
      }

      else
      {
        [(AVPlayerController *)self currentTime];
      }

      v10 = v9 + -30.0;
      if (v8 > v10)
      {
        v10 = v8;
      }

      [(AVPlayerController *)self seekToTime:v10];
    }
  }
}

- (void)seekOrStepByFrameCount:(int64_t)count
{
  v35 = *MEMORY[0x1E69E9840];
  if (count)
  {
    [(AVPlayerController *)self pauseForAllCoordinatedPlaybackParticipants:1];
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];

    if (count < 1)
    {
      if ([currentItem canStepBackward])
      {
        if (!currentItem)
        {
          v10 = v24;
          goto LABEL_15;
        }

        [currentItem reversePlaybackEndTime];
        if ((v24[12] & 1) == 0)
        {
          goto LABEL_16;
        }

        [currentItem reversePlaybackEndTime];
        time2 = **&MEMORY[0x1E6960CC0];
        if (!CMTimeCompare(&time1, &time2))
        {
          goto LABEL_16;
        }
      }
    }

    else if ([currentItem canStepForward])
    {
      if (currentItem)
      {
        [currentItem forwardPlaybackEndTime];
        if (v25[12])
        {
          [currentItem forwardPlaybackEndTime];
          player2 = [(AVPlayerController *)self player];
          currentItem2 = [player2 currentItem];
          v9 = currentItem2;
          if (currentItem2)
          {
            [currentItem2 duration];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          v12 = CMTimeCompare(&time1, &time2) == 0;

          if (!v12)
          {
            goto LABEL_21;
          }
        }

LABEL_16:
        [currentItem stepByCount:count];
        v11 = _AVLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(time1.value) = 136315394;
          *(&time1.value + 4) = "[AVPlayerController seekOrStepByFrameCount:]";
          LOWORD(time1.flags) = 2048;
          *(&time1.flags + 2) = count;
          _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s stepByCount: %ld", &time1, 0x16u);
        }

        goto LABEL_24;
      }

      v10 = v25;
LABEL_15:
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      goto LABEL_16;
    }

LABEL_21:
    time1.value = 0;
    *&time1.timescale = &time1;
    time1.epoch = 0x3810000000;
    v31 = "";
    v32 = 0;
    v33 = 0;
    v34 = 0;
    if (currentItem)
    {
      [currentItem currentTime];
    }

    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = count;
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45__AVPlayerController_seekOrStepByFrameCount___block_invoke;
    aBlock[3] = &unk_1E7209B78;
    objc_copyWeak(v21, &location);
    v21[1] = count;
    aBlock[4] = &time1;
    aBlock[5] = v23;
    v13 = _Block_copy(aBlock);
    internalDelegate = self->_internalDelegate;
    v15 = currentItem;
    v16 = internalDelegate;
    v17 = [v13 copy];
    time2.value = MEMORY[0x1E69E9820];
    *&time2.timescale = 3221225472;
    time2.epoch = __mainVideoTrackForPlayerItem_block_invoke;
    v27 = &unk_1E720A040;
    v28 = v15;
    v29 = v17;
    v18 = v15;
    v19 = v17;
    dispatch_async(v16, &time2);

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(&time1, 8);
LABEL_24:
  }
}

void __45__AVPlayerController_seekOrStepByFrameCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AVPlayerController_seekOrStepByFrameCount___block_invoke_2;
  block[3] = &unk_1E7209B50;
  objc_copyWeak(v8, (a1 + 48));
  v6 = v3;
  v8[1] = *(a1 + 56);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v8);
}

void __45__AVPlayerController_seekOrStepByFrameCount___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    memset(&v11, 0, sizeof(v11));
    v3 = *(a1 + 32);
    if (!v3 || (v4 = *(a1 + 64), time = *(*(*(a1 + 40) + 8) + 32), [v3 avkit_timeForFrameSteppedByFrameCount:v4 fromFrameAtTime:&time], (v11.flags & 0x1D) != 1))
    {
      v5 = *(a1 + 48);
      v6 = *(*(a1 + 40) + 8);
      CMTimeMake(&rhs, *(*(v5 + 8) + 24), 4);
      v9 = *(v6 + 32);
      CMTimeAdd(&time, &v9, &rhs);
      v11 = time;
    }

    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      time = v11;
      Seconds = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 136315394;
      *(&time.value + 4) = "[AVPlayerController seekOrStepByFrameCount:]_block_invoke_2";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s sampleBasedSeekTarget: %f", &time, 0x16u);
    }

    time = v11;
    rhs = **&MEMORY[0x1E6960CC0];
    v9 = rhs;
    [WeakRetained seekToCMTime:&time toleranceBefore:&rhs toleranceAfter:&v9];
  }
}

- (void)seekFrameBackward:(id)backward
{
  if ([(AVPlayerController *)self canSeekFrameBackward])
  {

    [(AVPlayerController *)self seekOrStepByFrameCount:-1];
  }
}

- (BOOL)canSeekFrameBackward
{
  if ([(AVPlayerController *)self isAtMinTime])
  {
    return 0;
  }

  return [(AVPlayerController *)self canSeek];
}

- (void)seekFrameForward:(id)forward
{
  if ([(AVPlayerController *)self canSeekFrameForward])
  {

    [(AVPlayerController *)self seekOrStepByFrameCount:1];
  }
}

- (BOOL)canSeekFrameForward
{
  if ([(AVPlayerController *)self isAtMaxTime])
  {
    return 0;
  }

  return [(AVPlayerController *)self canSeek];
}

- (void)endScanningBackward:(id)backward
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = BYTE5(self->_toleranceAfter.epoch);
    *buf = 136315394;
    v11 = "[AVPlayerController endScanningBackward:]";
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s isScanningBackward: %d", buf, 0x12u);
  }

  if (BYTE5(self->_toleranceAfter.epoch) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"AVPlayerControllerScanningDirectionKey";
    v9 = &unk_1EFF12D40;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"AVPlayerControllerDidEndScanningNotification" object:self userInfo:v7];

    BYTE5(self->_toleranceAfter.epoch) = 0;
    [(AVPlayerController *)self setRate:*&self->_scanningCount];
    [(AVPlayerController *)self resumePlaybackCoordinatorIfSuspended];
  }
}

- (void)_updateScanningBackwardRate
{
  [(AVPlayerController *)self rate];
  if (v3 == 0.0)
  {

    [(AVPlayerController *)self setRate:-0.5];
    return;
  }

  v4 = v3;
  canScanBackward = [(AVPlayerController *)self canScanBackward];
  v6 = 2.0;
  if (canScanBackward)
  {
    v6 = 60.0;
  }

  if (v6 > -v4)
  {
    if (v4 >= 4.0)
    {
      v8 = ceil(log2(v4));
      v9 = -1.0;
    }

    else
    {
      v7 = 2.0;
      if (v4 > -2.0)
      {
LABEL_13:
        [(AVPlayerController *)self setRate:-v7];
        goto LABEL_14;
      }

      v8 = floor(log2(-v4));
      v9 = 1.0;
    }

    v7 = exp2(v8 + v9);
    goto LABEL_13;
  }

LABEL_14:
  scanningDelays = [(AVPlayerController *)self scanningDelays];
  if ([scanningDelays count] > *&self->_isScanningForward)
  {
    v11 = [scanningDelays objectAtIndexedSubscript:?];
    [v11 doubleValue];
    v13 = v12;

    ++*&self->_isScanningForward;
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AVPlayerController__updateScanningBackwardRate__block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_after(v14, MEMORY[0x1E69E96A0], block);
  }
}

_BYTE *__49__AVPlayerController__updateScanningBackwardRate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[237] == 1)
  {
    return [result _updateScanningBackwardRate];
  }

  return result;
}

- (void)beginScanningBackward:(id)backward
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = BYTE4(self->_toleranceAfter.epoch);
    v6 = BYTE5(self->_toleranceAfter.epoch);
    *buf = 136315650;
    v13 = "[AVPlayerController beginScanningBackward:]";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s isScanningForward: %d isScanningBackward: %d", buf, 0x18u);
  }

  if ((self->_toleranceAfter.epoch & 0x10000000000) == 0 && (self->_toleranceAfter.epoch & 0x100000000) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"AVPlayerControllerScanningDirectionKey";
    v11 = &unk_1EFF12D40;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"AVPlayerControllerDidBeginScanningNotification" object:self userInfo:v8];

    *&self->_isScanningForward = 0;
    BYTE5(self->_toleranceAfter.epoch) = 1;
    [(AVPlayerController *)self rate];
    self->_scanningCount = v9;
    [(AVPlayerController *)self suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary];
    [(AVPlayerController *)self _updateScanningBackwardRate];
  }
}

- (void)scanBackward:(id)backward
{
  if ([(AVPlayerController *)self canScanBackward])
  {
    v4 = -32.0;
  }

  else
  {
    [(AVPlayerController *)self defaultPlaybackRate];
    v4 = -v5;
  }

  [(AVPlayerController *)self rate];
  v7 = v6;
  v8 = 2.0;
  if (v7 > v4)
  {
    if (v7 >= 4.0)
    {
      v9 = ceil(log2(v7));
      v10 = -1.0;
    }

    else
    {
      if (v7 > -2.0)
      {
        goto LABEL_10;
      }

      v9 = floor(log2(-v7));
      v10 = 1.0;
    }

    v8 = exp2(v9 + v10);
  }

LABEL_10:
  v11 = -v8;

  [(AVPlayerController *)self setRate:v11];
}

- (BOOL)canScanBackward
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  if ([currentItem canPlayFastReverse] && !-[AVPlayerController touchBarRequiresLinearPlayback](self, "touchBarRequiresLinearPlayback"))
  {
    v5 = ![(AVPlayerController *)self isPictureInPictureInterrupted];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)endScanningForward:(id)forward
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = BYTE4(self->_toleranceAfter.epoch);
    *buf = 136315394;
    v11 = "[AVPlayerController endScanningForward:]";
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s isScanningForward: %d", buf, 0x12u);
  }

  if (BYTE4(self->_toleranceAfter.epoch) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = @"AVPlayerControllerScanningDirectionKey";
    v9 = &unk_1EFF12D28;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [defaultCenter postNotificationName:@"AVPlayerControllerDidEndScanningNotification" object:self userInfo:v7];

    BYTE4(self->_toleranceAfter.epoch) = 0;
    [(AVPlayerController *)self setRate:*&self->_scanningCount];
    [(AVPlayerController *)self resumePlaybackCoordinatorIfSuspended];
  }
}

- (void)_updateScanningForwardRate
{
  [(AVPlayerController *)self rate];
  if (v3 == 0.0)
  {

    [(AVPlayerController *)self setRate:0.5];
    return;
  }

  v4 = v3;
  canScanForward = [(AVPlayerController *)self canScanForward];
  v6 = 60.0;
  if (!canScanForward)
  {
    v6 = 2.0;
  }

  if (v4 < v6)
  {
    if (v4 <= -4.0)
    {
      v8 = ceil(log2(-v4));
      v9 = -1.0;
    }

    else
    {
      v7 = 2.0;
      if (v4 < 2.0)
      {
LABEL_13:
        [(AVPlayerController *)self setRate:v7];
        goto LABEL_14;
      }

      v8 = floor(log2(v4));
      v9 = 1.0;
    }

    v7 = exp2(v8 + v9);
    goto LABEL_13;
  }

LABEL_14:
  scanningDelays = [(AVPlayerController *)self scanningDelays];
  if ([scanningDelays count] > *&self->_isScanningForward)
  {
    v11 = [scanningDelays objectAtIndexedSubscript:?];
    [v11 doubleValue];
    v13 = v12;

    ++*&self->_isScanningForward;
    v14 = dispatch_time(0, (v13 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AVPlayerController__updateScanningForwardRate__block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_after(v14, MEMORY[0x1E69E96A0], block);
  }
}

_BYTE *__48__AVPlayerController__updateScanningForwardRate__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[236] == 1)
  {
    return [result _updateScanningForwardRate];
  }

  return result;
}

- (void)beginScanningForward:(id)forward
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = BYTE4(self->_toleranceAfter.epoch);
    v6 = BYTE5(self->_toleranceAfter.epoch);
    *buf = 136315650;
    v13 = "[AVPlayerController beginScanningForward:]";
    v14 = 1024;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s isScanningForward: %d    isScanningBackward: %d", buf, 0x18u);
  }

  if ((self->_toleranceAfter.epoch & 0x100000000) == 0 && (self->_toleranceAfter.epoch & 0x10000000000) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"AVPlayerControllerScanningDirectionKey";
    v11 = &unk_1EFF12D28;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    [defaultCenter postNotificationName:@"AVPlayerControllerDidBeginScanningNotification" object:self userInfo:v8];

    *&self->_isScanningForward = 0;
    BYTE4(self->_toleranceAfter.epoch) = 1;
    [(AVPlayerController *)self rate];
    self->_scanningCount = v9;
    [(AVPlayerController *)self suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary];
    [(AVPlayerController *)self _updateScanningForwardRate];
  }
}

- (void)scanForward:(id)forward
{
  if ([(AVPlayerController *)self canScanForward])
  {
    v4 = 32.0;
  }

  else
  {
    [(AVPlayerController *)self defaultPlaybackRate];
    v4 = v5;
  }

  [(AVPlayerController *)self rate];
  v7 = 2.0;
  if (v6 < v4)
  {
    if (v6 <= -4.0)
    {
      v8 = ceil(log2(-v6));
      v9 = -1.0;
    }

    else
    {
      v7 = 2.0;
      if (v6 < 2.0)
      {
        goto LABEL_10;
      }

      v8 = floor(log2(v6));
      v9 = 1.0;
    }

    v7 = exp2(v8 + v9);
  }

LABEL_10:

  [(AVPlayerController *)self setRate:v7];
}

- (BOOL)canScanForward
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  if ([currentItem canPlayFastForward] && !-[AVPlayerController touchBarRequiresLinearPlayback](self, "touchBarRequiresLinearPlayback"))
  {
    v5 = ![(AVPlayerController *)self isPictureInPictureInterrupted];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after
{
  if ([(AVPlayerController *)self isSeeking])
  {
    [(AVPlayerController *)self seekToTime];
    [(AVPlayerController *)self seekToTime];
    v10 = v9;
  }

  else
  {
    timing = [(AVPlayerController *)self timing];
    [timing currentValue];
    v10 = v12;
  }

  v13 = v10 + interval;
  [(AVPlayerController *)self minTime];
  v14 = v13;
  if (v15 > v13)
  {
    [(AVPlayerController *)self minTime];
    v14 = v16;
  }

  [(AVPlayerController *)self maxTime];
  if (v14 >= v17)
  {
    [(AVPlayerController *)self maxTime];
    goto LABEL_10;
  }

  [(AVPlayerController *)self minTime];
  v18 = v13;
  if (v19 > v13)
  {
    [(AVPlayerController *)self minTime];
LABEL_10:
    v18 = v20;
  }

  [(AVPlayerController *)self seekToTime];
  if (v18 != v21 && (v18 < v18 - before || v18 > v18 + after))
  {
    [(AVPlayerController *)self _cancelPendingSeeksIfNeeded];
  }

  timing2 = [(AVPlayerController *)self timing];
  [timing2 currentValue];
  v25 = v24;

  [(AVPlayerController *)self _adjustedSeekTimeFromTime:v25 toTime:v13];
  if (v13 == v26)
  {
    v26 = v13;
  }

  [(AVPlayerController *)self seekToTime:v26 toleranceBefore:before toleranceAfter:after];
}

- (void)actuallySeekToTime
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self canSeek])
  {
    [(AVPlayerController *)self setSeekingInternal:1];
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [(AVPlayerController *)self seekToTimeInternal];
      Seconds = CMTimeGetSeconds(&time);
      time = *(&self->_pendingSeek + 4);
      v5 = CMTimeGetSeconds(&time);
      time = *(&self->_toleranceBefore.epoch + 4);
      v6 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 136315906;
      *(&time.value + 4) = "[AVPlayerController actuallySeekToTime]";
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = Seconds;
      HIWORD(time.epoch) = 2048;
      v21 = v5;
      v22 = 2048;
      v23 = v6;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s time: %f toleranceBefore: %f toleranceAfter: %f", &time, 0x2Au);
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__AVPlayerController_actuallySeekToTime__block_invoke_428;
    aBlock[3] = &unk_1E7209A88;
    objc_copyWeak(&v16, &location);
    v7 = _Block_copy(aBlock);
    if (self->_photosensitivityRegions)
    {
      [(AVPlayerController *)self seekToTimeInternal];
      v8 = CMTimeGetSeconds(&time);
      photosensitivityRegions = self->_photosensitivityRegions;
      time = *(&self->_pendingSeek + 4);
      v13 = *(&self->_toleranceBefore.epoch + 4);
      v14 = *&self->_toleranceAfter.flags;
      [(NSArray *)photosensitivityRegions seekToDisplayTime:&time toleranceBefore:&v13 toleranceAfter:v7 completionHandler:v8];
    }

    else
    {
      player = [(AVPlayerController *)self player];
      [(AVPlayerController *)self seekToTimeInternal];
      v13 = *(&self->_pendingSeek + 4);
      v14 = *&self->_toleranceBefore.flags;
      v11 = *(&self->_toleranceBefore.epoch + 4);
      v12 = *&self->_toleranceAfter.flags;
      [player seekToTime:&time toleranceBefore:&v13 toleranceAfter:&v11 completionHandler:v7];
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    objc_initWeak(&time, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVPlayerController_actuallySeekToTime__block_invoke;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v19, &time);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&time);
  }
}

void __40__AVPlayerController_actuallySeekToTime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSeeking:0];
}

void __40__AVPlayerController_actuallySeekToTime__block_invoke_428(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      if (a2)
      {
        v6 = "YES";
      }

      *buf = 136315138;
      v11 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "Seek completed: %s", buf, 0xCu);
    }

    v7 = WeakRetained[22];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__AVPlayerController_actuallySeekToTime__block_invoke_429;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_async(v7, block);
    objc_destroyWeak(&v9);
  }
}

void __40__AVPlayerController_actuallySeekToTime__block_invoke_429(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[184] == 1)
    {
      WeakRetained[184] = 0;
      [WeakRetained actuallySeekToTime];
    }

    else
    {
      [WeakRetained setSeekingInternal:0];
      v8 = *MEMORY[0x1E6960C70];
      v5 = v8;
      v9 = *(MEMORY[0x1E6960C70] + 16);
      v4 = v9;
      [v3 setSeekToTimeInternal:&v8];
      *(v3 + 188) = v5;
      *(v3 + 204) = v4;
      *(v3 + 212) = v5;
      *(v3 + 228) = v4;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__AVPlayerController_actuallySeekToTime__block_invoke_2;
      block[3] = &unk_1E7209EA8;
      objc_copyWeak(&v7, (a1 + 32));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v7);
    }
  }
}

void __40__AVPlayerController_actuallySeekToTime__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = [WeakRetained timeline];

    if (v1)
    {
      [WeakRetained updateTiming];
    }

    [WeakRetained setSeeking:0];
    [WeakRetained _updateRateForScrubbingAndSeeking];
  }
}

- (void)throttledSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  if (![(AVPlayerController *)self canSeek])
  {
    return;
  }

  memset(&v36, 0, sizeof(v36));
  [(AVPlayerController *)self minTime];
  CMTimeMakeWithSeconds(&v36, v9, 60000);
  memset(&start, 0, sizeof(start));
  [(AVPlayerController *)self maxTime];
  CMTimeMakeWithSeconds(&start, v10, 60000);
  if ([(AVPlayerController *)self isStreaming]&& ![(AVPlayerController *)self hasLiveStreamingContent])
  {
    seekableTimeRanges = [(AVPlayerController *)self seekableTimeRanges];
    firstObject = [seekableTimeRanges firstObject];
    v13 = firstObject;
    if (firstObject)
    {
      [firstObject CMTimeRangeValue];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    CMTimeRangeGetEnd(&time2, &range);
    time1 = start;
    CMTimeMinimum(&range.start, &time1, &time2);
    start = range.start;
  }

  hasSeekableLiveStreamingContent = [(AVPlayerController *)self hasSeekableLiveStreamingContent];
  v15 = MEMORY[0x1E6960CC0];
  if (hasSeekableLiveStreamingContent)
  {
    v16 = *MEMORY[0x1E6960CC0];
    *&after->var0 = *MEMORY[0x1E6960CC0];
    v17 = *(v15 + 16);
    after->var3 = v17;
    *&before->var0 = v16;
    before->var3 = v17;
  }

  *&range.start.value = *&time->var0;
  range.start.epoch = time->var3;
  time2 = v36;
  if (CMTimeCompare(&range.start, &time2) < 0 || (~time->var2 & 9) == 0)
  {
    *time = v36;
    afterCopy = before;
LABEL_20:
    *&afterCopy->var0 = *v15;
    afterCopy->var3 = *(v15 + 16);
    var2 = time->var2;
    goto LABEL_21;
  }

  *&range.start.value = *&time->var0;
  range.start.epoch = time->var3;
  time2 = start;
  if (CMTimeCompare(&range.start, &time2) > 0 || (var2 = time->var2, (~var2 & 5) == 0))
  {
    if ([(AVPlayerController *)self hasSeekableLiveStreamingContent]|| ![(AVPlayerController *)self hasLiveStreamingContent])
    {
      *time = start;
    }

    else
    {
      maxTiming = [(AVPlayerController *)self maxTiming];
      [maxTiming currentValue];
      CMTimeMakeWithSeconds(&range.start, v21, 60000);
      *&time->var0 = *&range.start.value;
      time->var3 = range.start.epoch;
    }

    afterCopy = after;
    goto LABEL_20;
  }

LABEL_21:
  if (var2)
  {
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    Seconds = CMTimeGetSeconds(&range.start);
  }

  else
  {
    Seconds = NAN;
  }

  [(AVPlayerController *)self setSeeking:1];
  [(AVPlayerController *)self setSeekToTime:Seconds];
  objc_initWeak(&range, self);
  seekQueue = self->_seekQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __73__AVPlayerController_throttledSeekToTime_toleranceBefore_toleranceAfter___block_invoke;
  v24[3] = &unk_1E7209B28;
  objc_copyWeak(&v25, &range);
  v26 = *&time->var0;
  var3 = time->var3;
  v28 = *&before->var0;
  v29 = before->var3;
  v30 = *&after->var0;
  v31 = after->var3;
  dispatch_async(seekQueue, v24);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&range);
}

void __73__AVPlayerController_throttledSeekToTime_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    [WeakRetained setSeekToTimeInternal:&v6];
    v4 = *(a1 + 64);
    *(v3 + 204) = *(a1 + 80);
    *(v3 + 188) = v4;
    v5 = *(a1 + 88);
    *(v3 + 228) = *(a1 + 104);
    *(v3 + 212) = v5;
    if ([v3 isSeekingInternal])
    {
      v3[184] = 1;
    }

    else
    {
      [v3 actuallySeekToTime];
    }
  }
}

- (void)seekToCMTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  v7 = *time;
  v6 = *before;
  v5 = *after;
  [(AVPlayerController *)self throttledSeekToTime:&v7 toleranceBefore:&v6 toleranceAfter:&v5];
}

- (void)seekToTime:(double)time toleranceBefore:(double)before toleranceAfter:(double)after
{
  AVTimeIntervalToCMTime(&v10, time);
  AVTimeIntervalToCMTime(&v9, before);
  AVTimeIntervalToCMTime(&v8, after);
  [(AVPlayerController *)self seekToCMTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8];
}

- (void)resumePlaybackCoordinatorIfSuspended
{
  v13 = *MEMORY[0x1E69E9840];
  scrubCoordinatorSuspension = [(AVPlayerController *)self scrubCoordinatorSuspension];

  if (scrubCoordinatorSuspension)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "[AVPlayerController resumePlaybackCoordinatorIfSuspended]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Ending coordination suspension.", &buf, 0xCu);
    }

    memset(&buf, 0, sizeof(buf));
    [(AVPlayerController *)self seekToTimeInternal];
    if ((buf.flags & 1) == 0)
    {
      player = [(AVPlayerController *)self player];
      v6 = player;
      if (player)
      {
        [player currentTime];
      }

      else
      {
        memset(&v11, 0, sizeof(v11));
      }

      buf = v11;

      timeline = [(AVPlayerController *)self timeline];

      if (timeline)
      {
        timeline2 = [(AVPlayerController *)self timeline];
        [timeline2 currentTimeInterval];
        CMTimeMakeWithSeconds(&v11, v9, 1000);
        buf = v11;
      }
    }

    v10 = [(AVPlayerController *)self scrubCoordinatorSuspension:*&v11.value];
    v11 = buf;
    [v10 endProposingNewTime:&v11];

    [(AVPlayerController *)self setScrubCoordinatorSuspension:0];
  }
}

- (void)suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  scrubCoordinatorSuspension = [(AVPlayerController *)self scrubCoordinatorSuspension];

  if (!scrubCoordinatorSuspension)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[AVPlayerController suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Starting coordination suspension.", &v8, 0xCu);
    }

    player = [(AVPlayerController *)self player];
    _playbackCoordinatorWithoutTriggeringFullSetup = [player _playbackCoordinatorWithoutTriggeringFullSetup];
    v7 = [_playbackCoordinatorWithoutTriggeringFullSetup beginSuspensionForReason:*MEMORY[0x1E69873D0]];
    [(AVPlayerController *)self setScrubCoordinatorSuspension:v7];
  }
}

- (void)endScrubbing
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v12.value) = 136315394;
    *(&v12.value + 4) = "[AVPlayerController endScrubbing]";
    LOWORD(v12.flags) = 1024;
    *(&v12.flags + 2) = 3412;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v12, 0x12u);
  }

  [(AVPlayerController *)self setScrubbing:0];
  [(AVPlayerController *)self _updateRateForScrubbingAndSeeking];
  v4 = +[AVKitGlobalSettings shared];
  showsTVControls = [v4 showsTVControls];

  if ((showsTVControls & 1) == 0)
  {
    [(AVPlayerController *)self initialScrubbingTime];
    v7 = v6;
    [(AVPlayerController *)self currentTime];
    v9 = v8;
    if ([(AVPlayerController *)self isSeekingInternal])
    {
      [(AVPlayerController *)self seekToTimeInternal];
      Seconds = CMTimeGetSeconds(&v12);
      if (fabs(Seconds) != INFINITY)
      {
        v9 = Seconds;
      }
    }

    [(AVPlayerController *)self _adjustedSeekTimeFromTime:v7 toTime:v9];
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v11 != v9)
    {
      [(AVPlayerController *)self seekToTime:v11 toleranceBefore:0.0 toleranceAfter:0.0];
    }
  }

  [(AVPlayerController *)self resumePlaybackCoordinatorIfSuspended];
}

- (void)beginScrubbing
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[AVPlayerController beginScrubbing]";
    v6 = 1024;
    v7 = 3395;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v4, 0x12u);
  }

  [(AVPlayerController *)self setScrubbing:1];
  [(AVPlayerController *)self suspendPlaybackCoordinatorWhileActivelySeekingIfNecessary];
  [(AVPlayerController *)self _updateRateForScrubbingAndSeeking];
  [(AVPlayerController *)self _cancelPendingSeeksIfNeeded];
  [(AVPlayerController *)self currentTime];
  [(AVPlayerController *)self setInitialScrubbingTime:?];
}

- (BOOL)canSeek
{
  isCurrentItemReadyForInspection = [(AVPlayerController *)self isCurrentItemReadyForInspection];
  if (!isCurrentItemReadyForInspection)
  {
    return isCurrentItemReadyForInspection;
  }

  if ([(AVPlayerController *)self touchBarRequiresLinearPlayback]|| [(AVPlayerController *)self isPictureInPictureInterrupted])
  {
    goto LABEL_4;
  }

  if ([(AVPlayerController *)self hasLiveStreamingContent])
  {

    LOBYTE(isCurrentItemReadyForInspection) = [(AVPlayerController *)self hasSeekableLiveStreamingContent];
    return isCurrentItemReadyForInspection;
  }

  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  seekableTimeRanges = [(AVPlayerController *)self seekableTimeRanges];
  firstObject = [seekableTimeRanges firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    [firstObject CMTimeRangeValue];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v15 = 0u;
  }

  v7 = HIDWORD(v15);
  if ((BYTE12(v15) & 1) == 0)
  {
LABEL_14:
    LOBYTE(isCurrentItemReadyForInspection) = 1;
    return isCurrentItemReadyForInspection;
  }

  v8 = DWORD1(v16[1]);
  v9 = BYTE4(v16[1]) & 1;
  v10 = *(&v16[1] + 1);
  v11 = *(&v16[0] + 1);
  if ((BYTE4(v16[1]) & 1) != 0 && !*(&v16[1] + 1) && (*(&v16[0] + 1) & 0x8000000000000000) == 0)
  {
    time1 = *(v16 + 8);
    v13 = **&MEMORY[0x1E6960CC0];
    isCurrentItemReadyForInspection = CMTimeCompare(&time1, &v13);
    if (!isCurrentItemReadyForInspection)
    {
      return isCurrentItemReadyForInspection;
    }

    v7 = HIDWORD(v15);
    if ((BYTE12(v15) & 1) == 0)
    {
      goto LABEL_14;
    }

    v8 = DWORD1(v16[1]);
    v10 = *(&v16[1] + 1);
    v11 = *(&v16[0] + 1);
    v9 = BYTE4(v16[1]) & 1;
  }

  LOBYTE(isCurrentItemReadyForInspection) = 1;
  if (v9 && !v10 && (v11 & 0x8000000000000000) == 0)
  {
    if ((~v7 & 0x11) == 0)
    {
LABEL_4:
      LOBYTE(isCurrentItemReadyForInspection) = 0;
      return isCurrentItemReadyForInspection;
    }

    LOBYTE(isCurrentItemReadyForInspection) = (~v8 & 0x11) != 0;
  }

  return isCurrentItemReadyForInspection;
}

- (int64_t)timeControlStatus
{
  if ([(AVPlayerController *)self _mainPlayerIsWaitingForInterstitialPlayback])
  {
    interstitialController = [(AVPlayerController *)self interstitialController];
    interstitialPlayer = [interstitialController interstitialPlayer];
    timeControlStatus = [interstitialPlayer timeControlStatus];
  }

  else
  {
    interstitialController = [(AVPlayerController *)self player];
    timeControlStatus = [interstitialController timeControlStatus];
  }

  return timeControlStatus;
}

- (void)currentEnabledAssetTrackForMediaType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  timeline = [(AVPlayerController *)self timeline];

  if ([typeCopy isEqualToString:*MEMORY[0x1E69875A0]])
  {
    currentAudioMediaSelectionOption = [(AVPlayerController *)self currentAudioMediaSelectionOption];
LABEL_5:
    v10 = currentAudioMediaSelectionOption;
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E6987608]])
  {
    currentAudioMediaSelectionOption = [(AVPlayerController *)self currentVideoMediaSelectionOption];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:
  if (timeline)
  {
    [(AVPlayerController *)self activePlayer];
  }

  else
  {
    [(AVPlayerController *)self player];
  }
  v22 = ;
  currentItem = [v22 currentItem];
  tracks = [currentItem tracks];

  if (timeline)
  {
    [(AVPlayerController *)self activeAssetIfReady];
  }

  else
  {
    [(AVPlayerController *)self currentAssetIfReady];
  }
  v13 = ;
  isStreaming = [(AVPlayerController *)self isStreaming];
  v15 = [handlerCopy copy];

  objc_initWeak(&location, self);
  internalDelegate = self->_internalDelegate;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AVPlayerController_currentEnabledAssetTrackForMediaType_completionHandler___block_invoke;
  block[3] = &unk_1E7209B00;
  objc_copyWeak(&v29, &location);
  v24 = v10;
  v25 = tracks;
  v30 = isStreaming;
  v26 = typeCopy;
  v27 = v13;
  v28 = v15;
  v17 = v15;
  v18 = v13;
  v19 = typeCopy;
  v20 = tracks;
  v21 = v10;
  dispatch_async(internalDelegate, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __77__AVPlayerController_currentEnabledAssetTrackForMediaType_completionHandler___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) track];
    if (v3)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v4 = *(a1 + 40);
      v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v34;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v34 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v33 + 1) + 8 * i);
            v10 = [v9 assetTrack];
            v11 = v10;
            if (v10 == v3)
            {
              v12 = [v9 isEnabled];

              if (v12)
              {
                v22 = v3;
                goto LABEL_28;
              }
            }

            else
            {
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    if (*(a1 + 80) == 1)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v13 = *(a1 + 40);
      v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
LABEL_17:
        v17 = 0;
        while (1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * v17);
          v19 = [v18 assetTrack];
          if ([v18 isEnabled])
          {
            v20 = [v19 mediaType];
            v21 = [v20 isEqualToString:*(a1 + 48)];

            if (v21)
            {
              break;
            }
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v15)
            {
              goto LABEL_17;
            }

            goto LABEL_24;
          }
        }

        if (v19)
        {
          goto LABEL_29;
        }
      }

      else
      {
LABEL_24:
      }
    }

    v4 = [*(a1 + 56) avkit_tracksWithMediaType:*(a1 + 48)];
    v22 = [v4 firstObject];
LABEL_28:
    v19 = v22;

LABEL_29:
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__AVPlayerController_currentEnabledAssetTrackForMediaType_completionHandler___block_invoke_2;
    v24[3] = &unk_1E7209AD8;
    objc_copyWeak(&v28, (a1 + 72));
    v27 = *(a1 + 64);
    v25 = v19;
    v26 = *(a1 + 56);
    v23 = v19;
    dispatch_async(MEMORY[0x1E69E96A0], v24);

    objc_destroyWeak(&v28);
  }
}

void __77__AVPlayerController_currentEnabledAssetTrackForMediaType_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained timeline];

  if (v2)
  {
    [WeakRetained activeAssetIfReady];
  }

  else
  {
    [WeakRetained currentAssetIfReady];
  }
  v3 = ;
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v3 == *(a1 + 40));
}

- (void)_updatePlayingOnMatchPointDeviceIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _outputContext = [(AVPlayerController *)self _outputContext];
  outputDevices = [_outputContext outputDevices];

  v5 = [outputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(outputDevices);
        }

        deviceSubType = [*(*(&v16 + 1) + 8 * i) deviceSubType];
        if (deviceSubType <= 0x11 && ((1 << deviceSubType) & 0x30800) != 0)
        {
          v7 = 1;
        }
      }

      v6 = [outputDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__AVPlayerController__updatePlayingOnMatchPointDeviceIfNeeded__block_invoke;
  block[3] = &unk_1E720A0B8;
  objc_copyWeak(&v13, &location);
  v14 = v7 & 1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__AVPlayerController__updatePlayingOnMatchPointDeviceIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPlayingOnMatchPointDevice:*(a1 + 40)];
}

- (void)_throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext:(id)context
{
  contextCopy = context;
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = v5;
  if (!self->_backgroundQueue)
  {
    objc_initWeak(&location, self);
    goto LABEL_7;
  }

  [v5 timeIntervalSinceDate:?];
  v8 = v7;
  objc_initWeak(&location, self);
  if (v8 > 0.25)
  {
LABEL_7:
    objc_storeStrong(&self->_backgroundQueue, v6);
    internalDelegate = self->_internalDelegate;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke;
    block[3] = &unk_1E7209A10;
    v19 = contextCopy;
    objc_copyWeak(&v20, &location);
    dispatch_async(internalDelegate, block);
    objc_destroyWeak(&v20);

    goto LABEL_8;
  }

  if (!self->_lastTimePlayingOnMatchPointDeviceWasUpdated)
  {
    if (self->_backgroundQueue)
    {
      [v6 timeIntervalSinceDate:?];
      v10 = 0.25 - v9;
    }

    else
    {
      v10 = 0.0;
    }

    v12 = fmax(v10, 0.01);
    v13 = MEMORY[0x1E695DFF0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke_2;
    v16[3] = &unk_1E7209DA8;
    objc_copyWeak(&v17, &location);
    v14 = [v13 scheduledTimerWithTimeInterval:0 repeats:v16 block:v12];
    lastTimePlayingOnMatchPointDeviceWasUpdated = self->_lastTimePlayingOnMatchPointDeviceWasUpdated;
    self->_lastTimePlayingOnMatchPointDeviceWasUpdated = v14;

    objc_destroyWeak(&v17);
  }

LABEL_8:
  objc_destroyWeak(&location);
}

void __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextID];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _outputContext];
  v5 = [v4 contextID];
  v6 = [v2 isEqualToString:v5];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    [v7 _updatePlayingOnMatchPointDeviceIfNeeded];
  }
}

void __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[44];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke_3;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }
}

void __83__AVPlayerController__throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x1E695DF00] now];
    v3 = *(v5 + 45);
    *(v5 + 45) = v2;

    [v5 _updatePlayingOnMatchPointDeviceIfNeeded];
    [*(v5 + 46) invalidate];
    v4 = *(v5 + 46);
    *(v5 + 46) = 0;

    WeakRetained = v5;
  }
}

- (void)_updateCurrentVideoTrackIfNeeded
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];

  if (currentAssetIfReady)
  {
    objc_initWeak(&location, self);
    v4 = *MEMORY[0x1E6987608];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__AVPlayerController__updateCurrentVideoTrackIfNeeded__block_invoke;
    v5[3] = &unk_1E7209AB0;
    objc_copyWeak(&v6, &location);
    [(AVPlayerController *)self currentEnabledAssetTrackForMediaType:v4 completionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {

    [(AVPlayerController *)self setCurrentVideoTrack:0];
  }
}

void __54__AVPlayerController__updateCurrentVideoTrackIfNeeded__block_invoke(uint64_t a1, void *a2, int a3)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (a3)
    {
      v7 = [WeakRetained currentVideoTrack];

      if (v7 != v8)
      {
        [v6 setCurrentVideoTrack:v8];
      }
    }
  }
}

- (void)_updateCurrentAudioTrackIfNeeded
{
  timeline = [(AVPlayerController *)self timeline];

  if (timeline)
  {
    [(AVPlayerController *)self activeAssetIfReady];
  }

  else
  {
    [(AVPlayerController *)self currentAssetIfReady];
  }
  v4 = ;
  if (v4)
  {
    objc_initWeak(&location, self);
    v5 = *MEMORY[0x1E69875A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__AVPlayerController__updateCurrentAudioTrackIfNeeded__block_invoke;
    v6[3] = &unk_1E7209AB0;
    objc_copyWeak(&v7, &location);
    [(AVPlayerController *)self currentEnabledAssetTrackForMediaType:v5 completionHandler:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AVPlayerController *)self setCurrentAudioTrack:0];
  }
}

void __54__AVPlayerController__updateCurrentAudioTrackIfNeeded__block_invoke(uint64_t a1, void *a2, int a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && a3)
  {
    [WeakRetained setCurrentAudioTrack:v7];
  }
}

- (void)_updateCoordinatedPlaybackActive
{
  _playbackCoordinatorWithoutTriggeringFullSetup = [*&self->_coordinatedPlaybackActive _playbackCoordinatorWithoutTriggeringFullSetup];
  otherParticipants = [_playbackCoordinatorWithoutTriggeringFullSetup otherParticipants];
  v5 = [otherParticipants count] != 0;

  [(AVPlayerController *)self setCoordinatedPlaybackActive:v5];
}

- (BOOL)_assetContainsProResRaw:(id)raw
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [raw tracks];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        formatDescriptions = [v5 formatDescriptions];
        v7 = [formatDescriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = *v19;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(formatDescriptions);
            }

            MediaSubType = CMFormatDescriptionGetMediaSubType(*(*(&v18 + 1) + 8 * v11));
            if (MediaSubType == 1634759272 || MediaSubType == 1634759278)
            {
              v9 = 1;
            }

            if (MediaSubType == 1634759272 || MediaSubType == 1634759278)
            {
              break;
            }

            if (v8 == ++v11)
            {
              v8 = [formatDescriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v8)
              {
                goto LABEL_8;
              }

              break;
            }
          }

          if (v9)
          {
            LOBYTE(v3) = 1;
            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

LABEL_27:

  return v3;
}

- (BOOL)_assetIsMarkedNotSerializable:(id)serializable
{
  serializableCopy = serializable;
  availableMetadataFormats = [(AVPlayerController *)self availableMetadataFormats];
  v6 = *MEMORY[0x1E6987700];
  if ([availableMetadataFormats containsObject:*MEMORY[0x1E6987700]] && (v7 = MEMORY[0x1E6987FE0], objc_msgSend(serializableCopy, "avkit_metadataForFormat:", v6), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "metadataItemsFromArray:withKey:keySpace:", v8, @"com.apple.motion.notserializable", *MEMORY[0x1E6987850]), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = *MEMORY[0x1E69876F8];
    if ([availableMetadataFormats containsObject:*MEMORY[0x1E69876F8]])
    {
      v13 = [serializableCopy avkit_metadataForFormat:v12];
      v14 = MEMORY[0x1E6987FE0];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1853055350];
      v16 = [v14 metadataItemsFromArray:v13 withKey:v15 keySpace:*MEMORY[0x1E6987848]];

      if ([v16 count])
      {
        v17 = [v16 objectAtIndex:0];
        dataValue = [v17 dataValue];

        v20 = 0;
        [dataValue getBytes:&v20 length:4];
        v11 = HIBYTE(v20) & 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (BOOL)_assetIsRestrictedFromSaving:(id)saving
{
  savingCopy = saving;
  v5 = [(AVPlayerController *)self _assetIsMarkedNotSerializable:savingCopy];
  hasProtectedContent = [(AVPlayerController *)self hasProtectedContent];
  availableVideoDynamicRanges = [savingCopy availableVideoDynamicRanges];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:5];
  v9 = [availableVideoDynamicRanges containsObject:v8];

  LOBYTE(self) = [(AVPlayerController *)self _assetContainsProResRaw:savingCopy];
  return (self | hasProtectedContent | v5 | v9) & 1;
}

- (BOOL)hasShareableContent
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem)
  {
    currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
    if (currentAssetIfReady && ![(AVPlayerController *)self _assetIsRestrictedFromSaving:currentAssetIfReady])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [currentAssetIfReady URL];
        isKindOfClass = v8 != 0;
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)hasTrimmableContent
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  asset = [currentItem asset];

  if (asset && [(AVPlayerController *)self isCompletelySeekable])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isComposable = 1;
    }

    else
    {
      isComposable = [asset isComposable];
    }
  }

  else
  {
    isComposable = 0;
  }

  return isComposable;
}

- (BOOL)hasSeekableLiveStreamingContent
{
  [(AVPlayerController *)self _updateMinMaxTimingIfNeeded];
  LODWORD(minTiming) = [(AVPlayerController *)self hasLiveStreamingContent];
  if (minTiming)
  {
    minTiming = [(AVPlayerController *)self minTiming];
    if (minTiming)
    {
      v4 = minTiming;
      maxTiming = [(AVPlayerController *)self maxTiming];
      if (!maxTiming)
      {
LABEL_8:

LABEL_9:
        LOBYTE(minTiming) = 0;
        return minTiming;
      }

      v6 = maxTiming;
      player = [(AVPlayerController *)self player];
      currentItem = [player currentItem];
      [currentItem seekableTimeRangesLastModifiedTime];
      if (v9 == 0.0)
      {
LABEL_7:

        goto LABEL_8;
      }

      player2 = [(AVPlayerController *)self player];
      currentItem2 = [player2 currentItem];
      [currentItem2 liveUpdateInterval];
      if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {

        goto LABEL_7;
      }

      player3 = [(AVPlayerController *)self player];
      currentItem3 = [player3 currentItem];
      [currentItem3 liveUpdateInterval];
      v16 = v15;

      if (v16 <= 1.0)
      {
        goto LABEL_9;
      }

      +[AVValueTiming currentTimeStamp];
      v18 = v17;
      minTiming2 = [(AVPlayerController *)self minTiming];
      [minTiming2 valueForTimeStamp:v18];
      v21 = v20;

      maxTiming2 = [(AVPlayerController *)self maxTiming];
      [maxTiming2 valueForTimeStamp:v18];
      v24 = v23;

      LOBYTE(minTiming) = v24 - v21 > 30.0;
    }
  }

  return minTiming;
}

- (BOOL)hasLiveStreamingContent
{
  isCurrentItemReadyForInspection = [(AVPlayerController *)self isCurrentItemReadyForInspection];
  if (isCurrentItemReadyForInspection && ([(AVPlayerController *)self hasEnabledAudio]|| (isCurrentItemReadyForInspection = [(AVPlayerController *)self hasEnabledVideo])))
  {
    if ([(AVPlayerController *)self isReadyToPlay])
    {
      player = [(AVPlayerController *)self player];
      currentItem = [player currentItem];
      asset = [currentItem asset];
      v7 = asset;
      if (asset)
      {
        [asset duration];
        if (v14)
        {
          player2 = [(AVPlayerController *)self player];
          currentItem2 = [player2 currentItem];
          asset2 = [currentItem2 asset];
          if (asset2)
          {
            v11 = asset2;
            [asset2 duration];

            if ((v13 & 0x10) != 0)
            {
              LOBYTE(isCurrentItemReadyForInspection) = 1;
              return isCurrentItemReadyForInspection;
            }

LABEL_14:
            LOBYTE(isCurrentItemReadyForInspection) = 0;
            return isCurrentItemReadyForInspection;
          }
        }
      }

      goto LABEL_14;
    }

    [(AVPlayerController *)self contentDuration];
    goto LABEL_14;
  }

  return isCurrentItemReadyForInspection;
}

- (BOOL)isPlayableOffline
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    assetCache = [currentAssetIfReady assetCache];
    isPlayableOffline = [assetCache isPlayableOffline];
  }

  else
  {
    isPlayableOffline = 0;
  }

  return isPlayableOffline;
}

- (BOOL)isStreaming
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  v3 = [currentAssetIfReady valueForKey:@"streaming"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasContentChapters
{
  contentChapters = [(AVPlayerController *)self contentChapters];
  v3 = contentChapters;
  v4 = contentChapters && [contentChapters count];

  return v4;
}

- (BOOL)hasEnabledVideo
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  hasEnabledVideo = [currentItem hasEnabledVideo];

  return hasEnabledVideo;
}

- (BOOL)hasVideo
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  hasVideo = [currentItem hasVideo];

  return hasVideo;
}

- (BOOL)hasEnabledAudio
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  hasEnabledAudio = [currentItem hasEnabledAudio];

  return hasEnabledAudio;
}

- (id)loadedTimeRanges
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(AVPlayerController *)self isReadyToPlay])
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    loadedTimeRanges = [currentItem loadedTimeRanges];

    [(AVPlayerController *)self contentDuration];
    if (loadedTimeRanges)
    {
      v7 = v6;
      v8 = 0;
      if ([loadedTimeRanges count] && v7 > 0.0)
      {
        array = [MEMORY[0x1E695DF70] array];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = loadedTimeRanges;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v22 + 1) + 8 * i);
              memset(v21, 0, sizeof(v21));
              v20 = 0u;
              if (v15)
              {
                [v15 CMTimeRangeValue];
              }

              *&v19.value = v20;
              v19.epoch = *&v21[0];
              v16 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v19) / v7];
              [array addObject:v16];

              v19 = *(v21 + 8);
              v17 = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v19) / v7];
              [array addObject:v17];
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v12);
        }

        v8 = [array copy];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)seekableTimeRanges
{
  timeline = [(AVPlayerController *)self timeline];
  v4 = timeline;
  if (timeline)
  {
    seekableCMTimeRanges = [timeline seekableCMTimeRanges];
  }

  else
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    seekableCMTimeRanges = [currentItem seekableTimeRanges];
  }

  return seekableCMTimeRanges;
}

- (double)currentTimeWithinEndTimes
{
  [(AVPlayerController *)self currentTime];
  v4 = v3;
  [(AVPlayerController *)self minTime];
  return v4 - v5;
}

- (NSDate)currentOrEstimatedDate
{
  if ([(AVPlayerController *)self hasLiveStreamingContent])
  {
    if ([(AVPlayerController *)self isReadyToPlay])
    {
      player = [(AVPlayerController *)self player];
      currentItem = [player currentItem];
    }

    else
    {
      currentItem = 0;
    }

    currentDate = [currentItem currentDate];
    v7 = currentDate;
    if (currentDate)
    {
      currentEstimatedDate = currentDate;
    }

    else
    {
      currentEstimatedDate = [currentItem currentEstimatedDate];
    }

    v5 = currentEstimatedDate;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDate)currentDate
{
  if ([(AVPlayerController *)self hasLiveStreamingContent])
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    currentDate = [currentItem currentDate];
  }

  else
  {
    currentDate = 0;
  }

  return currentDate;
}

- (double)contentDurationWithinEndTimes
{
  [(AVPlayerController *)self maxTime];
  v4 = v3;
  [(AVPlayerController *)self minTime];
  return v4 - v5;
}

- (void)_setMinTiming:(id)timing maxTiming:(id)maxTiming
{
  maxTimingCopy = maxTiming;
  [(AVPlayerController *)self setMinTiming:timing];
  [(AVPlayerController *)self setMaxTiming:maxTimingCopy];
}

- (void)setForwardPlaybackEndTime:(id *)time
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v6 = *time;
  [currentItem setForwardPlaybackEndTime:&v6];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)forwardPlaybackEndTime
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem forwardPlaybackEndTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setMaxTime:(double)time
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem && ![(AVPlayerController *)self hasLiveStreamingContent])
  {
    [(AVPlayerController *)self contentDuration];
    if (v7 == time)
    {
      player2 = [(AVPlayerController *)self player];
      currentItem2 = [player2 currentItem];
      v10 = currentItem2;
      if (currentItem2)
      {
        [currentItem2 duration];
      }

      else
      {
        memset(&v11, 0, sizeof(v11));
      }

      [currentItem setForwardPlaybackEndTime:&v11];
    }

    else
    {
      CMTimeMakeWithSeconds(&v11, time, 90000);
      [currentItem setForwardPlaybackEndTime:&v11];
    }
  }
}

- (double)maxTime
{
  memset(&v10[1], 0, sizeof(CMTime));
  [(AVPlayerController *)self forwardPlaybackEndTime];
  if (0 >> 96 == 1)
  {
    v10[0] = v10[1];
    Seconds = CMTimeGetSeconds(v10);
    if (fabs(Seconds) == INFINITY)
    {
      return NAN;
    }

    else
    {
      return Seconds;
    }
  }

  else
  {
    [(AVPlayerController *)self contentDuration];
    v4 = v5;
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if ([(AVPlayerController *)self hasSeekableLiveStreamingContent]&& ([(AVPlayerController *)self maxTiming], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
      {
        maxTiming = [(AVPlayerController *)self maxTiming];
        [maxTiming currentValue];
        v4 = v8;
      }

      else
      {
        return NAN;
      }
    }
  }

  return v4;
}

- (void)setReversePlaybackEndTime:(id *)time
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v6 = *time;
  [currentItem setReversePlaybackEndTime:&v6];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)reversePlaybackEndTime
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v5 = currentItem;
  if (currentItem)
  {
    [currentItem reversePlaybackEndTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setMinTime:(double)time
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];

  if (currentItem && ![(AVPlayerController *)self hasLiveStreamingContent])
  {
    CMTimeMakeWithSeconds(&v7, time, 90000);
    [currentItem setReversePlaybackEndTime:&v7];
  }
}

- (double)minTime
{
  memset(&v9[1], 0, sizeof(CMTime));
  [(AVPlayerController *)self reversePlaybackEndTime];
  if (0 >> 96 == 1)
  {
    v9[0] = v9[1];
    Seconds = CMTimeGetSeconds(v9);
    if (fabs(Seconds) == INFINITY)
    {
      return NAN;
    }

    else
    {
      return Seconds;
    }
  }

  else
  {
    v4 = 0.0;
    if ([(AVPlayerController *)self hasSeekableLiveStreamingContent])
    {
      minTiming = [(AVPlayerController *)self minTiming];

      if (minTiming)
      {
        minTiming2 = [(AVPlayerController *)self minTiming];
        [minTiming2 currentValue];
        v4 = v7;
      }
    }
  }

  return v4;
}

- (double)currentTime
{
  if (![(AVPlayerController *)self isReadyToPlay])
  {
    return NAN;
  }

  photosensitivityRegions = self->_photosensitivityRegions;
  if (photosensitivityRegions)
  {
    [(NSArray *)photosensitivityRegions currentTimeInterval];
    Seconds = v4;
  }

  else
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    v9 = currentItem;
    if (currentItem)
    {
      [currentItem currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
  }

  result = NAN;
  if ((*&Seconds & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return Seconds;
  }

  return result;
}

- (CGSize)contentDimensions
{
  if ([(AVPlayerController *)self isReadyToPlay])
  {
    [(AVPlayerController *)self presentationSize];
  }

  else
  {
    v4 = NAN;
    v3 = NAN;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (float)nominalFrameRate
{
  v25 = *MEMORY[0x1E69E9840];
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];

  if (!currentAssetIfReady)
  {
    return NAN;
  }

  currentAssetIfReady2 = [(AVPlayerController *)self currentAssetIfReady];
  v5 = [currentAssetIfReady2 avkit_tracksWithMediaType:*MEMORY[0x1E6987608]];

  memset(&v23, 0, sizeof(v23));
  player = [(AVPlayerController *)self player];
  v7 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (v14)
        {
          [*(*(&v19 + 1) + 8 * i) timeRange];
        }

        else
        {
          memset(&range, 0, sizeof(range));
        }

        v17 = v23;
        if (CMTimeRangeContainsTime(&range, &v17))
        {
          [v14 nominalFrameRate];
          v8 = v15;
          goto LABEL_19;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v8 = NAN;
LABEL_19:

  return v8;
}

- (double)contentDuration
{
  if (self->_photosensitivityRegions)
  {
    photosensitivityRegions = self->_photosensitivityRegions;

    [(NSArray *)photosensitivityRegions duration];
  }

  else
  {
    v14 = v5;
    v15 = v4;
    v16 = v2;
    v17 = v3;
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    v10 = currentItem;
    if (currentItem)
    {
      [currentItem duration];
    }

    else
    {
      memset(&v12, 0, sizeof(v12));
    }

    time = v12;
    Seconds = CMTimeGetSeconds(&time);

    return Seconds;
  }

  return result;
}

- (BOOL)hasContent
{
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v4 = currentItem != 0;

  return v4;
}

- (void)setInspectionSuspended:(BOOL)suspended
{
  if (self->_inspectionSuspended != suspended)
  {
    self->_inspectionSuspended = suspended;
    if (!suspended)
    {
      if ([(AVPlayerController *)self hasBegunInspection])
      {
        [(AVPlayerController *)self _prepareAssetForInspectionIfNeeded];

        [(AVPlayerController *)self _prepareInterstitialAssetForInspectionIfNeeded];
      }

      else
      {

        [(AVPlayerController *)self startInspectionIfNeeded];
      }
    }
  }
}

- (void)setCoordinatedPlaybackActive:(BOOL)active
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_allowsPictureInPicturePlayback != active)
  {
    activeCopy = active;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVPlayerController setCoordinatedPlaybackActive:]";
      v8 = 1024;
      v9 = activeCopy;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s coordinatedPlaybackActive set to %d", &v6, 0x12u);
    }

    self->_allowsPictureInPicturePlayback = activeCopy;
  }
}

- (void)toggleMuted:(id)muted
{
  v4 = [(AVPlayerController *)self isMuted]^ 1;

  [(AVPlayerController *)self setMuted:v4];
}

- (void)setAllowsAudioPlayback:(BOOL)playback
{
  v10 = *MEMORY[0x1E69E9840];
  if (BYTE2(self->_photosensitivityMetadataHandler) != playback)
  {
    playbackCopy = playback;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[AVPlayerController setAllowsAudioPlayback:]";
      v8 = 1024;
      v9 = playbackCopy;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", &v6, 0x12u);
    }

    BYTE2(self->_photosensitivityMetadataHandler) = playbackCopy;
    [(AVPlayerController *)self _updatePlayerMutedState];
  }
}

- (void)setMuted:(BOOL)muted
{
  if (LOBYTE(self->_photosensitivityMetadataHandler) != muted)
  {
    LOBYTE(self->_photosensitivityMetadataHandler) = muted;
    [(AVPlayerController *)self _updatePlayerMutedState];
  }
}

- (void)decreaseVolume:(id)volume
{
  [(AVPlayerController *)self volume];
  v5 = fmax(v4 + -0.0625, 0.0);

  [(AVPlayerController *)self setVolume:v5];
}

- (void)increaseVolume:(id)volume
{
  [(AVPlayerController *)self volume];
  v5 = fmin(v4 + 0.0625, 1.0);

  [(AVPlayerController *)self setVolume:v5];
}

- (void)setVolume:(double)volume
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AVPlayerController setVolume:]";
    v10 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %f", &v8, 0x16u);
  }

  player = [(AVPlayerController *)self player];
  *&v7 = volume;
  [player setVolume:v7];
}

- (double)volume
{
  player = [(AVPlayerController *)self player];
  [player volume];
  v4 = v3;

  return v4;
}

- (void)endPlaybackSuspension
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[AVPlayerController endPlaybackSuspension]";
    v9 = 1024;
    v10 = 2340;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v7, 0x12u);
  }

  playbackSuspensionCount = self->_playbackSuspensionCount;
  if (playbackSuspensionCount > 0)
  {
    goto LABEL_7;
  }

  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v7) = 0;
    _os_log_error_impl(&dword_18B49C000, v5, OS_LOG_TYPE_ERROR, "Error: Calls to endPlaybackSuspension must be balanced with calls to beginPlaybackSuspension.", &v7, 2u);
  }

  playbackSuspensionCount = self->_playbackSuspensionCount;
  if (playbackSuspensionCount >= 1)
  {
LABEL_7:
    v6 = playbackSuspensionCount - 1;
    self->_playbackSuspensionCount = v6;
    if (!v6)
    {
      [(AVPlayerController *)self _stopSuspendingPlayback];
    }
  }
}

- (void)beginPlaybackSuspension
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[AVPlayerController beginPlaybackSuspension]";
    v7 = 1024;
    v8 = 2328;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v5, 0x12u);
  }

  playbackSuspensionCount = self->_playbackSuspensionCount;
  if (!playbackSuspensionCount)
  {
    [(AVPlayerController *)self _startSuspendingPlayback];
    playbackSuspensionCount = self->_playbackSuspensionCount;
  }

  self->_playbackSuspensionCount = playbackSuspensionCount + 1;
}

- (void)updateAtMinMaxTime
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__AVPlayerController_updateAtMinMaxTime__block_invoke;
  v2[3] = &unk_1E7209EA8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __40__AVPlayerController_updateAtMinMaxTime__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained isReadyToPlay])
  {
    v5 = 0;
LABEL_10:
    v8 = 0;
    goto LABEL_15;
  }

  memset(&v16, 0, sizeof(v16));
  v2 = [WeakRetained player];
  v3 = [v2 currentItem];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  if ([WeakRetained isLooping])
  {
    v5 = 0;
  }

  else
  {
    v6 = [WeakRetained player];
    v7 = [v6 currentItem];
    playbackMinTimeForPlayerItem(&time2, v7);
    v14 = v16;
    v5 = CMTimeCompare(&v14, &time2) < 1;
  }

  if ([WeakRetained isLooping])
  {
    goto LABEL_10;
  }

  v9 = [WeakRetained player];
  v10 = [v9 currentItem];
  v11 = [WeakRetained player];
  v12 = [v11 currentItem];
  v13 = v12;
  if (v12)
  {
    [v12 duration];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  playbackMaxTimeForPlayerItemAndContentDuration(&time2, v10, &v14);
  v14 = v16;
  v8 = CMTimeCompare(&v14, &time2) >= 0;

LABEL_15:
  [WeakRetained setAtMinTime:v5];
  [WeakRetained setAtMaxTime:v8];
}

- (void)setLooping:(BOOL)looping
{
  if (self->_looping != looping)
  {
    loopingCopy = looping;
    self->_looping = looping;
    player = [(AVPlayerController *)self player];
    v7 = player;
    if (loopingCopy)
    {
      self->_actionAtItemEnd = [player actionAtItemEnd];

      player = [(AVPlayerController *)self player];
      v7 = player;
      actionAtItemEnd = 2;
    }

    else
    {
      actionAtItemEnd = self->_actionAtItemEnd;
    }

    [player setActionAtItemEnd:actionAtItemEnd];

    [(AVPlayerController *)self updateAtMinMaxTime];
  }
}

- (BOOL)hasEnhancedDialogueEligibleAudio
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[AVKitGlobalSettings shared];
  if (![v3 customMediaSelectionSchemeEnabled] || !-[AVPlayerController isMediaPresentationSettingsEnabled](self, "isMediaPresentationSettingsEnabled"))
  {

    return 1;
  }

  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  player2 = [(AVPlayerController *)self player];
  currentItem2 = [player2 currentItem];
  v9 = [currentItem2 performSelector:sel_isEligibleForDSPBasedEnhancedDialogue];
  v10 = v9 != 0;

  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "NO";
    v14 = 136315650;
    v15 = "[AVPlayerController hasEnhancedDialogueEligibleAudio]";
    v17 = "dspEligible";
    v16 = 2080;
    if (v9)
    {
      v12 = "YES";
    }

    v18 = 2080;
    v19 = v12;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v14, 0x20u);
  }

  return v10;
}

- (void)setTouchBarRequiresLinearPlayback:(BOOL)playback
{
  if (LOBYTE(self->_defaultPlaybackRate) != playback)
  {
    LOBYTE(self->_defaultPlaybackRate) = playback;
    if (playback)
    {
      [(AVPlayerController *)self endScrubbing];

      [(AVPlayerController *)self _cancelPendingSeeksIfNeeded];
    }
  }
}

- (void)togglePlaybackEvenWhenInBackground:(id)background
{
  v4 = MEMORY[0x1E69AED10];
  backgroundCopy = background;
  sharedAVSystemController = [v4 sharedAVSystemController];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [sharedAVSystemController setAttribute:bundleIdentifier forKey:*MEMORY[0x1E69AE9E0] error:0];

  [(AVPlayerController *)self togglePlayback:backgroundCopy];
}

- (void)togglePlayback:(id)playback
{
  v7 = *MEMORY[0x1E69E9840];
  if (![(AVPlayerController *)self isPlaying])
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[AVPlayerController togglePlayback:]";
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s setPlaying:YES", &v5, 0xCu);
    }
  }

  [(AVPlayerController *)self setPlaying:[(AVPlayerController *)self isPlaying]^ 1];
}

- (BOOL)canTogglePlayback
{
  isReadyToPlay = [(AVPlayerController *)self isReadyToPlay];
  if (isReadyToPlay)
  {
    LOBYTE(isReadyToPlay) = ![(AVPlayerController *)self isPictureInPictureInterrupted];
  }

  return isReadyToPlay;
}

- (void)pauseForAllCoordinatedPlaybackParticipants:(BOOL)participants
{
  participantsCopy = participants;
  v12 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (participantsCopy)
    {
      v6 = @"YES";
    }

    v8 = 136315394;
    v9 = "[AVPlayerController pauseForAllCoordinatedPlaybackParticipants:]";
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s notifyCoordinatedPlayback of pause: %@", &v8, 0x16u);
  }

  if (participantsCopy)
  {
    [(AVPlayerController *)self setPlaying:0];
  }

  else
  {
    [(AVPlayerController *)self setRateBeforeScrubBegan:NAN];
    player = [(AVPlayerController *)self player];
    [player pauseWithoutAffectingCoordinatedPlayback];
  }
}

- (void)autoplay:(id)autoplay
{
  v11 = *MEMORY[0x1E69E9840];
  if (![(AVPlayerController *)self isPlaying])
  {
    if (AVPlayerControllerAutoplayEnabled == 1 && ![(AVPlayerController *)self coordinatedPlaybackActive])
    {
      player = [(AVPlayerController *)self player];
      currentItem = [player currentItem];
      isPlaybackLikelyToKeepUp = [currentItem isPlaybackLikelyToKeepUp];

      if (!isPlaybackLikelyToKeepUp)
      {
        BYTE1(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = 1;
        return;
      }

      v4 = _AVLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v9 = 136315138;
      v10 = "[AVPlayerController autoplay:]";
      v5 = "%s setPlaying:YES (AVPlayerControllerAutoplayEnabled)";
    }

    else
    {
      v4 = _AVLog();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
LABEL_7:

        [(AVPlayerController *)self setPlaying:1];
        return;
      }

      v9 = 136315138;
      v10 = "[AVPlayerController autoplay:]";
      v5 = "%s setPlaying:YES";
    }

    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, v5, &v9, 0xCu);
    goto LABEL_7;
  }
}

- (void)play:(id)play
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[AVPlayerController play:]";
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s setPlaying:YES", &v5, 0xCu);
  }

  [(AVPlayerController *)self setPlaying:1];
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  v13 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[AVPlayerController setPlaying:]";
    v11 = 1024;
    v12 = playingCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  [(AVPlayerController *)self setRateBeforeScrubBegan:NAN];
  if (playingCopy)
  {
    objc_initWeak(buf, self);
    seekQueue = self->_seekQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AVPlayerController_setPlaying___block_invoke;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v8, buf);
    dispatch_async(seekQueue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {
    [(AVPlayerController *)self setRate:0.0];
  }
}

void __33__AVPlayerController_setPlaying___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained player];
    v5 = [v4 currentItem];
    v6 = [v3 _queuePlayer];
    v7 = [v6 items];
    v8 = [v7 count];

    if (v8 > 1 || ([v3 isSeekingInternal] & 1) != 0 || (v3[184] & 1) != 0)
    {
      goto LABEL_13;
    }

    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v9 = [v4 currentItem];
    v10 = v9;
    if (v9)
    {
      [v9 duration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    playbackMaxTimeForPlayerItemAndContentDuration(&lhs, v5, &time2);
    CMTimeMake(&rhs, 1, 1200);
    CMTimeSubtract(&time2, &lhs, &rhs);
    v11 = CMTimeCompare(&time1, &time2);

    if (v11 < 0)
    {
LABEL_13:
      if (v5)
      {
        [v5 currentTime];
        playbackMinTimeForPlayerItem(&time2, v5);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        time2 = **&MEMORY[0x1E6960CC0];
      }

      if (CMTimeCompare(&time1, &time2) < 0 && [v3 hasLiveStreamingContent])
      {
        playbackMinTimeForPlayerItem(&time1, v5);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __33__AVPlayerController_setPlaying___block_invoke_4;
        v15[3] = &unk_1E7209A88;
        v12 = &v16;
        objc_copyWeak(&v16, (a1 + 32));
        time2 = **&MEMORY[0x1E6960CC0];
        lhs = time2;
        [v4 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&lhs completionHandler:v15];
      }

      else
      {
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __33__AVPlayerController_setPlaying___block_invoke_6;
        v13[3] = &unk_1E7209EA8;
        v12 = &v14;
        objc_copyWeak(&v14, (a1 + 32));
        dispatch_async(MEMORY[0x1E69E96A0], v13);
      }
    }

    else
    {
      playbackMinTimeForPlayerItem(&time1, v5);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __33__AVPlayerController_setPlaying___block_invoke_2;
      v17[3] = &unk_1E7209A88;
      v12 = &v18;
      objc_copyWeak(&v18, (a1 + 32));
      time2 = **&MEMORY[0x1E6960CC0];
      lhs = time2;
      [v4 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&lhs completionHandler:v17];
    }

    objc_destroyWeak(v12);
  }
}

void __33__AVPlayerController_setPlaying___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AVPlayerController_setPlaying___block_invoke_3;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v3);
  }
}

void __33__AVPlayerController_setPlaying___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__AVPlayerController_setPlaying___block_invoke_5;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v3, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v3);
  }
}

void __33__AVPlayerController_setPlaying___block_invoke_6(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 defaultPlaybackRate];
  [v1 setRate:?];
}

void __33__AVPlayerController_setPlaying___block_invoke_5(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 defaultPlaybackRate];
  [v1 setRate:?];
}

void __33__AVPlayerController_setPlaying___block_invoke_3(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 defaultPlaybackRate];
  [v1 setRate:?];
}

- (BOOL)canPlay
{
  isReadyToPlay = [(AVPlayerController *)self isReadyToPlay];
  if (isReadyToPlay)
  {
    LOBYTE(isReadyToPlay) = ![(AVPlayerController *)self isPictureInPictureInterrupted];
  }

  return isReadyToPlay;
}

- (BOOL)canPlayImmediately
{
  v29 = *MEMORY[0x1E69E9840];
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  isPlaybackBufferEmpty = [currentItem isPlaybackBufferEmpty];

  if (isPlaybackBufferEmpty)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    player2 = [(AVPlayerController *)self player];
    currentItem2 = [player2 currentItem];
    loadedTimeRanges = [currentItem2 loadedTimeRanges];

    memset(&v26, 0, sizeof(v26));
    CMTimeMakeWithSeconds(&v26, 1.0, 90000);
    memset(&v25, 0, sizeof(v25));
    player3 = [(AVPlayerController *)self player];
    v11 = player3;
    if (player3)
    {
      [player3 currentTime];
    }

    else
    {
      memset(&v25, 0, sizeof(v25));
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = loadedTimeRanges;
    v6 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
    if (v6)
    {
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          memset(&buf, 0, sizeof(buf));
          if (v15)
          {
            [v15 CMTimeRangeValue];
          }

          range = buf;
          time = v25;
          if (CMTimeRangeContainsTime(&range, &time))
          {
            range.start = v25;
            v18 = v26;
            CMTimeAdd(&time, &range.start, &v18);
            range = buf;
            if (CMTimeRangeContainsTime(&range, &time))
            {
              LODWORD(v6) = 1;
              goto LABEL_19;
            }
          }
        }

        v6 = [v12 countByEnumeratingWithState:&v21 objects:v28 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  v16 = _AVLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.start.value) = 67109120;
    HIDWORD(buf.start.value) = v6;
    _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "Can play immediately: %d", &buf, 8u);
  }

  return v6;
}

- (void)_retryPlayImmediatelyIfNeeded
{
  if (self->_retryPlayingImmediatelyBlock && [(AVPlayerController *)self canPlayImmediately])
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Retrying play immediately.", v5, 2u);
    }

    (*(self->_retryPlayingImmediatelyBlock + 2))();
    retryPlayingImmediatelyBlock = self->_retryPlayingImmediatelyBlock;
    self->_retryPlayingImmediatelyBlock = 0;
  }
}

- (void)setDefaultPlaybackRate:(double)rate
{
  if (rate >= 0.05)
  {
    rateCopy = rate;
  }

  else
  {
    rateCopy = 0.05;
  }

  player = [(AVPlayerController *)self player];
  *&v6 = rateCopy;
  [player setDefaultRate:v6];

  if ([(AVPlayerController *)self isPlaying])
  {
    [(AVPlayerController *)self setRate:rateCopy];
  }

  if (self->_rateToRestoreAfterAudioSessionInterruptionEnds)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
    rateToRestoreAfterAudioSessionInterruptionEnds = self->_rateToRestoreAfterAudioSessionInterruptionEnds;
    self->_rateToRestoreAfterAudioSessionInterruptionEnds = v7;

    MEMORY[0x1EEE66BB8](v7, rateToRestoreAfterAudioSessionInterruptionEnds);
  }
}

- (double)defaultPlaybackRate
{
  player = [(AVPlayerController *)self player];
  [player defaultRate];
  v4 = v3;

  return v4;
}

- (void)setRate:(double)rate
{
  rateToRestoreAfterAudioSessionInterruptionEnds = self->_rateToRestoreAfterAudioSessionInterruptionEnds;
  self->_rateToRestoreAfterAudioSessionInterruptionEnds = 0;

  [(AVPlayerController *)self _setRate_AVFoundationStrategy:rate];
  if (AVPlayerControllerAutoplayEnabled == 1)
  {
    BYTE1(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = 0;
  }
}

- (void)_setRate_AVFoundationStrategy:(double)strategy
{
  if ([(AVPlayerController *)self isPlaybackSuspended])
  {
    *&self->_captionAppearanceDisplayType = strategy;
  }

  else
  {

    [(AVPlayerController *)self _playAtRate:strategy];
  }
}

- (void)_playAtRate:(double)rate
{
  v27 = *MEMORY[0x1E69E9840];
  activePlayer = [(AVPlayerController *)self activePlayer];
  if (self->_photosensitivityRegions)
  {
    player = [(AVPlayerController *)self player];

    activePlayer = player;
  }

  if (self->_shouldPlayImmediately)
  {
    canPlayImmediately = [(AVPlayerController *)self canPlayImmediately];
    v8 = _AVLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (rate == 0.0 || canPlayImmediately)
    {
      if (v9)
      {
        *buf = 134217984;
        rateCopy = rate;
        _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "Calling playImmediatelyAtRate: %f", buf, 0xCu);
      }

      retryPlayingImmediatelyBlock = self->_retryPlayingImmediatelyBlock;
      self->_retryPlayingImmediatelyBlock = 0;

      *&v17 = rate;
      [activePlayer playImmediatelyAtRate:v17];
    }

    else
    {
      if (v9)
      {
        *buf = 136315650;
        rateCopy = COERCE_DOUBLE("[AVPlayerController _playAtRate:]");
        v23 = 2048;
        rateCopy4 = rate;
        v25 = 2048;
        v26 = activePlayer;
        _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s %.1f on %p", buf, 0x20u);
      }

      *&v10 = rate;
      [activePlayer setRate:v10];
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "Could not play immediately, setting a play immediately retry block.", buf, 2u);
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __34__AVPlayerController__playAtRate___block_invoke;
      v18[3] = &unk_1E7209A60;
      rateCopy3 = rate;
      v19 = activePlayer;
      v12 = _Block_copy(v18);
      v13 = self->_retryPlayingImmediatelyBlock;
      self->_retryPlayingImmediatelyBlock = v12;
    }
  }

  else
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      rateCopy = COERCE_DOUBLE("[AVPlayerController _playAtRate:]");
      v23 = 2048;
      rateCopy4 = rate;
      v25 = 2048;
      v26 = activePlayer;
      _os_log_impl(&dword_18B49C000, v14, OS_LOG_TYPE_DEFAULT, "%s %.1f on %p", buf, 0x20u);
    }

    *&v15 = rate;
    [activePlayer setRate:v15];
  }
}

uint64_t __34__AVPlayerController__playAtRate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _AVLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7 = 136315650;
    v8 = "[AVPlayerController _playAtRate:]_block_invoke";
    v9 = 2048;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_18B49C000, v2, OS_LOG_TYPE_DEFAULT, "%s immediately %.1f on %p", &v7, 0x20u);
  }

  v5 = *(a1 + 40);
  *&v5 = v5;
  return [*(a1 + 32) playImmediatelyAtRate:v5];
}

- (double)rate
{
  activePlayer = [(AVPlayerController *)self activePlayer];
  [activePlayer rate];
  v4 = v3;

  return v4;
}

- (void)stopUsingNetworkResourcesForLiveStreamingWhilePaused
{
  v3 = *&self->_liveStreamEventModePossible;
  if (v3 <= 0)
  {
    v4 = _AVLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_18B49C000, v4, OS_LOG_TYPE_ERROR, "Calls to [AVPlayerController stopUsingNetworkResourcesForLiveStreamingWhilePaused] must be counterbalanced with calls to [AVPlayerController startUsingNetworkResourcesForLiveStreamingWhilePaused].", v7, 2u);
    }

    v3 = *&self->_liveStreamEventModePossible;
  }

  *&self->_liveStreamEventModePossible = v3 - 1;
  if (v3 <= 1)
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    [currentItem setCanUseNetworkResourcesForLiveStreamingWhilePaused:LOBYTE(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount)];
  }
}

- (void)startUsingNetworkResourcesForLiveStreamingWhilePaused
{
  v3 = *&self->_liveStreamEventModePossible;
  *&self->_liveStreamEventModePossible = v3 + 1;
  if (!v3)
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    LOBYTE(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = [currentItem canUseNetworkResourcesForLiveStreamingWhilePaused];

    player2 = [(AVPlayerController *)self player];
    currentItem2 = [player2 currentItem];
    [currentItem2 setCanUseNetworkResourcesForLiveStreamingWhilePaused:1];
  }
}

- (void)setAtLiveEdge:(BOOL)edge
{
  v14 = *MEMORY[0x1E69E9840];
  if (BYTE3(self->_liveEdgeTimer) != edge)
  {
    edgeCopy = edge;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v8 = 136315650;
      v9 = "[AVPlayerController setAtLiveEdge:]";
      v11 = "atLiveEdge";
      v10 = 2080;
      if (edgeCopy)
      {
        v6 = "YES";
      }

      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v8, 0x20u);
    }

    BYTE3(self->_liveEdgeTimer) = edgeCopy;
    if (edgeCopy)
    {
      [(AVPlayerController *)self defaultPlaybackRate];
      if (v7 > 1.0)
      {
        [(AVPlayerController *)self setDefaultPlaybackRate:1.0];
      }
    }
  }
}

- (double)activeRate
{
  activePlayer = [(AVPlayerController *)self activePlayer];
  [activePlayer rate];
  v4 = v3;

  return v4;
}

- (void)setActivePlayer:(id)player
{
  v13 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    objc_storeStrong(&self->_player, player);
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      player = self->_player;
      v9 = 136315394;
      v10 = "[AVPlayerController setActivePlayer:]";
      v11 = 2112;
      playerCopy2 = player;
      _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s Updated player to: %@ player", &v9, 0x16u);
    }

    timeline = [(AVPlayerController *)self timeline];

    if (timeline)
    {
      [(AVPlayerController *)self reloadOptions];
    }

    [(AVPlayerController *)self updateTiming];
  }
}

- (void)_observeValueForKeyPath:(id)path oldValue:(id)value newValue:(id)newValue
{
  v174 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  newValueCopy = newValue;
  if ([pathCopy isEqualToString:@"player.currentItem"])
  {
    v9 = _AVLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.start.value) = 0;
      _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "PlayerItemDidChange", &buf, 2u);
    }

    [(OS_dispatch_source *)self->_seekTimer removeAllObjects];
    v10 = +[AVKitGlobalSettings shared];
    isIntegratedTimelineEnabled = [v10 isIntegratedTimelineEnabled];

    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    isAVKitIntegratedTimelineDisabled = [currentItem isAVKitIntegratedTimelineDisabled];

    if (isAVKitIntegratedTimelineDisabled & 1 | ((isIntegratedTimelineEnabled & 1) == 0))
    {
      v15 = 0;
    }

    else
    {
      v25 = [AVKitIntegratedTimeline alloc];
      player2 = [(AVPlayerController *)self player];
      currentItem2 = [player2 currentItem];
      v15 = [(AVKitIntegratedTimeline *)v25 initWithPlayerItem:currentItem2];
    }

    [(AVPlayerController *)self setTimeline:v15];
    interstitialController = [(AVPlayerController *)self interstitialController];
    [interstitialController setTimeline:v15];

    [(AVPlayerController *)self updateTiming];
    [(AVPlayerController *)self setMetadata:0];
    [(AVPlayerController *)self stopGeneratingTimecodes];
    v29 = *&self->_touchBarRequiresLinearPlayback;
    *&self->_touchBarRequiresLinearPlayback = 0;

    [(AVPlayerController *)self setComposable:0];
    [(AVPlayerController *)self setHasProtectedContent:0];
    [(AVPlayerController *)self setAvailableMetadataFormats:0];
    [(AVPlayerController *)self setCompatibleWithAirPlayVideo:0];
    [(AVPlayerController *)self setSeeking:0];
    objc_initWeak(&location, self);
    seekQueue = self->_seekQueue;
    v170[0] = MEMORY[0x1E69E9820];
    v170[1] = 3221225472;
    v170[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke;
    v170[3] = &unk_1E7209EA8;
    objc_copyWeak(&v171, &location);
    dispatch_async(seekQueue, v170);
    [(AVPlayerController *)self setContentChapters:0];
    if (newValueCopy)
    {
      v31 = _AVLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = objc_opt_class();
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = v32;
        LOWORD(buf.start.flags) = 2048;
        *(&buf.start.flags + 2) = newValueCopy;
        v33 = v32;
        _os_log_impl(&dword_18B49C000, v31, OS_LOG_TYPE_DEFAULT, "New playerItem: <%{public}@: %p>", &buf, 0x16u);
      }

      LOBYTE(self->_liveStreamMaxTiming) = 1;
      [(AVPlayerController *)self updateAtMinMaxTime];
    }

    reduceResourceUsageAssertion = [(AVPlayerController *)self reduceResourceUsageAssertion];

    if (reduceResourceUsageAssertion)
    {
      reduceResourceUsageAssertion2 = [(AVPlayerController *)self reduceResourceUsageAssertion];
      [reduceResourceUsageAssertion2 invalidate];

      [(AVPlayerController *)self acquireResourceReductionAssertion];
    }

    objc_destroyWeak(&v171);
    objc_destroyWeak(&location);

    goto LABEL_130;
  }

  if ([pathCopy isEqualToString:@"currentAssetIfReady"])
  {
    currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
    if (currentAssetIfReady)
    {
      v16 = _AVLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.start.value) = 138543618;
        *(&buf.start.value + 4) = objc_opt_class();
        LOWORD(buf.start.flags) = 2048;
        *(&buf.start.flags + 2) = currentAssetIfReady;
        v17 = *(&buf.start.value + 4);
        _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "New asset: <%{public}@: %p>", &buf, 0x16u);
      }

      objc_initWeak(&buf, self);
      if ([currentAssetIfReady statusOfValueForKey:@"commonMetadata" error:0] == 2)
      {
        v18 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_259;
        block[3] = &unk_1E7209EA8;
        objc_copyWeak(&v169, &buf);
        dispatch_async(v18, block);

        objc_destroyWeak(&v169);
      }

      else
      {
        v165[0] = MEMORY[0x1E69E9820];
        v165[1] = 3221225472;
        v165[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_2;
        v165[3] = &unk_1E7209A10;
        v166 = currentAssetIfReady;
        objc_copyWeak(&v167, &buf);
        [v166 loadValuesAsynchronouslyForKeys:&unk_1EFF12F68 completionHandler:v165];
        objc_destroyWeak(&v167);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_3;
      aBlock[3] = &unk_1E7209A10;
      v36 = currentAssetIfReady;
      v163 = v36;
      objc_copyWeak(&v164, &buf);
      v117 = _Block_copy(aBlock);
      if ([v36 statusOfValueForKey:@"availableChapterLocales" error:0] == 2)
      {
        v37 = dispatch_get_global_queue(0, 0);
        v160[0] = MEMORY[0x1E69E9820];
        v160[1] = 3221225472;
        v160[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_8;
        v160[3] = &unk_1E72099C8;
        v38 = &v161;
        v161 = v117;
        dispatch_async(v37, v160);
      }

      else
      {
        v157[0] = MEMORY[0x1E69E9820];
        v157[1] = 3221225472;
        v157[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_9;
        v157[3] = &unk_1E720A040;
        v158 = v36;
        v159 = v117;
        [v158 loadValuesAsynchronouslyForKeys:&unk_1EFF12F98 completionHandler:v157];
        v38 = &v158;
        v37 = v159;
      }

      v154[0] = MEMORY[0x1E69E9820];
      v154[1] = 3221225472;
      v154[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_10;
      v154[3] = &unk_1E7209A10;
      objc_copyWeak(&v156, &buf);
      v39 = v36;
      v155 = v39;
      v116 = _Block_copy(v154);
      if ([v39 statusOfValueForKey:@"composable" error:0] == 2)
      {
        v40 = dispatch_get_global_queue(0, 0);
        v152[0] = MEMORY[0x1E69E9820];
        v152[1] = 3221225472;
        v152[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_12;
        v152[3] = &unk_1E72099C8;
        v41 = &v153;
        v153 = v116;
        dispatch_async(v40, v152);
      }

      else
      {
        v149[0] = MEMORY[0x1E69E9820];
        v149[1] = 3221225472;
        v149[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_13;
        v149[3] = &unk_1E720A040;
        v150 = v39;
        v151 = v116;
        [v150 loadValuesAsynchronouslyForKeys:&unk_1EFF12FB0 completionHandler:v149];
        v41 = &v150;
        v40 = v151;
      }

      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = 3221225472;
      v146[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_14;
      v146[3] = &unk_1E7209A10;
      objc_copyWeak(&v148, &buf);
      v42 = v39;
      v147 = v42;
      v43 = _Block_copy(v146);
      if ([v42 statusOfValueForKey:@"hasProtectedContent" error:0] == 2)
      {
        v44 = dispatch_get_global_queue(0, 0);
        v144[0] = MEMORY[0x1E69E9820];
        v144[1] = 3221225472;
        v144[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_16;
        v144[3] = &unk_1E72099C8;
        v45 = &v145;
        v145 = v43;
        dispatch_async(v44, v144);
      }

      else
      {
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_17;
        v141[3] = &unk_1E720A040;
        v142 = v42;
        v143 = v43;
        [v142 loadValuesAsynchronouslyForKeys:&unk_1EFF12FC8 completionHandler:v141];
        v45 = &v142;
        v44 = v143;
      }

      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_18;
      v138[3] = &unk_1E7209A10;
      objc_copyWeak(&v140, &buf);
      v46 = v42;
      v139 = v46;
      v47 = _Block_copy(v138);
      if ([v46 statusOfValueForKey:@"availableMetadataFormats" error:0] == 2)
      {
        v48 = dispatch_get_global_queue(0, 0);
        v136[0] = MEMORY[0x1E69E9820];
        v136[1] = 3221225472;
        v136[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_20;
        v136[3] = &unk_1E72099C8;
        v49 = &v137;
        v137 = v47;
        dispatch_async(v48, v136);
      }

      else
      {
        v133[0] = MEMORY[0x1E69E9820];
        v133[1] = 3221225472;
        v133[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_21;
        v133[3] = &unk_1E720A040;
        v134 = v46;
        v135 = v47;
        [v134 loadValuesAsynchronouslyForKeys:&unk_1EFF12FE0 completionHandler:v133];
        v49 = &v134;
        v48 = v135;
      }

      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_22;
      v130[3] = &unk_1E7209A10;
      objc_copyWeak(&v132, &buf);
      v50 = v46;
      v131 = v50;
      v51 = _Block_copy(v130);
      if ([v50 statusOfValueForKey:@"compatibleWithAirPlayVideo" error:0] == 2)
      {
        v52 = dispatch_get_global_queue(0, 0);
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 3221225472;
        v128[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_24;
        v128[3] = &unk_1E72099C8;
        v53 = &v129;
        v129 = v51;
        dispatch_async(v52, v128);
      }

      else
      {
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_25;
        v125[3] = &unk_1E720A040;
        v126 = v50;
        v127 = v51;
        [v126 loadValuesAsynchronouslyForKeys:&unk_1EFF12FF8 completionHandler:v125];
        v53 = &v126;
        v52 = v127;
      }

      [(AVPlayerController *)self reloadOptions];
      [(AVPlayerController *)self reloadCurrentMediaSelectionsAsynchronously];

      objc_destroyWeak(&v132);
      objc_destroyWeak(&v140);

      objc_destroyWeak(&v148);
      objc_destroyWeak(&v156);

      objc_destroyWeak(&v164);
      objc_destroyWeak(&buf);
    }

    goto LABEL_130;
  }

  if ([pathCopy isEqualToString:@"player.currentItem.seekableTimeRanges"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = valueCopy;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = newValueCopy;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    memset(&buf, 0, sizeof(buf));
    if ([v20 count])
    {
      firstObject = [v20 firstObject];
      v24 = firstObject;
      if (firstObject)
      {
        [firstObject CMTimeRangeValue];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }
    }

    else
    {
      v59 = *(MEMORY[0x1E6960C98] + 16);
      *&buf.start.value = *MEMORY[0x1E6960C98];
      *&buf.start.epoch = v59;
      *&buf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    }

    memset(&location, 0, sizeof(location));
    if ([v22 count])
    {
      firstObject2 = [v22 firstObject];
      v71 = firstObject2;
      if (firstObject2)
      {
        [firstObject2 CMTimeRangeValue];
      }

      else
      {
        memset(&location, 0, sizeof(location));
      }
    }

    else
    {
      v72 = *(MEMORY[0x1E6960C98] + 16);
      *&location.start.value = *MEMORY[0x1E6960C98];
      *&location.start.epoch = v72;
      *&location.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    }

    v73 = _AVLog();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      *&time.start.value = *&buf.start.value;
      time.start.epoch = buf.start.epoch;
      Seconds = CMTimeGetSeconds(&time.start);
      *&time.start.value = *&buf.start.value;
      time.start.epoch = buf.start.epoch;
      v75 = CMTimeGetSeconds(&time.start);
      time.start = buf.duration;
      v76 = CMTimeGetSeconds(&time.start);
      *&time.start.value = *&location.start.value;
      time.start.epoch = location.start.epoch;
      v77 = CMTimeGetSeconds(&time.start);
      *&time.start.value = *&location.start.value;
      time.start.epoch = location.start.epoch;
      v78 = CMTimeGetSeconds(&time.start);
      time.start = location.duration;
      v79 = CMTimeGetSeconds(&time.start);
      LODWORD(time.start.value) = 134218752;
      *(&time.start.value + 4) = Seconds;
      LOWORD(time.start.flags) = 2048;
      *(&time.start.flags + 2) = v75 + v76;
      HIWORD(time.start.epoch) = 2048;
      time.duration.value = v77;
      LOWORD(time.duration.timescale) = 2048;
      *(&time.duration.timescale + 2) = v78 + v79;
      _os_log_impl(&dword_18B49C000, v73, OS_LOG_TYPE_DEFAULT, "SeekableTimeRanges changed {%f, %f} -> {%f, %f}.", &time, 0x2Au);
    }

    time = buf;
    range2 = location;
    if (!CMTimeRangeEqual(&time, &range2))
    {
      if (LOBYTE(self->_liveStreamMaxTiming) == 1 && (location.start.flags & 1) != 0 && (location.duration.flags & 1) != 0 && !location.duration.epoch && (location.duration.value & 0x8000000000000000) == 0 && (buf.start.flags & 1) != 0 && (buf.duration.flags & 1) != 0 && !buf.duration.epoch && (buf.duration.value & 0x8000000000000000) == 0)
      {
        time = location;
        *&range2.start.value = *&buf.start.value;
        range2.start.epoch = buf.start.epoch;
        if (!CMTimeRangeContainsTime(&time, &range2.start))
        {
          LOBYTE(self->_liveStreamMaxTiming) = 0;
          v89 = _AVLog();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            liveStreamMaxTiming_low = LOBYTE(self->_liveStreamMaxTiming);
            LODWORD(time.start.value) = 67109120;
            HIDWORD(time.start.value) = liveStreamMaxTiming_low;
            _os_log_impl(&dword_18B49C000, v89, OS_LOG_TYPE_DEFAULT, "liveStreamEventModePossible: %d", &time, 8u);
          }
        }
      }

      [(AVPlayerController *)self updateMinMaxTiming];
    }

    goto LABEL_130;
  }

  if ([pathCopy isEqualToString:@"hasLiveStreamingContent"])
  {
    [(AVPlayerController *)self updateMinMaxTiming];
LABEL_130:
    v65 = newValueCopy;
    goto LABEL_131;
  }

  if ([pathCopy isEqualToString:@"timeControlStatus"])
  {
    player3 = [(AVPlayerController *)self player];
    timeControlStatus = [player3 timeControlStatus];

    player4 = [(AVPlayerController *)self player];
    reasonForWaitingToPlay = [player4 reasonForWaitingToPlay];

    v58 = _AVLog();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.start.value) = 134218242;
      *(&buf.start.value + 4) = timeControlStatus;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = reasonForWaitingToPlay;
      _os_log_impl(&dword_18B49C000, v58, OS_LOG_TYPE_DEFAULT, "Time control status = %ld, waiting reason = %@", &buf, 0x16u);
    }

    if (timeControlStatus)
    {
      if (timeControlStatus == 2)
      {
        self->_shouldPlayImmediately = 0;
        retryPlayingImmediatelyBlock = self->_retryPlayingImmediatelyBlock;
        self->_retryPlayingImmediatelyBlock = 0;
      }

      else if (timeControlStatus == 1)
      {
        self->_shouldPlayImmediately = reasonForWaitingToPlay != *MEMORY[0x1E6987AC0];
      }
    }

    else
    {
      v92 = self->_retryPlayingImmediatelyBlock;
      self->_retryPlayingImmediatelyBlock = 0;
    }

    [(AVPlayerController *)self _setNeedsAtLiveEdgeStateUpdate];
    [(AVPlayerController *)self _updateActivePlayer];

    goto LABEL_130;
  }

  if ([pathCopy isEqualToString:@"player.currentItem.playbackLikelyToKeepUp"])
  {
    v60 = _AVLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      player5 = [(AVPlayerController *)self player];
      currentItem3 = [player5 currentItem];
      isPlaybackLikelyToKeepUp = [currentItem3 isPlaybackLikelyToKeepUp];
      v64 = @"NO";
      if (isPlaybackLikelyToKeepUp)
      {
        v64 = @"YES";
      }

      LODWORD(buf.start.value) = 138412290;
      *(&buf.start.value + 4) = v64;
      _os_log_impl(&dword_18B49C000, v60, OS_LOG_TYPE_DEFAULT, "Playback likely to keep up changed to: %@", &buf, 0xCu);
    }

    v65 = newValueCopy;
    if (AVPlayerControllerAutoplayEnabled == 1)
    {
      v65 = newValueCopy;
      if (![(AVPlayerController *)self coordinatedPlaybackActive]&& BYTE1(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) == 1)
      {
        player6 = [(AVPlayerController *)self player];
        currentItem4 = [player6 currentItem];
        isPlaybackLikelyToKeepUp2 = [currentItem4 isPlaybackLikelyToKeepUp];

        v65 = newValueCopy;
        if (isPlaybackLikelyToKeepUp2)
        {
          v69 = _AVLog();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf.start.value) = 136315138;
            *(&buf.start.value + 4) = "[AVPlayerController _observeValueForKeyPath:oldValue:newValue:]";
            _os_log_impl(&dword_18B49C000, v69, OS_LOG_TYPE_DEFAULT, "%s setPlaying:YES because AVPlayerControllerAutoplayEnabled", &buf, 0xCu);
          }

          [(AVPlayerController *)self setPlaying:1];
          goto LABEL_130;
        }
      }
    }

    goto LABEL_131;
  }

  if ([pathCopy isEqualToString:@"player.currentItem.playbackBufferEmpty"])
  {
    v80 = _AVLog();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      player7 = [(AVPlayerController *)self player];
      currentItem5 = [player7 currentItem];
      LODWORD(buf.start.value) = 67109120;
      HIDWORD(buf.start.value) = [currentItem5 isPlaybackBufferEmpty];
      _os_log_impl(&dword_18B49C000, v80, OS_LOG_TYPE_DEFAULT, "isPlaybackBufferEmpty: %d", &buf, 8u);
    }

    if (AVPlayerControllerAutoplayEnabled == 1 && ![(AVPlayerController *)self coordinatedPlaybackActive])
    {
      player8 = [(AVPlayerController *)self player];
      currentItem6 = [player8 currentItem];
      if ([currentItem6 isPlaybackBufferEmpty])
      {
        player9 = [(AVPlayerController *)self player];
        currentItem7 = [player9 currentItem];
        if ([currentItem7 status] == 1)
        {
          [(AVPlayerController *)self rate];
          v88 = v87 > 0.0;

          if (v88)
          {
            BYTE1(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = 1;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    [(AVPlayerController *)self _retryPlayImmediatelyIfNeeded];
    goto LABEL_130;
  }

  v65 = newValueCopy;
  if ([pathCopy isEqualToString:@"player.currentItem.loadedTimeRanges"])
  {
    [(AVPlayerController *)self _retryPlayImmediatelyIfNeeded];
    goto LABEL_131;
  }

  if ([pathCopy isEqualToString:@"player.rate"])
  {
    v93 = self->_retryPlayingImmediatelyBlock;
    self->_retryPlayingImmediatelyBlock = 0;

    player10 = [(AVPlayerController *)self player];
    [player10 rate];
    v96 = v95;

    v97 = _AVLog();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.start.value) = 134217984;
      *(&buf.start.value + 4) = v96;
      _os_log_impl(&dword_18B49C000, v97, OS_LOG_TYPE_DEFAULT, "Rate changed to: %f", &buf, 0xCu);
    }

    goto LABEL_130;
  }

  if ([pathCopy isEqualToString:@"seekToTimeInternal"])
  {
    [(AVPlayerController *)self seekToTimeInternal];
    v98 = CMTimeGetSeconds(&buf.start);
    objc_initWeak(&buf, self);
    v121[0] = MEMORY[0x1E69E9820];
    v121[1] = 3221225472;
    v121[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_312;
    v121[3] = &unk_1E7209A38;
    objc_copyWeak(v122, &buf);
    v122[1] = *&v98;
    dispatch_async(MEMORY[0x1E69E96A0], v121);
    objc_destroyWeak(v122);
    objc_destroyWeak(&buf);
    goto LABEL_130;
  }

  if (![pathCopy isEqualToString:@"player.externalPlaybackActive"])
  {
    if (![pathCopy isEqualToString:@"audioFormats"])
    {
      if ([pathCopy isEqualToString:@"isPiPAvailable"])
      {
        mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
        isPiPAvailable = [mEMORY[0x1E6958460] isPiPAvailable];

        mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        v111 = [bundleIdentifier isEqualToString:@"com.apple.videos"];

        v112 = v111 | isPiPAvailable;
        if (((v111 | isPiPAvailable) & 1) == 0)
        {
          v113 = _AVLog();
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.start.value) = 0;
            _os_log_impl(&dword_18B49C000, v113, OS_LOG_TYPE_DEFAULT, "AVAudioSession indicates PIP is unavailable for this audio session", &buf, 2u);
          }
        }

        [objc_opt_class() setCachedIsPictureInPictureSupported:v112 & 1];
        [(AVPlayerController *)self setPictureInPictureSupported:v112 & 1];
      }

      else
      {
        v114 = _AVLog();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          v115 = _AVMethodProem(self);
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = v115;
          LOWORD(buf.start.flags) = 2112;
          *(&buf.start.flags + 2) = pathCopy;
          _os_log_error_impl(&dword_18B49C000, v114, OS_LOG_TYPE_ERROR, "Failed to handle %@ %@", &buf, 0x16u);
        }
      }

      goto LABEL_130;
    }

    [(AVPlayerController *)self reloadAudioOptions];
    goto LABEL_131;
  }

  if (![(AVPlayerController *)self isExternalPlaybackActive])
  {
    goto LABEL_131;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] applicationState] != 2)
  {
    goto LABEL_121;
  }

  isPlaying = [(AVPlayerController *)self isPlaying];

  v65 = newValueCopy;
  if (isPlaying)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    [mEMORY[0x1E69DC668] setAttribute:bundleIdentifier2 forKey:*MEMORY[0x1E69AE9E0] error:0];

LABEL_121:
    v65 = newValueCopy;
  }

  if ([(AVPlayerController *)self externalPlaybackType]== 1)
  {
    v103 = +[AVAirMessageDispatcher shared];
    haveAirPlayService = [v103 haveAirPlayService];

    v65 = newValueCopy;
    if (haveAirPlayService)
    {
      player11 = [(AVPlayerController *)self player];
      currentItem8 = [player11 currentItem];
      [currentItem8 avkit_airMessageSendToAppleTV];

      goto LABEL_130;
    }
  }

LABEL_131:
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[184] = 0;
    [WeakRetained setSeekingInternal:0];
    v5 = *MEMORY[0x1E6960C70];
    v4 = v5;
    v6 = *(MEMORY[0x1E6960C70] + 16);
    v3 = v6;
    [v2 setSeekToTimeInternal:&v5];
    *(v2 + 188) = v4;
    *(v2 + 204) = v3;
    *(v2 + 212) = v4;
    *(v2 + 228) = v3;
  }
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_259(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMetadata];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) statusOfValueForKey:@"commonMetadata" error:0] == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _updateMetadata];
  }
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [v2 arrayByAddingObject:@"und"];
  v4 = [v1 avkit_chapterMetadataGroupsBestMatchingPreferredLanguages:v3];

  v5 = dispatch_group_create();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v19 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v19)
  {
    v18 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 items];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            v12 = 0;
            do
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v26 + 1) + 8 * v12);
              dispatch_group_enter(v5);
              v24[0] = MEMORY[0x1E69E9820];
              v24[1] = 3221225472;
              v24[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_4;
              v24[3] = &unk_1E720A090;
              v25 = v5;
              [v13 loadValuesAsynchronouslyForKeys:&unk_1EFF12F80 completionHandler:v24];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v6 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v19);
  }

  v14 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_5;
  block[3] = &unk_1E7209A10;
  v22 = obj;
  v15 = obj;
  objc_copyWeak(&v23, (a1 + 40));
  dispatch_group_notify(v5, v14, block);

  objc_destroyWeak(&v23);
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_9(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"availableChapterLocales" error:0];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_10(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_11;
  v2[3] = &unk_1E7209A10;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_13(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"composable" error:0];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_14(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_15;
  v2[3] = &unk_1E7209A10;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_17(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"hasProtectedContent" error:0];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_18(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_19;
  v2[3] = &unk_1E7209A10;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_21(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"availableMetadataFormats" error:0];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_22(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_23;
  v2[3] = &unk_1E7209A10;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);

  objc_destroyWeak(&v4);
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_25(uint64_t a1)
{
  result = [*(a1 + 32) statusOfValueForKey:@"compatibleWithAirPlayVideo" error:0];
  if (result == 2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_312(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSeekToTime:*(a1 + 40)];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompatibleWithAirPlayVideo:{objc_msgSend(*(a1 + 32), "isCompatibleWithAirPlayVideo")}];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) availableMetadataFormats];
  [WeakRetained setAvailableMetadataFormats:v2];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHasProtectedContent:{objc_msgSend(*(a1 + 32), "hasProtectedContent")}];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setComposable:{objc_msgSend(*(a1 + 32), "isComposable")}];
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_5(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v27;
    v16 = *MEMORY[0x1E69876B8];
    v5 = *MEMORY[0x1E6987838];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 items];
        v9 = [MEMORY[0x1E6987FE0] metadataItemsFromArray:v8 withKey:v16 keySpace:v5];
        v10 = [v9 lastObject];
        v11 = [v10 stringValue];

        if (v7)
        {
          [v7 timeRange];
          *&time.value = v23;
          time.epoch = v24;
          Seconds = CMTimeGetSeconds(&time);
          [v7 timeRange];
        }

        else
        {
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          memset(&time, 0, sizeof(time));
          Seconds = CMTimeGetSeconds(&time);
          v21 = 0u;
          memset(v22, 0, sizeof(v22));
        }

        time = *(v22 + 8);
        v13 = +[AVChapter playbackChapterWithStartTime:duration:number:title:imageFaultBlock:](AVChapter, "playbackChapterWithStartTime:duration:number:title:imageFaultBlock:", [v2 count] + 1, v11, 0, Seconds, CMTimeGetSeconds(&time));
        [v2 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  if ([v2 count])
  {
    [v2 sortUsingComparator:&__block_literal_global_275_30928];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_7;
    block[3] = &unk_1E7209A10;
    objc_copyWeak(&v20, (v14 + 40));
    v19 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v20);
  }
}

void __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:*(a1 + 32)];
  [WeakRetained setContentChapters:v2];
}

uint64_t __64__AVPlayerController__observeValueForKeyPath_oldValue_newValue___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 startTime];
  v7 = v6;
  [v5 startTime];
  if (v7 <= v8)
  {
    [v4 startTime];
    v11 = v10;
    [v5 startTime];
    if (v11 < v12)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_ensureOnMainThreadAndObserveValueForKeyPath:(id)path oldValue:(id)value newValue:(id)newValue
{
  pathCopy = path;
  valueCopy = value;
  newValueCopy = newValue;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__AVPlayerController__ensureOnMainThreadAndObserveValueForKeyPath_oldValue_newValue___block_invoke;
  aBlock[3] = &unk_1E72099A0;
  objc_copyWeak(&v21, &location);
  v11 = pathCopy;
  v18 = v11;
  v12 = valueCopy;
  v19 = v12;
  v13 = newValueCopy;
  v20 = v13;
  v14 = _Block_copy(aBlock);
  if (v14)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v14[2](v14);
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __85__AVPlayerController__ensureOnMainThreadAndObserveValueForKeyPath_oldValue_newValue___block_invoke_2;
      v15[3] = &unk_1E72099C8;
      v16 = v14;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __85__AVPlayerController__ensureOnMainThreadAndObserveValueForKeyPath_oldValue_newValue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) oldValue:*(a1 + 40) newValue:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (BOOL)isCompletelySeekable
{
  seekableTimeRanges = [(AVPlayerController *)self seekableTimeRanges];

  if (!seekableTimeRanges)
  {
    return 0;
  }

  memset(&v15, 0, sizeof(v15));
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v6 = currentItem;
  if (currentItem)
  {
    [currentItem duration];
  }

  else
  {
    memset(&duration, 0, 24);
  }

  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  CMTimeRangeMake(&v15, &start.start, &duration.start);

  seekableTimeRanges2 = [(AVPlayerController *)self seekableTimeRanges];
  if ([seekableTimeRanges2 count] == 1)
  {
    v9 = [seekableTimeRanges2 objectAtIndexedSubscript:0];
    v10 = v9;
    if (v9)
    {
      [v9 CMTimeRangeValue];
    }

    else
    {
      memset(&start, 0, sizeof(start));
    }

    v12 = v15;
    CMTimeRangeGetIntersection(&duration, &start, &v12);
    start = v15;
    v7 = CMTimeRangeEqual(&duration, &start) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSError)error
{
  player = [(AVPlayerController *)self player];
  error = [player error];

  if (!error)
  {
    player2 = [(AVPlayerController *)self player];
    currentItem = [player2 currentItem];
    error = [currentItem error];
  }

  return error;
}

- (BOOL)isCurrentItemReadyForInspection
{
  isReadyToPlay = [(AVPlayerController *)self isReadyToPlay];
  timeline = [(AVPlayerController *)self timeline];
  v5 = timeline;
  if (timeline)
  {
    isReadyToPlay = [timeline isPrimaryPlayerItemReadyForInspection];
  }

  return isReadyToPlay;
}

- (int64_t)status
{
  player = [(AVPlayerController *)self player];
  status = [player status];

  if (!status)
  {
    goto LABEL_10;
  }

  if (status != 1)
  {
    if (status == 2)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  player2 = [(AVPlayerController *)self player];
  currentItem = [player2 currentItem];
  status2 = [currentItem status];

  switch(status2)
  {
    case 0:
LABEL_10:
      player3 = [(AVPlayerController *)self player];
      currentItem2 = [player3 currentItem];
      v5 = currentItem2 != 0;

      return v5;
    case 2:
      return 3;
    case 1:
      return 2;
  }

  return 0;
}

- (id)_queuePlayer
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    player = [(AVPlayerController *)self player];
    objc_opt_class();
    v8 = 136315394;
    v9 = "[AVPlayerController _queuePlayer]";
    v10 = 1024;
    LOBYTE(v11) = objc_opt_isKindOfClass() & 1;
    v11 = v11;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s queuePlayer: %d", &v8, 0x12u);
  }

  player2 = [(AVPlayerController *)self player];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    player3 = [(AVPlayerController *)self player];
  }

  else
  {
    player3 = 0;
  }

  return player3;
}

- (CGAffineTransform)preferredTransform
{
  result = self->_currentAudioTrack;
  if (result)
  {
    return [(CGAffineTransform *)result preferredTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)startKVO
{
  v67[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  observationController = [(AVPlayerController *)self observationController];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__AVPlayerController_startKVO__block_invoke;
  aBlock[3] = &unk_1E7209928;
  objc_copyWeak(&v55, &location);
  v4 = _Block_copy(aBlock);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __30__AVPlayerController_startKVO__block_invoke_2;
  v52[3] = &unk_1E7209928;
  objc_copyWeak(&v53, &location);
  v5 = _Block_copy(v52);
  assetInspectionQueue = [(AVPlayerController *)self assetInspectionQueue];
  v46 = MEMORY[0x1E69E9820];
  v47 = 3221225472;
  v48 = __30__AVPlayerController_startKVO__block_invoke_3;
  v49 = &unk_1E7209978;
  objc_copyWeak(&v51, &location);
  v7 = v5;
  v50 = v7;
  dispatch_async(assetInspectionQueue, &v46);

  v8 = [observationController startObserving:self keyPath:@"player.externalPlaybackActive" includeInitialValue:1 observationHandler:{v4, v46, v47, v48, v49}];
  v9 = [observationController startObserving:self keyPath:@"player.currentItem" includeInitialValue:1 observationHandler:v4];
  v10 = [observationController startObserving:self keyPath:@"currentAssetIfReady" includeInitialValue:1 observationHandler:v4];
  v11 = [observationController startObserving:self keyPath:@"timeControlStatus" includeInitialValue:1 observationHandler:v4];
  v12 = [observationController startObserving:self keyPath:@"player.currentItem.seekableTimeRanges" includeInitialValue:1 observationHandler:v4];
  v13 = [observationController startObserving:self keyPath:@"player.currentItem.loadedTimeRanges" includeInitialValue:1 observationHandler:v4];
  v14 = [observationController startObserving:self keyPath:@"player.currentItem.playbackBufferEmpty" includeInitialValue:0 observationHandler:v4];
  if (AVPlayerControllerAutoplayEnabled == 1)
  {
    v15 = [observationController startObserving:self keyPath:@"player.currentItem.playbackLikelyToKeepUp" includeInitialValue:0 observationHandler:v4];
  }

  v16 = [observationController startObserving:self keyPath:@"player.rate" includeInitialValue:1 observationHandler:v4];
  v17 = [observationController startObserving:self keyPath:@"hasLiveStreamingContent" includeInitialValue:1 observationHandler:v4];
  v18 = [observationController startObserving:self keyPath:@"seekToTimeInternal" includeInitialValue:0 observationHandler:v4];
  observationController2 = [(AVPlayerController *)self observationController];
  v67[0] = @"player.currentItem.presentationSize";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
  v21 = [observationController2 startObserving:self keyPaths:v20 includeInitialValue:1 observationHandler:&__block_literal_global_159_30942];

  observationController3 = [(AVPlayerController *)self observationController];
  v66 = @"contentDimensions";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  v24 = [observationController3 startObserving:self keyPaths:v23 includeInitialValue:0 observationHandler:&__block_literal_global_164_30944];

  v65[0] = @"player.currentItem.asset";
  v65[1] = @"readyToPlay";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v26 = [observationController startObserving:self keyPaths:v25 includeInitialValue:1 observationHandler:&__block_literal_global_172];

  v64[0] = @"player.currentItem.duration";
  v64[1] = @"readyToPlay";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v28 = [observationController startObserving:self keyPaths:v27 includeInitialValue:1 observationHandler:&__block_literal_global_180];

  v63[0] = @"hasEnabledAudio";
  v63[1] = @"currentAudioMediaSelectionOption";
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v30 = [observationController startObserving:self keyPaths:v29 observationHandler:&__block_literal_global_188_30948];

  v62[0] = @"hasEnabledVideo";
  v62[1] = @"currentVideoMediaSelectionOption";
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v32 = [observationController startObserving:self keyPaths:v31 observationHandler:&__block_literal_global_196_30951];

  v61[0] = @"player.externalPlaybackActive";
  v61[1] = @"externalPlaybackType";
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v34 = [observationController startObserving:self keyPaths:v33 includeInitialValue:1 observationHandler:&__block_literal_global_201_30953];

  v60 = @"currentAssetIfReady";
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
  v36 = [observationController startObserving:self keyPaths:v35 observationHandler:&__block_literal_global_203_30954];

  v37 = [observationController startObserving:self keyPath:@"isCurrentItemReadyForInspection" includeInitialValue:1 observationHandler:&__block_literal_global_208_30956];
  v59 = @"interstitialAssetIfReady";
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  v39 = [observationController startObserving:self keyPaths:v38 observationHandler:&__block_literal_global_213_30958];

  v58[0] = @"interstitialController.interstitialPlayer.status";
  v58[1] = @"interstitialController.interstitialPlayer.currentItem";
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v41 = [observationController startObserving:self keyPaths:v40 observationHandler:&__block_literal_global_221_30961];

  interstitialController = [(AVPlayerController *)self interstitialController];
  currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];
  LOBYTE(v33) = currentInterstitialTimeRange == 0;

  if ((v33 & 1) == 0)
  {
    [(AVPlayerController *)self _prepareInterstitialAssetForInspectionIfNeeded];
  }

  v57 = @"player.currentItem.tracks";
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
  v45 = [observationController startObserving:self keyPaths:v44 includeInitialValue:1 observationHandler:&__block_literal_global_226_30963];

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v55);
  objc_destroyWeak(&location);
}

void __30__AVPlayerController_startKVO__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 keyPath];
  v7 = [v5 oldValue];
  v8 = [v5 value];

  [WeakRetained _observeValueForKeyPath:v6 oldValue:v7 newValue:v8];
}

void __30__AVPlayerController_startKVO__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 keyPath];
  v7 = [v5 oldValue];
  v8 = [v5 value];

  [WeakRetained _ensureOnMainThreadAndObserveValueForKeyPath:v6 oldValue:v7 newValue:v8];
}

void __30__AVPlayerController_startKVO__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v2 isPiPAvailable];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AVPlayerController_startKVO__block_invoke_4;
  block[3] = &unk_1E7209950;
  objc_copyWeak(&v6, (a1 + 40));
  v7 = v3;
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

- (void)_updateIsPlayingHDRContentIfNeeded
{
  if (self)
  {
    if (FigIsHDRAllowedOnDevice())
    {
      objc_initWeak(&location, self);
      player = [self player];
      currentItem = [player currentItem];
      v4 = *MEMORY[0x1E6987510];
      v5 = *MEMORY[0x1E6987608];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __56__AVPlayerController__updateIsPlayingHDRContentIfNeeded__block_invoke;
      v6[3] = &unk_1E7209A88;
      objc_copyWeak(&v7, &location);
      [currentItem avkit_assetTracksContainMediaCharacteristic:v4 forMediaType:v5 completion:v6];

      objc_destroyWeak(&v7);
      objc_destroyWeak(&location);
    }
  }
}

void __56__AVPlayerController__updateIsPlayingHDRContentIfNeeded__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[400] != a2)
    {
      WeakRetained[400] = a2;
      v7 = WeakRetained;
      v4 = [WeakRetained internalDelegate];
      v5 = objc_opt_respondsToSelector();

      WeakRetained = v7;
      if (v5)
      {
        v6 = [v7 internalDelegate];
        [v6 playerControllerDidUpdateIsPlayingHDRContent:v7];

        WeakRetained = v7;
      }
    }
  }
}

void __30__AVPlayerController_startKVO__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _prepareInterstitialAssetForInspectionIfNeeded];
  [v2 updateTiming];
}

void __30__AVPlayerController_startKVO__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateCurrentAudioTrackIfNeeded];
  [v2 reloadOptions];
  [v2 reloadCurrentMediaSelectionsAsynchronously];
}

void __30__AVPlayerController_startKVO__block_invoke_14(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 value];
  v6 = [v5 BOOLValue];

  v7 = [v8 timeline];

  if (v7 && v6)
  {
    [v8 updateTiming];
  }
}

void __30__AVPlayerController_startKVO__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updateCurrentAudioTrackIfNeeded];
  [v2 _updateCurrentVideoTrackIfNeeded];
  [(AVPlayerController *)v2 _updateIsPlayingHDRContentIfNeeded];
}

void __30__AVPlayerController_startKVO__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v3 = v2[44];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__AVPlayerController_startKVO__block_invoke_12;
  v4[3] = &unk_1E7209EA8;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__AVPlayerController_startKVO__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateExternalPlaybackAirPlayDeviceLocalizedNameIfNeeded];
}

void __30__AVPlayerController_startKVO__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 player];
  v4 = [v3 currentItem];
  v5 = [v4 asset];

  v6 = [v2 timeline];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v2 isReadyToPlay];

  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = [v3 currentItem];
  v10 = v9;
  if (!v9)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_12;
  }

  [v9 duration];
  if ((v23 & 0x100000000) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v11 = [v3 currentItem];
  if (!v11)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  v12 = v11;
  [v11 duration];

  if ((v20 & 0x1000000000) != 0)
  {
    v13 = [v2 timeline];
    if (!v13)
    {
      goto LABEL_16;
    }

    v14 = v13;
    v15 = +[AVKitGlobalSettings shared];
    v16 = [v15 isIntegratedTimelineEnabledForLiveStreams];

    if (v16)
    {
      goto LABEL_16;
    }

LABEL_15:
    [v2 setTimeline:0];
    goto LABEL_16;
  }

LABEL_13:
  if ([v5 statusOfValueForKey:@"streaming" error:{0, v19, v20, v21, v22, v23, v24}] == 2)
  {
    v17 = [v5 valueForKey:@"streaming"];
    v18 = [v17 BOOLValue];

    if ((v18 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if (!*(v2 + 79))
  {
    *(v2 + 123) = 0;
    [v2 _updateAtLiveEdgeStateIfNeeded];
  }

LABEL_18:
  [v2 _prepareAssetForInspectionIfNeeded];
}

void __30__AVPlayerController_startKVO__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD88];
  v3 = a2;
  v4 = [v2 defaultCenter];
  [v4 postNotificationName:@"AVPlayerControllerContentDimensionsChangedNotification" object:v3];
}

void __30__AVPlayerController_startKVO__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 value];
  [v6 CGSizeValue];
  [v5 setPresentationSize:?];
}

void __30__AVPlayerController_startKVO__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [WeakRetained _observeValueForKeyPath:@"isPiPAvailable" oldValue:0 newValue:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 observationController];
  v6 = [MEMORY[0x1E6958460] sharedInstance];
  v7 = [v5 startObserving:v6 keyPath:@"audioFormats" includeInitialValue:0 observationHandler:*(a1 + 32)];

  v11 = objc_loadWeakRetained((a1 + 40));
  v8 = [v11 observationController];
  v9 = [MEMORY[0x1E6958460] sharedInstance];
  v10 = [v8 startObserving:v9 keyPath:@"isPiPAvailable" includeInitialValue:0 observationHandler:*(a1 + 32)];
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  self->_isDeallocating = 1;
  observationController = [(AVPlayerController *)self observationController];
  [observationController stopAllObservation];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  [(AVPlayerController *)self setTimeline:0];
  pipActivitySessionIdentifier = self->_pipActivitySessionIdentifier;
  self->_pipActivitySessionIdentifier = 0;

  reduceResourceUsageAssertion = [(AVPlayerController *)self reduceResourceUsageAssertion];
  [reduceResourceUsageAssertion invalidate];

  [(AVPlayerController *)self setPlayerLayerForReducingResources:0];
  [(NSDate *)self->_lastTimePlayingOnMatchPointDeviceWasUpdated invalidate];
  lastTimePlayingOnMatchPointDeviceWasUpdated = self->_lastTimePlayingOnMatchPointDeviceWasUpdated;
  self->_lastTimePlayingOnMatchPointDeviceWasUpdated = 0;

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x1E696F730], 0);
  v9 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v9, self, *MEMORY[0x1E696F738], 0);
  if (self->_updateAtMinMaxTimePeriodicObserverToken)
  {
    [*&self->_coordinatedPlaybackActive removeTimeObserver:?];
  }

  [(AVPlayerController *)self stopGeneratingTimecodes];
  retryPlayingImmediatelyBlock = self->_retryPlayingImmediatelyBlock;
  self->_retryPlayingImmediatelyBlock = 0;

  v11 = _AVLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v15 = "[AVPlayerController dealloc]";
    v16 = 1024;
    v17 = 968;
    v18 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v11, OS_LOG_TYPE_DEFAULT, "%s %d %p", buf, 0x1Cu);
  }

  [*&self->_muted invalidate];
  v12 = *&self->_muted;
  *&self->_muted = 0;

  v13.receiver = self;
  v13.super_class = AVPlayerController;
  [(AVPlayerController *)&v13 dealloc];
}

- (void)startInspectionIfNeeded
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (![(AVPlayerController *)self isInspectionSuspended]&& ![(AVPlayerController *)self hasBegunInspection]&& !self->_isDeallocating)
  {
    [(AVPlayerController *)self setHasBegunInspection:1];
    objc_initWeak(&location, self);
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6960CD0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_53_31007];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6960CE8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_53_31007];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6987A50] object:0 notificationCenter:0 observationHandler:&__block_literal_global_56_31008];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6987A10] object:0 notificationCenter:0 observationHandler:&__block_literal_global_58_31009];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6987A68] object:*&self->_coordinatedPlaybackActive notificationCenter:0 observationHandler:&__block_literal_global_61];
    timeline = self->_timeline;
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    [(AVKitIntegratedTimeline *)timeline startObservingNotificationForName:*MEMORY[0x1E69580D8] object:mEMORY[0x1E6958460] notificationCenter:0 observationHandler:&__block_literal_global_66_31010];

    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E695D8F0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_78];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, self, _captionAppearanceSettingsChangeNotificationCallback, *MEMORY[0x1E696F738], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v6 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v6, self, _audibleMediaSettingsChangeNotificationCallback, *MEMORY[0x1E696F730], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(AVPlayerController *)self startKVO];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E6987A30] object:0 notificationCenter:0 observationHandler:&__block_literal_global_81];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:@"AVAirMessageDispatcherDidChangeTargetNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_84_31011];
    v7 = self->_timeline;
    _playbackCoordinatorWithoutTriggeringFullSetup = [*&self->_coordinatedPlaybackActive _playbackCoordinatorWithoutTriggeringFullSetup];
    [(AVKitIntegratedTimeline *)v7 startObservingNotificationForName:*MEMORY[0x1E69879A8] object:_playbackCoordinatorWithoutTriggeringFullSetup notificationCenter:0 observationHandler:&__block_literal_global_87];

    [(AVPlayerController *)self _updateCoordinatedPlaybackActive];
    [(AVPlayerController *)self _updatePhotosensitivityRegions];
    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:*MEMORY[0x1E69586B0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_90_31012];
    v9 = *&self->_coordinatedPlaybackActive;
    if (v9)
    {
      v10 = [(AVKitIntegratedTimeline *)self->_timeline startObserving:v9 keyPath:@"muted" includeInitialValue:1 observationHandler:&__block_literal_global_98_31014];
    }

    internalDelegate = self->_internalDelegate;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __45__AVPlayerController_startInspectionIfNeeded__block_invoke_4;
    v21 = &unk_1E7209EA8;
    objc_copyWeak(&v22, &location);
    dispatch_async(internalDelegate, &v18);
    [(AVPlayerController *)self _setupInterstitialController:v18];
    v12 = self->_timeline;
    pipActivitySessionIdentifier = self->_pipActivitySessionIdentifier;
    v24[0] = @"interstitialPlayer.rate";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v15 = [(AVKitIntegratedTimeline *)v12 startObserving:pipActivitySessionIdentifier keyPaths:v14 observationHandler:&__block_literal_global_106];

    [(AVKitIntegratedTimeline *)self->_timeline startObservingNotificationForName:@"AVKitCurrentInterstitialEventChangedNotification" object:self->_pipActivitySessionIdentifier notificationCenter:0 observationHandler:&__block_literal_global_108];
    internalDelegate = [(AVPlayerController *)self internalDelegate];
    LOBYTE(pipActivitySessionIdentifier) = objc_opt_respondsToSelector();

    if (pipActivitySessionIdentifier)
    {
      internalDelegate2 = [(AVPlayerController *)self internalDelegate];
      [internalDelegate2 playerControllerDidCompleteInspection:self];
    }

    [(AVPlayerController *)self startMediaSelectionInspection];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePlayingOnMatchPointDeviceIfNeeded];
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  [v5 _updateActivePlayer];
  v7 = [v5 activePlayer];
  v8 = [v7 currentItem];
  v9 = [v8 timebase];

  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 userInfo];
    v12 = [v11 objectForKeyedSubscript:@"currentEvent"];
    EffectiveRate = CMTimebaseGetEffectiveRate(v9);
    CMTimebaseGetTime(&v16, v9);
    time = v16;
    Seconds = CMTimeGetSeconds(&time);
    LODWORD(time.value) = 136315906;
    *(&time.value + 4) = "[AVPlayerController startInspectionIfNeeded]_block_invoke_6";
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v12;
    HIWORD(time.epoch) = 2048;
    v18 = EffectiveRate;
    v19 = 2048;
    v20 = Seconds;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "%s AVKitCurrentInterstitialEventChangedNotification. Event = %@, rate = %f, item currentTime = %f", &time, 0x2Au);
  }

  v15 = [v5 timeline];

  if (v15)
  {
    [v5 updateTiming];
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_3_95(uint64_t a1, _BYTE *a2)
{
  if ((a2[385] & 1) == 0)
  {
    v3 = a2;
    v4 = [v3 player];
    [v3 setMuted:{objc_msgSend(v4, "isMuted")}];
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_2_88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = [a4 object];
  [v5 _throttledUpdatePlayingOnMatchPointDeviceIfNeededWithContext:v6];
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_3_82(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 externalPlaybackType];
  v4 = _AVLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v7 = 136315394;
      v8 = "[AVPlayerController startInspectionIfNeeded]_block_invoke_3";
      v9 = 2114;
      v10 = v2;
      _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s have AirPlay to AppleTV for %{public}@", &v7, 0x16u);
    }

    v4 = [v2 player];
    v6 = [v4 currentItem];
    [v6 avkit_airMessageSendToAppleTV];
  }

  else if (v5)
  {
    v7 = 136315394;
    v8 = "[AVPlayerController startInspectionIfNeeded]_block_invoke";
    v9 = 2048;
    v10 = [v2 externalPlaybackType];
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s have AirPlay to AppleTV, but externalPlaybackType = %ld", &v7, 0x16u);
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_2_79(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = a4;
  v6 = [v9 player];
  v7 = [v6 currentItem];
  v8 = [v5 object];

  LODWORD(v5) = [v7 isEqual:v8];
  if (v5)
  {
    [v9 reloadOptionsAndCurrentSelections];
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_64(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 player];
    [v8 rate];
    v10 = v9;
    v11 = [v6 userInfo];
    v36 = 134218242;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "Interruption notification: AVAudioSessionInterruptionNotification player.rate: %.1f userinfo: %@", &v36, 0x16u);
  }

  if ([v5 handlesAudioSessionInterruptions])
  {
    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6958100]];
    v14 = [v13 unsignedIntegerValue];

    if (!v14)
    {
      v15 = _AVLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [v5[16] doubleValue];
        v36 = 134217984;
        v37 = *&v16;
        _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "AVAudioSessionInterruptionTypeEnded: %f", &v36, 0xCu);
      }

      v17 = v5[16];
      if (v17)
      {
        v18 = v17;
        v19 = v5[16];
        v5[16] = 0;

        v20 = [v6 userInfo];
        v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69580E8]];
        v22 = [v21 unsignedIntegerValue];

        if (v22)
        {
          if (objc_opt_respondsToSelector())
          {
            v23 = [v5 internalDelegate];
            v24 = [v23 playerControllerCanRestorePlaybackRateAfterAudioSessionDeactivation:v5];
          }

          else
          {
            v24 = 0;
          }

          v25 = [MEMORY[0x1E69DC668] sharedApplication];
          if ([v25 applicationState])
          {
            v26 = [v5 isPictureInPictureActive] | v24;
          }

          else
          {
            v26 = 1;
          }

          v27 = _AVLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            if (v26)
            {
              v28 = "YES";
            }

            else
            {
              v28 = "NO";
            }

            v36 = 136315650;
            v37 = COERCE_DOUBLE("[AVPlayerController startInspectionIfNeeded]_block_invoke");
            v38 = 2080;
            v39 = "shouldRestoreRate";
            v40 = 2080;
            v41 = v28;
            _os_log_impl(&dword_18B49C000, v27, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v36, 0x20u);
          }

          v29 = _AVLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            if (v24)
            {
              v30 = "YES";
            }

            else
            {
              v30 = "NO";
            }

            v36 = 136315650;
            v37 = COERCE_DOUBLE("[AVPlayerController startInspectionIfNeeded]_block_invoke");
            v38 = 2080;
            v39 = "delegateCanResumeAfterInterruption";
            v40 = 2080;
            v41 = v30;
            _os_log_impl(&dword_18B49C000, v29, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v36, 0x20u);
          }

          if (v26)
          {
            if ([v5 isPictureInPictureActive])
            {
              v31 = [MEMORY[0x1E69AED10] sharedAVSystemController];
              v32 = [MEMORY[0x1E696AAE8] mainBundle];
              v33 = [v32 bundleIdentifier];
              [v31 setAttribute:v33 forKey:*MEMORY[0x1E69AE9E0] error:0];
            }

            if ([v5 hasLiveStreamingContent])
            {
              [v5 gotoEndOfSeekableRanges:0];
            }

            [v18 floatValue];
            if (v34 != 0.0)
            {
              [v18 floatValue];
              [v5 setRate:v35];
            }
          }
        }
      }
    }
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  v7 = [v5 player];
  [v7 rate];
  v9 = v8;

  v10 = _AVLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 userInfo];
    v15 = 134218242;
    v16 = v9;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_18B49C000, v10, OS_LOG_TYPE_DEFAULT, "Interruption notification: AVPlayerPlaybackWasInterruptedNotification player.rate: %.1f userinfo: %@", &v15, 0x16u);
  }

  if ([v5 handlesAudioSessionInterruptions] && v9 != 0.0)
  {
    *&v12 = v9;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v14 = v5[16];
    v5[16] = v13;
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = a2;
  v5 = [a4 object];
  v6 = [v16 player];
  v7 = [v6 currentItem];

  if (v5 == v7)
  {
    if (AVPlayerControllerAutoplayEnabled == 1)
    {
      v16[289] = 0;
    }

    if ([v16 isLooping])
    {
      v8 = [v16 player];
      [v8 rate];
      v10 = v9;

      if (v10 >= 0.0)
      {
        [v16 seekToBeginning:0];
      }

      else
      {
        [v16 seekToEnd:0];
      }
    }

    v11 = [v16 player];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v16 player];
      v13 = [v12 items];
      v14 = [v13 count];

      if (v14 > 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"AVPlayerControllerPlaybackDidEndNotification" object:v16];
  }

LABEL_13:
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke_54(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = [a4 object];
  v6 = [v9 player];
  v7 = [v6 currentItem];

  if (v5 == v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"AVPlayerControllerCurrentTimeJumpedNotification" object:v9];

    if (([v9 isScrubbing] & 1) == 0)
    {
      [v9 _setNeedsAtLiveEdgeStateUpdate];
    }
  }
}

void __45__AVPlayerController_startInspectionIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a4;
  [v5 isReadyToPlay];
  v7 = [v5 timeline];
  if (v7)
  {
    v8 = [v5 isSeeking] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  if ([v5 isReadyToPlay] && v8)
  {
    v9 = [v6 object];
    v10 = [v5 player];
    v11 = [v10 currentItem];
    v12 = [v11 timebase];

    if (v9 == v12)
    {
      v19 = _AVLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        EffectiveRate = CMTimebaseGetEffectiveRate(v9);
        CMTimebaseGetTime(&v25, v9);
        time = v25;
        Seconds = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 136315650;
        *(&time.value + 4) = "[AVPlayerController startInspectionIfNeeded]_block_invoke";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = EffectiveRate;
        HIWORD(time.epoch) = 2048;
        v27 = Seconds;
        v22 = "%s Main player rate changed. rate = %f, item currentTime = %f";
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [v5 timeline];
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = v13;
      v15 = [v5 interstitialController];
      v16 = [v15 interstitialPlayer];
      v17 = [v16 currentItem];
      v18 = [v17 timebase];

      if (v9 != v18)
      {
        goto LABEL_15;
      }

      v19 = _AVLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = CMTimebaseGetEffectiveRate(v9);
        CMTimebaseGetTime(&v25, v9);
        time = v25;
        v21 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 136315650;
        *(&time.value + 4) = "[AVPlayerController startInspectionIfNeeded]_block_invoke";
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v20;
        HIWORD(time.epoch) = 2048;
        v27 = v21;
        v22 = "%s Interstitial player rate changed. rate = %f, item currentTime = %f";
LABEL_13:
        _os_log_impl(&dword_18B49C000, v19, OS_LOG_TYPE_DEFAULT, v22, &time, 0x20u);
      }
    }

    [v5 updateTiming];
LABEL_15:
  }
}

- (void)_commonInit
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4 = dispatch_queue_create("com.apple.avkit.seekQueue", v3);
  seekQueue = self->_seekQueue;
  self->_seekQueue = v4;

  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create("com.apple.avkit.playerControllerAssetInspectionQueue", v6);
  interstitialAssetIfReady = self->_interstitialAssetIfReady;
  self->_interstitialAssetIfReady = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);
  v11 = dispatch_queue_create("com.apple.avkit.playerControllerPlayerItemInspectionQueue", v10);
  observationController = self->_observationController;
  self->_observationController = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);
  v15 = dispatch_queue_create("com.apple.avkit.playerControllerBackgroundQueue", v14);
  internalDelegate = self->_internalDelegate;
  self->_internalDelegate = v15;

  self->_reduceResourceUsageAssertion = 0x3FF0000000000000;
  self->_currentVideoTrack = 0x7FF8000000000000;
  v17 = MEMORY[0x1E6960C70];
  *&self->_presentationSize.height = *MEMORY[0x1E6960C70];
  *&self->_seekToTimeInternal.timescale = *(v17 + 16);
  self->_captionAppearanceDisplayType = 0x7FF8000000000000;
  BYTE2(self->_photosensitivityMetadataHandler) = 1;
  v18 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  seekTimer = self->_seekTimer;
  self->_seekTimer = v18;

  [(OS_dispatch_source *)self->_seekTimer setName:@"com.apple.avkit.AVMediaSelectionOption.displayName"];
  [(OS_dispatch_source *)self->_seekTimer setCountLimit:1000];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  BYTE1(self->_liveEdgeTimer) = 1;
}

- (AVPlayerController)initWithPlayer:(id)player
{
  v27 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[AVPlayerController initWithPlayer:]";
    v25 = 2048;
    v26 = playerCopy;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s player: %p", buf, 0x16u);
  }

  v22.receiver = self;
  v22.super_class = AVPlayerController;
  v7 = [(AVPlayerController *)&v22 init];
  v8 = v7;
  if (v7)
  {
    [(AVPlayerController *)v7 _commonInit];
    v8->_inspectionSuspended = 1;
    v9 = [[AVObservationController alloc] initWithOwner:v8];
    timeline = v8->_timeline;
    v8->_timeline = v9;

    v8->_availableMetadataFormats = 0x7FF8000000000000;
    HIBYTE(v8->_liveEdgeTimer) = [objc_opt_class() cachedIsPictureInPictureSupported];
    v8->_handlesAudioSessionInterruptions = 0;
    objc_storeStrong(&v8->_coordinatedPlaybackActive, player);
    LOBYTE(v8->_liveStreamMaxTiming) = 1;
    BYTE3(v8->_liveEdgeTimer) = 0;
    BYTE3(v8->_photosensitivityMetadataHandler) = 0;
    [(AVPlayerController *)v8 startInspectionIfNeeded];
    [(AVKitIntegratedTimeline *)v8->_timeline startObservingNotificationForName:*MEMORY[0x1E69879D0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_31058];
    backgroundPIPAuthorizationToken = [playerCopy backgroundPIPAuthorizationToken];
    v12 = [backgroundPIPAuthorizationToken copy];
    scrubCoordinatorSuspension = v8->_scrubCoordinatorSuspension;
    v8->_scrubCoordinatorSuspension = v12;

    v8->_displayNameCache = MACaptionAppearanceGetDisplayType(kMACaptionAppearanceDomainUser);
    v14 = +[AVKitGlobalSettings shared];
    isIntegratedTimelineEnabled = [v14 isIntegratedTimelineEnabled];

    currentItem = [playerCopy currentItem];
    isAVKitIntegratedTimelineDisabled = [currentItem isAVKitIntegratedTimelineDisabled];

    if (isIntegratedTimelineEnabled && (isAVKitIntegratedTimelineDisabled & 1) == 0)
    {
      v18 = [AVKitIntegratedTimeline alloc];
      currentItem2 = [playerCopy currentItem];
      v20 = [(AVKitIntegratedTimeline *)v18 initWithPlayerItem:currentItem2];

      [(AVPlayerController *)v8 setTimeline:v20];
    }

    [(AVPlayerController *)v8 _updateActivePlayer];
  }

  return v8;
}

void __37__AVPlayerController_initWithPlayer___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v2 = [v9 pipActivitySessionIdentifier];
  v3 = [v9 player];
  v4 = [v3 backgroundPIPAuthorizationToken];
  v5 = [v2 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [v9 player];
    v7 = [v6 backgroundPIPAuthorizationToken];
    [v9 setPipActivitySessionIdentifier:v7];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"AVPlayerControllerPIPActivitySessionIdentifierDidChangeNotification" object:v9];
  }
}

- (AVPlayerController)init
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[AVPlayerController init]";
    v10 = 1024;
    v11 = 522;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = AVPlayerController;
  v4 = [(AVPlayerController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(AVPlayerController *)v4 _commonInit];
    BYTE3(v5->_liveEdgeTimer) = 0;
    BYTE3(v5->_photosensitivityMetadataHandler) = 0;
  }

  return v5;
}

+ (id)assetInspectionKeysForPrimary
{
  if (assetInspectionKeysForPrimary_onceToken != -1)
  {
    dispatch_once(&assetInspectionKeysForPrimary_onceToken, &__block_literal_global_518);
  }

  v3 = assetInspectionKeysForPrimary__assetKeysOfInterest;

  return v3;
}

uint64_t __51__AVPlayerController_assetInspectionKeysForPrimary__block_invoke()
{
  v0 = assetInspectionKeysForPrimary__assetKeysOfInterest;
  assetInspectionKeysForPrimary__assetKeysOfInterest = &unk_1EFF13058;

  v1 = [assetInspectionKeysForPrimary__assetKeysOfInterest arrayByAddingObject:@"preferredDisplayCriteria"];
  v2 = assetInspectionKeysForPrimary__assetKeysOfInterest;
  assetInspectionKeysForPrimary__assetKeysOfInterest = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)keyPathsForValuesAffectingHasSeekableLiveStreamingContent
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"hasLiveStreamingContent";
  v6[1] = @"minTiming";
  v6[2] = @"maxTiming";
  v6[3] = @"player.currentItem.liveUpdateInterval";
  v6[4] = @"player.currentItem.seekableTimeRangesLastModifiedTime";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingHasLiveStreamingContent
{
  v6[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"isCurrentItemReadyForInspection";
  v6[1] = @"readyToPlay";
  v6[2] = @"contentDuration";
  v6[3] = @"player.currentItem.asset.duration";
  v6[4] = @"timeline.canSeek";
  v6[5] = @"hasEnabledVideo";
  v6[6] = @"hasEnabledAudio";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingContentDimensions
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"readyToPlay";
  v6[1] = @"presentationSize";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self && (dyld_program_sdk_at_least() & 1) == 0)
  {
    AVPlayerControllerAutoplayEnabled = 1;
  }
}

- (id)maxFrameCountString
{
  timecodeController = [(AVPlayerController *)self timecodeController];
  maxFrameCountString = [timecodeController maxFrameCountString];

  return maxFrameCountString;
}

- (id)maxTimecode
{
  timecodeController = [(AVPlayerController *)self timecodeController];
  maxTimecodeString = [timecodeController maxTimecodeString];

  return maxTimecodeString;
}

- (int64_t)frameNumberForCurrentTime
{
  loadTimecodeControllerIfNeeded = [(AVPlayerController *)self loadTimecodeControllerIfNeeded];
  timecodeController = [(AVPlayerController *)self timecodeController];
  player = [(AVPlayerController *)self player];
  currentItem = [player currentItem];
  v7 = currentItem;
  if (currentItem)
  {
    [currentItem currentTime];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [timecodeController calculateFrameNumberAtCMTime:v10];

  return v8;
}

- (id)timecodeForCurrentTime
{
  loadTimecodeControllerIfNeeded = [(AVPlayerController *)self loadTimecodeControllerIfNeeded];
  timecodeController = [(AVPlayerController *)self timecodeController];
  v5 = [timecodeController calculateTimecodeAtFrame:{-[AVPlayerController frameNumberForCurrentTime](self, "frameNumberForCurrentTime")}];

  return v5;
}

- (void)seekToTimecode:(id)timecode
{
  v4 = [*&self->_touchBarRequiresLinearPlayback calculateFrameNumberAtTimecode:timecode];
  if ((v4 & 0x8000000000000000) == 0)
  {
    [*&self->_touchBarRequiresLinearPlayback timeIntervalForFrameNumber:v4];

    [(AVPlayerController *)self seekToTime:?];
  }
}

- (void)stopGeneratingTimecodes
{
  if (self->_timecodePeriodicObserverToken)
  {
    player = [(AVPlayerController *)self player];
    [player removeTimeObserver:self->_timecodePeriodicObserverToken];

    timecodePeriodicObserverToken = self->_timecodePeriodicObserverToken;
    self->_timecodePeriodicObserverToken = 0;
  }
}

- (BOOL)startGeneratingTimecodesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (!self->_timecodePeriodicObserverToken)
  {
    v7 = [blockCopy copy];
    if (v7 && [(AVPlayerController *)self hasTimecodes])
    {
      loadTimecodeControllerIfNeeded = [(AVPlayerController *)self loadTimecodeControllerIfNeeded];

      if (!loadTimecodeControllerIfNeeded)
      {
        v6 = 0;
LABEL_15:

        goto LABEL_16;
      }

      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __100__AVPlayerController_AVPlayerControllerTimecodeSupportInternal__startGeneratingTimecodesUsingBlock___block_invoke;
      aBlock[3] = &unk_1E7209C90;
      objc_copyWeak(&v23, &location);
      v22 = v7;
      v9 = _Block_copy(aBlock);
      player = [(AVPlayerController *)self player];
      v11 = player;
      if (player)
      {
        [player currentTime];
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
      }

      v9[2](v9, &v18);

      player2 = [(AVPlayerController *)self player];
      timecodeController = [(AVPlayerController *)self timecodeController];
      v14 = timecodeController;
      if (timecodeController)
      {
        [timecodeController observationInterval];
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
      }

      v15 = [player2 addPeriodicTimeObserverForInterval:&v18 queue:0 usingBlock:v9];
      timecodePeriodicObserverToken = self->_timecodePeriodicObserverToken;
      self->_timecodePeriodicObserverToken = v15;

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    v6 = 1;
    goto LABEL_15;
  }

  v6 = 1;
LABEL_16:

  return v6;
}

void __100__AVPlayerController_AVPlayerControllerTimecodeSupportInternal__startGeneratingTimecodesUsingBlock___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained timecodeController];
    v11 = *a2;
    v12 = *(a2 + 2);
    v7 = [v6 calculateFrameNumberAtCMTime:&v11];

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu F", v7];
    v9 = [v5 timecodeController];
    v10 = [v9 calculateTimecodeAtFrame:v7];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)seekToFrame:(int64_t)frame
{
  [*&self->_touchBarRequiresLinearPlayback timeIntervalForFrameNumber:frame];

  [(AVPlayerController *)self seekToTime:?];
}

- (double)timecodeObservationInterval
{
  loadTimecodeControllerIfNeeded = [(AVPlayerController *)self loadTimecodeControllerIfNeeded];
  timecodeController = [(AVPlayerController *)self timecodeController];
  v5 = timecodeController;
  if (timecodeController)
  {
    [timecodeController observationInterval];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (id)loadTimecodeControllerIfNeeded
{
  if (!*&self->_touchBarRequiresLinearPlayback && [(AVPlayerController *)self hasTimecodes])
  {
    v3 = [AVTimecodeController alloc];
    _timecodeTrack = [(AVPlayerController *)self _timecodeTrack];
    currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
    v6 = [currentAssetIfReady avkit_tracksWithMediaType:*MEMORY[0x1E6987608]];
    firstObject = [v6 firstObject];
    v8 = [(AVTimecodeController *)v3 initWithTimecodeTrack:_timecodeTrack videoTrack:firstObject];
    v9 = *&self->_touchBarRequiresLinearPlayback;
    *&self->_touchBarRequiresLinearPlayback = v8;
  }

  v10 = *&self->_touchBarRequiresLinearPlayback;

  return v10;
}

- (BOOL)hasTimecodes
{
  _timecodeTrack = [(AVPlayerController *)self _timecodeTrack];
  if (_timecodeTrack)
  {
    player = [(AVPlayerController *)self player];
    currentItem = [player currentItem];
    v6 = currentItem;
    if (currentItem)
    {
      [currentItem reversePlaybackEndTime];
      if ((v27 & 0x100000000) != 0)
      {
        player2 = [(AVPlayerController *)self player];
        currentItem2 = [player2 currentItem];
        v21 = currentItem2;
        v22 = player2;
        if (currentItem2)
        {
          [currentItem2 reversePlaybackEndTime];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = **&MEMORY[0x1E6960CC0];
        v7 = 0;
        v8 = 0;
        if (CMTimeCompare(&time1, &time2))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v7 = 1;
      v28 = 0;
    }

    player3 = [(AVPlayerController *)self player];
    currentItem3 = [player3 currentItem];
    v13 = currentItem3;
    if (currentItem3 && ([currentItem3 forwardPlaybackEndTime], (v23 & 1) != 0))
    {
      player4 = [(AVPlayerController *)self player];
      currentItem4 = [player4 currentItem];
      v15 = currentItem4;
      if (currentItem4)
      {
        [currentItem4 forwardPlaybackEndTime];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      player5 = [(AVPlayerController *)self player];
      currentItem5 = [player5 currentItem];
      v19 = currentItem5;
      if (currentItem5)
      {
        [currentItem5 duration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v8 = CMTimeCompare(&time1, &time2) == 0;

      if (v7)
      {
        goto LABEL_17;
      }
    }

    else
    {

      v8 = 1;
      if (v7)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (BOOL)hasReadableTimecodes
{
  if (![(AVPlayerController *)self hasTimecodes])
  {
    return 0;
  }

  loadTimecodeControllerIfNeeded = [(AVPlayerController *)self loadTimecodeControllerIfNeeded];
  v4 = loadTimecodeControllerIfNeeded != 0;

  return v4;
}

- (void)setRateWithForce:(double)force
{
  forceCopy = force;
  v7 = fabs(force);
  if ((self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount & 0x10000) != 0)
  {
    if (force == 0.0)
    {
      BYTE2(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = 0;
      [(AVPlayerController *)self setRate:*&self->_previousValueOfCanUseNetworkResourcesForLiveStreamingWhilePaused];
    }
  }

  else
  {
    force = 1.0;
    if (v7 >= 1.0)
    {
      BYTE2(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) = 1;
      [(AVPlayerController *)self defaultPlaybackRate];
      v9 = v8;
      [(AVPlayerController *)self rate];
      if (force >= v9)
      {
        *&self->_previousValueOfCanUseNetworkResourcesForLiveStreamingWhilePaused = v9;
      }

      else
      {
        [(AVPlayerController *)self rate];
        if (force <= -v9)
        {
          *&self->_previousValueOfCanUseNetworkResourcesForLiveStreamingWhilePaused = -v9;
        }

        else
        {
          *&self->_previousValueOfCanUseNetworkResourcesForLiveStreamingWhilePaused = 0;
        }
      }
    }
  }

  if (BYTE2(self->_canUseNetworkResourcesForLiveStreamingWhilePausedCount) == 1)
  {
    LODWORD(force) = 1.0;
    LODWORD(v3) = 1.0;
    LODWORD(v4) = 1.0;
    v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:force :0.0 :v3 :v4];
    v11 = v10;
    v12 = 1.0;
    if (v7 >= 1.0)
    {
      v12 = v7;
    }

    v13 = v12;
    v14 = ((v13 + -1.0) / 5.6667) + 0.0;
    if (v12 >= 6.666667)
    {
      *&v12 = 1.0;
    }

    else
    {
      *&v12 = v14;
    }

    [v10 _solveForInput:v12];
    v16 = floorf((v15 * 58.0) + 2.0);
    if (forceCopy <= 0.0)
    {
      v17 = -v16;
    }

    else
    {
      v17 = v16;
    }

    [(AVPlayerController *)self setRate:v17];
  }
}

- (CGSize)maximumVideoResolution
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  if (currentAssetIfReady)
  {
    currentAssetIfReady2 = [(AVPlayerController *)self currentAssetIfReady];
    [currentAssetIfReady2 maximumVideoResolution];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0x7FF8000000000000;
    v6 = 0x7FF8000000000000;
  }

  v9 = *&v6;
  v10 = *&v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)preferredDisplayCriteria
{
  currentAssetIfReady = [(AVPlayerController *)self currentAssetIfReady];
  preferredDisplayCriteria = [currentAssetIfReady preferredDisplayCriteria];

  return preferredDisplayCriteria;
}

- (BOOL)usesExternalPlaybackWhileExternalScreenIsActive
{
  player = [(AVPlayerController *)self player];
  usesExternalPlaybackWhileExternalScreenIsActive = [player usesExternalPlaybackWhileExternalScreenIsActive];

  return usesExternalPlaybackWhileExternalScreenIsActive;
}

- (void)setHandlesAudioSessionInterruptions:(BOOL)interruptions
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_handlesAudioSessionInterruptions != interruptions)
  {
    interruptionsCopy = interruptions;
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      v7 = 136315650;
      v8 = "[AVPlayerController(AVPlayerControllerExternalPlaybackSupportInternal) setHandlesAudioSessionInterruptions:]";
      v10 = "handlesAudioSessionInterruptions";
      v9 = 2080;
      if (interruptionsCopy)
      {
        v6 = "YES";
      }

      v11 = 2080;
      v12 = v6;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v7, 0x20u);
    }

    self->_handlesAudioSessionInterruptions = interruptionsCopy;
  }
}

- (void)setPlayingOnSecondScreen:(BOOL)screen
{
  if (LOBYTE(self->_rateBeforeForceScanning) != screen)
  {
    screenCopy = screen;
    LOBYTE(self->_rateBeforeForceScanning) = screen;
    player = [(AVPlayerController *)self player];
    v8 = player;
    if (screenCopy)
    {
      BYTE1(self->_rateBeforeForceScanning) = [player preventsDisplaySleepDuringVideoPlayback];

      player = [(AVPlayerController *)self player];
      v8 = player;
      v7 = 0;
    }

    else
    {
      v7 = BYTE1(self->_rateBeforeForceScanning);
    }

    [player setPreventsDisplaySleepDuringVideoPlayback:v7];
  }
}

- (AVPlayerControllerDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_timecodeController);

  return WeakRetained;
}

@end
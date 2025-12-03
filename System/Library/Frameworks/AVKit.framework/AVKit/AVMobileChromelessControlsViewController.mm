@interface AVMobileChromelessControlsViewController
- (AVMobileChromelessControlsViewController)init;
- (AVMobileSliderMark)_sliderMarkForInterstitialTimeRange:(char)range isCollapsed:;
- (BOOL)_isLandscape;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isMediaPresentationSettingsEnabledForMediaSelectionMenuController:(id)controller;
- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)controller;
- (BOOL)shouldFilterMediaPresentationOptionsToAvailableCacheForMediaSelectionMenuController:(id)controller;
- (BOOL)shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:(id)controller;
- (CGRect)unobscuredContentArea;
- (UIPanGestureRecognizer)contentTabPanGestureRecognizer;
- (__CFString)_currentAccessibilityIdentifierForAudibleMedia;
- (double)_frameForLiveEdgeMarkContentTag:(double)tag;
- (float)_normalizeTimeValue:(uint64_t)value;
- (id)_auxiliaryControlForControlItem:(uint64_t)item;
- (id)_auxiliaryControlForIdentifier:(uint64_t)identifier;
- (id)_auxiliaryControlsView;
- (id)_configureTips;
- (id)_didEndUpdatingControlsVisibilityStateTo:(uint64_t)to completed:(int)completed;
- (id)_displayModeControlsView;
- (id)_timelineSlider;
- (id)_timelineView;
- (id)_titlebarView;
- (id)_updateRoutePickerControlInclusionState;
- (id)_volumeControlsView;
- (id)auxiliaryControlsView:(id)view menuElementForControl:(id)control;
- (id)displayModeControlsLayoutItem;
- (id)effectiveSettingsForSelectorForMediaSelectionMenuController:(id)controller;
- (id)mediaSelectionMenuController:(id)controller complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)selector;
- (id)mediaSelectionMenuController:(id)controller complementarySettingsForSelector:(id)selector;
- (id)mediaSelectionMenuController:(id)controller displayNameForMediaSelectionOption:(id)option;
- (id)mediaSelectionMenuController:(id)controller effectiveSettingForSelector:(id)selector;
- (id)mediaSelectionMenuController:(id)controller selectedPresentationSettingForSelector:(id)selector;
- (id)menuForMenuButton:(id)button;
- (id)transportControlsLayoutItem;
- (id)volumeControlsLayoutItem;
- (uint64_t)_canPerformSetup;
- (uint64_t)_isScrubbing;
- (uint64_t)_preferredAuxiliaryControlsPlacement;
- (uint64_t)_setUpMediaSelectionMenuControllerIfNeeded;
- (uint64_t)_updateWebKitExcludedObservationState;
- (unint64_t)indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:(id)controller;
- (unint64_t)mediaSelectionMenuController:(id)controller indexOfEffectivePresentationSettingForSelector:(id)selector;
- (void)_animateSliderToTintState:(void *)state duration:(double)duration completionHandler:;
- (void)_animateVolumeEmphasisTo:(id *)to;
- (void)_attemptSetupIfNeeded;
- (void)_configureAuxiliaryControlButton:(void *)button;
- (void)_contentTabPanGestureRecognizerTriggered:(id)triggered;
- (void)_contentTabTapGestureRecognizerTriggered:(id)triggered;
- (void)_decrementUserInteractionCount;
- (void)_didBeginUpdatingControlsVisibilityStateFromState:(uint64_t)state toState:(uint64_t)toState withAnimationCoordinator:(uint64_t)coordinator;
- (void)_dismissControlItemWithTipInSymmetricDifferenceSet:(void *)set;
- (void)_enumerateControlItemsOfTypes:(id)types usingBlock:(id)block;
- (void)_handleJumpToLiveAction;
- (void)_handleMuteStateToggle;
- (void)_hideControlsIfPossible;
- (void)_incrementUserInteractionCount;
- (void)_resetControlsVisibilityTimer;
- (void)_resetVolumeSliderTemporarilyVisibleTimer;
- (void)_setContentTabPresented:(int)presented animated:;
- (void)_setNeedsControlsVisibilityStateUpdate;
- (void)_setUpAnalysisControlIfNeeded;
- (void)_setUpAuxiliaryControlsViewIfNeeded;
- (void)_setUpCopySubjectControlIfNeeded;
- (void)_setUpPanGestureRecognizerIfNeeded;
- (void)_setUpTapGestureRecognizerIfNeeded;
- (void)_setUpVisualLookupControlIfNeeded;
- (void)_temporarilyShowVolumeSlider;
- (void)_timelineSliderDidChangeValue:(id)value;
- (void)_transitionContentTabIfNeccesary:(double)neccesary;
- (void)_updateAnalysisControlInclusionIfNeeded;
- (void)_updateAudibleMediaSelectionControlInclusionState;
- (void)_updateAudibleMediaSelectionMenu;
- (void)_updateAuxiliaryControlSpacing;
- (void)_updateAuxiliaryControls;
- (void)_updateAuxiliaryControlsForControlItems;
- (void)_updateContentTabViewControllers;
- (void)_updateContentTabsInteractionEnablementState;
- (void)_updateContentTag;
- (void)_updateControlItemsInclusionState;
- (void)_updateControlsViewLayoutConfiguration;
- (void)_updateControlsVisibilityStateAnimated:(uint64_t)animated;
- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)animated;
- (void)_updateDisplayModeControlsButtonsInclusion;
- (void)_updateDisplayModeControlsForControlItems;
- (void)_updateExtendedDynamicRangeGain;
- (void)_updateFullScreenButtonIcon;
- (void)_updateHasHapticTrackSelectionMenu;
- (void)_updateHasHapticTrackSelectionMenuIDs;
- (void)_updateJumpToLiveControlInclusionStateIfNeeded;
- (void)_updateLayoutMargins;
- (void)_updateLegibleMediaSelectionControlInclusionState;
- (void)_updateLegibleMediaSelectionMenu;
- (void)_updateLoadingAnimatorState;
- (void)_updatePinnedAuxiliaryControlsIfNeeded;
- (void)_updatePlayPauseButtonIcon;
- (void)_updatePlaybackControlsViewInclusionState;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updatePrefersSystemVolumeHUDHidden;
- (void)_updatePrefersVolumeSliderIncludedAnimated:(uint64_t)animated;
- (void)_updateSecondaryPlaybackControlsTypes;
- (void)_updateSliderMarkForLiveEdgeIfNeeded;
- (void)_updateStyleSheet;
- (void)_updateTimeResolver;
- (void)_updateTimelineEmphasisStateIfNeeded;
- (void)_updateTimelineLabelPositions;
- (void)_updateTimelineSliderEnablementState;
- (void)_updateTimelineValues;
- (void)_updateTimelineViewSliderMarksIfNeeded;
- (void)_updateTintColorsForAuxiliaryControlButtons;
- (void)_updateTitleAndDescriptionInfo;
- (void)_updateTitleBarViewInclusionState;
- (void)_updateTransportControlsLayoutGuidesConstraintsIfNeeded;
- (void)_updateViewVisibilityStatesTo:(int)to;
- (void)_updateVolumeControllerClient;
- (void)_updateVolumeControlsViewAllowsVolumeAdjustmentState;
- (void)_updateVolumeControlsViewMutedState;
- (void)_updateVolumeControlsViewVolumeWithMuteStateUpdate:(id *)update;
- (void)_volumeControlsViewInteractionDidContinue;
- (void)auxiliaryControlsView:(id)view didOverflowControls:(id)controls;
- (void)contentTabsViewController:(id)controller didChangeSelectedCustomInfoViewController:(id)viewController withReason:(unint64_t)reason;
- (void)controlItemDidUpdateVisualConfiguration:(id)configuration;
- (void)dealloc;
- (void)didBeginIndirectUserInteraction;
- (void)dismissCustomInfoViewControllerAnimated:(BOOL)animated;
- (void)displayModeControlsView:(id)view layoutWithHiddenIdentifiers:(id)identifiers;
- (void)displayModeControlsViewFullscreenButtonWasPressed:(id)pressed;
- (void)displayModeControlsViewMultiviewButtonWasPressed:(id)pressed;
- (void)displayModeControlsViewPictureInPictureButtonWasPressed:(id)pressed;
- (void)flashControlsWithDuration:(double)duration;
- (void)fullscreenControllerDidChangePresentationState:(id)state;
- (void)hapticsMenuControllerDidSelectHapticsOff:(id)off;
- (void)hapticsMenuControllerDidSelectTrackID:(id)d controller:(id)controller;
- (void)loadView;
- (void)mediaSelectionMenuController:(id)controller didSelectEnhanceDialogueOption:(int64_t)option;
- (void)mediaSelectionMenuController:(id)controller didSelectOption:(id)option;
- (void)mediaSelectionMenuController:(id)controller selectMediaPresentationLanguage:(id)language;
- (void)mediaSelectionMenuController:(id)controller selectMediaPresentationSetting:(id)setting forSelector:(id)selector;
- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)pressed;
- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)pressed;
- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)pressed;
- (void)scheduleTips;
- (void)setControlItems:(id)items;
- (void)setCustomInfoViewControllers:(id)controllers;
- (void)setExcludedControls:(unint64_t)controls;
- (void)setExtendedDynamicRangeGain:(double)gain;
- (void)setFullscreenController:(id)controller;
- (void)setIncludedControls:(unint64_t)controls;
- (void)setMediaPresentationSettingsCustomItems:(id)items;
- (void)setOptimizeForPerformance:(BOOL)performance;
- (void)setPlaybackSpeedCollection:(id)collection;
- (void)setPlayerController:(id)controller;
- (void)setPrefersFullScreenStyleForEmbeddedMode:(BOOL)mode;
- (void)setPrefersMediaPresentationSettingsMenuGroupTitle:(id)title;
- (void)setRequiresLinearPlayback:(BOOL)playback;
- (void)setRoutingConfiguration:(id)configuration;
- (void)setSecondaryPlaybackControlsType:(unint64_t)type;
- (void)setShowsAnalysisControl:(BOOL)control;
- (void)setShowsAudioTrackSelectionMenu:(BOOL)menu;
- (void)setShowsCopySubjectControl:(BOOL)control;
- (void)setShowsFullScreenControl:(BOOL)control;
- (void)setShowsVisualLookupControl:(BOOL)control;
- (void)setTransportBarCustomMenuItems:(id)items;
- (void)setVolumeController:(id)controller;
- (void)slider:(id)slider didUpdateFrame:(CGRect)frame forSliderMark:(id)mark;
- (void)sliderDidBeginTracking:(id)tracking;
- (void)sliderDidEndTracking:(id)tracking;
- (void)sliderWillEndTracking:(id)tracking;
- (void)toggleVisibility:(id)visibility;
- (void)traitCollectionDidChange:(id)change;
- (void)updateVisibilityPolicy:(unint64_t)policy animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsOverVideoDidChange:(id)change;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)volumeControlsView:(id)view didSelectHapticsOn:(BOOL)on;
- (void)volumeControlsView:(id)view volumeDidChangeTo:(double)to;
- (void)volumeControlsView:(id)view volumeDidChangeTo:(double)to withUpdateSource:(unint64_t)source;
- (void)volumeControlsViewButtonWasTapped:(id)tapped;
- (void)volumeControlsViewInteractionDidBegin:(id)begin;
- (void)volumeControlsViewInteractionDidEnd:(id)end;
- (void)webkitPlayerController:(id)controller didChangeScrubbingStateTo:(BOOL)to;
@end

@implementation AVMobileChromelessControlsViewController

- (void)_updateTimelineEmphasisStateIfNeeded
{
  if (self)
  {
    _isScrubbing = [(AVMobileChromelessControlsViewController *)self _isScrubbing];
    timelineView = [self[154] timelineView];
    if (_isScrubbing != [timelineView isEmphasized])
    {
      [timelineView prepareForDeemphasisIfNeeded];
      [timelineView setEmphasized:_isScrubbing];
      v4 = self[208];
      v5 = 1.0;
      v6 = 1.0;
      if (v4 && [v4 isRunning] && objc_msgSend(self[208], "isInterruptible"))
      {
        [self[208] fractionComplete];
        v6 = v7;
        [self[208] stopAnimation:1];
        [self[208] finishAnimationAtPosition:2];
        v8 = self[208];
        self[208] = 0;
      }

      if (v6 <= 1.0)
      {
        v9 = v6;
      }

      else
      {
        v9 = 1.0;
      }

      v10 = v9 * 0.2;
      if (_isScrubbing)
      {
        v11 = 288.0;
      }

      else
      {
        v5 = 2.0;
        v11 = 500.0;
      }

      if (_isScrubbing)
      {
        v12 = 26.5;
      }

      else
      {
        v12 = 40.0;
      }

      v13 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:v5 stiffness:v11 damping:v12 initialVelocity:{0.0, 0.0}];
      v14 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:v10];
      v15 = self[208];
      self[208] = v14;

      objc_initWeak(&location, self);
      v16 = self[208];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __80__AVMobileChromelessControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke;
      v23[3] = &unk_1E720A0B8;
      objc_copyWeak(&v24, &location);
      v25 = _isScrubbing;
      [v16 addAnimations:v23];
      v17 = self[208];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __80__AVMobileChromelessControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke_2;
      v21 = &unk_1E7209618;
      objc_copyWeak(&v22, &location);
      [v17 addCompletion:&v18];
      [self[208] startAnimation];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)_isScrubbing
{
  playerController = [self playerController];
  _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
  isTracking = [_timelineSlider isTracking];

  if (isTracking & 1) != 0 || ([playerController isScrubbing])
  {
    avkit_webkitIsScrubbing = 1;
  }

  else
  {
    avkit_webkitIsScrubbing = [playerController avkit_webkitIsScrubbing];
  }

  return avkit_webkitIsScrubbing;
}

void __80__AVMobileChromelessControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[154] timelineView];
    [v3 setEmphasized:*(a1 + 40)];

    v4 = [v5[154] timelineView];
    [v4 layoutIfNeeded];

    WeakRetained = v5;
  }
}

void __80__AVMobileChromelessControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[208];
    WeakRetained[208] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (id)_timelineSlider
{
  if (self)
  {
    timelineView = [*(self + 1232) timelineView];
    slider = [timelineView slider];
  }

  else
  {
    slider = 0;
  }

  return slider;
}

- (void)_timelineSliderDidChangeValue:(id)value
{
  valueCopy = value;
  timeResolver = self->_timeResolver;
  if (timeResolver)
  {
    [(AVPlayerControllerTimeResolver *)timeResolver minTime];
    v6 = v5;
    v7 = v5;
    [(AVPlayerControllerTimeResolver *)self->_timeResolver maxTime];
    v9 = v8;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
      [_timelineSlider value];
      [(AVPlayerControllerTimeResolver *)self->_timeResolver setTargetTime:v6 + (v9 - v6) * v12];
    }
  }

  [(AVMobileChromelessControlsViewController *)self _updateTimelineValues];
}

- (void)_updateTimelineValues
{
  if (self)
  {
    _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
    timelineView = [*(self + 1232) timelineView];
    [_timelineSlider value];
    v4 = v3;
    v5 = *(self + 1232);
    if (v5 && *(self + 1216) == 1 && ([v5 isHidden] & 1) == 0 && (v6 = *(self + 1464)) != 0 && ((objc_msgSend(v6, "minTime"), v8 = v7, v9 = v7, objc_msgSend(*(self + 1464), "maxTime"), v11 = v10, (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) ? (v12 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v12 = 1), !v12))
    {
      v19 = v10 - v8;
      playerController = [self playerController];
      [playerController avkit_webkitSeekToTime];
      v22 = v21;

      v23 = (COERCE__INT64(fabs(v11 - v8)) - 0x10000000000000) >> 53;
      if ((v19 >= 0.0 && v23 <= 0x3FE || (*&v19 - 1) <= 0xFFFFFFFFFFFFELL) && (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v27 = (v22 - v8) / v19;
        v4 = v27;
      }

      [*(self + 1472) setFormatTemplate:v11 - v8];
      [*(self + 1480) setFormatTemplate:v11 - v8];
      playerController2 = [self playerController];
      currentOrEstimatedDate = [playerController2 currentOrEstimatedDate];
      if ([playerController2 hasSeekableLiveStreamingContent] && currentOrEstimatedDate)
      {
        v30 = [currentOrEstimatedDate dateByAddingTimeInterval:-(v19 - v22)];
        v14 = [*(self + 1488) stringFromDate:v30];

        v13 = &stru_1EFED57D8;
      }

      else
      {
        v14 = [*(self + 1472) stringFromSeconds:v22];
        v13 = [*(self + 1480) stringFromSeconds:v11 - v22];
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    leadingTimeText = [timelineView leadingTimeText];
    v16 = leadingTimeText != 0;

    trailingTimeText = [timelineView trailingTimeText];

    if ((v14 == 0) == v16 || (v13 == 0) == (trailingTimeText != 0))
    {
      [*(self + 1232) setNeedsLayout];
    }

    if (([_timelineSlider isTracking] & 1) == 0)
    {
      v18 = vmovn_s32(vuzp1q_s32(vceqq_f64(*(self + 1680), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(self + 1696), *(MEMORY[0x1E69DDCE0] + 16))));
      if (vminv_u16(v18))
      {
        *v18.i32 = v4;
        [_timelineSlider setValue:*&v18];
      }
    }

    [timelineView setLeadingTimeText:v14];
    [timelineView setTrailingTimeText:v13];
  }
}

- (void)_handleJumpToLiveAction
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController seekToEnd:self];
}

- (void)_enumerateControlItemsOfTypes:(id)types usingBlock:(id)block
{
  typesCopy = types;
  blockCopy = block;
  controlItems = [(AVMobileControlsViewController *)self controlItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__AVMobileChromelessControlsViewController__enumerateControlItemsOfTypes_usingBlock___block_invoke;
  v11[3] = &unk_1E72092A8;
  v12 = typesCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = typesCopy;
  [controlItems enumerateObjectsUsingBlock:v11];
}

void __85__AVMobileChromelessControlsViewController__enumerateControlItemsOfTypes_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "type")}];
  if ([v4 containsObject:v5])
  {
    v6 = *(a1 + 40);

    if (v6)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
  }
}

- (void)_updateTintColorsForAuxiliaryControlButtons
{
  audibleMediaSelectionButton = self->_audibleMediaSelectionButton;
  v4 = MEMORY[0x1E69DC888];
  isOverVideo = [(AVButton *)audibleMediaSelectionButton isOverVideo];
  traitCollection = [(AVMobileChromelessControlsViewController *)self traitCollection];
  v7 = [v4 avkit_tintColorForControlElementIsOverVideo:isOverVideo withUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [(AVMenuButton *)audibleMediaSelectionButton setTintColor:v7];

  legibleMediaSelectionButton = self->_legibleMediaSelectionButton;
  v9 = MEMORY[0x1E69DC888];
  isOverVideo2 = [(AVButton *)legibleMediaSelectionButton isOverVideo];
  traitCollection2 = [(AVMobileChromelessControlsViewController *)self traitCollection];
  v12 = [v9 avkit_tintColorForControlElementIsOverVideo:isOverVideo2 withUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];
  [(AVMenuButton *)legibleMediaSelectionButton setTintColor:v12];

  playbackSpeedButton = self->_playbackSpeedButton;
  v14 = MEMORY[0x1E69DC888];
  isOverVideo3 = [(AVButton *)playbackSpeedButton isOverVideo];
  traitCollection3 = [(AVMobileChromelessControlsViewController *)self traitCollection];
  v16 = [v14 avkit_tintColorForControlElementIsOverVideo:isOverVideo3 withUserInterfaceStyle:{objc_msgSend(traitCollection3, "userInterfaceStyle")}];
  [(AVMenuButton *)playbackSpeedButton setTintColor:v16];
}

- (void)hapticsMenuControllerDidSelectTrackID:(id)d controller:(id)controller
{
  dCopy = d;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__AVMobileChromelessControlsViewController_hapticsMenuControllerDidSelectTrackID_controller___block_invoke;
  block[3] = &unk_1E7209A10;
  objc_copyWeak(&v9, &location);
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __93__AVMobileChromelessControlsViewController_hapticsMenuControllerDidSelectTrackID_controller___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained playerController];

  v4 = [v3 hapticTracksForCurrentItem];
  v5 = [v4 mutableCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v18 = v3;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = [v13 isOn];

        v9 |= (*(a1 + 32) == v12) & v14;
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
    v15 = v9 ^ 1;
    v3 = v18;
  }

  else
  {
    v15 = 1;
  }

  v16 = [v5 objectForKeyedSubscript:*(a1 + 32)];
  [v16 setIsOn:v15 & 1];

  [v3 setHapticsOn:+[AVMobileHapticsTrackItem hasOnTrack:](AVMobileHapticsTrackItem trackStates:{"hasOnTrack:", v5), v5}];
  v17 = objc_loadWeakRetained((a1 + 40));
  [(AVMobileChromelessControlsViewController *)v17 _updateHasHapticTrackSelectionMenu];
}

- (void)_updateHasHapticTrackSelectionMenu
{
  if (self)
  {
    playerController = [self playerController];
    hapticTracksForCurrentItem = [playerController hapticTracksForCurrentItem];

    [(AVMobileChromelessControlsViewController *)self _updateHasHapticTrackSelectionMenuIDs];
    volumeControlsView = [self[154] volumeControlsView];
    [volumeControlsView setHasHapticsTracks:{objc_msgSend(hapticTracksForCurrentItem, "count") != 0}];

    volumeControlsView2 = [self[154] volumeControlsView];
    [volumeControlsView2 setHapticsIsOn:{+[AVMobileHapticsTrackItem hasOnTrack:](AVMobileHapticsTrackItem, "hasOnTrack:", hapticTracksForCurrentItem)}];

    [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
  }
}

- (void)_updateHasHapticTrackSelectionMenuIDs
{
  if (self)
  {
    playerController = [self playerController];
    hapticTracksForCurrentItem = [playerController hapticTracksForCurrentItem];

    [self[225] setHapticTrackIDs:hapticTracksForCurrentItem];
  }
}

- (void)_updateAuxiliaryControls
{
  v37 = *MEMORY[0x1E69E9840];
  if (self)
  {
    auxiliaryControlsView = [*(self + 1232) auxiliaryControlsView];
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(self + 1656);
    if (v4 && [v4 count])
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v5 = *(self + 1656);
      v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v32;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v32 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [v3 addObject:*(*(&v31 + 1) + 8 * i)];
          }

          v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v7);
      }
    }

    transportBarCustomMenuItems = [self transportBarCustomMenuItems];
    if (transportBarCustomMenuItems)
    {
      v11 = transportBarCustomMenuItems;
      transportBarCustomMenuItems2 = [self transportBarCustomMenuItems];
      v13 = [transportBarCustomMenuItems2 count];

      if (v13)
      {
        v26 = auxiliaryControlsView;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        transportBarCustomMenuItems3 = [self transportBarCustomMenuItems];
        v15 = [transportBarCustomMenuItems3 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v28;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(transportBarCustomMenuItems3);
              }

              v19 = [AVMobileGlassControlsViewController _identifierForMenuElement:?];
              if (v19 != @"com.apple.avkit.TransportMenuItem.MediaPresentationSettingsAudioGroup")
              {
                v20 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:v19];
                [v20 setIncluded:1];
                [v3 addObject:v20];
              }
            }

            v16 = [transportBarCustomMenuItems3 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v16);
        }

        auxiliaryControlsView = v26;
      }
    }

    if (*(self + 1280))
    {
      [v3 addObject:?];
    }

    if (*(self + 1288))
    {
      fullscreenController = [self fullscreenController];
      presentationState = [fullscreenController presentationState];

      v23 = *(self + 1288);
      if (presentationState == 2)
      {
        [v3 addObject:v23];
      }

      else
      {
        [v3 insertObject:v23 atIndex:0];
      }
    }

    if (*(self + 1272))
    {
      [v3 addObject:?];
    }

    if (*(self + 1812) == 1 && *(self + 1256))
    {
      [v3 addObject:?];
    }

    if (*(self + 1264))
    {
      [v3 addObject:?];
    }

    if (*(self + 1296))
    {
      [v3 addObject:?];
    }

    if (*(self + 1304))
    {
      [v3 addObject:?];
    }

    if (*(self + 1312))
    {
      [v3 addObject:?];
    }

    v24 = +[AVKitGlobalSettings shared];
    if ([v24 hapticsEnabled])
    {
      v25 = *(self + 1784);

      if (v25)
      {
        [v3 addObject:*(self + 1784)];
      }
    }

    else
    {
    }

    [auxiliaryControlsView setControls:v3];
    [auxiliaryControlsView updateOverflowMenu];
    [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
  }
}

- (id)_auxiliaryControlsView
{
  if (self)
  {
    self = [self[154] auxiliaryControlsView];
    v1 = vars8;
  }

  return self;
}

- (void)_updateControlsViewLayoutConfiguration
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    fullscreenController = [self fullscreenController];
    presentationState = [fullscreenController presentationState];

    v4 = *(self + 1760);
    _preferredAuxiliaryControlsPlacement = [(AVMobileChromelessControlsViewController *)self _preferredAuxiliaryControlsPlacement];
    [*(self + 1224) standardPaddingFullScreen];
    v7 = v6;
    [v4 presentationHeight];
    v9 = v8;
    includedControls = [self includedControls];
    if (v4)
    {
      v11 = [v4 state] == 2;
    }

    else
    {
      v11 = 0;
    }

    if (presentationState == 2)
    {
      [*(self + 1224) standardPaddingInline];
      v7 = v12;
      includedControls &= ~0x40uLL;
    }

    memset(v32, 0, sizeof(v32));
    v13 = *(self + 1576);
    v14 = *(self + 1240);
    v15 = *(self + 1720);
    presentationLayout = [*(self + 1760) presentationLayout];

    v17 = *(self + 1232);
    v20 = includedControls;
    v21 = v13;
    memset(v22, 0, sizeof(v22));
    v23 = v7;
    v24 = _preferredAuxiliaryControlsPlacement;
    v18 = v14;
    v19 = v18;
    v25 = v18;
    v26 = v15;
    v27 = v11;
    v28 = *v32;
    *v29 = *&v32[16];
    *&v29[14] = 0;
    v30 = presentationLayout;
    v31 = v9;
    if (v17)
    {
      [v17 setLayoutConfiguration:&v20];
    }

    else
    {
    }
  }
}

- (uint64_t)_preferredAuxiliaryControlsPlacement
{
  fullscreenController = [self fullscreenController];
  presentationState = [fullscreenController presentationState];

  if (presentationState == 2)
  {
    return [self prefersFullScreenStyleForEmbeddedMode] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (void)hapticsMenuControllerDidSelectHapticsOff:(id)off
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__AVMobileChromelessControlsViewController_hapticsMenuControllerDidSelectHapticsOff___block_invoke;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __85__AVMobileChromelessControlsViewController_hapticsMenuControllerDidSelectHapticsOff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playerController];
  [v3 setHapticsIsOn:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)v4 _updateHasHapticTrackSelectionMenu];
}

- (void)_updateStyleSheet
{
  _timelineView = [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
  _titlebarView = [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _titlebarView];
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];

  v6 = [[AVMobileChromelessControlsStyleSheet alloc] initWithTraitCollection:traitCollection];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v6;

  [_timelineView setStyleSheet:self->_styleSheet];
  [_titlebarView setStyleSheet:self->_styleSheet];
  [(AVMobileChromelessControlsViewController *)self _updateLayoutMargins];
  [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
}

- (id)_timelineView
{
  if (self)
  {
    self = [self[154] timelineView];
    v1 = vars8;
  }

  return self;
}

- (id)_titlebarView
{
  if (self)
  {
    self = [self[154] titlebarView];
    v1 = vars8;
  }

  return self;
}

- (void)_updateLayoutMargins
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 175);
    fullscreenController = [result fullscreenController];
    presentationState = [fullscreenController presentationState];

    v5 = presentationState == 2 ? [v1 prefersFullScreenStyleForEmbeddedMode] : 1;
    [v1[153] playbackControlsViewLayoutMarginsForView:v1[154] keyboardHeight:v5 isFullScreen:v2];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = [v1[154] layoutMargins];
    v18 = v17 == v9 && v14 == v7;
    v19 = v18 && v16 == v13;
    if (!v19 || v15 != v11)
    {
      [v1[154] setLayoutMargins:{v7, v9, v11, v13}];
      v21 = v1[154];

      return [v21 setNeedsLayout];
    }
  }

  return result;
}

- (void)_contentTabTapGestureRecognizerTriggered:(id)triggered
{
  triggeredCopy = triggered;
  v4 = [triggeredCopy state] - 1;
  v5 = triggeredCopy;
  if (v4 <= 2)
  {
    v6 = triggeredCopy;
    if (self)
    {
      if ([(AVMobileContentTabPresentationContext *)self->_contentTabPresentationContext presentationLayout])
      {
        [(AVMobileChromelessControlsViewController *)self toggleVisibility:self];
      }

      else
      {
        [(AVMobileChromelessControlsViewController *)self dismissCustomInfoViewControllerAnimated:1];
      }
    }

    v5 = triggeredCopy;
  }
}

- (void)_contentTabPanGestureRecognizerTriggered:(id)triggered
{
  triggeredCopy = triggered;
  state = [triggeredCopy state];
  if ((state - 3) < 2)
  {
    if (!self)
    {
      goto LABEL_26;
    }

    view = self->_view;
    v15 = triggeredCopy;
    [v15 velocityInView:view];
    v17 = v16;
    v19 = v18;
    state2 = [v15 state];

    v21 = v17 * 0.05;
    v23 = v19 < 0.0 || state2 == 4;
    contentTabPresentationContext = self->_contentTabPresentationContext;
    if (!contentTabPresentationContext)
    {
      goto LABEL_19;
    }

    if (![(AVMobileContentTabPresentationContext *)contentTabPresentationContext state])
    {
      goto LABEL_18;
    }

    v25 = self->_contentTabPresentationContext;
    if (v25)
    {
      state3 = [(AVMobileContentTabPresentationContext *)v25 state];
      v27 = self->_contentTabPresentationContext;
      v28 = v27;
      if (state3 == 2)
      {
        transitionContext = [(AVMobileContentTabPresentationContext *)v27 transitionContext];
        direction = [transitionContext direction];

        if (direction)
        {
LABEL_21:
          v31 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:1.0 initialVelocity:{v21, v19 * 0.05}];
          [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator setReversed:v23];
          [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator continueAnimationWithTimingParameters:v31 durationFactor:1.0];

          goto LABEL_26;
        }

LABEL_18:
        v23 = v23 ^ 1;
        goto LABEL_21;
      }
    }

    else
    {
LABEL_19:
      v28 = 0;
    }

    goto LABEL_21;
  }

  if (state == 2)
  {
    if (self)
    {
      v32 = self->_contentTabViewPresentationAnimator;
      v33 = triggeredCopy;
      [(UIViewPropertyAnimator *)v32 pauseAnimation];
      [v33 velocityInView:self->_view];
      [(AVMobileChromelessControlsViewController *)self _transitionContentTabIfNeccesary:v34, v35];
      [v33 translationInView:self->_view];
      v37 = v36;

      v38 = v37 / self->_contentTabPanGestureTranslationScaleFactor;
      if (self->_contentTabPresented)
      {
        v38 = -v38;
      }

      [(UIViewPropertyAnimator *)v32 setFractionComplete:v38 + self->_contentTabInteractivePresentationInitialFractionComplete];
    }
  }

  else if (state == 1 && self)
  {
    v5 = self->_contentTabViewPresentationAnimator;
    v6 = triggeredCopy;
    [(UIViewPropertyAnimator *)v5 pauseAnimation];
    [v6 velocityInView:self->_view];
    v8 = v7;
    v10 = v9;

    [(AVMobileChromelessControlsViewController *)self _transitionContentTabIfNeccesary:v8, v10];
    [(AVMobileChromelessControlsView *)self->_view bounds];
    self->_contentTabPanGestureTranslationScaleFactor = v11 / 3.0;
    [(UIViewPropertyAnimator *)v5 fractionComplete];
    v13 = v12;

    self->_contentTabInteractivePresentationInitialFractionComplete = v13;
  }

LABEL_26:
}

- (void)_transitionContentTabIfNeccesary:(double)neccesary
{
  v6 = self[220];
  if ((!v6 || [v6 state] != 2) && fabs(neccesary) > fabs(a2))
  {
    [objc_opt_class() autoHideInterval];
    [self flashControlsWithDuration:?];

    [(AVMobileChromelessControlsViewController *)self _setContentTabPresented:1 animated:?];
  }
}

- (void)_setContentTabPresented:(int)presented animated:
{
  v63[12] = *MEMORY[0x1E69E9840];
  if (!self || *(self + 1720) == a2)
  {
    return;
  }

  *(self + 1720) = a2;
  [(AVMobileChromelessControlsViewController *)self _setUpPanGestureRecognizerIfNeeded];
  [(AVMobileChromelessControlsViewController *)self _setUpTapGestureRecognizerIfNeeded];
  v5 = *(self + 1760);
  selectedCustomInfoViewController = [*(self + 1752) selectedCustomInfoViewController];
  if (presented)
  {
    v7 = 2;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *(self + 1720) ^ 1;
    if (!v5)
    {
LABEL_8:
      v5 = objc_alloc_init(AVMobileContentTabPresentationContext);
    }
  }

  [(AVMobileContentTabPresentationContext *)v5 setState:v7];
  [(AVMobileContentTabPresentationContext *)v5 setCustomInfoViewController:selectedCustomInfoViewController];
  if (presented)
  {
    v8 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
    v9 = *(self + 1720);
    v10 = objc_alloc_init(AVMobileContentTabTransitionContext);
    [(AVMobileContentTabTransitionContext *)v10 setDirection:v9 ^ 1];
    [(AVMobileContentTabTransitionContext *)v10 setAnimationCoordinator:v8];
    [(AVMobileContentTabPresentationContext *)v5 setTransitionContext:v10];
  }

  v11 = *(self + 1760);
  *(self + 1760) = v5;
  v56 = v5;

  v12 = *(self + 1760);
  if (v12)
  {
    v13 = v12;
    if (([v13 state] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v14 = 0;
      v15 = 0.0;
    }

    else
    {
      delegate = [self delegate];
      v58 = 0u;
      v59 = 0u;
      memset(v60, 0, sizeof(v60));
      v16 = *(self + 1712);
      v17 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
      v18 = *(MEMORY[0x1E695F060] + 8);
      if (v17)
      {
        v19 = *v59;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v59 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v58 + 1) + 8 * i);
            [v21 preferredContentSize];
            [v21 preferredContentSize];
            if (v18 < v22)
            {
              v18 = v22;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v17);
      }

      v23 = *(self + 1232);
      contentTabsView = [v23 contentTabsView];
      [v23 layoutMargins];
      v26 = v25;
      [contentTabsView intrinsicContentSize];
      v28 = v27;
      [*(self + 1232) bounds];
      v30 = v29;
      v32 = v31;
      [*(self + 1232) safeAreaInsets];
      v34 = v33;

      v35 = delegate;
      if (objc_opt_respondsToSelector())
      {
        v36 = 16.0;
        if (v30 > v32)
        {
          v36 = 14.0;
        }

        v37 = 28.0;
        if (v26 <= 28.0)
        {
          v37 = v26;
        }

        if (v34 >= v37)
        {
          v37 = v34;
        }

        v38 = [delegate controlsViewController:self contentTabPresentationInfoWithPreferredHeight:{v18 + v28 + v36 + v37, delegate}];
        v14 = v39;
        v15 = *&v38;
      }

      else
      {
        v14 = 0;
        v15 = 0.0;
      }
    }

    [v13 setPresentationHeight:{v15, delegate}];
    [v13 setPresentationLayout:v14];
  }

  [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
  [*(self + 1560) invalidate];
  v40 = *(self + 1560);
  *(self + 1560) = 0;

  v57 = *(self + 1760);
  delegate2 = [self delegate];
  if (*(self + 1720) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate2 controlsViewController:self willBeginPresentingContentTabWithContext:v57];
  }

  if (*(self + 1720) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [delegate2 controlsViewController:self willBeginDismissingContentTabWithContext:v57];
  }

  if (presented)
  {
    v42 = [*(self + 1816) state] != 1 && objc_msgSend(*(self + 1816), "state") != 2;
    if (*(self + 1720) == 1 && !v42)
    {
      [*(self + 1752) selectInitialCustomInfoViewController];
    }

    v44 = *(self + 1744);
    v45 = 0.0;
    if ([v44 isRunning] && objc_msgSend(v44, "isInterruptible"))
    {
      [v44 fractionComplete];
      v45 = v46;
      [v44 stopAnimation:1];
      [v44 finishAnimationAtPosition:2];
      v47 = *(self + 1744);
      *(self + 1744) = 0;
    }

    [*(self + 1232) bounds];
    v49 = (1.0 - v45) * (v48 / 0.15 * 0.15);
    v50 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:250.0 damping:30.0 initialVelocity:{0.0, 0.0}];
    v51 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v50 timingParameters:v49];

    objc_initWeak(&location, self);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __85__AVMobileChromelessControlsViewController__animateContentTabPresentationStateUpdate__block_invoke;
    v62[3] = &unk_1E7209EA8;
    objc_copyWeak(v63, &location);
    [v51 addAnimations:v62];
    *&v58 = MEMORY[0x1E69E9820];
    *(&v58 + 1) = 3221225472;
    *&v59 = __85__AVMobileChromelessControlsViewController__animateContentTabPresentationStateUpdate__block_invoke_2;
    *(&v59 + 1) = &unk_1E7209618;
    objc_copyWeak(v60, &location);
    [v51 addCompletion:&v58];
    objc_storeStrong((self + 1744), v51);
    v52 = *(self + 1744);
    if (!v52)
    {
      [*(self + 1752) updateSelectedCustomInfoViewController];
      v52 = *(self + 1744);
    }

    [v52 startAnimation];
    objc_destroyWeak(v60);
    objc_destroyWeak(v63);
    objc_destroyWeak(&location);
  }

  else
  {
    [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
    if (!*(self + 1744))
    {
      [*(self + 1752) updateSelectedCustomInfoViewController];
    }

    if ((*(self + 1720) & 1) == 0)
    {
      v43 = *(self + 1760);
      *(self + 1760) = 0;

      [objc_opt_class() autoHideInterval];
      [self flashControlsWithDuration:?];
    }
  }

  v53 = *(self + 1760);
  if (v53)
  {
    v54 = [v53 state] == 1;
  }

  else
  {
    v54 = 1;
  }

  [*(self + 1232) setIgnoresTouches:v54];
}

- (void)_setUpPanGestureRecognizerIfNeeded
{
  if (self)
  {
    if (!self[227])
    {
      v2 = self[214];
      if (v2)
      {
        if ([v2 count])
        {
          if (self[154])
          {
            fullscreenController = [self fullscreenController];
            presentationState = [fullscreenController presentationState];

            if (presentationState != 2)
            {
              v5 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__contentTabPanGestureRecognizerTriggered_];
              [v5 setEnabled:1];
              [v5 setDelegate:self];
              v6 = self[227];
              self[227] = v5;
            }
          }
        }
      }
    }
  }
}

- (void)_setUpTapGestureRecognizerIfNeeded
{
  if (!*(self + 1768) && *(self + 1720) == 1)
  {
    if (*(self + 1232))
    {
      fullscreenController = [self fullscreenController];
      presentationState = [fullscreenController presentationState];

      if (presentationState != 2)
      {
        v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__contentTabTapGestureRecognizerTriggered_];
        [v4 setDelegate:self];
        [v4 setEnabled:1];
        [v4 setNumberOfTapsRequired:1];
        [*(self + 1232) addGestureRecognizer:v4];
        v5 = *(self + 1768);
        *(self + 1768) = v4;
      }
    }
  }
}

void __85__AVMobileChromelessControlsViewController__animateContentTabPresentationStateUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained[220] transitionContext];
    v3 = [v2 animationCoordinator];
    [(AVMobileChromelessControlsViewController *)v5 _updateControlsViewLayoutConfiguration];
    v4 = [v5 view];
    [v4 layoutIfNeeded];

    [(AVMobileChromelessControlsViewController *)v5 _updateControlsVisibilityStateAnimated:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 performCoordinatedAnimations];
    }

    WeakRetained = v5;
  }
}

void __85__AVMobileChromelessControlsViewController__animateContentTabPresentationStateUpdate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_20;
  }

  v18 = WeakRetained;
  v4 = WeakRetained[220];
  v5 = [v4 transitionContext];
  v6 = [v5 animationCoordinator];
  v7 = [v5 direction];
  if (a2)
  {
    if (v7)
    {
      v8 = v18;
      *(v18 + 1720) = 1;
      v9 = v18[220];
      if (v9)
      {
        [v9 state];
        v8 = v18;
      }

      [v8[154] setIgnoresTouches:?];
      goto LABEL_9;
    }

    v12 = v18[220];
    v18[220] = 0;

    v11 = v18;
    *(v18 + 1720) = 0;
LABEL_11:
    [v11[219] invalidateContentTabsSelection];
    v13 = v18;
    v14 = v18[220];
    if (v14)
    {
      v15 = [v14 state];
      v13 = v18;
      v16 = v15 == 1;
    }

    else
    {
      v16 = 1;
    }

    [v13[154] setIgnoresTouches:v16];
    [objc_opt_class() autoHideInterval];
    [v18 flashControlsWithDuration:?];
    goto LABEL_15;
  }

  if (v7)
  {
    v10 = v18[220];
    v18[220] = 0;

    v11 = v18;
    goto LABEL_11;
  }

LABEL_9:
  [v4 setState:0];
  [v4 setTransitionContext:0];
LABEL_15:
  [(AVMobileChromelessControlsViewController *)v18 _updateControlsViewLayoutConfiguration];
  [(AVMobileChromelessControlsViewController *)v18 _setNeedsControlsVisibilityStateUpdate];
  [v18[154] setNeedsLayout];
  [v18[154] layoutIfNeeded];
  v17 = v18[218];
  v18[218] = 0;

  if (!v18[218])
  {
    [v18[219] updateSelectedCustomInfoViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 didFinishAnimations:a2 == 0];
  }

  WeakRetained = v18;
LABEL_20:
}

- (void)_setNeedsControlsVisibilityStateUpdate
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self && (*(self + 1552) & 1) == 0 && *(self + 1216) == 1)
  {
    *(self + 1552) = 1;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v4[0] = *MEMORY[0x1E695DA28];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [mainRunLoop performSelector:sel__updateControlsVisibilityStateIfNeededAnimated_ target:self argument:MEMORY[0x1E695E118] order:0 modes:v3];
  }
}

- (void)_updateControlsVisibilityStateAnimated:(uint64_t)animated
{
  location[2] = *MEMORY[0x1E69E9840];
  if (!animated)
  {
    return;
  }

  [(AVMobileGlassControlsViewController *)animated _cancelOutstandVisibilityUpdates];
  *(animated + 1552) = 0;
  v73 = *(animated + 1536);
  v74 = *(animated + 1544);
  if ([animated visibilityPolicy] != 1)
  {
    volumeControlsView = [*(animated + 1232) volumeControlsView];
    excludedControls = [animated excludedControls];
    includedControls = [animated includedControls];
    isTracking = [volumeControlsView isTracking];
    _isScrubbing = [(AVMobileChromelessControlsViewController *)animated _isScrubbing];
    fullscreenController = [animated fullscreenController];
    presentationState = [fullscreenController presentationState];

    v11 = *(animated + 1720);
    playerController = [animated playerController];
    if ([playerController hasLiveStreamingContent])
    {
      canSeek = [playerController canSeek];
    }

    else
    {
      canSeek = 1;
    }

    _preferredAuxiliaryControlsPlacement = [(AVMobileChromelessControlsViewController *)animated _preferredAuxiliaryControlsPlacement];
    v69 = canSeek;
    if (v11)
    {
      v15 = [*(animated + 1760) presentationLayout] != 0;
    }

    else
    {
      v15 = 1;
    }

    v68 = v15;
    v16 = presentationState != 2;
    if (!((presentationState == 2) | isTracking & 1))
    {
      if (*(animated + 1416))
      {
        v16 = 1;
      }

      else
      {
        v16 = *(animated + 1720);
      }
    }

    v70 = _preferredAuxiliaryControlsPlacement;
    if (_isScrubbing && [playerController hasSeekableLiveStreamingContent])
    {
      v67 = [playerController isAtLiveEdge] ^ 1;
    }

    else
    {
      v67 = 0;
    }

    visibilityPolicy = [animated visibilityPolicy];
    if (!visibilityPolicy)
    {
      goto LABEL_26;
    }

    v18 = visibilityPolicy;
    if (visibilityPolicy != 2)
    {
      if (visibilityPolicy == 1)
      {
        v19 = 0;
        goto LABEL_28;
      }

      v20 = _AVLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 134217984;
        *(location + 4) = v18;
        _os_log_error_impl(&dword_18B49C000, v20, OS_LOG_TYPE_ERROR, "Error: Unrecognized AVControlsVisibilityPolicy %ld", location, 0xCu);
      }
    }

    if (([animated temporarilyVisible] & 1) == 0)
    {
      v19 = *(animated + 1584) > 0;
    }

    else
    {
LABEL_26:
      v19 = 1;
    }

LABEL_28:
    LOBYTE(v21) = 1;
    if ((v19 | v16))
    {
      v22 = v69;
      if ((excludedControls & 0x200) == 0)
      {
        v21 = [playerController hasEnabledAudio] ^ 1;
      }

      if (v19)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v22 = v69;
      if (v19)
      {
LABEL_32:
        v23 = (excludedControls & 8) == 0;
        goto LABEL_38;
      }
    }

    if ((excludedControls & 8) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = _isScrubbing;
    }

    if (*(animated + 1720) != 1)
    {
      v25 = 0;
      LOBYTE(v24) = 1;
      goto LABEL_40;
    }

LABEL_38:
    v24 = (excludedControls >> 5) & 1;
    v25 = 1;
LABEL_40:
    if (((includedControls & 1) == 0 || !v23) | v11 & 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v22;
    }

    if ((includedControls & 2) == 0)
    {
      LOBYTE(v21) = 1;
    }

    if ((v21 | _isScrubbing))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 | 2;
    }

    v28 = v27 | 4;
    if (_isScrubbing)
    {
      v28 = v26;
    }

    if ((v25 & ((includedControls & 4) != 0)) != 0)
    {
      v27 = v28;
    }

    if ((_isScrubbing & 1) == 0)
    {
      v26 = v27 | 8;
    }

    v29 = (~excludedControls & 0x1C00) == 0 || !v19;
    if ((v19 && v68) & (includedControls >> 3))
    {
      v27 = v26;
    }

    v30 = (includedControls & 0x10) == 0 || !v19;
    if (!(v30 & 1 | _isScrubbing & (v70 == 0) | v11 & 1))
    {
      v27 |= 0x10uLL;
    }

    if ((includedControls & 0x20) != 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = 1;
    }

    if (v31 & 1 | _isScrubbing & 1 | (presentationState == 2) | v11 & 1)
    {
      v32 = v27;
    }

    else
    {
      v32 = v27 | 0x20;
    }

    if (presentationState != 2)
    {
      v27 = v32 | 0x40;
    }

    if ((includedControls & 0x40) == 0)
    {
      LOBYTE(v24) = 1;
    }

    if ((v24 | _isScrubbing))
    {
      v4 = v32;
    }

    else
    {
      v4 = v27;
    }

    v33 = 256;
    if (v11)
    {
      v33 = 0;
    }

    if (!v67)
    {
      v33 = 0;
    }

    v3 = (v4 << 63 >> 63) & v33 | v19 & (_isScrubbing ^ 1u);

    goto LABEL_82;
  }

  v3 = 0;
  v4 = 0;
LABEL_82:
  if (*(animated + 1232))
  {
    if (v73 != v4 || ((v3 ^ v74) & 1) != 0)
    {
      if ((v3 & 0x100) != 0)
      {
        playerController2 = [animated playerController];
        hasSeekableLiveStreamingContent = [playerController2 hasSeekableLiveStreamingContent];

        liveEdgeContentTagView = [*(animated + 1232) liveEdgeContentTagView];
        v38 = (liveEdgeContentTagView == 0) & hasSeekableLiveStreamingContent;

        if (v38 == 1)
        {
          v39 = [AVMobileContentTagView alloc];
          v40 = +[AVMobileContentTag liveEdgeContentTag];
          v41 = [(AVMobileContentTagView *)v39 initWithContentTag:v40 withStyleSheet:*(animated + 1224)];

          _timelineSlider = [(AVMobileChromelessControlsViewController *)animated _timelineSlider];
          [_timelineSlider frameForSliderMark:*(animated + 1672)];
          v44 = v43;
          v46 = v45;
          v48 = v47;
          v50 = v49;

          [(AVMobileContentTagView *)v41 setFrame:[(AVMobileChromelessControlsViewController *)animated _frameForLiveEdgeMarkContentTag:v44, v46, v48, v50]];
          [*(animated + 1232) setLiveEdgeContentTagView:v41];
        }
      }

      v51 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
      timelineView = [*(animated + 1232) timelineView];
      delegate = [animated delegate];
      if (delegate)
      {
        delegate2 = [animated delegate];
        v55 = objc_opt_respondsToSelector();

        if (v55)
        {
          delegate3 = [animated delegate];
          [delegate3 controlsViewController:animated willBeginUpdatingVisibleControlsTo:v4 withAnimationCoordinator:v51];
        }
      }

      if ((v4 != 0) == ([animated visibleControls] == 0))
      {
        [(AVMobileChromelessControlsViewController *)animated _updateTimeResolver];
        if (v4)
        {
          [timelineView layoutIfNeeded];
        }

        [(AVMobileChromelessControlsViewController *)animated _updatePrefersVolumeSliderIncludedAnimated:?];
      }

      if ((([animated visibleControls] ^ v4) & 2) != 0)
      {
        [(AVMobileChromelessControlsViewController *)animated _updatePrefersSystemVolumeHUDHidden];
      }

      [*(animated + 1232) setHidden:0];

      if (a2)
      {
        v57 = *(animated + 1568);
        v58 = 1.0;
        if (v57 && [v57 isRunning] && objc_msgSend(*(animated + 1568), "isInterruptible"))
        {
          [*(animated + 1568) fractionComplete];
          v58 = v59;
          [*(animated + 1568) stopAnimation:1];
          [*(animated + 1568) finishAnimationAtPosition:2];
          v60 = *(animated + 1568);
          *(animated + 1568) = 0;
        }

        objc_initWeak(location, animated);
        v61 = objc_alloc(MEMORY[0x1E69DD278]);
        if (v58 > 1.0)
        {
          v58 = 1.0;
        }

        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __83__AVMobileChromelessControlsViewController__updateControlsVisibilityStateAnimated___block_invoke;
        v78[3] = &unk_1E72091D8;
        objc_copyWeak(v80, location);
        v80[1] = v4;
        v80[2] = v3;
        v62 = v51;
        v79 = v62;
        v63 = [v61 initWithDuration:3 curve:v78 animations:v58 * 0.15];
        v64 = *(animated + 1568);
        *(animated + 1568) = v63;

        v65 = *(animated + 1568);
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __83__AVMobileChromelessControlsViewController__updateControlsVisibilityStateAnimated___block_invoke_2;
        v75[3] = &unk_1E7209200;
        v66 = v62;
        v76 = v66;
        objc_copyWeak(v77, location);
        v77[1] = v4;
        v77[2] = v3;
        [v65 addCompletion:v75];
        *(animated + 1576) = v4 == 0;
        [*(animated + 1568) startAnimation];
        *(animated + 1536) = v4;
        *(animated + 1544) = v3;
        [(AVMobileChromelessControlsViewController *)animated _didBeginUpdatingControlsVisibilityStateFromState:v73 toState:v74 withAnimationCoordinator:v4, v3, v66];
        objc_destroyWeak(v77);

        objc_destroyWeak(v80);
        objc_destroyWeak(location);
      }

      else
      {
        *(animated + 1576) = v4 == 0;
        [(AVMobileChromelessControlsViewController *)animated _updateViewVisibilityStatesTo:v4, v3];
        [(AVMobileChromelessControlsViewController *)animated _updateControlsViewLayoutConfiguration];
        [(AVPlayerViewControllerAnimationCoordinator *)v51 performCoordinatedAnimations];
        *(animated + 1536) = v4;
        *(animated + 1544) = v3;
        [(AVMobileChromelessControlsViewController *)animated _didBeginUpdatingControlsVisibilityStateFromState:v73 toState:v74 withAnimationCoordinator:v4, v3, v51];
        [(AVPlayerViewControllerAnimationCoordinator *)v51 didFinishAnimations:1];
        [(AVMobileChromelessControlsViewController *)animated _didEndUpdatingControlsVisibilityStateTo:v4 completed:v3, 1];
      }
    }
  }
}

uint64_t __83__AVMobileChromelessControlsViewController__updateControlsVisibilityStateAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AVMobileChromelessControlsViewController *)WeakRetained _updateViewVisibilityStatesTo:*(a1 + 56)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [(AVMobileChromelessControlsViewController *)v3 _updateControlsViewLayoutConfiguration];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 view];
  [v5 layoutIfNeeded];

  v6 = *(a1 + 32);

  return [v6 performCoordinatedAnimations];
}

uint64_t __83__AVMobileChromelessControlsViewController__updateControlsVisibilityStateAnimated___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 0;
  [*(a1 + 32) didFinishAnimations:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AVMobileChromelessControlsViewController *)WeakRetained _didEndUpdatingControlsVisibilityStateTo:*(a1 + 56) completed:v3];

  v5 = *(a1 + 32);

  return [v5 didFinishAnimations:v3];
}

- (void)_didBeginUpdatingControlsVisibilityStateFromState:(uint64_t)state toState:(uint64_t)toState withAnimationCoordinator:(uint64_t)coordinator
{
  v16 = a6;
  delegate = [self delegate];
  if (delegate)
  {
    delegate2 = [self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [self delegate];
      [delegate3 controlsViewController:self didBeginUpdatingVisibleControlsTo:toState withAnimationCoordinator:v16];
    }
  }

  [(AVMobileChromelessControlsViewController *)self _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
  if (!toState)
  {
    [self cleanUpTips];
  }

  if ((a2 & 0x10) != 0 && (toState & 0x10) == 0)
  {
    auxiliaryControlsView = [self[154] auxiliaryControlsView];
    [auxiliaryControlsView interruptActiveInteractions];
  }

  if ((a2 & 4) != 0 && (toState & 4) == 0)
  {
    displayModeControlsView = [self[154] displayModeControlsView];
    [displayModeControlsView interruptActiveInteractions];
  }

  if ((a2 & 2) != 0 && (toState & 2) == 0)
  {
    volumeControlsView = [self[154] volumeControlsView];
    [volumeControlsView interruptActiveInteractions];
  }
}

- (void)_updateViewVisibilityStatesTo:(int)to
{
  if (self)
  {
    auxiliaryControlsView = [*(self + 1232) auxiliaryControlsView];
    contentTabsView = [*(self + 1232) contentTabsView];
    backgroundView = [*(self + 1232) backgroundView];
    displayModeControlsView = [*(self + 1232) displayModeControlsView];
    liveEdgeContentTagView = [*(self + 1232) liveEdgeContentTagView];
    playbackControlsView = [*(self + 1232) playbackControlsView];
    timelineView = [*(self + 1232) timelineView];
    titlebarView = [*(self + 1232) titlebarView];
    volumeControlsView = [*(self + 1232) volumeControlsView];
    if (a2)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }

    if ((a2 & 0x40) != 0)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    if ((a2 & 2) != 0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }

    if ((a2 & 4) != 0)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    if ((a2 & 8) != 0)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    if ((a2 & 0x10) != 0)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 0.0;
    }

    if ((a2 & 0x20) != 0)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    if ((to & 0x100) != 0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    [timelineView setAlpha:v11];
    [contentTabsView setAlpha:v12];
    [volumeControlsView setAlpha:v13];
    [displayModeControlsView setAlpha:v14];
    [playbackControlsView setAlpha:v15];
    [auxiliaryControlsView setAlpha:v16];
    [titlebarView setAlpha:v17];
    [liveEdgeContentTagView setAlpha:v18];
    [backgroundView setActive:to & 1];
    [timelineView setDrawsShadow:a2 & (to ^ 1) & 1];
    [volumeControlsView setDrawsShadow:(to ^ 1) & ((a2 & 2) >> 1)];
  }
}

- (id)_didEndUpdatingControlsVisibilityStateTo:(uint64_t)to completed:(int)completed
{
  if (!result || !completed)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  if (!a2)
  {
    [result[154] setHidden:1];
  }

  [(AVMobileChromelessControlsViewController *)v5 _updateTimeResolver];
  [(AVMobileChromelessControlsViewController *)v5 _updatePrefersSystemVolumeHUDHidden];
  result = v5[220];
  if (!result)
  {
    if ((v4 & 0x40) != 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  result = [result state];
  if (result != 2 && (v4 & 0x40) == 0)
  {
LABEL_12:
    v7 = v5[219];

    return [v7 invalidateContentTabsSelection];
  }

  return result;
}

- (void)_updateTimeResolver
{
  if (self && *(self + 1464))
  {
    v2 = *(self + 1232);
    if (v2 && *(self + 1216) == 1 && ([v2 isHidden] & 1) == 0)
    {
      _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
      traitCollection = [self traitCollection];
      [traitCollection displayScale];
      v8 = v7;

      [_timelineSlider bounds];
      v10 = fmax(v8 * v9, 1.0);
      playerController = [self playerController];
      interstitialController = [playerController interstitialController];

      currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];

      playerController2 = [self playerController];
      v20 = playerController2;
      if (currentInterstitialTimeRange)
      {
        timeline = [playerController2 timeline];

        currentInterstitialTimeRange2 = [interstitialController currentInterstitialTimeRange];
        interstice = [currentInterstitialTimeRange2 interstice];
        isCollapsedInTimeLine = [interstice isCollapsedInTimeLine];

        if (isCollapsedInTimeLine && timeline)
        {
          interstitialTimingController = [interstitialController interstitialTimingController];
        }

        else
        {
          interstitialTimingController = [self playerController];
        }

        v20 = interstitialTimingController;
      }

      [*(self + 1464) setResolution:v10];
    }

    else
    {
      v20 = 0;
    }

    playerController3 = [*(self + 1464) playerController];

    v4 = v20;
    if (playerController3 != v20)
    {
      [*(self + 1464) setPlayerController:v20];
      [(AVMobileChromelessControlsViewController *)self _updateTimelineValues];
      v4 = v20;
    }
  }
}

- (void)_updatePrefersSystemVolumeHUDHidden
{
  if (self)
  {
    if (([self excludedControls] & 0x200) != 0)
    {
      v7 = 0;
    }

    else
    {
      pipController = [self pipController];
      isPictureInPictureActive = [pipController isPictureInPictureActive];

      includedControls = [self includedControls];
      fullscreenController = [self fullscreenController];
      presentationState = [fullscreenController presentationState];

      if (presentationState == 2 || (isPictureInPictureActive & 1) != 0 || (includedControls & 2) == 0)
      {
        v8 = self[192];
        fullscreenController2 = [self fullscreenController];
        v10 = [fullscreenController2 presentationState] == 2;

        v7 = v10 & ~isPictureInPictureActive & (v8 >> 1) & 1;
      }

      else
      {
        v7 = 1;
      }
    }

    volumeController = [self volumeController];
    [volumeController setPrefersSystemVolumeHUDHidden:v7];
  }
}

- (void)_updateTransportControlsLayoutGuidesConstraintsIfNeeded
{
  if (self)
  {
    v2 = self[154];
    if (v2)
    {
      if (self[203] && self[204] && self[205])
      {
        auxiliaryControlsView = [v2 auxiliaryControlsView];
        timelineView = [self[154] timelineView];
        titlebarView = [self[154] titlebarView];
        [titlebarView frame];
        v6 = v5;
        [timelineView frame];
        v8 = v7;
        [auxiliaryControlsView frame];
        v10 = v9;
        [self[154] frame];
        Height = CGRectGetHeight(v24);
        isHidden = [titlebarView isHidden];
        v13 = 0;
        if (titlebarView && (isHidden & 1) == 0)
        {
          [titlebarView alpha];
          if (v14 != 1.0 || Height <= v6)
          {
            v13 = 0;
          }

          else
          {
            v13 = self[203];
            Height = v6;
          }
        }

        if (([timelineView isHidden] & 1) != 0 || !timelineView || ((objc_msgSend(timelineView, "alpha"), v16 == 1.0) ? (v17 = Height <= v8) : (v17 = 1), v17))
        {
          v8 = Height;
        }

        else
        {
          v18 = self[204];

          v13 = v18;
        }

        if (([auxiliaryControlsView isHidden] & 1) == 0)
        {
          if (auxiliaryControlsView)
          {
            [auxiliaryControlsView alpha];
            if (v19 == 1.0 && v8 > v10)
            {
              v20 = self[205];

              v13 = v20;
            }
          }
        }

        if (!v13)
        {
          v13 = self[206];
        }

        v21 = self[202];
        if (v21 != v13)
        {
          [v21 setActive:0];
          objc_storeStrong(self + 202, v13);
          [self[202] setActive:1];
        }
      }
    }
  }
}

- (void)_updatePrefersVolumeSliderIncludedAnimated:(uint64_t)animated
{
  if (animated)
  {
    volumeControlsView = [*(animated + 1232) volumeControlsView];
    if (([(AVMobileGlassControlsViewController *)animated _activeRouteSupportsAdjustingVolume]& 1) != 0)
    {
      volumeControlsView2 = [*(animated + 1232) volumeControlsView];
      if ([volumeControlsView2 isTracking] & 1) != 0 || (*(animated + 1416))
      {
        v6 = 1;
      }

      else
      {
        fullscreenController = [animated fullscreenController];
        presentationState = [fullscreenController presentationState];

        if (presentationState == 2)
        {
          v6 = 0;
        }

        else
        {
          [*(animated + 1232) bounds];
          v6 = v15 > 600.0;
        }
      }

      if (v6 == [volumeControlsView prefersVolumeSliderIncluded])
      {
        goto LABEL_15;
      }

      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (([volumeControlsView prefersVolumeSliderIncluded] & 1) == 0)
      {
LABEL_15:

        return;
      }

      v6 = 0;
      if (a2)
      {
LABEL_8:
        v7 = 0.0;
        if ([*(animated + 1432) isRunning])
        {
          if ([*(animated + 1432) isInterruptible])
          {
            [*(animated + 1432) fractionComplete];
            v7 = v8;
            [*(animated + 1432) stopAnimation:1];
            [*(animated + 1432) finishAnimationAtPosition:2];
            v9 = *(animated + 1432);
            *(animated + 1432) = 0;
          }
        }

        objc_initWeak(&location, animated);
        v10 = objc_alloc(MEMORY[0x1E69DD278]);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __87__AVMobileChromelessControlsViewController__updatePrefersVolumeSliderIncludedAnimated___block_invoke;
        v16[3] = &unk_1E720A0B8;
        objc_copyWeak(&v17, &location);
        v18 = v6;
        v11 = [v10 initWithDuration:3 curve:v16 animations:(1.0 - v7) * 0.1];
        v12 = *(animated + 1432);
        *(animated + 1432) = v11;

        [*(animated + 1432) startAnimation];
        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
        goto LABEL_15;
      }
    }

    [volumeControlsView setPrefersVolumeSliderIncluded:v6];
    goto LABEL_15;
  }
}

void __87__AVMobileChromelessControlsViewController__updatePrefersVolumeSliderIncludedAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [(AVMobileChromelessControlsViewController *)WeakRetained _volumeControlsView];
  [v3 setPrefersVolumeSliderIncluded:*(a1 + 40)];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

- (id)_volumeControlsView
{
  if (self)
  {
    self = [self[154] volumeControlsView];
    v1 = vars8;
  }

  return self;
}

- (double)_frameForLiveEdgeMarkContentTag:(double)tag
{
  liveEdgeContentTagView = [*(self + 1232) liveEdgeContentTagView];
  _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
  [_timelineSlider convertRect:*(self + 1232) toView:{a2, tag, a4, a5}];
  v13 = v12;
  v15 = v14;

  [liveEdgeContentTagView intrinsicContentSize];
  v17 = v16;

  return v13 + v15 * 0.5 - v17 * 0.5;
}

- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)animated
{
  if (self->_needsControlsVisibilityStateUpdate)
  {
    bOOLValue = [animated BOOLValue];

    [(AVMobileChromelessControlsViewController *)self _updateControlsVisibilityStateAnimated:bOOLValue];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_contentTabTapGestureRecognizer == beginCopy)
  {
    view = [(UITapGestureRecognizer *)beginCopy view];
    contentTabsView = [(AVMobileChromelessControlsView *)self->_view contentTabsView];
    [(UIPanGestureRecognizer *)v5 locationInView:contentTabsView];
    v10 = [view hitTest:0 withEvent:?];

    v7 = v10 == 0;
  }

  else
  {
    contentTabPanGestureRecognizer = self->_contentTabPanGestureRecognizer;
    v7 = 1;
    if (contentTabPanGestureRecognizer == v5)
    {
      if (([(UIPanGestureRecognizer *)contentTabPanGestureRecognizer velocityInView:self->_view], !self->_contentTabPresented) && v11 > 0.0 || self->_contentTabViewPresentationAnimator)
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)_decrementUserInteractionCount
{
  if (self)
  {
    v2 = self[198];
    if (v2 > 0)
    {
      goto LABEL_6;
    }

    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "Error: calls to decrementUserInteractionCount must be matched with calls to incrementUserInteractionCount", v5, 2u);
    }

    v2 = self[198];
    if (v2 >= 1)
    {
LABEL_6:
      v4 = v2 - 1;
      self[198] = v4;
      if (!v4)
      {
        [objc_opt_class() autoHideInterval];
        [self flashControlsWithDuration:?];
      }
    }
  }
}

- (void)_incrementUserInteractionCount
{
  if (self)
  {
    v2 = *(self + 1584);
    if (!v2)
    {
      [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
      v2 = *(self + 1584);
    }

    *(self + 1584) = v2 + 1;
  }
}

- (void)webkitPlayerController:(id)controller didChangeScrubbingStateTo:(BOOL)to
{
  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];

  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineEmphasisStateIfNeeded];
}

- (void)fullscreenControllerDidChangePresentationState:(id)state
{
  [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
  [(AVMobileChromelessControlsViewController *)self _updateLayoutMargins];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineLabelPositions];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateAuxiliaryControlSpacing];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateFullScreenButtonIcon];
  [(AVMobileChromelessControlsViewController *)self _updatePinnedAuxiliaryControlsIfNeeded];
  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
  [(AVMobileChromelessControlsViewController *)self _updateVolumeControllerClient];
  [(AVMobileChromelessControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];
  [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];

  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewAllowsVolumeAdjustmentState];
}

- (void)_updateDisplayModeControlsButtonsInclusion
{
  if (self)
  {
    displayModeControlsView = [self[154] displayModeControlsView];
    excludedControls = [self excludedControls];
    if (+[AVPictureInPictureController isPictureInPictureSupported])
    {
      pipController = [self pipController];
      isPictureInPicturePossible = [pipController isPictureInPicturePossible];
      if ((excludedControls & 0x100) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = isPictureInPicturePossible;
      }
    }

    else
    {
      v5 = 0;
    }

    fullscreenController = [self fullscreenController];
    if ([fullscreenController presentationState])
    {
      fullscreenController2 = [self fullscreenController];
      v8 = [fullscreenController2 presentationState] == 1 && (objc_msgSend(self, "excludedControls") & 0x80) == 0;
    }

    else
    {
      v8 = ([self excludedControls] & 0x80) == 0;
    }

    if ([self showsFullScreenControl])
    {
      fullscreenController3 = [self fullscreenController];
      if ([fullscreenController3 presentationState] == 2)
      {
        v8 |= ([self excludedControls] & 0x40) == 0;
      }
    }

    shouldIncludeRoutePicker = [(AVMobileGlassControlsViewController *)self _shouldIncludeRoutePickerButton];
    [displayModeControlsView setIncludesFullscreenControl:v8 & 1];
    [displayModeControlsView setIncludesPictureInPictureControl:v5];
    [displayModeControlsView setIncludesRoutePickerControl:shouldIncludeRoutePicker];
    v11 = +[AVKitGlobalSettings shared];
    LODWORD(shouldIncludeRoutePicker) = [v11 experienceControllerEnabled];

    if (shouldIncludeRoutePicker)
    {
      [displayModeControlsView setIncludesMultiviewControl:{objc_msgSend(self, "showsMultiviewControl")}];
    }
  }
}

- (void)_updateTimelineLabelPositions
{
  if (self)
  {
    timelineView = [self[154] timelineView];
    fullscreenController = [self fullscreenController];
    presentationState = [fullscreenController presentationState];

    if (presentationState == 2)
    {
      prefersFullScreenStyleForEmbeddedMode = [self prefersFullScreenStyleForEmbeddedMode];
    }

    else
    {
      prefersFullScreenStyleForEmbeddedMode = 1;
    }

    if ([timelineView labelPosition] != prefersFullScreenStyleForEmbeddedMode)
    {
      [timelineView setLabelPosition:prefersFullScreenStyleForEmbeddedMode];
      [self[154] setNeedsLayout];
    }
  }
}

- (void)_updateAuxiliaryControlSpacing
{
  if (self)
  {
    auxiliaryControlsView = [self[154] auxiliaryControlsView];
    fullscreenController = [self fullscreenController];
    presentationState = [fullscreenController presentationState];

    if (presentationState == 2)
    {
      [self[153] standardPaddingInline];
      v5 = v4;
    }

    else if ([(AVMobileChromelessControlsViewController *)self _isLandscape])
    {
      v5 = 26.0;
    }

    else
    {
      v5 = 13.0;
    }

    [auxiliaryControlsView controlSpacing];
    if (v6 != v5)
    {
      [auxiliaryControlsView setControlSpacing:v5];
      [self[154] setNeedsLayout];
    }
  }
}

- (void)_updateFullScreenButtonIcon
{
  if (self)
  {
    displayModeControlsView = [self[154] displayModeControlsView];
    fullscreenController = [self fullscreenController];
    presentationState = [fullscreenController presentationState];

    if (presentationState <= 2)
    {
      [displayModeControlsView setFullscreenIcon:qword_18B6EC668[presentationState]];
    }
  }
}

- (void)_updatePinnedAuxiliaryControlsIfNeeded
{
  v41 = *MEMORY[0x1E69E9840];
  if (self)
  {
    fullscreenController = [self fullscreenController];
    presentationState = [fullscreenController presentationState];

    traitCollection = [self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    [*(self + 1232) bounds];
    v7 = v6;
    v9 = v8;
    [*(self + 1232) bounds];
    v11 = v10;
    traitCollection2 = [self traitCollection];
    userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = v14;
    if (presentationState != 2)
    {
      v17 = v7 <= v9 || userInterfaceIdiom2 != 0;
      v18 = v11 > 600.0 && userInterfaceIdiom == 1;
      if (v18 || !v17)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        auxiliaryControlsView = [*(self + 1232) auxiliaryControlsView];
        controls = [auxiliaryControlsView controls];

        v25 = [controls countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v36;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v36 != v27)
              {
                objc_enumerationMutation(controls);
              }

              v29 = *(*(&v35 + 1) + 8 * i);
              if (([v29 canOnlyAppearInOverflowMenu] & 1) == 0)
              {
                [v15 addObject:v29];
              }
            }

            v26 = [controls countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v26);
        }

        goto LABEL_35;
      }

      if (*(self + 1288))
      {
        [v14 addObject:?];
      }
    }

    if (*(self + 1280))
    {
      [v15 addObject:?];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    controls = *(self + 1656);
    v20 = [controls countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(controls);
          }

          [v15 addObject:{*(*(&v31 + 1) + 8 * j), v31}];
        }

        v21 = [controls countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v21);
    }

LABEL_35:

    v30 = *(self + 1240);
    *(self + 1240) = v15;

    [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
  }
}

- (void)_updateSecondaryPlaybackControlsTypes
{
  if (self)
  {
    playbackControlsView = [self[154] playbackControlsView];
    secondaryPlaybackControlsType = [self secondaryPlaybackControlsType];
    if (secondaryPlaybackControlsType == 1)
    {
      [playbackControlsView setBackwardSecondaryControlIcon:1];
      v4 = playbackControlsView;
      v5 = 1;
    }

    else
    {
      if (secondaryPlaybackControlsType)
      {
        v6 = _AVLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v7 = 0;
          _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Unrecognized AVMobileSecondaryPlaybackControlsType", v7, 2u);
        }

        goto LABEL_10;
      }

      [playbackControlsView setBackwardSecondaryControlIcon:0];
      v4 = playbackControlsView;
      v5 = 0;
    }

    [v4 setForwardSecondaryControlIcon:v5];
LABEL_10:
  }
}

- (void)_updateVolumeControllerClient
{
  if (self)
  {
    window = [*(self + 1232) window];
    windowScene = [window windowScene];
    session = [windowScene session];
    persistentIdentifier = [session persistentIdentifier];

    volumeController = [self volumeController];
    [volumeController setClientWithIdentifier:*(self + 1456) forWindowSceneSessionWithIdentifier:persistentIdentifier];

    [(AVMobileChromelessControlsViewController *)self _updatePrefersSystemVolumeHUDHidden];
  }
}

- (void)_updateVolumeControlsViewAllowsVolumeAdjustmentState
{
  if (self)
  {
    volumeControlsView = [self[154] volumeControlsView];
    active = [(AVMobileGlassControlsViewController *)self _activeRouteSupportsAdjustingVolume];
    if (([self excludedControls] & 0x200) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = active;
    }

    [volumeControlsView setAllowsVolumeAdjustment:v3];
    volumeController = [self volumeController];
    currentRouteHasVolumeControl = [volumeController currentRouteHasVolumeControl];

    [volumeControlsView setPrefersVolumeSliderEnabled:currentRouteHasVolumeControl];
  }
}

- (BOOL)_isLandscape
{
  window = [*(self + 1232) window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return (interfaceOrientation - 3) < 2;
}

- (void)contentTabsViewController:(id)controller didChangeSelectedCustomInfoViewController:(id)viewController withReason:(unint64_t)reason
{
  v14[1] = *MEMORY[0x1E69E9840];
  viewControllerCopy = viewController;
  if (self)
  {
    selectedCustomInfoViewController = [(AVMobileChromelessContentTabsViewController *)self->_contentTabsViewController selectedCustomInfoViewController];
    v9 = selectedCustomInfoViewController != 0;

    [(AVMobileChromelessControlsViewController *)self _setContentTabPresented:v9 animated:1];
    if (!reason)
    {
      [objc_opt_class() autoHideInterval];
      [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
    }
  }

  if (viewControllerCopy)
  {
    avkit_infoPanelKindIdentifier = [viewControllerCopy avkit_infoPanelKindIdentifier];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = @"Kind";
    v14[0] = avkit_infoPanelKindIdentifier;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [defaultCenter postNotificationName:@"AVPlayerViewControllerDidShowInfoViewControllerNotification" object:viewControllerCopy userInfo:v12];
  }
}

- (void)slider:(id)slider didUpdateFrame:(CGRect)frame forSliderMark:(id)mark
{
  if (self->_liveEdgeSliderMark == mark)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    liveEdgeContentTagView = [(AVMobileChromelessControlsView *)self->_view liveEdgeContentTagView];
    if (liveEdgeContentTagView)
    {
      v12 = liveEdgeContentTagView;
      [liveEdgeContentTagView setFrame:{-[AVMobileChromelessControlsViewController _frameForLiveEdgeMarkContentTag:](self, x, y, width, height)}];
      liveEdgeContentTagView = v12;
    }
  }
}

- (void)sliderDidEndTracking:(id)tracking
{
  [(AVMobileChromelessControlsViewController *)self _timelineSliderTrackingStateDidChange];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlayPauseButtonIcon];
  [(AVMobileChromelessControlsViewController *)self _decrementUserInteractionCount];

  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

- (void)_updatePlayPauseButtonIcon
{
  if (self)
  {
    playbackControlsView = [self[154] playbackControlsView];
    playerController = [self playerController];
    if ([playerController timeControlStatus])
    {
      v3 = 0;
    }

    else
    {
      [playerController rate];
      v3 = v4 == 0.0;
    }

    if ([playerController avkit_isAVPlayerControllerOrSubclass])
    {
      [playerController suspendedRate];
      v6 = [playerController isPlaybackSuspended] ^ 1 | (v5 == 0.0);
    }

    else
    {
      v6 = 1;
    }

    [playbackControlsView setPlayPauseButtonShowsPlayIcon:v3 & v6];
  }
}

- (void)sliderWillEndTracking:(id)tracking
{
  [(AVMobileChromelessControlsViewController *)self _timelineSliderTrackingStateDidChange];
  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController endScrubbing:self];
  [playerController endPlaybackSuspension];
}

- (void)sliderDidBeginTracking:(id)tracking
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController beginPlaybackSuspension];
  [playerController beginScrubbing:self];
  [(AVMobileChromelessControlsViewController *)self _timelineSliderTrackingStateDidChange];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlayPauseButtonIcon];
  [(AVMobileChromelessControlsViewController *)self _incrementUserInteractionCount];
  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy forwardSecondaryControlIcon])
  {
    if ([pressedCopy forwardSecondaryControlIcon] == 1)
    {
      eventManager = [(AVMobileControlsViewController *)self eventManager];
      [eventManager sendActionsForEvent:@"AVControlsSkipForwardPressedEvent"];
    }

    else
    {
      if ([pressedCopy forwardSecondaryControlIcon] != 2)
      {
        goto LABEL_12;
      }

      eventManager = [(AVMobileControlsViewController *)self playerController];
      [eventManager seekToEnd:self];
    }
  }

  else
  {
    if (pressedCopy)
    {
      [pressedCopy forwardSecondaryControlSkipInterval];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    playerController = [(AVMobileControlsViewController *)self playerController];
    [playerController seekByTimeInterval:Seconds];

    eventManager = [(AVMobileControlsViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [eventManager controlsViewControllerDidPressSkipForwardButton:self];
    }
  }

LABEL_12:
  if (self)
  {
    [objc_opt_class() autoHideInterval];
    [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy backwardSecondaryControlIcon])
  {
    if ([pressedCopy backwardSecondaryControlIcon] != 1)
    {
      goto LABEL_10;
    }

    eventManager = [(AVMobileControlsViewController *)self eventManager];
    [eventManager sendActionsForEvent:@"AVControlsSkipBackwardPressedEvent"];
  }

  else
  {
    if (pressedCopy)
    {
      [pressedCopy backwardSecondaryControlSkipInterval];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    playerController = [(AVMobileControlsViewController *)self playerController];
    [playerController seekByTimeInterval:-Seconds];

    eventManager = [(AVMobileControlsViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [eventManager controlsViewControllerDidPressSkipBackButton:self];
    }
  }

LABEL_10:
  if (self)
  {
    [objc_opt_class() autoHideInterval];
    [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)pressed
{
  eventManager = [(AVMobileControlsViewController *)self eventManager];
  [eventManager sendActionsForEvent:@"AVControlsPlayPauseButtonPressedEvent"];

  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController togglePlayback:self];

  if (self)
  {
    [objc_opt_class() autoHideInterval];

    [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)displayModeControlsView:(id)view layoutWithHiddenIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = identifiersCopy;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        identifier = [(AVMobileAuxiliaryControl *)self->_routePickerControl identifier];
        v13 = [v11 isEqualToString:identifier];

        if (v13)
        {
          [(NSArray *)v6 addObject:self->_routePickerControl];
        }

        else
        {
          v14 = [(AVMobileChromelessControlsViewController *)self _auxiliaryControlForIdentifier:v11];
          if (v14)
          {
            [(NSArray *)v6 addObject:v14];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v15 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v15 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v17 = [MEMORY[0x1E695DFD8] setWithArray:self->_overflowDisplayModeControls];
    v18 = MEMORY[0x1E695DFD8];
    v19 = [(NSArray *)v6 copy];
    v20 = [v18 setWithArray:v19];

    v21 = v17;
    v22 = v20;
    v23 = [v22 mutableCopy];
    [v23 unionSet:v21];
    v24 = [v22 mutableCopy];

    [v24 intersectSet:v21];
    [v23 minusSet:v24];

    [(AVMobileChromelessControlsViewController *)self _dismissControlItemWithTipInSymmetricDifferenceSet:v23];
  }

  overflowDisplayModeControls = self->_overflowDisplayModeControls;
  self->_overflowDisplayModeControls = v6;

  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateRoutePickerControlInclusionState];
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateControlItemsInclusionState];
  [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
}

- (id)_auxiliaryControlForIdentifier:(uint64_t)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(identifier + 1656);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          identifier = [v8 identifier];

          if (identifier == v3)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_dismissControlItemWithTipInSymmetricDifferenceSet:(void *)set
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (set)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    controlItems = [set controlItems];
    v5 = [controlItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(controlItems);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [(AVMobileChromelessControlsViewController *)set _auxiliaryControlForControlItem:v9];
          v11 = [v9 tip];

          if (v11 && [v3 containsObject:v10])
          {
            [set dismissTip];

            goto LABEL_13;
          }
        }

        v6 = [controlItems countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

- (id)_updateRoutePickerControlInclusionState
{
  if (result)
  {
    v1 = result;
    shouldIncludeRoutePicker = [(AVMobileGlassControlsViewController *)result _shouldIncludeRoutePickerButton];
    v3 = [v1[156] containsObject:v1[160]];
    displayModeControlsView = [v1[154] displayModeControlsView];
    [displayModeControlsView setIncludesRoutePickerControl:shouldIncludeRoutePicker];

    v5 = v1[160];

    return [v5 setIncluded:shouldIncludeRoutePicker & v3];
  }

  return result;
}

- (void)_updateControlItemsInclusionState
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    controlItems = [self controlItems];
    v3 = [controlItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(controlItems);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [(AVMobileChromelessControlsViewController *)self _auxiliaryControlForControlItem:v7];
          type = [v7 type];
          if ((type - 1) >= 2)
          {
            if (type)
            {
              v10 = 0;
            }

            else
            {
              v10 = [self[156] containsObject:v8];
            }
          }

          else
          {
            v10 = 1;
          }

          [v8 setIncluded:v10];
        }

        v4 = [controlItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

- (id)_auxiliaryControlForControlItem:(uint64_t)item
{
  identifier = [a2 identifier];
  v4 = [(AVMobileChromelessControlsViewController *)item _auxiliaryControlForIdentifier:identifier];

  return v4;
}

- (void)displayModeControlsViewMultiviewButtonWasPressed:(id)pressed
{
  delegate = [(AVMobileControlsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(AVMobileControlsViewController *)self delegate];
    [delegate2 controlsViewControllerDidPressMultiviewButton:self];
  }
}

- (void)displayModeControlsViewPictureInPictureButtonWasPressed:(id)pressed
{
  pipController = [(AVMobileControlsViewController *)self pipController];
  isPictureInPicturePossible = [pipController isPictureInPicturePossible];

  if (isPictureInPicturePossible)
  {
    pipController2 = [(AVMobileControlsViewController *)self pipController];
    isPictureInPictureActive = [pipController2 isPictureInPictureActive];

    pipController3 = [(AVMobileControlsViewController *)self pipController];
    v9 = pipController3;
    if (isPictureInPictureActive)
    {
      [pipController3 stopPictureInPicture];
    }

    else
    {
      [pipController3 startPictureInPicture];
    }

    [(AVMobileChromelessControlsViewController *)self _updatePrefersSystemVolumeHUDHidden];
  }
}

- (void)displayModeControlsViewFullscreenButtonWasPressed:(id)pressed
{
  pressedCopy = pressed;
  if ([pressedCopy fullscreenIcon] == 1)
  {
    fullscreenController = [(AVMobileControlsViewController *)self fullscreenController];
    [fullscreenController enterFullscreen:self];
  }

  else
  {
    if ([pressedCopy fullscreenIcon])
    {
      goto LABEL_6;
    }

    fullscreenController = [(AVMobileControlsViewController *)self eventManager];
    [fullscreenController sendActionsForEvent:@"AVControlsDoneButtonPressedEvent"];
  }

LABEL_6:
  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateFullScreenButtonIcon];
}

- (void)volumeControlsView:(id)view didSelectHapticsOn:(BOOL)on
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__AVMobileChromelessControlsViewController_volumeControlsView_didSelectHapticsOn___block_invoke;
  block[3] = &unk_1E720A0B8;
  objc_copyWeak(&v6, &location);
  onCopy = on;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __82__AVMobileChromelessControlsViewController_volumeControlsView_didSelectHapticsOn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playerController];
  [v3 setHapticsIsOn:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)v4 _updateHasHapticTrackSelectionMenuIDs];
}

- (void)volumeControlsViewButtonWasTapped:(id)tapped
{
  eventManager = [(AVMobileControlsViewController *)self eventManager];
  [eventManager sendActionsForEvent:@"AVControlsVolumeButtonPressedEvent"];

  if (self)
  {
    if ([(AVMobileChromelessControlsViewController *)self _isLandscape])
    {

      [(AVMobileChromelessControlsViewController *)self _handleMuteStateToggle];
    }

    else
    {
      if (self->_volumeSliderTemporarilyVisibleInFullscreen)
      {
        [(AVMobileChromelessControlsViewController *)self _handleMuteStateToggle];
      }

      [(AVMobileChromelessControlsViewController *)self _temporarilyShowVolumeSlider];
    }
  }
}

- (void)_handleMuteStateToggle
{
  volumeController = [self volumeController];
  [volumeController volume];
  v3 = v2;
  playerController = [self playerController];
  isMuted = [playerController isMuted];

  if (v3 != 0.0 || ([volumeController beginChangingVolume], LODWORD(v6) = 1036831949, objc_msgSend(volumeController, "setTargetVolume:", v6), objc_msgSend(volumeController, "endChangingVolume"), isMuted))
  {
    playerController2 = [self playerController];
    [playerController2 toggleMuted:self];

    [(AVMobileChromelessControlsViewController *)self _updateVolumeControlsViewMutedState];
  }
}

- (void)_temporarilyShowVolumeSlider
{
  [(AVMobileChromelessControlsViewController *)self _resetVolumeSliderTemporarilyVisibleTimer];
  if ((*(self + 1416) & 1) == 0)
  {
    *(self + 1416) = 1;
    [(AVMobileChromelessControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];
    [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
  }

  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E695DFF0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__AVMobileChromelessControlsViewController__temporarilyShowVolumeSlider__block_invoke;
  v5[3] = &unk_1E7209DA8;
  objc_copyWeak(&v6, &location);
  v3 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
  v4 = *(self + 1448);
  *(self + 1448) = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_resetVolumeSliderTemporarilyVisibleTimer
{
  v2 = *(self + 1448);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(self + 1448);
    *(self + 1448) = 0;
  }
}

void __72__AVMobileChromelessControlsViewController__temporarilyShowVolumeSlider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1416] = 0;
    v2 = WeakRetained;
    [(AVMobileChromelessControlsViewController *)WeakRetained _updatePrefersVolumeSliderIncludedAnimated:?];
    [(AVMobileChromelessControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
    WeakRetained = v2;
  }
}

- (void)_updateVolumeControlsViewMutedState
{
  if (self)
  {
    volumeControlsView = [self[154] volumeControlsView];
    playerController = [self playerController];
    isMuted = [playerController isMuted];

    [volumeControlsView setMute:isMuted];
  }
}

- (void)volumeControlsViewInteractionDidEnd:(id)end
{
  [(AVMobileChromelessControlsViewController *)self _decrementUserInteractionCount];
  if (self)
  {
    [(NSTimer *)self->_volumeEmphasisAnimationDelayTimer invalidate];
    volumeEmphasisAnimationDelayTimer = self->_volumeEmphasisAnimationDelayTimer;
    self->_volumeEmphasisAnimationDelayTimer = 0;

    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695DFF0];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __80__AVMobileChromelessControlsViewController__volumeControlsViewInteractionDidEnd__block_invoke;
    v12 = &unk_1E7209DA8;
    objc_copyWeak(&v13, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:&v9 block:3.0];
    v7 = self->_volumeEmphasisAnimationDelayTimer;
    self->_volumeEmphasisAnimationDelayTimer = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v8 = [(AVMobileControlsViewController *)self volumeController:v9];
  [v8 endChangingVolume];

  [(AVMobileChromelessControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];

  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

void __80__AVMobileChromelessControlsViewController__volumeControlsViewInteractionDidEnd__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)WeakRetained _animateVolumeEmphasisTo:?];

  v3 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)v3 _volumeControlsViewInteractionDidContinue];
}

- (void)_animateVolumeEmphasisTo:(id *)to
{
  if (to)
  {
    volumeControlsView = [to[154] volumeControlsView];
    if ([volumeControlsView isEmphasized] != a2)
    {
      v5 = 0.0;
      if ([to[178] isRunning])
      {
        if ([to[178] isInterruptible])
        {
          [to[178] fractionComplete];
          v5 = v6;
          [to[178] stopAnimation:1];
          [to[178] finishAnimationAtPosition:2];
          v7 = to[178];
          to[178] = 0;
        }
      }

      objc_initWeak(&location, to);
      v8 = objc_alloc(MEMORY[0x1E69DD278]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__AVMobileChromelessControlsViewController__animateVolumeEmphasisTo___block_invoke;
      v11[3] = &unk_1E720A0B8;
      objc_copyWeak(&v12, &location);
      v13 = a2;
      v9 = [v8 initWithDuration:3 curve:v11 animations:(1.0 - v5) * 0.2];
      v10 = to[178];
      to[178] = v9;

      [to[178] startAnimation];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __69__AVMobileChromelessControlsViewController__animateVolumeEmphasisTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [(AVMobileChromelessControlsViewController *)WeakRetained _volumeControlsView];
  [v2 setEmphasized:*(a1 + 40)];
}

- (void)volumeControlsView:(id)view volumeDidChangeTo:(double)to withUpdateSource:(unint64_t)source
{
  viewCopy = view;
  playerController = [(AVMobileControlsViewController *)self playerController];
  [(AVMobileChromelessControlsViewController *)self _volumeControlsViewInteractionDidContinue];
  if (source != 2)
  {
    volumeController = [(AVMobileControlsViewController *)self volumeController];
    [volumeController beginChangingVolume];

    volumeController2 = [(AVMobileControlsViewController *)self volumeController];
    *&v11 = to;
    [volumeController2 setTargetVolume:v11];

    volumeController3 = [(AVMobileControlsViewController *)self volumeController];
    [volumeController3 endChangingVolume];
  }

  if ([playerController isMuted])
  {
    [playerController setMuted:0];
    [viewCopy setMute:0];
  }
}

- (void)_volumeControlsViewInteractionDidContinue
{
  if (self)
  {
    [*(self + 1440) invalidate];
    v2 = *(self + 1440);
    *(self + 1440) = 0;
  }
}

- (void)volumeControlsView:(id)view volumeDidChangeTo:(double)to
{
  viewCopy = view;
  [(AVMobileChromelessControlsViewController *)self _volumeControlsViewInteractionDidContinue];
  volumeController = [(AVMobileControlsViewController *)self volumeController];
  *&v7 = to;
  [volumeController setTargetVolume:v7];

  playerController = [(AVMobileControlsViewController *)self playerController];
  isMuted = [playerController isMuted];

  if (isMuted)
  {
    playerController2 = [(AVMobileControlsViewController *)self playerController];
    [playerController2 setMuted:0];

    [viewCopy setMute:0];
  }
}

- (void)volumeControlsViewInteractionDidBegin:(id)begin
{
  [(AVMobileChromelessControlsViewController *)self _incrementUserInteractionCount];
  if (self)
  {
    [(NSTimer *)self->_volumeEmphasisAnimationDelayTimer invalidate];
    volumeEmphasisAnimationDelayTimer = self->_volumeEmphasisAnimationDelayTimer;
    self->_volumeEmphasisAnimationDelayTimer = 0;

    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _animateVolumeEmphasisTo:?];
  }

  volumeController = [(AVMobileControlsViewController *)self volumeController];
  [volumeController beginChangingVolume];

  [(AVMobileChromelessControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];

  [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

- (id)auxiliaryControlsView:(id)view menuElementForControl:(id)control
{
  v50[12] = *MEMORY[0x1E69E9840];
  controlCopy = control;
  identifier = [controlCopy identifier];
  if (self && ([(AVMobileControlsViewController *)self transportBarCustomMenuItems], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v47 = 0u;
    v48 = 0u;
    *location = 0u;
    v46 = 0u;
    transportBarCustomMenuItems = [(AVMobileControlsViewController *)self transportBarCustomMenuItems];
    v9 = 0;
    v10 = [transportBarCustomMenuItems countByEnumeratingWithState:location objects:v49 count:16];
    if (v10)
    {
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(transportBarCustomMenuItems);
          }

          v13 = *(location[1] + i);
          v14 = [AVMobileGlassControlsViewController _identifierForMenuElement:v13];
          if (v14 == identifier)
          {
            v15 = v13;

            v9 = v15;
          }
        }

        v10 = [transportBarCustomMenuItems countByEnumeratingWithState:location objects:v49 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = controlCopy;
  if (self)
  {
    v47 = 0u;
    v48 = 0u;
    *location = 0u;
    v46 = 0u;
    controlItems = [(AVMobileControlsViewController *)self controlItems];
    menu = [controlItems countByEnumeratingWithState:location objects:v49 count:16];
    if (menu)
    {
      v19 = *v46;
      while (2)
      {
        for (j = 0; j != menu; ++j)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(controlItems);
          }

          v21 = *(location[1] + j);
          identifier2 = [v21 identifier];
          identifier3 = [(AVMobileAuxiliaryControl *)v16 identifier];
          v24 = identifier2 == identifier3;

          if (v24)
          {
            action = [v21 action];

            if (action)
            {
              v26 = MEMORY[0x1E69DC628];
              title = [v21 title];
              image = [v21 image];
              identifier4 = [(AVMobileAuxiliaryControl *)v16 identifier];
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __71__AVMobileChromelessControlsViewController__menuElementForControlItem___block_invoke;
              v44[3] = &unk_1E72092D0;
              v44[4] = v21;
              menu = [v26 actionWithTitle:title image:image identifier:identifier4 handler:v44];

              if (([v21 isEnabled] & 1) == 0)
              {
                [menu setAttributes:1];
              }
            }

            else
            {
              menu = [v21 menu];

              if (menu)
              {
                menu = [v21 menu];
              }
            }

            goto LABEL_29;
          }
        }

        menu = [controlItems countByEnumeratingWithState:location objects:v49 count:16];
        if (menu)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:
  }

  else
  {
    menu = 0;
  }

  if (self->_audibleMediaSelectionControl == v16)
  {
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateAudibleMediaSelectionMenu];
    audibleOptionsOverflowMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsOverflowMenu];
    goto LABEL_55;
  }

  v30 = +[AVKitGlobalSettings shared];
  if ([v30 hapticsEnabled])
  {
    hapticsSelectionControl = self->_hapticsSelectionControl;

    if (hapticsSelectionControl == v16)
    {
      audibleOptionsOverflowMenu = [(AVMobileHapticsMenuController *)self->_hapticsMenuController hapticsOptionsMenu];
      goto LABEL_55;
    }
  }

  else
  {
  }

  if (self->_legibleMediaSelectionControl == v16)
  {
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateLegibleMediaSelectionMenu];
    audibleOptionsOverflowMenu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
    goto LABEL_55;
  }

  if (self->_playbackSpeedControl == v16)
  {
    audibleOptionsOverflowMenu = [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController menu];
    goto LABEL_55;
  }

  if (self->_routePickerControl != v16)
  {
    if (self->_analysisControl == v16)
    {
      v41 = 1376;
    }

    else if (self->_copySubjectControl == v16)
    {
      v41 = 1384;
    }

    else if (self->_visualLookupControl == v16)
    {
      v41 = 1392;
    }

    else
    {
      if (self->_jumpToLiveControl != v16)
      {
        if (v9)
        {
          audibleOptionsOverflowMenu = v9;
        }

        else
        {
          if (!menu)
          {
            v40 = 0;
            goto LABEL_56;
          }

          audibleOptionsOverflowMenu = menu;
        }

        goto LABEL_55;
      }

      v41 = 1368;
    }

    audibleOptionsOverflowMenu = *(&self->super.super.super.super.super.super.isa + v41);
LABEL_55:
    v40 = audibleOptionsOverflowMenu;
    goto LABEL_56;
  }

  displayModeControlsView = [(AVMobileChromelessControlsView *)self->_view displayModeControlsView];
  routePickerView = [displayModeControlsView routePickerView];

  v35 = AVLocalizedString(@"EXTERNAL_PLAYBACK_OVERFLOW_MENU_ITEM_TITLE");
  v36 = [MEMORY[0x1E69DCAB8] avkit_imageWithSymbolNamed:@"airplayvideo" textStyle:*MEMORY[0x1E69DDD00] scale:2];
  if ([routePickerView isAirPlayActive])
  {
    v37 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.86 blue:1.0 alpha:1.0];
    v38 = [v36 imageWithTintColor:v37 renderingMode:1];

    v36 = v38;
  }

  objc_initWeak(location, self);
  v39 = MEMORY[0x1E69DC628];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __70__AVMobileChromelessControlsViewController__menuElementForRoutePicker__block_invoke;
  v49[3] = &unk_1E7209230;
  objc_copyWeak(v50, location);
  v40 = [v39 actionWithTitle:v35 image:v36 identifier:0 handler:v49];
  objc_destroyWeak(v50);
  objc_destroyWeak(location);

LABEL_56:
  v42 = v40;

  return v40;
}

- (void)_updateAudibleMediaSelectionMenu
{
  v44 = *MEMORY[0x1E69E9840];
  if (self)
  {
    playerController = [self playerController];
    audioMediaSelectionOptions = [playerController audioMediaSelectionOptions];
    currentAudioMediaSelectionOption = [playerController currentAudioMediaSelectionOption];
    v5 = [audioMediaSelectionOptions indexOfObject:currentAudioMediaSelectionOption];

    [(AVMobileChromelessControlsViewController *)self _setUpMediaSelectionMenuControllerIfNeeded];
    [self[189] setAudibleOptions:audioMediaSelectionOptions];
    [self[189] setCurrentAudibleOptionIndex:v5];
    v6 = +[AVKitGlobalSettings shared];
    LODWORD(v5) = [v6 customMediaSelectionSchemeEnabled];

    if (v5)
    {
      mediaPresentationSelectors = [playerController mediaPresentationSelectors];
      availableCustomMediaSelectionLanguages = [playerController availableCustomMediaSelectionLanguages];
      [self[189] setAudibleMediaPresentationSelectors:mediaPresentationSelectors];
      [self[189] setAudibleMediaPresentationLanguages:availableCustomMediaSelectionLanguages];
      transportBarCustomMenuItems = [self transportBarCustomMenuItems];
      v10 = transportBarCustomMenuItems;
      if (transportBarCustomMenuItems && [transportBarCustomMenuItems count])
      {
        v34 = availableCustomMediaSelectionLanguages;
        v35 = mediaPresentationSelectors;
        v36 = audioMediaSelectionOptions;
        v37 = playerController;
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v33 = v10;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v40;
          v38 = v11;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v40 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v39 + 1) + 8 * i);
              v18 = [AVMobileGlassControlsViewController _identifierForMenuElement:v17];
              if (v18 == @"com.apple.avkit.TransportMenuItem.MediaPresentationSettingsAudioGroup")
              {
                [v11 addObject:v17];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = v17;
                  if (([v19 options] & 0x20) != 0)
                  {
                    selectedElements = [v19 selectedElements];
                    firstObject = [selectedElements firstObject];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      firstObject2 = [selectedElements firstObject];
                      title = [firstObject2 title];
                      [v19 setSubtitle:title];
                    }

                    v11 = v38;
                  }
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v14);
        }

        if ([v11 count])
        {
          [self setMediaPresentationSettingsCustomItems:v11];
        }

        playerController = v37;
        mediaPresentationSelectors = v35;
        audioMediaSelectionOptions = v36;
        v10 = v33;
        availableCustomMediaSelectionLanguages = v34;
      }
    }

    v25 = +[AVKitGlobalSettings shared];
    enhanceDialogueEnabled = [v25 enhanceDialogueEnabled];

    if (enhanceDialogueEnabled)
    {
      enhanceDialogueController = [self enhanceDialogueController];
      currentLevel = [enhanceDialogueController currentLevel];

      enhanceDialogueController2 = [self enhanceDialogueController];
      availableLevels = [enhanceDialogueController2 availableLevels];

      enhanceDialogueController3 = [self enhanceDialogueController];
      currentContentSupported = [enhanceDialogueController3 currentContentSupported];

      [self[189] setCurrentEnhanceDialogueOption:currentLevel];
      [self[189] setEnhanceDialogueOptions:availableLevels];
      [self[189] setShouldEnableEnhanceDialogueOptions:currentContentSupported];
    }
  }
}

- (void)_updateLegibleMediaSelectionMenu
{
  if (self)
  {
    playerController = [self playerController];
    legibleMediaSelectionOptions = [playerController legibleMediaSelectionOptions];
    currentLegibleMediaSelectionOption = [playerController currentLegibleMediaSelectionOption];
    v4 = [legibleMediaSelectionOptions indexOfObject:currentLegibleMediaSelectionOption];

    [(AVMobileChromelessControlsViewController *)self _setUpMediaSelectionMenuControllerIfNeeded];
    [self[189] setLegibleOptions:legibleMediaSelectionOptions];
    [self[189] setCurrentLegibleOptionIndex:v4];
  }
}

void __70__AVMobileChromelessControlsViewController__menuElementForRoutePicker__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[154] displayModeControlsView];
    v3 = [v2 routePickerView];

    [v3 presentRoutePicker:v4];
    WeakRetained = v4;
  }
}

- (uint64_t)_setUpMediaSelectionMenuControllerIfNeeded
{
  if (!*(result + 1512))
  {
    v1 = result;
    v2 = [[AVMediaSelectionMenuController alloc] initWithAudibleOptions:0 legibleOptions:0 enhanceDialogueOptions:0];
    v3 = *(v1 + 1512);
    *(v1 + 1512) = v2;

    v4 = *(v1 + 1512);

    return [v4 setDelegate:v1];
  }

  return result;
}

void __71__AVMobileChromelessControlsViewController__menuElementForControlItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) action];
  v1[2]();
}

- (void)auxiliaryControlsView:(id)view didOverflowControls:(id)controls
{
  viewCopy = view;
  controlsCopy = controls;
  v8 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v8 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v10 = self->_controlsInOverflowMenu;
    v22 = controlsCopy;
    v11 = controlsCopy;
    v12 = [v11 mutableCopy];
    [v12 unionSet:v10];
    v13 = [v11 mutableCopy];

    [v13 intersectSet:v10];
    [v12 minusSet:v13];

    tips = [(AVTipKitControlsViewController *)self tips];
    v15 = [tips objectForKeyedSubscript:@"AVPlayerControlTipForAudibleMediaSelection"];

    v16 = +[AVKitGlobalSettings shared];
    if ([v16 enhanceDialogueEnabled])
    {
      enhanceDialogueController = [(AVMobileChromelessControlsViewController *)self enhanceDialogueController];
      [enhanceDialogueController availableLevels];
      v18 = tips;
      v20 = v19 = viewCopy;
      v21 = [v20 count] != 0;

      viewCopy = v19;
      tips = v18;
    }

    else
    {
      v21 = 0;
    }

    if ((v15 || v21) && [v12 containsObject:self->_audibleMediaSelectionControl])
    {
      [(AVTipKitControlsViewController *)self dismissTip];
    }

    else
    {
      [(AVMobileChromelessControlsViewController *)self _dismissControlItemWithTipInSymmetricDifferenceSet:v12];
    }

    controlsCopy = v22;
  }

  objc_storeStrong(&self->_controlsInOverflowMenu, controls);
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__AVMobileChromelessControlsViewController_auxiliaryControlsView_didOverflowControls___block_invoke;
  v23[3] = &unk_1E7209EA8;
  objc_copyWeak(&v24, &location);
  [(AVTipKitControlsViewController *)self configureTipsUponNextOverflowControlUpdateWithCompletion:v23];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __86__AVMobileChromelessControlsViewController_auxiliaryControlsView_didOverflowControls___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)WeakRetained _configureTips];
}

- (id)_configureTips
{
  v37 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v1 = result;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  controlItems = [result controlItems];
  v3 = [controlItems countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(controlItems);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 tip];
        type = [v7 type];
        visibleControls = [v1 visibleControls];
        if (type)
        {
          v11 = 16;
        }

        else
        {
          v11 = 4;
        }

        v12 = v11 & visibleControls;
        if (v8)
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [(AVMobileChromelessControlsViewController *)v1 _auxiliaryControlForControlItem:v7];
          if ([v7 type])
          {
            if ([v1[222] containsObject:v14])
            {
              goto LABEL_16;
            }

LABEL_18:
            v18 = controlItems;
            view = [v7 view];
            accessibilityIdentifier = [view accessibilityIdentifier];

            if (accessibilityIdentifier == @"Overflow Menu")
            {
              accessibilityIdentifier = @"Overflow Menu";
              v17 = 2;
            }

            else if ([v7 type])
            {
              v17 = 2;
            }

            else
            {
              v17 = 1;
            }

            controlItems = v18;
          }

          else
          {
            if (([v1[156] containsObject:v14] & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_16:
            accessibilityIdentifier = @"Overflow Menu";
            v16 = @"Overflow Menu";
            v17 = 2;
          }

          [v1 handleTipWithTipId:v8 sourceViewIdentifier:accessibilityIdentifier arrowDirection:v17 priority:0];
        }
      }

      v4 = [controlItems countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  tips = [v1 tips];
  visibleControls2 = [v1 visibleControls];
  v22 = [tips objectForKeyedSubscript:@"AVPlayerControlTipForAudibleMediaSelection"];
  v23 = v22;
  if ((visibleControls2 & 0x10) != 0 && v22)
  {
    _currentAccessibilityIdentifierForAudibleMedia = [(AVMobileChromelessControlsViewController *)v1 _currentAccessibilityIdentifierForAudibleMedia];
    [v1 handleTipWithTipId:v23 sourceViewIdentifier:_currentAccessibilityIdentifierForAudibleMedia arrowDirection:2 priority:1];
  }

  visibleControls3 = [v1 visibleControls];
  _currentAccessibilityIdentifierForAudibleMedia2 = +[AVKitGlobalSettings shared];
  if (![_currentAccessibilityIdentifierForAudibleMedia2 enhanceDialogueEnabled])
  {
    goto LABEL_35;
  }

  enhanceDialogueController = [v1 enhanceDialogueController];
  availableLevels = [enhanceDialogueController availableLevels];
  v29 = [availableLevels count];

  if ((visibleControls3 & 0x10) != 0)
  {
    if (v29)
    {
      enhanceDialogueController2 = [v1 enhanceDialogueController];
      currentLevel = [enhanceDialogueController2 currentLevel];

      if (!currentLevel)
      {
        _currentAccessibilityIdentifierForAudibleMedia2 = [(AVMobileChromelessControlsViewController *)v1 _currentAccessibilityIdentifierForAudibleMedia];
        [v1 handleEnhanceDialogueWithSourceViewIdentifier:_currentAccessibilityIdentifierForAudibleMedia2];
LABEL_35:
      }
    }
  }

  return [v1 displayTips];
}

- (__CFString)_currentAccessibilityIdentifierForAudibleMedia
{
  if ([*(self + 1776) containsObject:*(self + 1256)])
  {
    v1 = @"Overflow Menu";
  }

  else
  {
    v1 = @"Audible Options";
  }

  return v1;
}

- (void)viewIsOverVideoDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy isOverVideo])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [changeCopy setOverrideUserInterfaceStyle:v3];
}

- (id)menuForMenuButton:(id)button
{
  buttonCopy = button;
  v5 = buttonCopy;
  if (self->_playbackSpeedButton == buttonCopy)
  {
    menu = [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController menu];
    goto LABEL_10;
  }

  if (self->_audibleMediaSelectionButton == buttonCopy)
  {
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateAudibleMediaSelectionMenu];
    menu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
    goto LABEL_10;
  }

  if (self->_legibleMediaSelectionButton == buttonCopy)
  {
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateLegibleMediaSelectionMenu];
    menu = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
    goto LABEL_10;
  }

  v6 = +[AVKitGlobalSettings shared];
  if ([v6 hapticsEnabled])
  {
    hapticsMediaSelectionButton = self->_hapticsMediaSelectionButton;

    if (hapticsMediaSelectionButton == v5)
    {
      [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateHasHapticTrackSelectionMenu];
      menu = [(AVMobileHapticsMenuController *)self->_hapticsMenuController hapticsOptionsMenu];
LABEL_10:
      v9 = menu;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)mediaSelectionMenuController:(id)controller complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)selector
{
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  v7 = [playerController complementarySettingsForSelectedMediaPresentationSettingsForSelector:selectorCopy];

  return v7;
}

- (id)mediaSelectionMenuController:(id)controller complementarySettingsForSelector:(id)selector
{
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  v7 = [playerController complementarySettingsForSelector:selectorCopy];

  return v7;
}

- (id)effectiveSettingsForSelectorForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  effectiveSettings = [playerController effectiveSettings];

  return effectiveSettings;
}

- (id)mediaSelectionMenuController:(id)controller effectiveSettingForSelector:(id)selector
{
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  v7 = [playerController effectiveSettingForSelector:selectorCopy];

  return v7;
}

- (id)mediaSelectionMenuController:(id)controller selectedPresentationSettingForSelector:(id)selector
{
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  v7 = [playerController selectedPresentationSettingForSelector:selectorCopy];

  return v7;
}

- (void)mediaSelectionMenuController:(id)controller selectMediaPresentationSetting:(id)setting forSelector:(id)selector
{
  settingCopy = setting;
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController selectPresentationSetting:settingCopy];

  delegate = [(AVMobileControlsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chromelessControlsViewController:self didSelectSetting:settingCopy forSelector:selectorCopy];
  }
}

- (unint64_t)mediaSelectionMenuController:(id)controller indexOfEffectivePresentationSettingForSelector:(id)selector
{
  selectorCopy = selector;
  playerController = [(AVMobileControlsViewController *)self playerController];
  v7 = [playerController indexOfEffectivePresentationSettingForSelector:selectorCopy];

  return v7;
}

- (unint64_t)indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  selectedMediaPresentationLanguageIndex = [playerController selectedMediaPresentationLanguageIndex];

  return selectedMediaPresentationLanguageIndex;
}

- (void)mediaSelectionMenuController:(id)controller selectMediaPresentationLanguage:(id)language
{
  languageCopy = language;
  playerController = [(AVMobileControlsViewController *)self playerController];
  [playerController selectAudibleMediaPresentationLanguage:languageCopy];
}

- (BOOL)shouldFilterMediaPresentationOptionsToAvailableCacheForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  mediaPresentationOptionsOnlyAvailableOffline = [playerController mediaPresentationOptionsOnlyAvailableOffline];

  return mediaPresentationOptionsOnlyAvailableOffline;
}

- (BOOL)shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  shouldShowPresentationSettingsAudioTracks = [playerController shouldShowPresentationSettingsAudioTracks];

  return shouldShowPresentationSettingsAudioTracks;
}

- (BOOL)isMediaPresentationSettingsEnabledForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  isMediaPresentationSettingsEnabled = [playerController isMediaPresentationSettingsEnabled];

  return isMediaPresentationSettingsEnabled;
}

- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)controller
{
  playerController = [(AVMobileControlsViewController *)self playerController];
  closedCaptionsEnabled = [playerController closedCaptionsEnabled];

  return closedCaptionsEnabled;
}

- (id)mediaSelectionMenuController:(id)controller displayNameForMediaSelectionOption:(id)option
{
  optionCopy = option;
  delegate = [(AVMobileControlsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AVMobileControlsViewController *)self delegate];
    v9 = [delegate2 controlsViewController:self displayNameForMediaSelectionOption:optionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)mediaSelectionMenuController:(id)controller didSelectEnhanceDialogueOption:(int64_t)option
{
  controllerCopy = controller;
  enhanceDialogueController = [(AVMobileChromelessControlsViewController *)self enhanceDialogueController];
  [enhanceDialogueController setCurrentLevel:option];

  [controllerCopy setCurrentEnhanceDialogueOption:option];
  v8 = +[AVKitGlobalSettings shared];
  LODWORD(controllerCopy) = [v8 playerTipsEnabled];

  if (controllerCopy)
  {
    [(AVTipKitControlsViewController *)self handleTipEventDidEnterEnhanceDialogue];
  }

  [(AVMenuButton *)self->_audibleMediaSelectionButton updateContextMenu];

  [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
}

- (void)mediaSelectionMenuController:(id)controller didSelectOption:(id)option
{
  optionCopy = option;
  audibleOptions = [controller audibleOptions];
  v7 = [audibleOptions containsObject:optionCopy];

  playerController = [(AVMobileControlsViewController *)self playerController];
  v9 = playerController;
  if (v7)
  {
    [playerController setCurrentAudioMediaSelectionOption:optionCopy];
  }

  else
  {
    [playerController setCurrentLegibleMediaSelectionOption:optionCopy];
  }
}

- (void)controlItemDidUpdateVisualConfiguration:(id)configuration
{
  if (self)
  {
    auxiliaryControlsView = [(AVMobileChromelessControlsView *)self->_view auxiliaryControlsView];
    [auxiliaryControlsView updateOverflowMenu];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v4 traitCollectionDidChange:change];
  if (self)
  {
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _updateStyleSheet];
      [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineLabelPositions];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v13.receiver = self;
  v13.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (self && self->_hasBeenSetUp)
  {
    [(UIPanGestureRecognizer *)self->_contentTabPanGestureRecognizer setEnabled:0];
    [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
    v8 = self->_contentTabPresentationContext;
    v9 = v8;
    if (self->_contentTabViewPresentationAnimator && [(AVMobileContentTabPresentationContext *)v8 state]== 2)
    {
      [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator stopAnimation:0];
      [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator finishAnimationAtPosition:[(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator isReversed]];
    }

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__AVMobileChromelessControlsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_1E7209140;
    objc_copyWeak(&v11, &location);
    [coordinatorCopy animateAlongsideTransition:v10 completion:0];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __95__AVMobileChromelessControlsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissCustomInfoViewControllerAnimated:1];
    [(AVMobileChromelessControlsViewController *)v2 _updateAuxiliaryControlSpacing];
    [(AVMobileChromelessControlsViewController *)v2 _updatePinnedAuxiliaryControlsIfNeeded];
    [(AVMobileChromelessControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
    [v2[227] setEnabled:1];
    WeakRetained = v2;
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v6 viewSafeAreaInsetsDidChange];
  if (self)
  {
    if (self->_hasBeenSetUp)
    {
      objc_initWeak(&location, self);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __71__AVMobileChromelessControlsViewController_viewSafeAreaInsetsDidChange__block_invoke;
      v3[3] = &unk_1E7209EA8;
      objc_copyWeak(&v4, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v3);
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __71__AVMobileChromelessControlsViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[1216];

    if (v3 == 1)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      [(AVMobileChromelessControlsViewController *)v4 _updateLayoutMargins];
    }
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (self && self->_hasBeenSetUp)
  {
    [(AVMobileChromelessControlsViewController *)self _updateVolumeControllerClient];
  }

  [(AVMobileChromelessControlsViewController *)self _attemptSetupIfNeeded];
}

- (void)_attemptSetupIfNeeded
{
  if (self)
  {
    if ([(AVMobileChromelessControlsViewController *)self _canPerformSetup])
    {
      objc_initWeak(&location, self);
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __65__AVMobileChromelessControlsViewController__attemptSetupIfNeeded__block_invoke;
      v2[3] = &unk_1E7209EA8;
      objc_copyWeak(&v3, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v2);
      objc_destroyWeak(&v3);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)_canPerformSetup
{
  if ([self optimizeForPerformance])
  {
    v2 = 0;
  }

  else
  {
    window = [*(self + 1232) window];
    if (window)
    {
      v2 = *(self + 1216) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t __65__AVMobileChromelessControlsViewController__attemptSetupIfNeeded__block_invoke(uint64_t a1)
{
  v129[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    val = WeakRetained;
    WeakRetained = [(AVMobileChromelessControlsViewController *)WeakRetained _canPerformSetup];
    v2 = val;
    if (WeakRetained)
    {
      *(val + 1216) = 1;
      if (!val[153])
      {
        v3 = [MEMORY[0x1E696AD88] defaultCenter];
        [v3 addObserver:val selector:sel__updateStyleSheet name:*MEMORY[0x1E69DDC48] object:0];

        [val _updateStyleSheet];
        v2 = val;
      }

      v4 = *(v2 + 1232);
      if (v4)
      {
        v5 = [v4 backgroundView];

        v2 = val;
        if (!v5)
        {
          v6 = objc_alloc_init(AVMobileChromelessBackgroundGradientView);
          [(AVMobileChromelessBackgroundGradientView *)v6 setAutoresizingMask:0];
          [val[154] setBackgroundView:v6];

          v2 = val;
        }
      }

      v7 = *(v2 + 1232);
      if (v7)
      {
        if (*(v2 + 1224))
        {
          v8 = [v7 displayModeControlsView];

          v2 = val;
          if (!v8)
          {
            v9 = [[AVMobileChromelessDisplayModeControlsView alloc] initWithStyleSheet:val[153]];
            [(AVMobileChromelessDisplayModeControlsView *)v9 setAutoresizingMask:0];
            [(AVMobileChromelessDisplayModeControlsView *)v9 setDelegate:val];
            [(AVMobileChromelessDisplayModeControlsView *)v9 setFullscreenIcon:0];
            v10 = [val routingConfiguration];
            [(AVMobileChromelessDisplayModeControlsView *)v9 setRoutingConfiguration:v10];

            [val[154] setDisplayModeControlsView:v9];
            v2 = val;
          }
        }
      }

      v11 = *(v2 + 1232);
      if (v11)
      {
        if (*(v2 + 1224))
        {
          v12 = [v11 playbackControlsView];

          v2 = val;
          if (!v12)
          {
            v13 = [[AVMobileChromelessPlaybackControlsView alloc] initWithStyleSheet:val[153]];
            [(AVMobileChromelessPlaybackControlsView *)v13 setAutoresizingMask:0];
            [(AVMobileChromelessPlaybackControlsView *)v13 setDelegate:val];
            v14 = +[AVKitGlobalSettings shared];
            v15 = [v14 prefersTintColorForPlaybackControlsView];

            if (v15)
            {
              v16 = [MEMORY[0x1E69DC888] whiteColor];
              [(AVMobileChromelessPlaybackControlsView *)v13 setTintColor:v16];
            }

            v17 = [val prefersFullScreenStyleForEmbeddedMode];
            v18 = 0.0;
            if (v17)
            {
              v18 = *(val + 231);
            }

            [(AVMobileChromelessPlaybackControlsView *)v13 setAvkit_extendedDynamicRangeGain:v18];
            memset(&block, 0, sizeof(block));
            CMTimeMakeWithSeconds(&block, 10.0, 600);
            location = block;
            [(AVMobileChromelessPlaybackControlsView *)v13 setBackwardSecondaryControlSkipInterval:&location];
            location = block;
            [(AVMobileChromelessPlaybackControlsView *)v13 setForwardSecondaryControlSkipInterval:&location];
            [val[154] setPlaybackControlsView:v13];

            v2 = val;
          }
        }
      }

      v19 = *(v2 + 1232);
      if (v19)
      {
        if (*(v2 + 1224))
        {
          v20 = [v19 timelineView];

          v2 = val;
          if (!v20)
          {
            v21 = 0.0;
            if ([val prefersFullScreenStyleForEmbeddedMode])
            {
              v21 = *(val + 231);
            }

            v22 = [[AVMobileChromelessTimelineView alloc] initWithStyleSheet:val[153]];
            [(AVMobileChromelessTimelineView *)v22 setAutoresizingMask:0];
            [(AVMobileChromelessTimelineView *)v22 setLabelsExtendedDynamicRangeGain:v21];
            [(AVMobileChromelessTimelineView *)v22 setSliderExtendedDynamicRangeGain:v21];
            [(AVView *)v22 setAutomaticallyUpdatesSubviewContentIntersections:1];
            [val[154] setTimelineView:v22];

            v2 = val;
          }
        }
      }

      v23 = *(v2 + 1232);
      if (v23)
      {
        if (*(v2 + 1224))
        {
          v24 = [v23 titlebarView];

          v2 = val;
          if (!v24)
          {
            v25 = [[AVMobileTitlebarView alloc] initWithStyleSheet:val[153]];
            [(AVMobileTitlebarView *)v25 setAutoresizingMask:0];
            [val[154] setTitlebarView:v25];
            [(AVMobileChromelessControlsViewController *)val _updateTitleAndDescriptionInfo];
            [(AVMobileChromelessControlsViewController *)val _updateContentTag];

            v2 = val;
          }
        }
      }

      [(AVMobileChromelessControlsViewController *)v2 _setUpAuxiliaryControlsViewIfNeeded];
      v26 = val;
      if (val[154] && !val[160])
      {
        v27 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVRoutePickerControl"];
        v28 = val[160];
        val[160] = v27;

        v26 = val;
      }

      [(AVMobileChromelessControlsViewController *)v26 _setUpAnalysisControlIfNeeded];
      v29 = val;
      if (!val[159] && val[154])
      {
        [(AVMobileChromelessControlsViewController *)val _setUpAuxiliaryControlsViewIfNeeded];
        v30 = objc_alloc_init(AVMobilePlaybackRateMenuController);
        v31 = val[188];
        val[188] = v30;

        v32 = val[188];
        v33 = [val playbackSpeedCollection];
        [v32 setPlaybackSpeedCollection:v33];

        v34 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"AVPlaybackSpeedControl" isFirstGeneration:0];
        v35 = val[170];
        val[170] = v34;

        v36 = val[170];
        v37 = AVLocalizedString(@"Playback Speed");
        [v36 setAccessibilityLabel:v37];

        [val[170] setImageName:@"speedometer"];
        [val[170] setDelegate:val];
        [val[170] setContentIntersectingDelegate:val];
        [(AVMobileChromelessControlsViewController *)val _configureAuxiliaryControlButton:?];
        v38 = [AVMobileAuxiliaryControl controlWithView:val[170] displayPriority:0 identifier:@"AVPlaybackSpeedControl"];
        v39 = val[159];
        val[159] = v38;

        [(AVMobileChromelessControlsViewController *)val _updatePlaybackSpeedControlInclusion];
        v29 = val;
      }

      if (!v29[157] && v29[154])
      {
        [(AVMobileChromelessControlsViewController *)v29 _setUpAuxiliaryControlsViewIfNeeded];
        v40 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Audible Options" isFirstGeneration:0];
        v41 = val[168];
        val[168] = v40;

        v42 = val[168];
        v43 = AVLocalizedString(@"Audio Track");
        [v42 setAccessibilityLabel:v43];

        [val[168] setImageName:@"waveform.circle"];
        [val[168] setDelegate:val];
        [val[168] setContentIntersectingDelegate:val];
        [(AVMobileChromelessControlsViewController *)val _configureAuxiliaryControlButton:?];
        v44 = [AVMobileAuxiliaryControl controlWithView:val[168] displayPriority:0 identifier:@"AVAudibleMediaSelectionControl"];
        v45 = val[157];
        val[157] = v44;

        v46 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Legible Options" isFirstGeneration:0];
        v47 = val[169];
        val[169] = v46;

        v48 = val[169];
        v49 = AVLocalizedString(@"Legible Options");
        [v48 setAccessibilityLabel:v49];

        [val[169] setImageName:@"captions.bubble"];
        [val[169] setDelegate:val];
        [val[169] setContentIntersectingDelegate:val];
        [(AVMobileChromelessControlsViewController *)val _configureAuxiliaryControlButton:?];
        v50 = [AVMobileAuxiliaryControl controlWithView:val[169] displayPriority:0 identifier:@"AVLegibleMediaSelectionControl"];
        v51 = val[158];
        val[158] = v50;

        [(AVMobileChromelessControlsViewController *)val _updateAudibleMediaSelectionControlInclusionState];
        [(AVMobileChromelessControlsViewController *)val _updateLegibleMediaSelectionControlInclusionState];
        v29 = val;
      }

      v52 = v29[154];
      if (v52)
      {
        if (v29[153])
        {
          v53 = [v52 volumeControlsView];

          v29 = val;
          if (!v53)
          {
            v54 = objc_alloc_init(AVMobileChromelessVolumeControlsView);
            [(AVMobileChromelessVolumeControlsView *)v54 setDelegate:val];
            [(AVMobileChromelessVolumeControlsView *)v54 setPrefersVolumeSliderIncluded:1];
            [(AVMobileChromelessVolumeControlsView *)v54 setAutoresizingMask:0];
            [val[154] setVolumeControlsView:v54];
            [(AVMobileChromelessControlsViewController *)val _updateVolumeControllerClient];

            v29 = val;
          }
        }
      }

      [(AVMobileChromelessControlsViewController *)v29 _setUpCopySubjectControlIfNeeded];
      [(AVMobileChromelessControlsViewController *)val _setUpVisualLookupControlIfNeeded];
      v55 = +[AVKitGlobalSettings shared];
      v56 = [v55 hapticsEnabled];

      if (v56)
      {
        v57 = +[AVKitGlobalSettings shared];
        v58 = [v57 hapticsEnabled];

        if (v58)
        {
          if (!val[223] && val[154])
          {
            v59 = objc_alloc_init(AVMobileHapticsMenuController);
            v60 = val[225];
            val[225] = v59;

            [val[225] setDelegate:?];
            v61 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Haptics Options" isFirstGeneration:0];
            v62 = val[224];
            val[224] = v61;

            [val[224] setImageName:@"apple.haptics"];
            [val[224] setDelegate:?];
            v63 = val[153];
            v64 = val[224];
            v65 = [v63 buttonFont];
            [v64 setInlineFont:v65];

            v66 = [AVMobileAuxiliaryControl controlWithView:val[224] displayPriority:0 identifier:@"hapticsId"];
            v67 = val[223];
            val[223] = v66;

            [val[223] setIncluded:1];
          }
        }
      }

      [(AVMobileChromelessControlsViewController *)val _updateViewVisibilityStatesTo:0];
      objc_initWeak(&location, val);
      block.value = MEMORY[0x1E69E9820];
      *&block.timescale = 3221225472;
      block.epoch = __62__AVMobileChromelessControlsViewController__loadControlsViews__block_invoke;
      v128 = &unk_1E7209EA8;
      objc_copyWeak(v129, &location);
      dispatch_async(MEMORY[0x1E69E96A0], &block);
      objc_destroyWeak(v129);
      objc_destroyWeak(&location);
      [(AVMobileChromelessControlsViewController *)val _updateContentTabViewControllers];
      [(AVMobileChromelessControlsViewController *)val _setUpPanGestureRecognizerIfNeeded];
      [(AVMobileChromelessControlsViewController *)val _setUpTapGestureRecognizerIfNeeded];
      v68 = objc_alloc_init(MEMORY[0x1E6988158]);
      v69 = val[184];
      val[184] = v68;

      [val[184] setStyle:1];
      v70 = objc_alloc_init(MEMORY[0x1E6988158]);
      v71 = val[185];
      val[185] = v70;

      [val[185] setStyle:2];
      v72 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v73 = val[186];
      val[186] = v72;

      [val[186] setDateFormat:@"h:mm a"];
      if (!val[183] && val[154])
      {
        v74 = objc_alloc_init(AVPlayerControllerTimeResolver);
        v75 = val[183];
        val[183] = v74;

        v76 = val[183];
        v77 = [val playerController];
        [v76 setPlayerController:v77];

        [val[183] setInterval:1.0];
      }

      v78 = [[AVObservationController alloc] initWithOwner:val];
      v79 = val[150];
      val[150] = v78;

      [val[150] startObservingNotificationForName:*MEMORY[0x1E69DE018] object:0 notificationCenter:0 observationHandler:&__block_literal_global_109];
      [val[150] startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_111_25096];
      v80 = [val[150] startObserving:val keyPath:@"pipController.pictureInPicturePossible" includeInitialValue:1 observationHandler:&__block_literal_global_118_25098];
      v81 = [val[150] startObserving:val keyPath:@"pipController.pictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_123];
      [val[150] startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_125_25101];
      v82 = [val[150] startObserving:val keyPath:@"playerController.muted" observationHandler:&__block_literal_global_131_25103];
      v83 = [val[150] startObserving:val keyPath:@"playerController.allowsExternalPlayback" observationHandler:&__block_literal_global_136];
      v84 = [val[150] startObserving:val keyPath:@"playerController.canSeek" observationHandler:&__block_literal_global_141];
      v85 = [val[150] startObserving:val keyPath:@"playerController.hasLiveStreamingContent" observationHandler:&__block_literal_global_146];
      v86 = [val[150] startObserving:val keyPath:@"playerController.hasSeekableLiveStreamingContent" observationHandler:&__block_literal_global_151_25107];
      v87 = [val[150] startObserving:val keyPath:@"playerController.status" observationHandler:&__block_literal_global_156];
      v88 = [val[150] startObserving:val keyPath:@"playerController.timeControlStatus" observationHandler:&__block_literal_global_161_25110];
      v89 = [val[150] startObserving:val keyPath:@"playerController.playing" includeInitialValue:0 observationHandler:&__block_literal_global_166_25112];
      v90 = [val[150] startObserving:val keyPath:@"playerController.rate" observationHandler:&__block_literal_global_171_25114];
      v91 = [val[150] startObserving:val keyPath:@"playerController.timeControlStatus" observationHandler:&__block_literal_global_173];
      v92 = [val[150] startObserving:val[188] keyPath:@"menu" observationHandler:&__block_literal_global_178];
      v93 = [val[150] startObserving:val keyPath:@"playerController.playingOnMatchPointDevice" observationHandler:&__block_literal_global_183];
      v94 = [val[150] startObserving:val keyPath:@"playerController.hasEnabledAudio" observationHandler:&__block_literal_global_188];
      v95 = [val[150] startObserving:val keyPath:@"playerController.hasAudioMediaSelectionOptions" observationHandler:&__block_literal_global_193];
      v96 = [val[150] startObserving:val keyPath:@"playerController.hasLegibleMediaSelectionOptions" observationHandler:&__block_literal_global_198];
      v97 = [val[150] startObserving:val keyPath:@"playerController.currentAssetIfReady" observationHandler:&__block_literal_global_203];
      v98 = [val[150] startObserving:val keyPath:@"playerController.scrubbing" observationHandler:&__block_literal_global_208];
      v99 = val[150];
      v100 = val[183];
      block.value = @"targetTime";
      *&block.timescale = @"minTime";
      v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&block count:2];
      v102 = [v99 startObserving:v100 keyPaths:v101 observationHandler:&__block_literal_global_216];

      v103 = [val[150] startObserving:val[183] keyPath:@"maxTime" observationHandler:&__block_literal_global_221];
      v104 = [val[150] startObserving:val keyPath:@"playerController.externalPlaybackActive" observationHandler:&__block_literal_global_226_25118];
      [val[150] startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_228];
      v105 = +[AVKitGlobalSettings shared];
      LODWORD(v100) = [v105 playerTipsEnabled];

      if (v100)
      {
        v106 = val[150];
        v107 = [val didPresentTipNotificationName];
        [v106 startObservingNotificationForName:v107 object:0 notificationCenter:0 observationHandler:&__block_literal_global_230];
      }

      [(AVMobileChromelessControlsViewController *)val _updateAnalysisControlInclusionIfNeeded];
      [(AVMobileChromelessControlsViewController *)val _updateAudibleMediaSelectionControlInclusionState];
      [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControls];
      [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControlsForControlItems];
      [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControlSpacing];
      [(AVMobileChromelessControlsViewController *)val _updateContentTabsInteractionEnablementState];
      [(AVMobileChromelessControlsViewController *)val _updateContentTag];
      [(AVMobileChromelessControlsViewController *)val _updateControlsViewLayoutConfiguration];
      [(AVMobileChromelessControlsViewController *)val _updateControlsVisibilityStateAnimated:?];
      [(AVMobileChromelessControlsViewController *)val _updateDisplayModeControlsButtonsInclusion];
      [(AVMobileChromelessControlsViewController *)val _updateDisplayModeControlsForControlItems];
      [(AVMobileChromelessControlsViewController *)val _updateFullScreenButtonIcon];
      [val[154] setLayoutAllowed:*(val + 1216)];
      [(AVMobileChromelessControlsViewController *)val _updateLayoutMargins];
      [(AVMobileChromelessControlsViewController *)val _updateLegibleMediaSelectionControlInclusionState];
      [(AVMobileChromelessControlsViewController *)val _updateLoadingAnimatorState];
      [(AVMobileChromelessControlsViewController *)val _updatePinnedAuxiliaryControlsIfNeeded];
      [(AVMobileChromelessControlsViewController *)val _updatePlaybackSpeedControlInclusion];
      [(AVMobileChromelessControlsViewController *)val _updatePlayPauseButtonIcon];
      [(AVMobileChromelessControlsViewController *)val _updatePlaybackControlsViewInclusionState];
      [(AVMobileChromelessControlsViewController *)val _updatePrefersVolumeSliderIncludedAnimated:?];
      [(AVMobileChromelessControlsViewController *)val _updateRoutePickerControlInclusionState];
      [(AVMobileChromelessControlsViewController *)val _updateSecondaryPlaybackControlsTypes];
      [(AVMobileChromelessControlsViewController *)val _updateTimelineLabelPositions];
      [(AVMobileChromelessControlsViewController *)val _updateTimelineSliderEnablementState];
      [(AVMobileChromelessControlsViewController *)val _updateTimeResolver];
      [(AVMobileChromelessControlsViewController *)val _updateTitleAndDescriptionInfo];
      [(AVMobileChromelessControlsViewController *)val _updateTitleBarViewInclusionState];
      [(AVMobileChromelessControlsViewController *)val _updateVolumeControllerClient];
      [(AVMobileChromelessControlsViewController *)val _updateVolumeControlsViewMutedState];
      [(AVMobileChromelessControlsViewController *)val _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
      [(AVMobileChromelessControlsViewController *)val _updateVolumeControlsViewAllowsVolumeAdjustmentState];
      [(AVMobileChromelessControlsViewController *)val _updateWebKitExcludedObservationState];
      v108 = val;
      v109 = val[154];
      if (v109 && val[153])
      {
        v110 = [v109 timelineView];

        if (v110)
        {
          v111 = [val[154] timelineView];
          v112 = [v111 slider];
          [v112 setAccessibilityIdentifier:@"Current position"];
          v113 = AVLocalizedString(@"Current position");
          [v112 setAccessibilityLabel:v113];

          [v112 setIsAccessibilityElement:1];
          [v112 setDelegate:val];
          [v112 addTarget:val action:sel__timelineSliderDidChangeValue_ forControlEvents:4096];
          v114 = +[AVKitGlobalSettings shared];
          v115 = [v114 fluidSliderEnabled];

          if (v115)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v116 = v112;
              [v116 setFineScrubbingStyle:1];
              [v116 setContentIntersectingDelegate:val];

              v117 = [val[154] timelineView];
              v118 = [v117 leadingLabel];

              v119 = [val[154] timelineView];
              v120 = [v119 trailingLabel];

              [v118 setContentIntersectingDelegate:val];
              [v120 setContentIntersectingDelegate:val];
            }
          }

          else
          {
            [v112 addTarget:val action:sel__timelineSliderTrackingStateDidChange forControlEvents:449];
          }

          [v112 setMinimumValue:0.0];
          LODWORD(v121) = 1.0;
          [v112 setMaximumValue:v121];
          LODWORD(v122) = 1.0;
          [v112 setTotalValue:v122];
        }

        v108 = val;
      }

      [v108[154] avkit_makeSubtreeDisallowGroupBlending];
      [val[154] layoutIfNeeded];
      v123 = [val[154] window];

      v2 = val;
      if (v123)
      {
        [(AVMobileChromelessControlsViewController *)val _setNeedsControlsVisibilityStateUpdate];
        v2 = val;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)_updateContentTabViewControllers
{
  if (self)
  {
    v2 = +[AVKitGlobalSettings shared];
    supportsContentTabs = [v2 supportsContentTabs];

    if (supportsContentTabs)
    {
      [*(self + 1752) invalidateContentTabsSelection];
      if (*(self + 1232) && !*(self + 1752))
      {
        v4 = objc_alloc_init(AVMobileChromelessContentTabsViewController);
        v5 = *(self + 1752);
        *(self + 1752) = v4;

        [*(self + 1752) setCustomInfoViewControllers:*(self + 1712)];
        [*(self + 1752) setDelegate:self];
        [*(self + 1752) willMoveToParentViewController:self];
        [self addChildViewController:*(self + 1752)];
        view = [*(self + 1752) view];
        [*(self + 1232) setContentTabsView:view];
        [*(self + 1752) didMoveToParentViewController:self];
      }

      v7 = *(self + 1752);
      v8 = *(self + 1712);

      [v7 setCustomInfoViewControllers:v8];
    }
  }
}

- (void)_updateAnalysisControlInclusionIfNeeded
{
  if (self)
  {
    v2 = *(self + 1296);
    if (v2)
    {
      v3 = *(self + 1809);
      v5 = v2;
      v4 = v3 == [v2 isIncluded];
      v2 = v5;
      if (!v4)
      {
        [v5 setIncluded:*(self + 1809)];
        [*(self + 1232) setNeedsLayout];
        v2 = v5;
      }
    }
  }
}

- (void)_updateAudibleMediaSelectionControlInclusionState
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  playerController = [result playerController];
  if ([playerController hasAudioMediaSelectionOptions])
  {
    enhanceDialogueEnabled = 1;
  }

  else
  {
    playerController2 = [v1 playerController];
    hasAudioMediaPresentationSelectionOptions = [playerController2 hasAudioMediaPresentationSelectionOptions];

    if (hasAudioMediaPresentationSelectionOptions)
    {
      enhanceDialogueEnabled = 1;
      goto LABEL_9;
    }

    v6 = +[AVKitGlobalSettings shared];
    enhanceDialogueEnabled = [v6 enhanceDialogueEnabled];

    if (!enhanceDialogueEnabled)
    {
      goto LABEL_9;
    }

    playerController = [v1 enhanceDialogueController];
    availableLevels = [playerController availableLevels];
    enhanceDialogueEnabled = [availableLevels count] != 0;
  }

LABEL_9:
  v8 = v1[157];

  return [v8 setIncluded:enhanceDialogueEnabled];
}

- (void)_updateAuxiliaryControlsForControlItems
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  controlItems = [self controlItems];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [controlItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(controlItems);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [(AVMobileChromelessControlsViewController *)self _auxiliaryControlForControlItem:v8];
        if (!v9)
        {
          type = [v8 type];
          if ((type - 1) < 2)
          {
            view = [v8 view];
            identifier = [v8 identifier];
            v9 = [AVMobileAuxiliaryControl controlWithView:view displayPriority:0 identifier:identifier];

            goto LABEL_11;
          }

          if (type)
          {
            v9 = 0;
          }

          else
          {
            view = [v8 identifier];
            v9 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:view];
LABEL_11:
          }

          view2 = [v8 view];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            view3 = [v8 view];
            whiteColor = [MEMORY[0x1E69DC888] whiteColor];
            [view3 setTintColor:whiteColor];

            [view3 setAutoresizingMask:0];
          }
        }

        [v8 setDelegate:self];
        [v2 addObject:v9];
      }

      v5 = [controlItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v17 = self[207];
  self[207] = v2;

  [(AVMobileChromelessControlsViewController *)self _updateControlItemsInclusionState];
  [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
  [(AVMobileChromelessControlsViewController *)self _updatePinnedAuxiliaryControlsIfNeeded];
}

- (void)_updateContentTabsInteractionEnablementState
{
  if (self)
  {
    playerController = [self playerController];
    status = [playerController status];
    [playerController contentDimensions];
    v7 = ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v4 >= 0 || (v4 - 1) < 0xFFFFFFFFFFFFFLL;
    v9 = (v3 < 0 || ((v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v3 - 1) > 0xFFFFFFFFFFFFELL;
    if (v9 || !v7)
    {
      isExternalPlaybackActive = [playerController isExternalPlaybackActive];
    }

    else
    {
      isExternalPlaybackActive = 1;
    }

    view = [self[219] view];
    [view setUserInteractionEnabled:(status == 2) & isExternalPlaybackActive];
  }
}

- (void)_updateContentTag
{
  if (self)
  {
    titlebarView = [self[154] titlebarView];
    playerController = [self playerController];
    status = [playerController status];
    if ([playerController hasLiveStreamingContent])
    {
      if ([playerController isAtLiveEdge] && status == 2)
      {
        v4 = +[AVMobileContentTag liveEdgeContentTag];
      }

      else
      {
        v4 = +[AVMobileContentTag liveContentTag];
      }

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    [titlebarView setContentTag:v5];
    [self[154] setNeedsLayout];
  }
}

- (void)_updateDisplayModeControlsForControlItems
{
  v2 = +[AVKitGlobalSettings shared];
  fullscreenController = [self fullscreenController];
  presentationState = [fullscreenController presentationState];

  if ([v2 isTVApp])
  {

    if (presentationState == 2)
    {
      return;
    }

    goto LABEL_3;
  }

  isAVKitTester = [v2 isAVKitTester];

  if (isAVKitTester)
  {
    v12 = presentationState == 2;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
LABEL_3:
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__AVMobileChromelessControlsViewController__updateDisplayModeControlsForControlItems__block_invoke;
    v13[3] = &unk_1E7209320;
    v14 = v5;
    v6 = v5;
    [self _enumerateControlItemsOfTypes:&unk_1EFF12F50 usingBlock:v13];
    v7 = [v6 count];
    if (v7 >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 subarrayWithRange:{0, v8}];
    displayModeControlsView = [self[154] displayModeControlsView];
    [displayModeControlsView setCustomActions:v9];
  }
}

- (void)_updateLegibleMediaSelectionControlInclusionState
{
  if (self)
  {
    v1 = self[158];
    playerController = [self playerController];
    [v1 setIncluded:{objc_msgSend(playerController, "hasLegibleMediaSelectionOptions")}];
  }
}

- (void)_updateLoadingAnimatorState
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  playerController = [self playerController];
  if ([playerController status] == 1)
  {

    v3 = self + 190;
LABEL_5:
    *v3 = 1;
    v5 = self[191];
    if (!v5 || ([v5 isRunning] & 1) == 0)
    {
      _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
      tintState = [_timelineSlider tintState];

      if (tintState >= 3)
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 134217984;
          *(location + 4) = tintState;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Error: unknown slider tint state %ld", location, 0xCu);
        }

        v8 = 2;
      }

      else
      {
        v8 = qword_18B6EC680[tintState];
      }

      objc_initWeak(location, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__AVMobileChromelessControlsViewController__updateLoadingAnimatorState__block_invoke;
      v10[3] = &unk_1E7209EA8;
      objc_copyWeak(&v11, location);
      [(AVMobileChromelessControlsViewController *)self _animateSliderToTintState:v8 duration:v10 completionHandler:1.0];
      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
    }

    return;
  }

  timeControlStatus = [playerController timeControlStatus];

  v3 = self + 190;
  if (timeControlStatus == 1)
  {
    goto LABEL_5;
  }

  if (*v3 == 1)
  {
    *v3 = 0;

    [(AVMobileChromelessControlsViewController *)self _animateSliderToTintState:0 duration:0.25 completionHandler:?];
  }
}

- (void)_updatePlaybackSpeedControlInclusion
{
  if (self)
  {
    playerController = [self playerController];
    if ([playerController hasLiveStreamingContent])
    {
      hasSeekableLiveStreamingContent = [playerController hasSeekableLiveStreamingContent];
    }

    else
    {
      hasSeekableLiveStreamingContent = 1;
    }

    playbackSpeedCollection = [self playbackSpeedCollection];
    if (playbackSpeedCollection)
    {
      v4 = +[AVKitGlobalSettings shared];
      if ([v4 playbackSpeedControlEnabled])
      {
        v5 = ([playerController isPlayingOnMatchPointDevice] ^ 1) & hasSeekableLiveStreamingContent;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    [self[159] setIncluded:v5];
  }
}

- (void)_updatePlaybackControlsViewInclusionState
{
  if (self)
  {
    excludedControls = [self excludedControls];
    playbackControlsView = [self[154] playbackControlsView];
    playerController = [self playerController];
    hasLiveStreamingContent = [playerController hasLiveStreamingContent];
    hasSeekableLiveStreamingContent = [playerController hasSeekableLiveStreamingContent];
    if (!hasLiveStreamingContent || hasSeekableLiveStreamingContent)
    {
      v6 = [self requiresLinearPlayback] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    [playbackControlsView setShowsPlayPauseButton:(excludedControls & 1) == 0];
    [playbackControlsView setShowsBackwardSecondaryPlaybackButton:((excludedControls & 2) == 0) & v6];
    [playbackControlsView setShowsForwardSecondaryPlaybackButton:((excludedControls & 4) == 0) & v6];
  }
}

- (void)_updateTimelineSliderEnablementState
{
  _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
  [_timelineSlider setEnabled:{objc_msgSend(self, "requiresLinearPlayback") ^ 1}];
}

- (void)_updateTitleAndDescriptionInfo
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  titlebarView = [self[154] titlebarView];
  playerController = [selfCopy playerController];
  player = [playerController player];
  currentItem = [player currentItem];
  contentTitle = [currentItem contentTitle];

  player2 = [playerController player];
  currentItem2 = [player2 currentItem];
  contentSubtitle = [currentItem2 contentSubtitle];

  if (![playerController avkit_isAVPlayerControllerOrSubclass])
  {
    v15 = 0;
    goto LABEL_29;
  }

  v37 = selfCopy;
  v38 = titlebarView;
  metadata = [playerController metadata];
  v36 = playerController;
  player3 = [playerController player];
  currentItem3 = [player3 currentItem];
  externalMetadata = [currentItem3 externalMetadata];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = externalMetadata;
  v13 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v13)
  {
    v15 = 0;
    goto LABEL_24;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v43;
  v39 = *MEMORY[0x1E6987808];
  v40 = *MEMORY[0x1E6987668];
  v17 = *MEMORY[0x1E6987640];
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v42 + 1) + 8 * i);
      identifier = [v19 identifier];
      v21 = identifier;
      if (!contentTitle && [identifier isEqualToString:v40] && (objc_msgSend(v19, "stringValue"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        v23 = objc_alloc(MEMORY[0x1E696AAB0]);
        stringValue = [v19 stringValue];
        contentTitle = [v23 initWithString:stringValue];
      }

      else if (!contentSubtitle && [v21 isEqualToString:v39] && (objc_msgSend(v19, "stringValue"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
      {
        v26 = objc_alloc(MEMORY[0x1E696AAB0]);
        stringValue = [v19 stringValue];
        contentSubtitle = [v26 initWithString:stringValue];
      }

      else
      {
        if (![v21 isEqualToString:v17])
        {
          goto LABEL_19;
        }

        [v19 stringValue];
        v15 = stringValue = v15;
      }

LABEL_19:
    }

    v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v14);
LABEL_24:

  selfCopy = v37;
  titlebarView = v38;
  playerController = v36;
  if (!contentTitle)
  {
    v27 = *MEMORY[0x1E69876B8];
    v28 = [metadata objectForKeyedSubscript:*MEMORY[0x1E69876B8]];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E696AAB0]);
      v30 = [metadata objectForKeyedSubscript:v27];
      contentTitle = [v29 initWithString:v30];

      if (!contentSubtitle)
      {
        goto LABEL_35;
      }
    }

    else
    {
      contentTitle = 0;
      if (!contentSubtitle)
      {
        goto LABEL_35;
      }
    }

LABEL_26:
    if (v15)
    {
      goto LABEL_28;
    }

LABEL_27:
    v15 = [metadata objectForKeyedSubscript:*MEMORY[0x1E6987690]];
    goto LABEL_28;
  }

  if (contentSubtitle)
  {
    goto LABEL_26;
  }

LABEL_35:
  v31 = *MEMORY[0x1E6987938];
  v32 = [metadata objectForKeyedSubscript:*MEMORY[0x1E6987938]];

  if (!v32)
  {
    contentSubtitle = 0;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v33 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = [metadata objectForKeyedSubscript:v31];
  contentSubtitle = [v33 initWithString:v34];

  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  [titlebarView setTitle:contentTitle];
  [titlebarView setSubtitle:contentSubtitle];
  [selfCopy[154] setNeedsLayout];
}

- (void)_updateTitleBarViewInclusionState
{
  excludedControls = [self excludedControls];
  titlebarView = [self[154] titlebarView];
  [titlebarView setShowsTitle:(excludedControls & 0x400) == 0];
  [titlebarView setShowsSubtitle:(excludedControls & 0x800) == 0];
  [titlebarView setShowsContentTag:(excludedControls & 0x1000) == 0];
  [titlebarView setNeedsLayout];
}

- (void)_updateVolumeControlsViewVolumeWithMuteStateUpdate:(id *)update
{
  if (update)
  {
    volumeControlsView = [update[154] volumeControlsView];
    if (([volumeControlsView isTracking] & 1) == 0)
    {
      playerController = [update playerController];
      isMuted = [playerController isMuted];

      playerController2 = [update playerController];
      isExternalPlaybackActive = [playerController2 isExternalPlaybackActive];

      volumeController = [update volumeController];
      [volumeController volume];
      v10 = v9;

      v11 = v10;
      if (isExternalPlaybackActive)
      {
        v11 = 1.0;
      }

      if (isMuted)
      {
        v11 = 0.0;
      }

      [volumeControlsView setVolume:a2 forUpdateReason:v11];
    }
  }
}

- (uint64_t)_updateWebKitExcludedObservationState
{
  v26[2] = *MEMORY[0x1E69E9840];
  playerController = [self playerController];
  v2 = *(self + 1208);
  if (!v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:self];
    v4 = *(self + 1208);
    *(self + 1208) = v3;

    v2 = *(self + 1208);
  }

  stopAllObservation = [v2 stopAllObservation];
  v6 = v24;
  if (v24)
  {
    stopAllObservation = [v24 avkit_isAVPlayerControllerOrSubclass];
    v6 = v24;
    if (stopAllObservation)
    {
      playerController2 = [self playerController];
      v8 = *(self + 1200);
      v26[0] = @"playbackSuspended";
      v26[1] = @"suspendedRate";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v10 = [v8 startObserving:playerController2 keyPaths:v9 observationHandler:&__block_literal_global_240];

      v11 = [*(self + 1200) startObserving:playerController2 keyPath:@"photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_245];
      v12 = *(self + 1200);
      v13 = *MEMORY[0x1E69879F8];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 startObservingNotificationForName:v13 object:0 notificationCenter:defaultCenter observationHandler:&__block_literal_global_247];

      v15 = [*(self + 1200) startObserving:playerController2 keyPath:@"player.currentItem.interstitialTimeRanges" observationHandler:&__block_literal_global_252_25058];
      v16 = *(self + 1200);
      v25[0] = @"playerController.player.currentItem.externalMetadata";
      v25[1] = @"playerController.metadata";
      v25[2] = @"playerController.player.currentItem.contentTitle";
      v25[3] = @"playerController.player.currentItem.contentSubtitle";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      v18 = [v16 startObserving:self keyPaths:v17 observationHandler:&__block_literal_global_266];

      v19 = [*(self + 1200) startObserving:self keyPath:@"playerController.atLiveEdge" observationHandler:&__block_literal_global_271];
      v20 = [*(self + 1200) startObserving:self keyPath:@"playerController.coordinatedPlaybackActive" includeInitialValue:0 observationHandler:&__block_literal_global_276];
      v21 = [*(self + 1200) startObserving:self keyPath:@"playerController.contentDimensions" observationHandler:&__block_literal_global_281];

      v6 = v24;
    }
  }

  return MEMORY[0x1EEE66BB8](stopAllObservation, v6);
}

void __75__AVMobileChromelessControlsViewController__webKitExcludedObservationSetup__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = [a4 oldValue];
  v6 = [v5 BOOLValue];

  v7 = [v10 playerController];
  v8 = [v7 coordinatedPlaybackActive];

  v9 = v10;
  if (v10 && v6 && (v8 & 1) == 0)
  {
    [objc_opt_class() autoHideInterval];
    [v10 flashControlsWithDuration:?];
    v9 = v10;
  }
}

void __75__AVMobileChromelessControlsViewController__webKitExcludedObservationSetup__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v2 = [v5[154] playbackControlsView];
    v3 = [v5 playerController];
    v4 = [v3 isAtLiveEdge];

    [v2 setBackwardSecondaryControlEnabled:1];
    [v2 setForwardSecondaryControlEnabled:v4 ^ 1u];
  }

  [(AVMobileChromelessControlsViewController *)v5 _updateJumpToLiveControlInclusionStateIfNeeded];
  [(AVMobileChromelessControlsViewController *)v5 _updateSliderMarkForLiveEdgeIfNeeded];
  [(AVMobileChromelessControlsViewController *)v5 _setNeedsControlsVisibilityStateUpdate];
  [(AVMobileChromelessControlsViewController *)v5 _updateContentTag];
}

- (void)_updateJumpToLiveControlInclusionStateIfNeeded
{
  if (self)
  {
    playerController = [self playerController];
    if ([playerController hasSeekableLiveStreamingContent])
    {
      v2 = [playerController isAtLiveEdge] ^ 1;
    }

    else
    {
      v2 = 0;
    }

    [self[161] setIncluded:v2];
  }
}

- (void)_updateSliderMarkForLiveEdgeIfNeeded
{
  if (self)
  {
    playerController = [self playerController];
    if ([playerController hasSeekableLiveStreamingContent] && (objc_msgSend(playerController, "isAtLiveEdge") & 1) == 0)
    {
      obja = *(self + 1672);
      _timelineSlider = [(AVMobileChromelessControlsViewController *)self _timelineSlider];
      [_timelineSlider maximumValue];
      v6 = v5;

      if (!obja || ([obja startValue], v3 = obja, vabds_f32(*&v7, v6) >= 0.00000011921))
      {
        *&v7 = v6;
        v8 = [AVMobileSliderMark liveEdgeMarkAtValue:v7];

        v3 = v8;
      }
    }

    else
    {
      v3 = 0;
    }

    obj = v3;
    if (*(self + 1672) != v3)
    {
      objc_storeStrong((self + 1672), v3);
      [(AVMobileChromelessControlsViewController *)self _updateTimelineViewSliderMarksIfNeeded];
    }
  }
}

- (void)_updateTimelineViewSliderMarksIfNeeded
{
  v70 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  playerController = [(AVMobileSliderMark *)selfCopy playerController];
  v58 = playerController;
  if ([playerController avkit_isAVPlayerControllerOrSubclass])
  {
    v4 = array;
    playerController2 = [(AVMobileSliderMark *)selfCopy playerController];
    timeline = [playerController2 timeline];
    timeline2 = [playerController2 timeline];

    interstitialController = [playerController2 interstitialController];
    currentInterstitialTimeRange = [interstitialController currentInterstitialTimeRange];

    if (timeline2)
    {
      v10 = selfCopy;
      interstitialController2 = [playerController2 interstitialController];
      currentInterstitialTimeRange2 = [interstitialController2 currentInterstitialTimeRange];
      interstice = [currentInterstitialTimeRange2 interstice];
      isCollapsedInTimeLine = [interstice isCollapsedInTimeLine];

      if (isCollapsedInTimeLine)
      {
        selfCopy = v10;
      }

      else
      {
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __85__AVMobileChromelessControlsViewController__addTimelineViewSliderMarksToSliderMarks___block_invoke;
        v67[3] = &unk_1E7209258;
        v68 = v4;
        v69 = v10;
        selfCopy = v10;
        [timeline enumerateSegments:v67];
      }
    }

    else
    {
      if (currentInterstitialTimeRange)
      {
        goto LABEL_17;
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      player = [playerController2 player];
      currentItem = [player currentItem];
      interstitialController2 = [currentItem interstitialTimeRanges];

      v17 = [interstitialController2 countByEnumeratingWithState:&v63 objects:v67 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v64;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v64 != v19)
            {
              objc_enumerationMutation(interstitialController2);
            }

            v21 = [(AVMobileChromelessControlsViewController *)selfCopy _sliderMarkForInterstitialTimeRange:1 isCollapsed:?];
            [v4 addObject:v21];
          }

          v18 = [interstitialController2 countByEnumeratingWithState:&v63 objects:v67 count:16];
        }

        while (v18);
      }
    }

LABEL_17:
    if ([playerController2 hasSeekableLiveStreamingContent] && selfCopy[41]._markType)
    {
      [v4 addObject:?];
    }

    playerController = v58;
  }

  v59 = array;
  _timelineSlider = [(AVMobileChromelessControlsViewController *)selfCopy _timelineSlider];
  playerController3 = [(AVMobileSliderMark *)selfCopy playerController];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v57 = _timelineSlider;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    playerController4 = [(AVMobileSliderMark *)selfCopy playerController];
    photosensitivityRegions = [playerController4 photosensitivityRegions];

    obj = photosensitivityRegions;
    v27 = [photosensitivityRegions countByEnumeratingWithState:&v63 objects:v67 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v64;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v64 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v63 + 1) + 8 * j);
          [v31 risk];
          if (v32 >= 0.5)
          {
            colors = [v31 colors];
            if (v31)
            {
              [v31 timeRange];
              time = v61[3];
              Seconds = CMTimeGetSeconds(&time);
              [v31 timeRange];
            }

            else
            {
              memset(&v61[2].epoch, 0, 32);
              *&time.value = *&v61[3].value;
              time.epoch = 0;
              Seconds = CMTimeGetSeconds(&time);
              memset(v61, 0, 24);
            }

            time = v61[0];
            v35 = CMTimeGetSeconds(&time);
            v36 = [(AVMobileChromelessControlsViewController *)selfCopy _normalizeTimeValue:v35];
            v37 = [(AVMobileChromelessControlsViewController *)selfCopy _normalizeTimeValue:?];
            v38 = MEMORY[0x1E69DC888];
            v39 = [colors objectAtIndexedSubscript:0];
            [v39 doubleValue];
            v41 = v40;
            v42 = [colors objectAtIndexedSubscript:1];
            [v42 doubleValue];
            v44 = v43;
            [colors objectAtIndexedSubscript:2];
            v46 = v45 = selfCopy;
            [v46 doubleValue];
            v48 = v47;
            v49 = [colors objectAtIndexedSubscript:3];
            [v49 doubleValue];
            v51 = [v38 colorWithRed:v41 green:v44 blue:v48 alpha:v50];

            selfCopy = v45;
            v52 = [AVMobileSliderMark alloc];
            *&v53 = v36;
            *&v54 = v37;
            v55 = [(AVMobileSliderMark *)v52 initWithStartValue:v51 endValue:v51 filledColor:2 unfilledColor:v53 markWithType:v54];
            [v59 addObject:v55];
          }
        }

        v28 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v28);
    }

    _timelineSlider = v57;
    [v57 setSliderMarks:v59];
    playerController = v58;
  }

  _timelineSlider2 = [(AVMobileChromelessControlsViewController *)selfCopy _timelineSlider];
  [_timelineSlider2 setSliderMarks:v59];
}

- (float)_normalizeTimeValue:(uint64_t)value
{
  v3 = *(value + 1464);
  v4 = 0.0;
  if (v3)
  {
    [v3 minTime];
    v7 = v6;
    v8 = v6;
    [*(value + 1464) maxTime];
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v11 = v9 - v7;
      if (v11 > 0.0)
      {
        return (a2 - v7) / v11;
      }
    }
  }

  return v4;
}

void __85__AVMobileChromelessControlsViewController__addTimelineViewSliderMarksToSliderMarks___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 interstitialTimeRange];
  if ([v8 isPrimary])
  {
    [v8 isCollapsed];
  }

  else
  {
    v4 = [v8 supplementsPrimaryContent];
    v5 = [v8 isCollapsed];
    if (v3 && (v4 & 1) == 0)
    {
      v6 = *(a1 + 32);
      v7 = [(AVMobileChromelessControlsViewController *)*(a1 + 40) _sliderMarkForInterstitialTimeRange:v3 isCollapsed:v5];
      [v6 addObject:v7];
    }
  }
}

- (AVMobileSliderMark)_sliderMarkForInterstitialTimeRange:(char)range isCollapsed:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      [v5 timeRange];
    }

    else
    {
      memset(&v21[4], 0, 24);
    }

    time = *&v21[4];
    Seconds = CMTimeGetSeconds(&time);
    v8 = [(AVMobileChromelessControlsViewController *)self _normalizeTimeValue:?];
    playerController = [(AVMobileSliderMark *)self playerController];
    timeline = [playerController timeline];
    v11 = [AVMobileSliderMark alloc];
    if (!timeline || (range & 1) != 0)
    {
      *&v12 = v8;
      self = [AVMobileSliderMark interstitialMarkAtValue:v12];
    }

    else
    {
      if (v6)
      {
        [v6 timeRange];
      }

      else
      {
        memset(v21, 0, 32);
      }

      time = *&v21[1];
      v13 = CMTimeGetSeconds(&time);
      v14 = [(AVMobileChromelessControlsViewController *)self _normalizeTimeValue:?];
      v15 = [AVMobileSliderMark alloc];
      systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
      systemYellowColor2 = [MEMORY[0x1E69DC888] systemYellowColor];
      *&v18 = v8;
      *&v19 = v14;
      self = [(AVMobileSliderMark *)v15 initWithStartValue:systemYellowColor endValue:systemYellowColor2 filledColor:2 unfilledColor:v18 markWithType:v19];

      v11 = systemYellowColor;
    }
  }

  return self;
}

void __75__AVMobileChromelessControlsViewController__webKitExcludedObservationSetup__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = [a4 object];
  v6 = [v5 interstitialPlayer];
  v7 = [(AVMobileSliderMark *)v10 playerController];
  v8 = [v7 interstitialController];
  v9 = [v8 interstitialPlayer];

  if (v6 == v9)
  {
    [(AVMobileChromelessControlsViewController *)v10 _updateTimeResolver];
    [(AVMobileChromelessControlsViewController *)v10 _updateTimelineViewSliderMarksIfNeeded];
  }
}

void __71__AVMobileChromelessControlsViewController__updateLoadingAnimatorState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [AVMobileChromelessControlsViewController _updateLoadingAnimatorState];
}

- (void)_animateSliderToTintState:(void *)state duration:(double)duration completionHandler:
{
  stateCopy = state;
  v8 = *(self + 1528);
  if (v8 && [v8 isRunning] && objc_msgSend(*(self + 1528), "isInterruptible"))
  {
    [*(self + 1528) stopAnimation:1];
    [*(self + 1528) finishAnimationAtPosition:2];
    v9 = *(self + 1528);
    *(self + 1528) = 0;
  }

  timelineView = [*(self + 1232) timelineView];
  objc_initWeak(&location, timelineView);

  v11 = objc_alloc(MEMORY[0x1E69DD278]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__AVMobileChromelessControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke;
  v20[3] = &unk_1E7209A38;
  objc_copyWeak(v21, &location);
  v21[1] = a2;
  v12 = [v11 initWithDuration:3 curve:v20 animations:duration];
  v13 = *(self + 1528);
  *(self + 1528) = v12;

  if (stateCopy)
  {
    v14 = *(self + 1528);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __97__AVMobileChromelessControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_2;
    v18 = &unk_1E7209280;
    v19 = stateCopy;
    [v14 addCompletion:&v15];
  }

  [*(self + 1528) startAnimation];
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __97__AVMobileChromelessControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained slider];
  [v2 setTintState:*(a1 + 40)];
}

void __97__AVMobileChromelessControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AVMobileChromelessControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_3;
  block[3] = &unk_1E72099C8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__AVMobileChromelessControlsViewController__updateDisplayModeControlsForControlItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 action];
  v5 = [v3 title];
  v6 = [v3 image];
  v7 = [v3 identifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__AVMobileChromelessControlsViewController__updateDisplayModeControlsForControlItems__block_invoke_2;
  v15[3] = &unk_1E72092F8;
  v16 = v4;
  v8 = v4;
  v9 = [AVAction actionWithTitle:v5 image:v6 identifier:v7 handler:v15];

  v10 = [v3 accessibilityLabel];
  [v9 setAccessibilityLabel:v10];

  v11 = [v3 accessibilityHint];
  [v9 setAccessibilityHint:v11];

  v12 = [v3 accessibilityIdentifier];
  [v9 setAccessibilityIdentifier:v12];

  v13 = [v3 tintColor];
  [v9 setTintColor:v13];

  v14 = [v3 menu];

  [v9 setContextMenu:v14];
  [*(a1 + 32) addObject:v9];
}

uint64_t __85__AVMobileChromelessControlsViewController__updateDisplayModeControlsForControlItems__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_27(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = a2;
  v5 = [a4 userInfo];
  v6 = [v8 viewControllerNotificationInfoKey];
  v7 = [v5 objectForKey:v6];

  if (v7 == v8)
  {
    [v8 flashControlsWithDuration:8.0];
  }
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_26(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v15 = [a4 userInfo];
  v6 = [v15 objectForKeyedSubscript:@"AVNowPlayingInfoSkipCommandDirectionKey"];
  v7 = [v6 intValue];

  v8 = [v15 objectForKeyedSubscript:@"AVNowPlayingInfoSkipCommandInterval"];
  if (v5)
  {
    v9 = [v5[154] playbackControlsView];
    v10 = v9;
    if (v8)
    {
      v11 = [v8 intValue];
      if (v7)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v11;
      }

      Seconds = v12;
    }

    else if (v7)
    {
      if (v9)
      {
        [v9 forwardSecondaryControlSkipInterval];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = CMTimeGetSeconds(&time);
    }

    else
    {
      if (v9)
      {
        [v9 backwardSecondaryControlSkipInterval];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      Seconds = -CMTimeGetSeconds(&time);
    }

    v14 = [v5 playerController];
    [v14 seekByTimeInterval:Seconds];
    if (v7)
    {
      [v10 triggerForwardSecondaryControlIconAnimation];
    }

    else
    {
      [v10 triggerBackwardSecondaryControlIconAnimation];
    }
  }
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
  [(AVMobileChromelessControlsViewController *)v2 _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
  [(AVMobileChromelessControlsViewController *)v2 _updateVolumeControlsViewAllowsVolumeAdjustmentState];
  [(AVMobileChromelessControlsViewController *)v2 _updateDisplayModeControlsButtonsInclusion];
  [(AVMobileChromelessControlsViewController *)v2 _updateContentTabsInteractionEnablementState];
  [(AVMobileChromelessControlsViewController *)v2 _updateAudibleMediaSelectionControlInclusionState];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updateTimelineValues];
  [(AVMobileChromelessControlsViewController *)v2 _updateTimelineViewSliderMarksIfNeeded];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
  [v2 _timelineSliderTrackingStateDidChange];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_21(uint64_t a1, void *a2)
{
  v4 = a2;
  [(AVMobileChromelessControlsViewController *)v4 _updateAudibleMediaSelectionControlInclusionState];
  [(AVMobileChromelessControlsViewController *)v4 _updateAudibleMediaSelectionMenu];
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 hapticsEnabled];

  if (v3)
  {
    [(AVMobileChromelessControlsViewController *)v4 _updateHasHapticTrackSelectionMenu];
  }
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  [(AVMobileChromelessControlsViewController *)v6 _updateAudibleMediaSelectionControlInclusionState];
  v2 = +[AVKitGlobalSettings shared];
  if (![v2 playerTipsEnabled] || (objc_msgSend(v6, "tipsState") & 2) != 0)
  {
  }

  else
  {
    v3 = [v6 playerController];
    v4 = [v3 audioMediaSelectionOptions];
    v5 = [v4 count];

    if (v5)
    {
      [v6 setConfigureTipsUponNextOverflowControlUpdate:1];
    }
  }
}

uint64_t __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(AVMobileChromelessControlsViewController *)v2 _auxiliaryControlsView];
  [v3 updateOverflowMenu];

  v4 = v2[170];

  return [v4 updateContextMenu];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_15(uint64_t a1, void *a2)
{
  v7 = a2;
  [(AVMobileChromelessControlsViewController *)v7 _updatePlayPauseButtonIcon];
  v2 = v7;
  if (v7)
  {
    v3 = [v7 playerController];
    v4 = [v3 coordinatedPlaybackActive];
    if ([v3 avkit_isAVPlayerControllerOrSubclass])
    {
      if (v4)
      {
        v5 = [v3 timeControlStatus];
        [objc_opt_class() autoHideInterval];
        [v7 flashControlsWithDuration:?];
        if (v5 == 1)
        {
          [v7[195] invalidate];
          v6 = v7[195];
          v7[195] = 0;
        }
      }
    }

    v2 = v7;
  }
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_13(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v5 = [a4 oldValue];
  v6 = [v5 BOOLValue];

  v7 = [v9 playerController];
  v8 = [v7 isPlaying];

  if ([v9 temporarilyVisible] && v6 != v8)
  {
    if (v8)
    {
      if (v9)
      {
        [objc_opt_class() autoHideInterval];
        [v9 flashControlsWithDuration:?];
      }
    }

    else
    {
      [(AVMobileChromelessControlsViewController *)v9 _resetControlsVisibilityTimer];
    }
  }
}

- (void)_resetControlsVisibilityTimer
{
  if (self)
  {
    [*(self + 1560) invalidate];
    v2 = *(self + 1560);
    *(self + 1560) = 0;
  }
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updateLoadingAnimatorState];
  [(AVMobileChromelessControlsViewController *)v2 _updateContentTabsInteractionEnablementState];
  [(AVMobileChromelessControlsViewController *)v2 _updateContentTag];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_10(uint64_t a1, void *a2)
{
  val = a2;
  [(AVMobileChromelessControlsViewController *)&val->super.isa _updateSecondaryPlaybackControlsTypes];
  [(AVMobileChromelessControlsViewController *)&val->super.isa _updatePlaybackControlsViewInclusionState];
  [(AVMobileChromelessControlsViewController *)&val->super.isa _updatePlaybackSpeedControlInclusion];
  if (!val)
  {
    [(AVMobileChromelessControlsViewController *)0 _updateSliderMarkForLiveEdgeIfNeeded];
    [(AVMobileChromelessControlsViewController *)0 _updateTimelineViewSliderMarksIfNeeded];
    [(AVMobileChromelessControlsViewController *)0 _setNeedsControlsVisibilityStateUpdate];
    goto LABEL_10;
  }

  v2 = [(AVMobileChromelessControlsViewController *)val _timelineSlider];
  [v2 maximumValue];
  v4 = v3;
  v5 = [(AVMobileSliderMark *)val playerController];
  v6 = [v5 hasSeekableLiveStreamingContent];

  if (v6)
  {
    if ([(AVMobileChromelessControlsViewController *)val _isLandscape])
    {
      v8 = 0.015;
    }

    else
    {
      v8 = 0.033;
    }

    [v2 maximumValue];
    v10 = v9;
    [v2 maximumValue];
    v7 = v11 + v10 * v8;
    v4 = v7;
  }

  *&v7 = v4;
  [v2 setTotalValue:v7];

  [(AVMobileChromelessControlsViewController *)val _updateSliderMarkForLiveEdgeIfNeeded];
  [(AVMobileChromelessControlsViewController *)val _updateTimelineViewSliderMarksIfNeeded];
  [(AVMobileChromelessControlsViewController *)val _setNeedsControlsVisibilityStateUpdate];
  v12 = [(AVMobileSliderMark *)val playerController];
  v13 = [v12 hasSeekableLiveStreamingContent];

  p_isa = &val->super.isa;
  if (!*&val[32]._startValue && ((val[30]._markType != 0) & v13) == 1)
  {
    v15 = [AVButton buttonWithAccessibilityIdentifier:@"Jump to Live" isFirstGeneration:0];
    filledColor = val[33]._filledColor;
    val[33]._filledColor = v15;

    [(UIColor *)val[33]._filledColor setAccessibilityIdentifier:@"Jump to Live"];
    v17 = val[33]._filledColor;
    v18 = AVLocalizedString(@"Jump to Live");
    [(UIColor *)v17 setAccessibilityLabel:v18];

    [(UIColor *)val[33]._filledColor addTarget:val action:sel__handleJumpToLiveAction forControlEvents:64];
    [(UIColor *)val[33]._filledColor setImageName:@"forward.end.fill.tv"];
    [(AVMobileChromelessControlsViewController *)val _configureAuxiliaryControlButton:?];
    v19 = [AVMobileAuxiliaryControl controlWithView:val[33]._filledColor displayPriority:0 identifier:@"AVJumpToLiveControl"];
    v20 = *&val[32]._startValue;
    *&val[32]._startValue = v19;

    [*&val[32]._startValue setIncluded:1];
    objc_initWeak(&location, val);
    v21 = MEMORY[0x1E69DC628];
    v22 = AVLocalizedString(@"OVERFLOW_MENU_JUMP_TO_LIVE");
    v23 = MEMORY[0x1E69DCAB8];
    v24 = AVBundle();
    v25 = [v23 imageNamed:@"forward.end.fill.tv" inBundle:v24];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75__AVMobileChromelessControlsViewController__setUpJumpToLiveControlIfNeeded__block_invoke;
    v29[3] = &unk_1E7209230;
    objc_copyWeak(&v30, &location);
    v26 = [v21 actionWithTitle:v22 image:v25 identifier:0 handler:v29];
    v27 = *&val[34]._startValue;
    *&val[34]._startValue = v26;

    [(AVMobileChromelessControlsViewController *)&val->super.isa _updateJumpToLiveControlInclusionStateIfNeeded];
    [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControls];
    [(AVMobileChromelessControlsViewController *)val _updatePinnedAuxiliaryControlsIfNeeded];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
LABEL_10:
    p_isa = &val->super.isa;
  }

  [(AVMobileChromelessControlsViewController *)p_isa _updateJumpToLiveControlInclusionStateIfNeeded];
}

- (void)_configureAuxiliaryControlButton:(void *)button
{
  v3 = button[153];
  v4 = a2;
  buttonFont = [v3 buttonFont];
  [v4 setInlineFont:buttonFont];

  v6 = MEMORY[0x1E69DC888];
  isOverVideo = [v4 isOverVideo];
  traitCollection = [button traitCollection];
  v8 = [v6 avkit_tintColorForControlElementIsOverVideo:isOverVideo withUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [v4 setTintColor:v8];
}

void __75__AVMobileChromelessControlsViewController__setUpJumpToLiveControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleJumpToLiveAction];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updateContentTag];
  [(AVMobileChromelessControlsViewController *)v2 _updateSecondaryPlaybackControlsTypes];
  [(AVMobileChromelessControlsViewController *)v2 _updatePlaybackControlsViewInclusionState];
  [(AVMobileChromelessControlsViewController *)v2 _updatePlaybackSpeedControlInclusion];
  [(AVMobileChromelessControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
  [(AVMobileChromelessControlsViewController *)v2 _updateVolumeControlsViewMutedState];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  val = a2;
  v5 = a4;
  v6 = [v5 object];
  v7 = [val volumeController];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [v5 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"AVVolumeControllerVolumeDidChangeNotificationShowHUDKey"];

    if (v10)
    {
      v11 = [v10 BOOLValue];
    }

    else
    {
      v11 = 1;
    }

    if (val)
    {
      v12 = [val[154] volumeControlsView];
      v13 = [val playerController];
      if (v11)
      {
        v14 = [val[154] volumeControlsView];
        [(AVMobileChromelessControlsViewController *)val _animateVolumeEmphasisTo:?];
        [val[180] invalidate];
        v15 = val[180];
        val[180] = 0;

        if (([v14 isTracking] & 1) == 0)
        {
          objc_initWeak(&location, val);
          v16 = MEMORY[0x1E695DFF0];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __106__AVMobileChromelessControlsViewController__animateVolumeControlsToEmphasizedWithTransformToIdentityDelay__block_invoke;
          v20[3] = &unk_1E7209DA8;
          objc_copyWeak(&v21, &location);
          v17 = [v16 scheduledTimerWithTimeInterval:0 repeats:v20 block:3.0];
          v18 = val[180];
          val[180] = v17;

          objc_destroyWeak(&v21);
          objc_destroyWeak(&location);
        }

        if ([v13 isMuted])
        {
          [v13 setMuted:0];
          [v12 setMute:0];
        }

        [(AVMobileChromelessControlsViewController *)val _temporarilyShowVolumeSlider];
      }

      [(AVMobileChromelessControlsViewController *)val _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
    }
  }
}

void __106__AVMobileChromelessControlsViewController__animateVolumeControlsToEmphasizedWithTransformToIdentityDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)WeakRetained _animateVolumeEmphasisTo:?];

  v3 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)v3 _volumeControlsViewInteractionDidContinue];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = [a4 oldValue];
  v6 = [v5 BOOLValue];

  v7 = [v10 pipController];
  v8 = [v7 isPictureInPictureActive];

  v9 = v6 ^ v8;
  if ((v6 & 1) != 0 || !v9)
  {
    [(AVMobileChromelessControlsViewController *)v10 _updateLayoutMargins];
  }

  else
  {
    [(AVMobileChromelessControlsViewController *)v10 _setContentTabPresented:0 animated:?];
  }

  if ((v6 & v9) == 1)
  {
    [(AVMobileChromelessControlsViewController *)v10 _updatePinnedAuxiliaryControlsIfNeeded];
    [(AVMobileChromelessControlsViewController *)v10 _updateAuxiliaryControlSpacing];
  }

  [(AVMobileChromelessControlsViewController *)v10 _updatePrefersSystemVolumeHUDHidden];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileChromelessControlsViewController *)v2 _updateVolumeControlsViewAllowsVolumeAdjustmentState];
  [(AVMobileChromelessControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
}

void __61__AVMobileChromelessControlsViewController__observationSetup__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v20 = [a4 userInfo];
    v5 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
    [v5 CGRectValue];
    v7 = v6;

    v8 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69DDFE0]];
    v9 = [v8 BOOLValue];

    v10 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];
    v11 = [v10 longValue];

    v12 = [v20 objectForKeyedSubscript:*MEMORY[0x1E69DDF40]];
    [v12 doubleValue];
    v14 = v13;

    if (*(a2 + 1400) != v7)
    {
      *(a2 + 1400) = v7;
      [(AVMobileChromelessControlsViewController *)a2 _updateLayoutMargins];
      if ((v9 & 1) == 0)
      {
        v15 = [*(a2 + 1232) window];

        if (v15)
        {
          v16 = *(a2 + 1408);
          if ([v16 isRunning] && objc_msgSend(v16, "isInterruptible"))
          {
            [v16 stopAnimation:0];
            [v16 finishAnimationAtPosition:2];
          }

          objc_initWeak(&location, a2);
          v17 = objc_alloc(MEMORY[0x1E69DD278]);
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __79__AVMobileChromelessControlsViewController__animateKeyboardAvoidance_duration___block_invoke;
          v21[3] = &unk_1E7209EA8;
          objc_copyWeak(&v22, &location);
          v18 = [v17 initWithDuration:v11 curve:v21 animations:v14];
          [v18 startAnimation];
          v19 = *(a2 + 1408);
          *(a2 + 1408) = v18;

          objc_destroyWeak(&v22);
          objc_destroyWeak(&location);
        }
      }
    }
  }
}

void __79__AVMobileChromelessControlsViewController__animateKeyboardAvoidance_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained viewIfLoaded];

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
}

- (void)_setUpAuxiliaryControlsViewIfNeeded
{
  v2 = *(self + 1232);
  if (v2)
  {
    auxiliaryControlsView = [v2 auxiliaryControlsView];

    if (!auxiliaryControlsView)
    {
      v6 = objc_alloc_init(AVMobileAuxiliaryControlsView);
      [(AVMobileAuxiliaryControlsView *)v6 setAutoresizingMask:0];
      [(AVMobileAuxiliaryControlsView *)v6 setDelegate:self];
      [(AVView *)v6 setAutomaticallyUpdatesSubviewContentIntersections:1];
      prefersFullScreenStyleForEmbeddedMode = [self prefersFullScreenStyleForEmbeddedMode];
      v5 = 0.0;
      if (prefersFullScreenStyleForEmbeddedMode)
      {
        v5 = *(self + 1848);
      }

      [(AVMobileAuxiliaryControlsView *)v6 setAvkit_extendedDynamicRangeGain:v5];
      [*(self + 1232) setAuxiliaryControlsView:v6];
    }
  }
}

- (void)_setUpAnalysisControlIfNeeded
{
  if (val && *(val + 154) && !*(val + 162) && *(val + 1809) == 1)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x1E69DC628];
    v3 = AVLocalizedString(@"OVERFLOW_MENU_LIVE_TEXT_TITLE");
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.viewfinder"];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __73__AVMobileChromelessControlsViewController__setUpAnalysisControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 172);
    *(val + 172) = v5;

    v7 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisControl", v9, v10, v11, v12];
    v8 = *(val + 162);
    *(val + 162) = v7;

    [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControls];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_setUpCopySubjectControlIfNeeded
{
  if (val && *(val + 154) && !*(val + 163))
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x1E69DC628];
    v3 = AVLocalizedString(@"OVERFLOW_MENU_COPY_SUBJECT");
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.dashed.rectangle"];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __76__AVMobileChromelessControlsViewController__setUpCopySubjectControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 173);
    *(val + 173) = v5;

    v7 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisCopySubjectControl", v9, v10, v11, v12];
    v8 = *(val + 163);
    *(val + 163) = v7;

    [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControls];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)_setUpVisualLookupControlIfNeeded
{
  if (val && *(val + 154) && !*(val + 164))
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x1E69DC628];
    v3 = AVLocalizedString(@"OVERFLOW_MENU_VISUAL_LOOKUP");
    v4 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"info.circle.and.sparkles"];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __77__AVMobileChromelessControlsViewController__setUpVisualLookupControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 174);
    *(val + 174) = v5;

    v7 = [AVMobileAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisVisualLookupControl", v9, v10, v11, v12];
    v8 = *(val + 164);
    *(val + 164) = v7;

    [(AVMobileChromelessControlsViewController *)val _updateAuxiliaryControls];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __62__AVMobileChromelessControlsViewController__loadControlsViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 controlsViewControllerDidUpdateLayoutGuides:v3];
}

void __77__AVMobileChromelessControlsViewController__setUpVisualLookupControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventManager];
  [v1 sendActionsForEvent:@"AVControlsVisualLookupMenuItemPressedEvent"];
}

void __76__AVMobileChromelessControlsViewController__setUpCopySubjectControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventManager];
  [v1 sendActionsForEvent:@"AVControlsCopySubjectMenuItemPressedEvent"];
}

void __73__AVMobileChromelessControlsViewController__setUpAnalysisControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained delegate];
    v3 = objc_opt_respondsToSelector();

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 delegate];
      [v4 controlsViewControllerDidPressLiveTextButton:v5];

      WeakRetained = v5;
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v3 viewDidLayoutSubviews];
  if (self && !self->_needsTimeResolverUpdate)
  {
    self->_needsTimeResolverUpdate = 1;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__AVMobileChromelessControlsViewController__setNeedsTimeResolverUpdate__block_invoke;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
}

void __71__AVMobileChromelessControlsViewController__setNeedsTimeResolverUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1496] = 0;
    v2 = WeakRetained;
    [(AVMobileChromelessControlsViewController *)WeakRetained _updateTimeResolver];
    WeakRetained = v2;
  }
}

- (void)loadView
{
  obj = objc_alloc_init(AVMobileChromelessControlsView);
  [(AVMobileChromelessControlsView *)obj setDelegate:self];
  [(AVMobileChromelessControlsView *)obj setPreservesSuperviewLayoutMargins:0];
  [(AVMobileChromelessControlsView *)obj setInsetsLayoutMarginsFromSafeArea:0];
  v3 = 1;
  [(AVView *)obj setHidden:1];
  [(AVView *)obj setAutomaticallyUpdatesSubviewContentIntersections:1];
  [(AVMobileChromelessControlsViewController *)self setView:obj];
  objc_storeStrong(&self->_view, obj);
  contentTabPresentationContext = self->_contentTabPresentationContext;
  if (contentTabPresentationContext)
  {
    v3 = [(AVMobileContentTabPresentationContext *)contentTabPresentationContext state]== 1;
  }

  [(AVView *)self->_view setIgnoresTouches:v3];
}

- (void)updateVisibilityPolicy:(unint64_t)policy animated:(BOOL)animated
{
  visibilityPolicy = [(AVMobileControlsViewController *)self visibilityPolicy];
  if (visibilityPolicy != policy)
  {
    v8 = visibilityPolicy;
    v9.receiver = self;
    v9.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v9 setVisibilityPolicy:policy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        if (policy == 2)
        {
          if (v8 == 1)
          {
            [(AVMobileChromelessControlsViewController *)self _hideControlsIfPossible];
          }

          else if (!v8)
          {
            [objc_opt_class() autoHideInterval];
            [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
          }
        }

        [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
        if (!animated)
        {
          [(AVMobileChromelessControlsViewController *)self _updateControlsVisibilityStateIfNeededAnimated:MEMORY[0x1E695E110]];
        }
      }
    }
  }
}

- (void)_hideControlsIfPossible
{
  if (self)
  {
    [self setTemporarilyVisible:0];
    *(self + 1416) = 0;
    [(AVMobileChromelessControlsViewController *)self _resetVolumeSliderTemporarilyVisibleTimer];
    [*(self + 1560) invalidate];
    v2 = *(self + 1560);
    *(self + 1560) = 0;

    [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
  }
}

- (void)toggleVisibility:(id)visibility
{
  if ([(AVMobileControlsViewController *)self temporarilyVisible])
  {

    [(AVMobileChromelessControlsViewController *)self _hideControlsIfPossible];
  }

  else if (self)
  {
    [objc_opt_class() autoHideInterval];

    [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)scheduleTips
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__AVMobileChromelessControlsViewController_scheduleTips__block_invoke;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  [(AVTipKitControlsViewController *)self scheduleTipsIfNeededWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __56__AVMobileChromelessControlsViewController_scheduleTips__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)WeakRetained _configureTips];
}

- (void)didBeginIndirectUserInteraction
{
  [objc_opt_class() autoHideInterval];

  [(AVMobileChromelessControlsViewController *)self flashControlsWithDuration:?];
}

- (void)flashControlsWithDuration:(double)duration
{
  [(AVMobileChromelessControlsViewController *)self _resetControlsVisibilityTimer];
  pipController = [(AVMobileControlsViewController *)self pipController];
  isPictureInPictureActive = [pipController isPictureInPictureActive];

  if ((isPictureInPictureActive & 1) == 0)
  {
    playerController = [(AVMobileControlsViewController *)self playerController];
    isPlaying = [playerController isPlaying];

    v10 = self && (contentTabPresentationContext = self->_contentTabPresentationContext) != 0 && [(AVMobileContentTabPresentationContext *)contentTabPresentationContext state]!= 1 && [(AVMobileContentTabPresentationContext *)self->_contentTabPresentationContext presentationLayout]== 0;
    if (isPlaying)
    {
      if (!v10)
      {
        objc_initWeak(&location, self);
        v11 = MEMORY[0x1E695DFF0];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __70__AVMobileChromelessControlsViewController_flashControlsWithDuration___block_invoke;
        v16[3] = &unk_1E7209DA8;
        objc_copyWeak(&v17, &location);
        v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:v16 block:duration];
        visibilityTimer = self->_visibilityTimer;
        self->_visibilityTimer = v12;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }

    [(AVMobileControlsViewController *)self setTemporarilyVisible:1];
    [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__AVMobileChromelessControlsViewController_flashControlsWithDuration___block_invoke_2;
    v14[3] = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    [(AVTipKitControlsViewController *)self showTipsIfNeededWithCompletion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __70__AVMobileChromelessControlsViewController_flashControlsWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setTemporarilyVisible:0];
    [(AVMobileChromelessControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
    WeakRetained = v2;
  }
}

void __70__AVMobileChromelessControlsViewController_flashControlsWithDuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileChromelessControlsViewController *)WeakRetained _configureTips];
}

- (void)dismissCustomInfoViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = self->_contentTabPresentationContext;
  v10 = v5;
  if (v5)
  {
    v6 = [(AVMobileContentTabPresentationContext *)v5 state]== 0;
    v5 = v10;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([(AVMobileContentTabPresentationContext *)v5 state]== 2)
  {
    transitionContext = [(AVMobileContentTabPresentationContext *)v10 transitionContext];
    v9 = [transitionContext direction] == 0;
  }

  else
  {
    v9 = 0;
  }

  if ((v7 | v9))
  {
    [(AVMobileChromelessControlsViewController *)self _setContentTabPresented:animatedCopy animated:?];
  }
}

- (void)setMediaPresentationSettingsCustomItems:(id)items
{
  if (self->_mediaPresentationSettingsCustomItems != items)
  {
    v4 = [items copy];
    mediaPresentationSettingsCustomItems = self->_mediaPresentationSettingsCustomItems;
    self->_mediaPresentationSettingsCustomItems = v4;

    MEMORY[0x1EEE66BB8](v4, mediaPresentationSettingsCustomItems);
  }
}

- (void)setPrefersMediaPresentationSettingsMenuGroupTitle:(id)title
{
  titleCopy = title;
  if (self->_prefersMediaPresentationSettingsMenuGroupTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_prefersMediaPresentationSettingsMenuGroupTitle, title);
    titleCopy = v6;
  }
}

- (void)setPrefersFullScreenStyleForEmbeddedMode:(BOOL)mode
{
  if (self->_prefersFullScreenStyleForEmbeddedMode != mode)
  {
    self->_prefersFullScreenStyleForEmbeddedMode = mode;
    [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
    [(AVMobileChromelessControlsViewController *)self _updateExtendedDynamicRangeGain];

    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineLabelPositions];
  }
}

- (void)_updateExtendedDynamicRangeGain
{
  if (self)
  {
    v2 = 0.0;
    if ([self prefersFullScreenStyleForEmbeddedMode])
    {
      v2 = *(self + 1848);
    }

    timelineView = [*(self + 1232) timelineView];
    [timelineView setLabelsExtendedDynamicRangeGain:v2];
    [timelineView setSliderExtendedDynamicRangeGain:v2];
    playbackControlsView = [*(self + 1232) playbackControlsView];
    [playbackControlsView setAvkit_extendedDynamicRangeGain:v2];
    auxiliaryControlsView = [*(self + 1232) auxiliaryControlsView];
    [auxiliaryControlsView setAvkit_extendedDynamicRangeGain:v2];
  }
}

- (void)setExtendedDynamicRangeGain:(double)gain
{
  if (self->_extendedDynamicRangeGain != gain)
  {
    self->_extendedDynamicRangeGain = gain;
    [(AVMobileChromelessControlsViewController *)self _updateExtendedDynamicRangeGain];
  }
}

- (UIPanGestureRecognizer)contentTabPanGestureRecognizer
{
  [(AVMobileChromelessControlsViewController *)self _setUpPanGestureRecognizerIfNeeded];
  contentTabPanGestureRecognizer = self->_contentTabPanGestureRecognizer;

  return contentTabPanGestureRecognizer;
}

- (id)volumeControlsLayoutItem
{
  if (self)
  {
    volumeControlsView = [(AVMobileChromelessControlsView *)self->_view volumeControlsView];
    v4 = volumeControlsView;
    if (self->_view)
    {
      v5 = volumeControlsView == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && ![(AVMobileControlsViewController *)self optimizeForPerformance])
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      volumeControlsLayoutGuide = self->_volumeControlsLayoutGuide;
      self->_volumeControlsLayoutGuide = v6;

      [(AVMobileChromelessControlsView *)self->_view addLayoutGuide:self->_volumeControlsLayoutGuide];
      v8 = [(UILayoutGuide *)self->_volumeControlsLayoutGuide avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v4];
      [MEMORY[0x1E696ACD8] activateConstraints:v8];
    }
  }

  v9 = self->_volumeControlsLayoutGuide;

  return v9;
}

- (void)setVolumeController:(id)controller
{
  controllerCopy = controller;
  volumeController = [(AVMobileControlsViewController *)self volumeController];

  if (volumeController)
  {
    volumeController2 = [(AVMobileControlsViewController *)self volumeController];
    [volumeController2 setPrefersSystemVolumeHUDHidden:0];
  }

  v7.receiver = self;
  v7.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileControlsViewController *)&v7 setVolumeController:controllerCopy];
  if (self && self->_hasBeenSetUp)
  {
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
    [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewMutedState];
    [(AVMobileChromelessControlsViewController *)self _updatePrefersSystemVolumeHUDHidden];
    [(AVMobileChromelessControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];
  }
}

- (id)transportControlsLayoutItem
{
  v44[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    auxiliaryControlsView = [(AVMobileChromelessControlsView *)self->_view auxiliaryControlsView];
    timelineView = [(AVMobileChromelessControlsView *)self->_view timelineView];
    titlebarView = [(AVMobileChromelessControlsView *)self->_view titlebarView];
    v6 = titlebarView;
    if (self->_view)
    {
      v7 = timelineView == 0;
    }

    else
    {
      v7 = 1;
    }

    v9 = v7 || auxiliaryControlsView == 0 || titlebarView == 0;
    if (!v9 && ![(AVMobileControlsViewController *)self optimizeForPerformance])
    {
      layoutMarginsGuide = [(AVMobileChromelessControlsView *)self->_view layoutMarginsGuide];
      v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      transportControlsLayoutGuide = self->_transportControlsLayoutGuide;
      self->_transportControlsLayoutGuide = v11;

      [(AVMobileChromelessControlsView *)self->_view addLayoutGuide:self->_transportControlsLayoutGuide];
      topAnchor = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      topAnchor2 = [v6 topAnchor];
      v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
      titlebarViewTopAnchorConstraint = self->_titlebarViewTopAnchorConstraint;
      self->_titlebarViewTopAnchorConstraint = v15;

      topAnchor3 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      topAnchor4 = [timelineView topAnchor];
      v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      timelineTopAnchorConstraint = self->_timelineTopAnchorConstraint;
      self->_timelineTopAnchorConstraint = v19;

      topAnchor5 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      topAnchor6 = [auxiliaryControlsView topAnchor];
      v23 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      auxiliaryControlsViewTopAnchorConstraint = self->_auxiliaryControlsViewTopAnchorConstraint;
      self->_auxiliaryControlsViewTopAnchorConstraint = v23;

      topAnchor7 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      bottomAnchor = [layoutMarginsGuide bottomAnchor];
      v27 = [topAnchor7 constraintEqualToAnchor:bottomAnchor];
      defaultTopAnchorConstraint = self->_defaultTopAnchorConstraint;
      self->_defaultTopAnchorConstraint = v27;

      v29 = objc_alloc(MEMORY[0x1E695DF70]);
      leadingAnchor = [(UILayoutGuide *)self->_transportControlsLayoutGuide leadingAnchor];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v44[0] = v41;
      trailingAnchor = [(UILayoutGuide *)self->_transportControlsLayoutGuide trailingAnchor];
      v40 = layoutMarginsGuide;
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v44[1] = v30;
      bottomAnchor2 = [(UILayoutGuide *)self->_transportControlsLayoutGuide bottomAnchor];
      bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
      v33 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v44[2] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
      v35 = [v29 initWithArray:v34];

      [MEMORY[0x1E696ACD8] activateConstraints:v35];
      [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
    }
  }

  v36 = self->_transportControlsLayoutGuide;

  return v36;
}

- (void)setTransportBarCustomMenuItems:(id)items
{
  itemsCopy = items;
  transportBarCustomMenuItems = [(AVMobileControlsViewController *)self transportBarCustomMenuItems];

  if (transportBarCustomMenuItems != itemsCopy)
  {
    v6.receiver = self;
    v6.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:itemsCopy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
      }
    }
  }
}

- (void)setShowsAudioTrackSelectionMenu:(BOOL)menu
{
  if (self->_showsAudioTrackSelectionMenu != menu)
  {
    self->_showsAudioTrackSelectionMenu = menu;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControls];
    }
  }
}

- (void)setShowsVisualLookupControl:(BOOL)control
{
  if (self->_showsVisualLookupControl != control)
  {
    self->_showsVisualLookupControl = control;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _setUpVisualLookupControlIfNeeded];
      v4 = self->_visualLookupControl;
      showsVisualLookupControl = self->_showsVisualLookupControl;
      v6 = v4;
      if (showsVisualLookupControl != [(AVMobileAuxiliaryControl *)v4 isIncluded])
      {
        [(AVMobileAuxiliaryControl *)v6 setIncluded:self->_showsVisualLookupControl];
      }
    }
  }
}

- (void)setShowsCopySubjectControl:(BOOL)control
{
  if (self->_showsCopySubjectControl != control)
  {
    self->_showsCopySubjectControl = control;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _setUpCopySubjectControlIfNeeded];
      copySubjectControl = self->_copySubjectControl;
      if (copySubjectControl)
      {
        showsCopySubjectControl = self->_showsCopySubjectControl;

        [(AVMobileAuxiliaryControl *)copySubjectControl setIncluded:showsCopySubjectControl];
      }
    }
  }
}

- (void)setShowsAnalysisControl:(BOOL)control
{
  if (self->_showsAnalysisControl != control)
  {
    self->_showsAnalysisControl = control;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _setUpAnalysisControlIfNeeded];
      [(AVMobileChromelessControlsViewController *)self _updateAnalysisControlInclusionIfNeeded];

      [(AVMobileChromelessControlsViewController *)self _updatePinnedAuxiliaryControlsIfNeeded];
    }
  }
}

- (void)setSecondaryPlaybackControlsType:(unint64_t)type
{
  if ([(AVMobileControlsViewController *)self secondaryPlaybackControlsType]!= type)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setSecondaryPlaybackControlsType:type];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
      }
    }
  }
}

- (void)setRoutingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  routingConfiguration = [(AVMobileControlsViewController *)self routingConfiguration];

  if (routingConfiguration != configurationCopy)
  {
    v7.receiver = self;
    v7.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v7 setRoutingConfiguration:configurationCopy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        displayModeControlsView = [(AVMobileChromelessControlsView *)self->_view displayModeControlsView];
        [displayModeControlsView setRoutingConfiguration:configurationCopy];

        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
      }
    }
  }
}

- (id)_displayModeControlsView
{
  if (self)
  {
    self = [self[154] displayModeControlsView];
    v1 = vars8;
  }

  return self;
}

- (void)setRequiresLinearPlayback:(BOOL)playback
{
  playbackCopy = playback;
  if ([(AVMobileControlsViewController *)self requiresLinearPlayback]!= playback)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setRequiresLinearPlayback:playbackCopy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackControlsViewInclusionState];
        [(AVMobileChromelessControlsViewController *)self _updateTimelineSliderEnablementState];
      }
    }
  }
}

- (void)setPlayerController:(id)controller
{
  controllerCopy = controller;
  playerController = [(AVMobileControlsViewController *)self playerController];

  if (playerController != controllerCopy)
  {
    playerController2 = [(AVMobileControlsViewController *)self playerController];
    [playerController2 avkit_setWebKitDelegate:0];

    v8.receiver = self;
    v8.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v8 setPlayerController:controllerCopy];
    playerController3 = [(AVMobileControlsViewController *)self playerController];
    [playerController3 avkit_setWebKitDelegate:self];

    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVPlayerControllerTimeResolver *)self->_timeResolver setPlayerController:controllerCopy];
        [(AVMobileChromelessControlsViewController *)self _updateWebKitExcludedObservationState];
        [(AVMobileChromelessControlsViewController *)self _updateTimeResolver];
      }
    }
  }
}

- (void)setPlaybackSpeedCollection:(id)collection
{
  collectionCopy = collection;
  playbackSpeedCollection = [(AVControlsViewController *)self playbackSpeedCollection];

  if (playbackSpeedCollection != collectionCopy)
  {
    v6.receiver = self;
    v6.super_class = AVMobileChromelessControlsViewController;
    [(AVControlsViewController *)&v6 setPlaybackSpeedCollection:collectionCopy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController setPlaybackSpeedCollection:collectionCopy];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackSpeedControlInclusion];
      }
    }
  }
}

- (void)setOptimizeForPerformance:(BOOL)performance
{
  performanceCopy = performance;
  if ([(AVMobileControlsViewController *)self optimizeForPerformance]!= performance)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setOptimizeForPerformance:performanceCopy];
    [(AVMobileChromelessControlsViewController *)self _attemptSetupIfNeeded];
  }
}

- (void)setIncludedControls:(unint64_t)controls
{
  if ([(AVMobileControlsViewController *)self includedControls]!= controls)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setIncludedControls:controls];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
        [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
      }
    }
  }
}

- (void)setExcludedControls:(unint64_t)controls
{
  if ([(AVMobileControlsViewController *)self excludedControls]!= controls)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setExcludedControls:controls];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackControlsViewInclusionState];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateRoutePickerControlInclusionState];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateTitleBarViewInclusionState];
        [(AVMobileChromelessControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewAllowsVolumeAdjustmentState];
      }
    }
  }
}

- (void)setFullscreenController:(id)controller
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessControlsViewController;
  controllerCopy = controller;
  [(AVMobileControlsViewController *)&v5 setFullscreenController:controllerCopy];
  [controllerCopy setDelegate:{self, v5.receiver, v5.super_class}];
}

- (id)displayModeControlsLayoutItem
{
  if (self)
  {
    displayModeControlsView = [(AVMobileChromelessControlsView *)self->_view displayModeControlsView];
    v4 = displayModeControlsView;
    if (self->_view)
    {
      v5 = displayModeControlsView == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && ![(AVMobileControlsViewController *)self optimizeForPerformance])
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      displayModeControlsLayoutGuide = self->_displayModeControlsLayoutGuide;
      self->_displayModeControlsLayoutGuide = v6;

      [(AVMobileChromelessControlsView *)self->_view addLayoutGuide:self->_displayModeControlsLayoutGuide];
      v8 = [(UILayoutGuide *)self->_displayModeControlsLayoutGuide avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v4];
      [MEMORY[0x1E696ACD8] activateConstraints:v8];
    }
  }

  v9 = self->_displayModeControlsLayoutGuide;

  return v9;
}

- (void)setControlItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = AVMobileChromelessControlsViewController;
  controlItems = [(AVMobileControlsViewController *)&v17 controlItems];

  if (controlItems != itemsCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12.receiver = self;
    v12.super_class = AVMobileChromelessControlsViewController;
    controlItems2 = [(AVMobileControlsViewController *)&v12 controlItems];
    v7 = [controlItems2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(controlItems2);
          }

          [*(*(&v13 + 1) + 8 * v10++) setDelegate:0];
        }

        while (v8 != v10);
        v8 = [controlItems2 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    [itemsCopy enumerateObjectsUsingBlock:&__block_literal_global_48];
    v11.receiver = self;
    v11.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v11 setControlItems:itemsCopy];
    if (self && self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _updateAuxiliaryControlsForControlItems];
      [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsForControlItems];
    }
  }
}

- (void)setShowsFullScreenControl:(BOOL)control
{
  controlCopy = control;
  v6.receiver = self;
  v6.super_class = AVMobileChromelessControlsViewController;
  if ([(AVMobileControlsViewController *)&v6 showsFullScreenControl]!= control)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessControlsViewController;
    [(AVMobileControlsViewController *)&v5 setShowsFullScreenControl:controlCopy];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
      }
    }
  }
}

- (CGRect)unobscuredContentArea
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  _volumeControlsView = [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _volumeControlsView];
  [_volumeControlsView frame];
  v41.origin.x = v8;
  v41.origin.y = v9;
  v41.size.width = v10;
  v41.size.height = v11;
  v35.origin.x = v3;
  v35.origin.y = v4;
  v35.size.width = v5;
  v35.size.height = v6;
  v36 = CGRectUnion(v35, v41);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;

  _displayModeControlsView = [(AVMobileChromelessControlsViewController *)&self->super.super.super.super.super.super.isa _displayModeControlsView];
  [_displayModeControlsView frame];
  v42.origin.x = v17;
  v42.origin.y = v18;
  v42.size.width = v19;
  v42.size.height = v20;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectUnion(v37, v42);
  v21 = v38.origin.x;
  v22 = v38.origin.y;
  v23 = v38.size.width;
  v24 = v38.size.height;

  [(AVMobileChromelessControlsView *)self->_view bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v39.origin.x = v21;
  v39.origin.y = v22;
  v39.size.width = v23;
  v39.size.height = v24;
  MaxY = CGRectGetMaxY(v39);
  v32 = v30 - MaxY;
  v33 = v26;
  v34 = v28;
  result.size.height = v32;
  result.size.width = v34;
  result.origin.y = MaxY;
  result.origin.x = v33;
  return result;
}

- (void)setCustomInfoViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if (self->_customInfoViewControllers != controllersCopy)
  {
    v6 = controllersCopy;
    objc_storeStrong(&self->_customInfoViewControllers, controllers);
    controllersCopy = v6;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileChromelessControlsViewController *)self _updateContentTabViewControllers];
      [(AVMobileChromelessControlsViewController *)self _updateControlsViewLayoutConfiguration];
      controllersCopy = v6;
    }
  }
}

- (void)dealloc
{
  if (self->_styleSheet)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];
  }

  [(AVObservationController *)self->_observationController stopAllObservation];
  volumeController = [(AVMobileControlsViewController *)self volumeController];
  [volumeController setPrefersSystemVolumeHUDHidden:0];

  volumeController2 = [(AVMobileControlsViewController *)self volumeController];
  [volumeController2 setClientWithIdentifier:0 forWindowSceneSessionWithIdentifier:0];

  [(AVMobileGlassControlsViewController *)self _cancelOutstandVisibilityUpdates];
  v6.receiver = self;
  v6.super_class = AVMobileChromelessControlsViewController;
  [(AVMobileChromelessControlsViewController *)&v6 dealloc];
}

- (AVMobileChromelessControlsViewController)init
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVMobileChromelessControlsViewController;
  v2 = [(AVTipKitControlsViewController *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    *&v2->_sliderEdgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&v2->_sliderEdgeInsets.bottom = v4;
    v2->_showsAudioTrackSelectionMenu = 1;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    globallyUniqueString = [processInfo globallyUniqueString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = globallyUniqueString;

    controlsInOverflowMenu = v3->_controlsInOverflowMenu;
    v3->_controlsInOverflowMenu = 0;

    v13[0] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(AVMobileChromelessControlsViewController *)v3 registerForTraitChanges:v9 withHandler:&__block_literal_global_25249];
  }

  return v3;
}

@end
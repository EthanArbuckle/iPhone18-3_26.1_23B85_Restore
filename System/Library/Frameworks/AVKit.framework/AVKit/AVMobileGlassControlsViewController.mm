@interface AVMobileGlassControlsViewController
- (AVMobileFluidSliderMark)_sliderMarkForInterstitialTimeRange:(char)a3 isCollapsed:;
- (AVMobileGlassControlsViewController)init;
- (BOOL)_isContentTabPresentationStatePresenting;
- (BOOL)_isLandscape;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isMediaPresentationSettingsEnabledForMediaSelectionMenuController:(id)a3;
- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)a3;
- (BOOL)shouldFilterMediaPresentationOptionsToAvailableCacheForMediaSelectionMenuController:(id)a3;
- (BOOL)shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:(id)a3;
- (CGRect)unobscuredContentArea;
- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI;
- (UIPanGestureRecognizer)contentTabPanGestureRecognizer;
- (__CFString)_currentAccessibilityIdentifierForAudibleMedia;
- (double)_frameForLiveEdgeMarkContentTag:(double)a3;
- (double)_routePickerInteractionDuration;
- (float)_normalizeTimeValue:(uint64_t)a1;
- (id)_auxiliaryControlForControlItem:(uint64_t)a1;
- (id)_auxiliaryControlForIdentifier:(uint64_t)a1;
- (id)_auxiliaryControlsView;
- (id)_configureTips;
- (id)_didEndUpdatingControlsVisibilityStateTo:(uint64_t)a3 completed:(int)a4;
- (id)_displayModeControlsView;
- (id)_identifierForMenuElement:(void *)a1;
- (id)_timelineSlider;
- (id)_timelineView;
- (id)_updateRoutePickerControlInclusionState;
- (id)_volumeControlsView;
- (id)auxiliaryControlsView:(id)a3 menuElementForControl:(id)a4;
- (id)displayModeControlsLayoutItem;
- (id)effectiveSettingsForSelectorForMediaSelectionMenuController:(id)a3;
- (id)mediaSelectionMenuController:(id)a3 complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)a4;
- (id)mediaSelectionMenuController:(id)a3 complementarySettingsForSelector:(id)a4;
- (id)mediaSelectionMenuController:(id)a3 displayNameForMediaSelectionOption:(id)a4;
- (id)mediaSelectionMenuController:(id)a3 effectiveSettingForSelector:(id)a4;
- (id)mediaSelectionMenuController:(id)a3 selectedPresentationSettingForSelector:(id)a4;
- (id)menuForMenuButton:(id)a3;
- (id)transportControlsLayoutItem;
- (id)volumeControlsLayoutItem;
- (uint64_t)_activeRouteSupportsAdjustingVolume;
- (uint64_t)_canPerformSetup;
- (uint64_t)_decrementUserInteractionCount;
- (uint64_t)_isFullScreen;
- (uint64_t)_isScrubbing;
- (uint64_t)_setUpMediaSelectionMenuControllerIfNeeded;
- (uint64_t)_shouldIncludeRoutePickerButton;
- (uint64_t)_timelineHasBackgroundMaterial;
- (uint64_t)_updateWebKitExcludedObservationState;
- (unint64_t)indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:(id)a3;
- (unint64_t)mediaSelectionMenuController:(id)a3 indexOfEffectivePresentationSettingForSelector:(id)a4;
- (void)_animateSliderToTintState:(void *)a3 duration:(double)a4 completionHandler:;
- (void)_animateVolumeEmphasisTo:(id *)a1;
- (void)_attemptSetupIfNeeded;
- (void)_cancelOutstandVisibilityUpdates;
- (void)_contentTabPanGestureRecognizerTriggered:(id)a3;
- (void)_contentTabTapGestureRecognizerTriggered:(id)a3;
- (void)_didBeginUpdatingControlsVisibilityStateFromState:(uint64_t)a3 toState:(uint64_t)a4 withAnimationCoordinator:(uint64_t)a5;
- (void)_dismissControlItemWithTipInSymmetricDifferenceSet:(void *)a1;
- (void)_enumerateControlItemsOfTypes:(id)a3 usingBlock:(id)a4;
- (void)_handleJumpToLiveAction;
- (void)_handleMuteStateToggle;
- (void)_hideControlsIfPossible;
- (void)_incrementUserInteractionCount;
- (void)_resetControlsVisibilityTimer;
- (void)_resetVolumeSliderTemporarilyVisibleTimer;
- (void)_setContentTabPresented:(int)a3 animated:;
- (void)_setNeedsControlsVisibilityStateUpdate;
- (void)_setUpAnalysisControlIfNeeded;
- (void)_setUpAuxiliaryControlsViewIfNeeded;
- (void)_setUpCopySubjectControlIfNeeded;
- (void)_setUpPanGestureRecognizerIfNeeded;
- (void)_setUpTapGestureRecognizerIfNeeded;
- (void)_setUpVisualLookupControlIfNeeded;
- (void)_temporarilyShowVolumeSlider;
- (void)_timelineSliderDidChangeValue:(id)a3;
- (void)_transitionContentTabIfNeccesary:(double)a3;
- (void)_updateAnalysisControlInclusionIfNeeded;
- (void)_updateAudibleMediaSelectionControlInclusionState;
- (void)_updateAudibleMediaSelectionMenu;
- (void)_updateAuxiliaryControlSpacing;
- (void)_updateAuxiliaryControls;
- (void)_updateAuxiliaryControlsForControlItems;
- (void)_updateBackgroundMaterial;
- (void)_updateContentTabViewControllers;
- (void)_updateContentTabViewIsCompact;
- (void)_updateContentTabsAlpha:(uint64_t)a1;
- (void)_updateContentTabsInteractionEnablementState;
- (void)_updateContentTag;
- (void)_updateControlItemsInclusionState;
- (void)_updateControlsViewLayoutConfiguration;
- (void)_updateControlsVisibilityStateAnimated:(uint64_t)a1;
- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3;
- (void)_updateDisplayModeControlsButtonsInclusion;
- (void)_updateDisplayModeControlsForControlItems;
- (void)_updateExtendedDynamicRangeGain;
- (void)_updateFullScreenState;
- (void)_updateHasHapticTrackSelectionMenu;
- (void)_updateHasHapticTrackSelectionMenuIDs;
- (void)_updateInfoAffordanceInclusion;
- (void)_updateJumpToLiveControlInclusionStateIfNeeded;
- (void)_updateLayoutMargins;
- (void)_updateLegibleContentInsetsAvoidingControlsUIIfNeeded;
- (void)_updateLegibleMediaSelectionControlInclusionState;
- (void)_updateLegibleMediaSelectionMenu;
- (void)_updateLoadingAnimatorState;
- (void)_updatePinnedAuxiliaryControlsIfNeeded;
- (void)_updatePlayPauseButtonIcon;
- (void)_updatePlaybackControlsDisplayMode;
- (void)_updatePlaybackControlsViewInclusionState;
- (void)_updatePlaybackSpeedControlInclusion;
- (void)_updatePrefersSystemVolumeHUDHidden;
- (void)_updatePrefersVolumeSliderIncludedAnimated:(uint64_t)a1;
- (void)_updateSecondaryPlaybackControlsTypes;
- (void)_updateSliderMarkForLiveEdgeIfNeeded;
- (void)_updateStyleSheet;
- (void)_updateTimeResolver;
- (void)_updateTimelineEmphasisStateIfNeeded;
- (void)_updateTimelineSliderEnablementState;
- (void)_updateTimelineValues;
- (void)_updateTimelineViewGlassBackgroundInclusion;
- (void)_updateTimelineViewSliderMarksIfNeeded;
- (void)_updateTitleAndDescriptionInfo;
- (void)_updateTitleBarViewInclusionState;
- (void)_updateTransportControlsLayoutGuidesConstraintsIfNeeded;
- (void)_updateViewVisibilityStatesTo:(unint64_t)a3;
- (void)_updateVolumeControllerClient;
- (void)_updateVolumeControlsDisplayMode;
- (void)_updateVolumeControlsViewAllowsVolumeAdjustmentState;
- (void)_updateVolumeControlsViewMutedState;
- (void)_updateVolumeControlsViewVolumeWithMuteStateUpdate:(id *)a1;
- (void)_volumeControlsViewInteractionDidContinue;
- (void)auxiliaryControlsView:(id)a3 didOverflowControls:(id)a4;
- (void)auxiliaryControlsViewWillBeginShowingOverflowMenu:(id)a3 animator:(id)a4;
- (void)auxiliaryControlsViewWillEndShowingOverflowMenu:(id)a3 animator:(id)a4;
- (void)contentTabsViewController:(id)a3 didChangeSelectedCustomInfoViewController:(id)a4 withReason:(unint64_t)a5;
- (void)controlItemDidUpdateVisualConfiguration:(id)a3;
- (void)dealloc;
- (void)didBeginIndirectUserInteraction;
- (void)dismissCustomInfoViewControllerAnimated:(BOOL)a3;
- (void)displayModeControlsView:(id)a3 layoutWithHiddenIdentifiers:(id)a4;
- (void)displayModeControlsViewDoneButtonWasPressed:(id)a3;
- (void)displayModeControlsViewFullscreenButtonWasPressed:(id)a3;
- (void)displayModeControlsViewMultiviewButtonWasPressed:(id)a3;
- (void)displayModeControlsViewPictureInPictureButtonWasPressed:(id)a3;
- (void)displayModeControlsViewWillDismissContextMenu:(id)a3 animator:(id)a4;
- (void)displayModeControlsViewWillPresentContextMenu:(id)a3 animator:(id)a4;
- (void)flashControlsWithDuration:(double)a3;
- (void)fullscreenControllerDidChangePresentationState:(id)a3;
- (void)hapticsMenuControllerDidSelectHapticsOff:(id)a3;
- (void)hapticsMenuControllerDidSelectTrackID:(id)a3 controller:(id)a4;
- (void)loadView;
- (void)mediaSelectionMenuController:(id)a3 didSelectEnhanceDialogueOption:(int64_t)a4;
- (void)mediaSelectionMenuController:(id)a3 didSelectOption:(id)a4;
- (void)mediaSelectionMenuController:(id)a3 selectMediaPresentationLanguage:(id)a4;
- (void)mediaSelectionMenuController:(id)a3 selectMediaPresentationSetting:(id)a4 forSelector:(id)a5;
- (void)menuButtonWillHideMenu:(id)a3 animator:(id)a4;
- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4;
- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)a3;
- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)a3;
- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)a3;
- (void)routePickerViewDidEndPresentingRoutes:(id)a3;
- (void)routePickerViewWillBeginPresentingRoutes:(id)a3;
- (void)scheduleTips;
- (void)setControlItems:(id)a3;
- (void)setCustomInfoViewControllers:(id)a3;
- (void)setExcludedControls:(unint64_t)a3;
- (void)setExtendedDynamicRangeGain:(double)a3;
- (void)setFullscreenController:(id)a3;
- (void)setIncludedControls:(unint64_t)a3;
- (void)setMediaPresentationSettingsCustomItems:(id)a3;
- (void)setOptimizeForPerformance:(BOOL)a3;
- (void)setPlaybackSpeedCollection:(id)a3;
- (void)setPlayerController:(id)a3;
- (void)setPrefersFullScreenStyleForEmbeddedMode:(BOOL)a3;
- (void)setPrefersMediaPresentationSettingsMenuGroupTitle:(id)a3;
- (void)setRequiresLinearPlayback:(BOOL)a3;
- (void)setRoutingConfiguration:(id)a3;
- (void)setSecondaryPlaybackControlsType:(unint64_t)a3;
- (void)setShowsAnalysisControl:(BOOL)a3;
- (void)setShowsAudioTrackSelectionMenu:(BOOL)a3;
- (void)setShowsCopySubjectControl:(BOOL)a3;
- (void)setShowsFullScreenControl:(BOOL)a3;
- (void)setShowsVisualLookupControl:(BOOL)a3;
- (void)setTransportBarCustomMenuItems:(id)a3;
- (void)setVideoScaled:(BOOL)a3;
- (void)setVolumeController:(id)a3;
- (void)slider:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4;
- (void)slider:(id)a3 didUpdateFrame:(CGRect)a4 forSliderMark:(id)a5;
- (void)sliderDidBeginTracking:(id)a3;
- (void)sliderDidEndTracking:(id)a3;
- (void)sliderWillEndTracking:(id)a3;
- (void)titleBarViewInfoAffordanceWasPressed:(id)a3;
- (void)toggleVisibility:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateVisibilityPolicy:(unint64_t)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsOverVideoDidChange:(id)a3;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)volumeControlsView:(id)a3 didSelectHapticsOn:(BOOL)a4;
- (void)volumeControlsView:(id)a3 volumeDidChangeTo:(double)a4;
- (void)volumeControlsView:(id)a3 volumeDidChangeTo:(double)a4 withUpdateSource:(unint64_t)a5;
- (void)volumeControlsViewButtonWasTapped:(id)a3;
- (void)volumeControlsViewInteractionDidBegin:(id)a3;
- (void)volumeControlsViewInteractionDidEnd:(id)a3;
- (void)webkitPlayerController:(id)a3 didChangeScrubbingStateTo:(BOOL)a4;
@end

@implementation AVMobileGlassControlsViewController

- (void)_updateTimelineEmphasisStateIfNeeded
{
  if (a1)
  {
    v2 = [(AVMobileGlassControlsViewController *)a1 _isScrubbing];
    v3 = [a1[154] timelineView];
    v4 = [a1[154] transportControlsView];
    if (v2 != [v3 isEmphasized])
    {
      v5 = [a1[154] backgroundView];
      [v5 setEmphasized:v2];
      [v3 prepareForDeemphasisIfNeeded];
      [v3 setEmphasized:v2];
      [v4 setNeedsLayout];
      v6 = a1[208];
      v7 = 1.0;
      v8 = 1.0;
      if (v6 && [v6 isRunning] && objc_msgSend(a1[208], "isInterruptible"))
      {
        [a1[208] fractionComplete];
        v8 = v9;
        [a1[208] stopAnimation:1];
        [a1[208] finishAnimationAtPosition:2];
        v10 = a1[208];
        a1[208] = 0;
      }

      if (v8 <= 1.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1.0;
      }

      v12 = v11 * 0.2;
      if (v2)
      {
        v13 = 288.0;
      }

      else
      {
        v7 = 2.0;
        v13 = 500.0;
      }

      if (v2)
      {
        v14 = 26.5;
      }

      else
      {
        v14 = 40.0;
      }

      v15 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:v7 stiffness:v13 damping:v14 initialVelocity:{0.0, 0.0}];
      v16 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v15 timingParameters:v12];
      v17 = a1[208];
      a1[208] = v16;

      objc_initWeak(&location, a1);
      v18 = a1[208];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __75__AVMobileGlassControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke;
      v25[3] = &unk_1E7208318;
      objc_copyWeak(&v28, &location);
      v26 = v3;
      v29 = v2;
      v27 = v4;
      [v18 addAnimations:v25];
      v19 = a1[208];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __75__AVMobileGlassControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke_2;
      v23 = &unk_1E7209618;
      objc_copyWeak(&v24, &location);
      [v19 addCompletion:&v20];
      [a1[208] startAnimation];
      objc_destroyWeak(&v24);

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)_isScrubbing
{
  v2 = [a1 playerController];
  v3 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
  v4 = [v3 isTracking];

  if (v4 & 1) != 0 || ([v2 isScrubbing])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v2 avkit_webkitIsScrubbing];
  }

  return v5;
}

void __75__AVMobileGlassControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [*(a1 + 32) setEmphasized:*(a1 + 56)];
    [*(a1 + 32) layoutIfNeeded];
    v3 = [v4 view];
    [v3 layoutIfNeeded];

    [*(a1 + 40) layoutIfNeeded];
    WeakRetained = v4;
  }
}

void __75__AVMobileGlassControlsViewController__updateTimelineEmphasisStateIfNeeded__block_invoke_2(uint64_t a1)
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
  if (a1)
  {
    v1 = [*(a1 + 1232) timelineView];
    v2 = [v1 fluidSlider];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_timelineSliderDidChangeValue:(id)a3
{
  v13 = a3;
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
      v11 = [(AVMobileGlassControlsViewController *)self _timelineSlider];
      [v11 value];
      [(AVPlayerControllerTimeResolver *)self->_timeResolver setTargetTime:v6 + (v9 - v6) * v12];
    }
  }

  [(AVMobileGlassControlsViewController *)self _updateTimelineValues];
}

- (void)_updateTimelineValues
{
  if (a1)
  {
    v31 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
    v2 = [*(a1 + 1232) timelineView];
    [v31 value];
    v4 = v3;
    v5 = *(a1 + 1232);
    if (v5 && *(a1 + 1216) == 1 && ([v5 isHidden] & 1) == 0 && (v6 = *(a1 + 1464)) != 0 && ((objc_msgSend(v6, "minTime"), v8 = v7, v9 = v7, objc_msgSend(*(a1 + 1464), "maxTime"), v11 = v10, (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) ? (v12 = (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v12 = 1), !v12))
    {
      v19 = v10 - v8;
      v20 = [a1 playerController];
      [v20 avkit_webkitSeekToTime];
      v22 = v21;

      v23 = (COERCE__INT64(fabs(v11 - v8)) - 0x10000000000000) >> 53;
      if ((v19 >= 0.0 && v23 <= 0x3FE || (*&v19 - 1) <= 0xFFFFFFFFFFFFELL) && (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v27 = (v22 - v8) / v19;
        v4 = v27;
      }

      [*(a1 + 1472) setFormatTemplate:v11 - v8];
      [*(a1 + 1480) setFormatTemplate:v11 - v8];
      v28 = [a1 playerController];
      v29 = [v28 currentOrEstimatedDate];
      if ([v28 hasSeekableLiveStreamingContent] && v29)
      {
        v30 = [v29 dateByAddingTimeInterval:-(v19 - v22)];
        v14 = [*(a1 + 1488) stringFromDate:v30];

        v13 = &stru_1EFED57D8;
      }

      else
      {
        v14 = [*(a1 + 1472) stringFromSeconds:v22];
        v13 = [*(a1 + 1480) stringFromSeconds:v11 - v22];
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = [v2 leadingTimeText];
    v16 = v15 != 0;

    v17 = [v2 trailingTimeText];

    if ((v14 == 0) == v16 || (v13 == 0) == (v17 != 0))
    {
      [*(a1 + 1232) setNeedsLayout];
    }

    if (([v31 isTracking] & 1) == 0)
    {
      v18 = vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 1680), *MEMORY[0x1E69DDCE0]), vceqq_f64(*(a1 + 1696), *(MEMORY[0x1E69DDCE0] + 16))));
      if (vminv_u16(v18))
      {
        *v18.i32 = v4;
        [v31 setValue:*&v18];
      }
    }

    [v2 setLeadingTimeText:v14];
    [v2 setTrailingTimeText:v13];
    if (([(AVMobileGlassControlsViewController *)a1 _isScrubbing]& 1) == 0)
    {
      [(AVMobileGlassControlsViewController *)a1 _updateTimelineEmphasisStateIfNeeded];
    }
  }
}

- (void)_handleJumpToLiveAction
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  [v3 seekToEnd:self];
}

- (void)_enumerateControlItemsOfTypes:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AVMobileControlsViewController *)self controlItems];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__AVMobileGlassControlsViewController__enumerateControlItemsOfTypes_usingBlock___block_invoke;
  v11[3] = &unk_1E72092A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __80__AVMobileGlassControlsViewController__enumerateControlItemsOfTypes_usingBlock___block_invoke(uint64_t a1, void *a2)
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

- (void)hapticsMenuControllerDidSelectTrackID:(id)a3 controller:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__AVMobileGlassControlsViewController_hapticsMenuControllerDidSelectTrackID_controller___block_invoke;
  block[3] = &unk_1E7209A10;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __88__AVMobileGlassControlsViewController_hapticsMenuControllerDidSelectTrackID_controller___block_invoke(uint64_t a1)
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
  [(AVMobileGlassControlsViewController *)v17 _updateHasHapticTrackSelectionMenu];
}

- (void)_updateHasHapticTrackSelectionMenu
{
  if (a1)
  {
    v2 = [a1 playerController];
    v5 = [v2 hapticTracksForCurrentItem];

    [(AVMobileGlassControlsViewController *)a1 _updateHasHapticTrackSelectionMenuIDs];
    v3 = [a1[154] volumeControlsView];
    [v3 setHasHapticsTracks:{objc_msgSend(v5, "count") != 0}];

    v4 = [a1[154] volumeControlsView];
    [v4 setHapticsIsOn:{+[AVMobileHapticsTrackItem hasOnTrack:](AVMobileHapticsTrackItem, "hasOnTrack:", v5)}];

    [(AVMobileGlassControlsViewController *)a1 _updateAuxiliaryControls];
  }
}

- (void)_updateHasHapticTrackSelectionMenuIDs
{
  if (a1)
  {
    v2 = [a1 playerController];
    v3 = [v2 hapticTracksForCurrentItem];

    [a1[233] setHapticTrackIDs:v3];
  }
}

- (void)_updateAuxiliaryControls
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
    v3 = [*(a1 + 1232) auxiliaryControlsView];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(a1 + 1656);
    if (v5 && [v5 count])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v6 = *(a1 + 1656);
      v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v4 addObject:*(*(&v30 + 1) + 8 * i)];
          }

          v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v8);
      }
    }

    v11 = [a1 transportBarCustomMenuItems];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 transportBarCustomMenuItems];
      v14 = [v13 count];

      if (v14)
      {
        v24 = isFull;
        v25 = v3;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v15 = [a1 transportBarCustomMenuItems];
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [AVMobileGlassControlsViewController _identifierForMenuElement:?];
              if (v20 != @"com.apple.avkit.TransportMenuItem.MediaPresentationSettingsAudioGroup")
              {
                v21 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:v20];
                [v21 setIncluded:1];
                [v4 addObject:v21];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v17);
        }

        v3 = v25;
        isFull = v24;
      }
    }

    if (*(a1 + 1280))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1288))
    {
      if (isFull)
      {
        [v4 insertObject:? atIndex:?];
      }

      else
      {
        [v4 addObject:?];
      }
    }

    if (*(a1 + 1272))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1877) == 1 && *(a1 + 1256))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1264))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1296))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1304))
    {
      [v4 addObject:?];
    }

    if (*(a1 + 1312))
    {
      [v4 addObject:?];
    }

    v22 = +[AVKitGlobalSettings shared];
    if ([v22 hapticsEnabled])
    {
      v23 = *(a1 + 1848);

      if (v23)
      {
        [v4 addObject:*(a1 + 1848)];
      }
    }

    else
    {
    }

    [v3 setFullscreen:isFull];
    [v3 setControls:v4];
    [v3 updateOverflowMenu];
    [(AVMobileGlassControlsViewController *)a1 _updateControlsViewLayoutConfiguration];
  }
}

- (uint64_t)_isFullScreen
{
  v2 = [a1 fullscreenController];
  if ([v2 presentationState] == 2)
  {
    v3 = [a1 prefersFullScreenStyleForEmbeddedMode];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)_auxiliaryControlsView
{
  if (a1)
  {
    a1 = [a1[154] auxiliaryControlsView];
    v1 = vars8;
  }

  return a1;
}

- (id)_identifierForMenuElement:(void *)a1
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = [v1 identifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateControlsViewLayoutConfiguration
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v45 = 0u;
  isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
  v3 = *(a1 + 1824);
  v4 = 0;
  if (([(AVMobileGlassControlsViewController *)a1 _isFullScreen]& 1) == 0)
  {
    v4 = [a1 prefersFullScreenStyleForEmbeddedMode] ^ 1;
  }

  [*(a1 + 1224) standardPaddingFullScreen];
  v6 = v5;
  [v3 presentationHeight];
  v8 = v7;
  v9 = [a1 includedControls];
  v28 = [a1 excludedControls];
  v10 = *(a1 + 1824);
  if (!v10)
  {
    v29 = 0;
    if (isFull)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v29 = [v10 state] == 2;
  if ((isFull & 1) == 0)
  {
LABEL_6:
    [*(a1 + 1224) standardPaddingInline];
    v6 = v11;
    v9 &= ~0x40uLL;
  }

LABEL_7:
  v46[4] = 0;
  *v46 = 0;
  v12 = *(a1 + 1576);
  v13 = *(a1 + 1240);
  v14 = *(a1 + 1784);
  v15 = *(a1 + 1824);
  if (v15)
  {
    v16 = [v15 state];
    v17 = *(a1 + 1824);
    v18 = v17;
    if (v16 == 2)
    {
      v19 = [v17 transitionContext];
      v20 = [v19 direction] == 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v18 = 0;
  }

  v21 = *(a1 + 1696);
  *&v46[5] = *(a1 + 1680);
  *&v46[21] = v21;
  v22 = *(a1 + 1728);
  v44 = *(a1 + 1712);
  v45 = v22;
  v23 = [v3 presentationLayout];
  v24 = [*(a1 + 1776) count] < 2;

  v25 = *(a1 + 1232);
  v30[0] = v9;
  v30[1] = v28;
  v31 = v12;
  memset(v32, 0, sizeof(v32));
  v33 = v6;
  v34 = v4;
  v26 = v13;
  v27 = v26;
  v39 = *v46;
  *v40 = *&v46[16];
  *&v40[21] = v44;
  v35 = v26;
  v36 = v14;
  v37 = v20;
  v38 = v29;
  *&v40[13] = *&v46[29];
  *&v40[37] = v45;
  v41 = v23;
  v42 = v24;
  v43 = v8;
  if (v25)
  {
    [v25 setLayoutConfiguration:v30];
  }

  else
  {
  }
}

- (void)hapticsMenuControllerDidSelectHapticsOff:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__AVMobileGlassControlsViewController_hapticsMenuControllerDidSelectHapticsOff___block_invoke;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __80__AVMobileGlassControlsViewController_hapticsMenuControllerDidSelectHapticsOff___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playerController];
  [v3 setHapticsIsOn:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)v4 _updateHasHapticTrackSelectionMenu];
}

- (void)_updateStyleSheet
{
  v3 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v6 = [v3 traitCollection];

  v4 = [[AVMobileGlassControlsStyleSheet alloc] initWithTraitCollection:v6];
  styleSheet = self->_styleSheet;
  self->_styleSheet = v4;

  [(AVMobileGlassControlsView *)self->_view setStyleSheet:self->_styleSheet];
  [(AVMobileGlassControlsViewController *)self _updateLayoutMargins];
  [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
}

- (void)_updateLayoutMargins
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 175);
    v3 = (-[AVMobileGlassControlsViewController _isFullScreen](result) & 1) != 0 ? 1 : [v1 prefersFullScreenStyleForEmbeddedMode];
    [v1[153] playbackControlsViewLayoutMarginsForView:v1[154] keyboardHeight:v3 isFullScreen:v2];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    result = [v1[154] layoutMargins];
    v16 = v15 == v7 && v12 == v5;
    v17 = v16 && v14 == v11;
    if (!v17 || v13 != v9)
    {
      [v1[154] setLayoutMargins:{v5, v7, v9, v11}];
      v19 = v1[154];

      return [v19 setNeedsLayout];
    }
  }

  return result;
}

- (void)_contentTabTapGestureRecognizerTriggered:(id)a3
{
  v7 = a3;
  v4 = [v7 state] - 1;
  v5 = v7;
  if (v4 <= 2)
  {
    v6 = v7;
    if (self)
    {
      if ([(AVMobileContentTabPresentationContext *)self->_contentTabPresentationContext presentationLayout])
      {
        [(AVMobileGlassControlsViewController *)self toggleVisibility:self];
      }

      else
      {
        [(AVMobileGlassControlsViewController *)self dismissCustomInfoViewControllerAnimated:1];
      }
    }

    v5 = v7;
  }
}

- (void)_contentTabPanGestureRecognizerTriggered:(id)a3
{
  v43 = a3;
  v4 = [v43 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 == 2)
    {
      if (self)
      {
        v30 = self->_contentTabViewPresentationAnimator;
        v31 = v43;
        [(UIViewPropertyAnimator *)v30 pauseAnimation];
        [v31 velocityInView:self->_view];
        [(AVMobileGlassControlsViewController *)self _transitionContentTabIfNeccesary:v32, v33];
        [v31 translationInView:self->_view];
        v35 = v34;

        v36 = v35 / self->_contentTabPanGestureTranslationScaleFactor;
        isContentTabPresentationState = [(AVMobileGlassControlsViewController *)self _isContentTabPresentationStatePresenting];
        v38 = fabs(v36);
        if (!isContentTabPresentationState)
        {
          v38 = 1.0 - v36;
        }

        v39 = fmin(fmax(v38, 0.0), 1.0);
        v40 = -v36;
        if (!self->_contentTabPresented)
        {
          v40 = v36;
        }

        [(UIViewPropertyAnimator *)v30 setFractionComplete:v40 + self->_contentTabInteractivePresentationInitialFractionComplete];

        [(AVMobileGlassControlsViewController *)self _updateContentTabsAlpha:v39];
      }
    }

    else if (v4 == 1 && self)
    {
      v5 = self->_contentTabViewPresentationAnimator;
      v6 = v43;
      [(UIViewPropertyAnimator *)v5 pauseAnimation];
      [v6 velocityInView:self->_view];
      v8 = v7;
      v10 = v9;

      [(AVMobileGlassControlsViewController *)self _transitionContentTabIfNeccesary:v8, v10];
      [(AVMobileGlassControlsView *)self->_view bounds];
      self->_contentTabPanGestureTranslationScaleFactor = v11 / 3.0;
      [(UIViewPropertyAnimator *)v5 fractionComplete];
      v13 = v12;

      self->_contentTabInteractivePresentationInitialFractionComplete = v13;
    }

    goto LABEL_28;
  }

  if (!self)
  {
    goto LABEL_28;
  }

  view = self->_view;
  v15 = v43;
  [v15 velocityInView:view];
  v17 = v16;
  v19 = v18;
  v20 = [v15 state];
  v21 = v17 * 0.05;
  [v15 translationInView:self->_view];
  v23 = v22;

  contentTabPresented = self->_contentTabPresented;
  v25 = v23 / self->_contentTabPanGestureTranslationScaleFactor;
  v26 = -v25;
  if (!self->_contentTabPresented)
  {
    v26 = v23 / self->_contentTabPanGestureTranslationScaleFactor;
  }

  v27 = v19 < 0.0;
  v28 = fabs(v19);
  if (v28 < 2.22044605e-16)
  {
    v27 = 0;
  }

  if (v20 == 4)
  {
    goto LABEL_12;
  }

  if (v28 < 2.22044605e-16)
  {
    if (fabs(v25) < 2.22044605e-16 || v26 < 0.0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v29 = 0;
    goto LABEL_25;
  }

  if (contentTabPresented == v27)
  {
    goto LABEL_24;
  }

LABEL_12:
  self->_contentTabPresented = contentTabPresented ^ 1;
  LOBYTE(contentTabPresented) = self->_contentTabPresented;
  v29 = 1;
LABEL_25:
  v41 = 0.0;
  if (contentTabPresented)
  {
    v41 = 1.0;
  }

  [(AVMobileGlassControlsViewController *)self _updateContentTabsAlpha:v41];
  v42 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithDampingRatio:1.0 initialVelocity:{v21, v19 * 0.05}];
  [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator setReversed:v29];
  [(UIViewPropertyAnimator *)self->_contentTabViewPresentationAnimator continueAnimationWithTimingParameters:v42 durationFactor:1.0];

LABEL_28:
}

- (void)_updateContentTabsAlpha:(uint64_t)a1
{
  v4 = [*(a1 + 1776) count];
  v5 = [*(a1 + 1232) contentTabsView];
  v6 = v5;
  if (v4 <= 1)
  {
    [v5 setAlpha:a2];
  }

  else
  {
    [v5 setContentViewAlpha:a2];
  }
}

- (void)_transitionContentTabIfNeccesary:(double)a3
{
  v5 = a1[228];
  if (!v5 || [v5 state] != 2)
  {
    [objc_opt_class() autoHideInterval];
    [a1 flashControlsWithDuration:?];

    [(AVMobileGlassControlsViewController *)a1 _setContentTabPresented:1 animated:?];
  }
}

- (BOOL)_isContentTabPresentationStatePresenting
{
  v2 = *(a1 + 1824);
  if (v2)
  {
    v3 = [v2 state];
    v4 = *(a1 + 1824);
    v5 = v4;
    if (v3 == 2)
    {
      v6 = [v4 transitionContext];
      v7 = [v6 direction] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0;
  }

  return v7;
}

- (void)_setContentTabPresented:(int)a3 animated:
{
  v63[12] = *MEMORY[0x1E69E9840];
  if (!a1 || *(a1 + 1784) == a2)
  {
    return;
  }

  *(a1 + 1784) = a2;
  [(AVMobileGlassControlsViewController *)a1 _setUpPanGestureRecognizerIfNeeded];
  [(AVMobileGlassControlsViewController *)a1 _setUpTapGestureRecognizerIfNeeded];
  v5 = *(a1 + 1824);
  v6 = [*(a1 + 1816) selectedCustomInfoViewController];
  if (a3)
  {
    v7 = 2;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *(a1 + 1784) ^ 1;
    if (!v5)
    {
LABEL_8:
      v5 = objc_alloc_init(AVMobileContentTabPresentationContext);
    }
  }

  [(AVMobileContentTabPresentationContext *)v5 setState:v7];
  [(AVMobileContentTabPresentationContext *)v5 setCustomInfoViewController:v6];
  if (a3)
  {
    v8 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
    v9 = *(a1 + 1784);
    v10 = objc_alloc_init(AVMobileContentTabTransitionContext);
    [(AVMobileContentTabTransitionContext *)v10 setDirection:v9 ^ 1];
    [(AVMobileContentTabTransitionContext *)v10 setAnimationCoordinator:v8];
    [(AVMobileContentTabPresentationContext *)v5 setTransitionContext:v10];
  }

  v11 = *(a1 + 1824);
  *(a1 + 1824) = v5;
  v12 = v5;

  v13 = *(a1 + 1824);
  if (v13)
  {
    v14 = v13;
    if (([v14 state] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v15 = 0;
      v16 = 0.0;
    }

    else
    {
      v56 = [a1 delegate];
      v58 = 0u;
      v59 = 0u;
      memset(v60, 0, sizeof(v60));
      v17 = *(a1 + 1776);
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
      v19 = *(MEMORY[0x1E695F060] + 8);
      if (v18)
      {
        v20 = *v59;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v58 + 1) + 8 * i);
            [v22 preferredContentSize];
            [v22 preferredContentSize];
            if (v19 < v23)
            {
              v19 = v23;
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v18);
      }

      v24 = *(a1 + 1232);
      v25 = [v24 contentTabsView];
      [v24 layoutMargins];
      v27 = v26;
      [v25 intrinsicContentSize];
      v29 = v28;
      [*(a1 + 1232) bounds];
      v31 = v30;
      v33 = v32;
      [*(a1 + 1232) safeAreaInsets];
      v35 = v34;

      if (objc_opt_respondsToSelector())
      {
        v36 = 16.0;
        if (v31 > v33)
        {
          v36 = 0.0;
        }

        v37 = 28.0;
        if (v27 <= 28.0)
        {
          v37 = v27;
        }

        if (v35 >= v37)
        {
          v37 = v35;
        }

        v38 = [v56 controlsViewController:a1 contentTabPresentationInfoWithPreferredHeight:v19 + v29 + v36 + v37];
        v15 = v39;
        v16 = *&v38;
      }

      else
      {
        v15 = 0;
        v16 = 0.0;
      }
    }

    [v14 setPresentationHeight:v16];
    [v14 setPresentationLayout:v15];
    [*(a1 + 1816) setBackgroundBlurActive:{objc_msgSend(*(a1 + 1824), "presentationLayout") == 0}];
  }

  [(AVMobileGlassControlsViewController *)a1 _updateControlsViewLayoutConfiguration];
  [*(a1 + 1560) invalidate];
  v40 = *(a1 + 1560);
  *(a1 + 1560) = 0;

  v57 = *(a1 + 1824);
  v41 = [a1 delegate];
  if (*(a1 + 1784) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v41 controlsViewController:a1 willBeginPresentingContentTabWithContext:v57];
  }

  if (*(a1 + 1784) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    [v41 controlsViewController:a1 willBeginDismissingContentTabWithContext:v57];
  }

  if (a3)
  {
    v42 = *(a1 + 1808);
    v43 = 0.0;
    if ([v42 isRunning] && objc_msgSend(v42, "isInterruptible"))
    {
      [v42 fractionComplete];
      v43 = v44;
      [v42 stopAnimation:1];
      [v42 finishAnimationAtPosition:2];
      v45 = *(a1 + 1808);
      *(a1 + 1808) = 0;
    }

    [*(a1 + 1232) bounds];
    v47 = (1.0 - v43) * (v46 / 0.15 * 0.15);
    v48 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:250.0 damping:30.0 initialVelocity:{0.0, 0.0}];
    v49 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v48 timingParameters:v47];

    objc_initWeak(&location, a1);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __80__AVMobileGlassControlsViewController__animateContentTabPresentationStateUpdate__block_invoke;
    v62[3] = &unk_1E7209EA8;
    objc_copyWeak(v63, &location);
    [v49 addAnimations:v62];
    *&v58 = MEMORY[0x1E69E9820];
    *(&v58 + 1) = 3221225472;
    *&v59 = __80__AVMobileGlassControlsViewController__animateContentTabPresentationStateUpdate__block_invoke_2;
    *(&v59 + 1) = &unk_1E7209618;
    objc_copyWeak(v60, &location);
    [v49 addCompletion:&v58];
    objc_storeStrong((a1 + 1808), v49);
    v50 = *(a1 + 1808);
    if (!v50)
    {
      [*(a1 + 1816) updateSelectedCustomInfoViewController];
      v50 = *(a1 + 1808);
    }

    [v50 startAnimation];
    objc_destroyWeak(v60);
    objc_destroyWeak(v63);
    objc_destroyWeak(&location);

    isContentTabPresentationState = [(AVMobileGlassControlsViewController *)a1 _isContentTabPresentationStatePresenting];
    v52 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    if (*(a1 + 1784) == 1 && isContentTabPresentationState)
    {
      [*(a1 + 1816) selectInitialCustomInfoViewController];
    }
  }

  else
  {
    [(AVMobileGlassControlsViewController *)a1 _updateControlsViewLayoutConfiguration];
    if (!*(a1 + 1808))
    {
      [*(a1 + 1816) updateSelectedCustomInfoViewController];
    }

    v52 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
    if ((*(a1 + 1784) & 1) == 0)
    {
      v53 = *(a1 + 1824);
      *(a1 + 1824) = 0;

      [objc_opt_class() autoHideInterval];
      [a1 flashControlsWithDuration:?];
    }
  }

  v54 = *(a1 + v52[948]);
  if (v54)
  {
    v55 = [v54 state] == 1;
  }

  else
  {
    v55 = 1;
  }

  [*(a1 + 1232) setIgnoresTouches:v55];
}

- (void)_setUpPanGestureRecognizerIfNeeded
{
  if (a1)
  {
    if (!a1[235])
    {
      v2 = a1[222];
      if (v2)
      {
        if ([v2 count] && a1[154] && -[AVMobileGlassControlsViewController _isFullScreen](a1))
        {
          v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:a1 action:sel__contentTabPanGestureRecognizerTriggered_];
          [v3 setEnabled:1];
          [v3 setDelegate:a1];
          [v3 _setCanPanHorizontally:0];
          v4 = a1[235];
          a1[235] = v3;
        }
      }
    }
  }
}

- (void)_setUpTapGestureRecognizerIfNeeded
{
  if (!*(a1 + 1832) && *(a1 + 1784) == 1 && *(a1 + 1232) && [(AVMobileGlassControlsViewController *)a1 _isFullScreen])
  {
    v2 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:a1 action:sel__contentTabTapGestureRecognizerTriggered_];
    [v2 setDelegate:a1];
    [v2 setEnabled:1];
    [v2 setNumberOfTapsRequired:1];
    [*(a1 + 1232) addGestureRecognizer:v2];
    v3 = *(a1 + 1832);
    *(a1 + 1832) = v2;
  }
}

void __80__AVMobileGlassControlsViewController__animateContentTabPresentationStateUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[228];
    v4 = [v3 transitionContext];
    v5 = [v4 animationCoordinator];
    memset(&v15, 0, sizeof(v15));
    v6 = [v4 direction];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    if (v6)
    {
      *&v15.a = *MEMORY[0x1E695EFD0];
      *&v15.c = v7;
      *&v15.tx = *(MEMORY[0x1E695EFD0] + 32);
    }

    else
    {
      *&v14.a = *MEMORY[0x1E695EFD0];
      *&v14.c = v7;
      *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformRotate(&v15, &v14, 1.57079633);
    }

    v8 = [*(v2 + 1232) titlebarView];
    v9 = [v8 infoAffordance];
    v14 = v15;
    [v9 setTransform:&v14];

    [(AVMobileGlassControlsViewController *)v2 _updateControlsViewLayoutConfiguration];
    v10 = [v2 view];
    [v10 layoutIfNeeded];

    [(AVMobileGlassControlsViewController *)v2 _updateControlsVisibilityStateAnimated:?];
    [(AVMobileGlassControlsViewController *)v2 _updateLegibleContentInsetsAvoidingControlsUIIfNeeded];
    if ([*(v2 + 1776) count] <= 1)
    {
      v11 = [*(v2 + 1232) contentTabsView];
      v12 = v11;
      v13 = 0.0;
      if (*(v2 + 1784))
      {
        v13 = 1.0;
      }

      [v11 setAlpha:v13];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 performCoordinatedAnimations];
    }
  }
}

void __80__AVMobileGlassControlsViewController__animateContentTabPresentationStateUpdate__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[228];
    v6 = [v5 transitionContext];
    v7 = [v6 animationCoordinator];
    v8 = [v6 direction];
    v9 = *MEMORY[0x1E695EFD0];
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    *&v31.a = *MEMORY[0x1E695EFD0];
    *&v31.c = v10;
    v11 = *(MEMORY[0x1E695EFD0] + 32);
    *&v31.tx = v11;
    if (a2)
    {
      if (v8)
      {
        *(v4 + 1784) = 1;
        v12 = *(v4 + 1824);
        if (v12)
        {
          [v12 state];
        }

        [*(v4 + 1232) setIgnoresTouches:?];
        [v5 setState:0];
        [v5 setTransitionContext:0];
      }

      else
      {
        v24 = v11;
        v26 = v10;
        v28 = v9;
        v16 = *(v4 + 1824);
        *(v4 + 1824) = 0;

        *(v4 + 1784) = 0;
        [*(v4 + 1816) invalidateContentTabsSelection];
        v17 = *(v4 + 1824);
        if (v17)
        {
          v18 = [v17 state] == 1;
        }

        else
        {
          v18 = 1;
        }

        [*(v4 + 1232) setIgnoresTouches:{v18, v24, v26, v28}];
        [objc_opt_class() autoHideInterval];
        [v4 flashControlsWithDuration:?];
        v19 = [*(v4 + 1232) titlebarView];
        v20 = [v19 infoAffordance];
        *&v30.a = v29;
        *&v30.c = v27;
        *&v30.tx = v25;
        [v20 setTransform:&v30];
      }
    }

    else if (v8)
    {
      v13 = *(v4 + 1824);
      *(v4 + 1824) = 0;

      [*(v4 + 1816) invalidateContentTabsSelection];
      v14 = *(v4 + 1824);
      if (v14)
      {
        v15 = [v14 state] == 1;
      }

      else
      {
        v15 = 1;
      }

      [*(v4 + 1232) setIgnoresTouches:v15];
      [objc_opt_class() autoHideInterval];
      [v4 flashControlsWithDuration:?];
    }

    else
    {
      [v5 setState:0];
      [v5 setTransitionContext:0];
      CGAffineTransformMakeRotation(&v31, 1.57079633);
    }

    v21 = [*(v4 + 1232) titlebarView];
    v22 = [v21 infoAffordance];
    v30 = v31;
    [v22 setTransform:&v30];

    [(AVMobileGlassControlsViewController *)v4 _updateControlsViewLayoutConfiguration];
    [(AVMobileGlassControlsViewController *)v4 _setNeedsControlsVisibilityStateUpdate];
    [*(v4 + 1232) setNeedsLayout];
    [*(v4 + 1232) layoutIfNeeded];
    v23 = *(v4 + 1808);
    *(v4 + 1808) = 0;

    if (!*(v4 + 1808))
    {
      [*(v4 + 1816) updateSelectedCustomInfoViewController];
    }

    [(AVMobileGlassControlsViewController *)v4 _updateLegibleContentInsetsAvoidingControlsUIIfNeeded];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 didFinishAnimations:a2 == 0];
    }
  }
}

- (void)_setNeedsControlsVisibilityStateUpdate
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 1552) & 1) == 0 && *(a1 + 1216) == 1)
  {
    *(a1 + 1552) = 1;
    v2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v4[0] = *MEMORY[0x1E695DA28];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [v2 performSelector:sel__updateControlsVisibilityStateIfNeededAnimated_ target:a1 argument:MEMORY[0x1E695E118] order:0 modes:v3];
  }
}

- (void)_updateLegibleContentInsetsAvoidingControlsUIIfNeeded
{
  if (!a1)
  {
    return;
  }

  v120 = *MEMORY[0x1E69DDCE0];
  v121 = *(MEMORY[0x1E69DDCE0] + 16);
  v119 = *(MEMORY[0x1E69DDCE0] + 24);
  if ([a1 visibleControls])
  {
    v2 = [*(a1 + 1232) playbackControlsView];
    v3 = [*(a1 + 1232) timelineView];
    v4 = [*(a1 + 1232) titlebarView];
    v5 = [*(a1 + 1232) contentTabsView];
    v6 = *(a1 + 1232);
    [v2 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v118 = v2;
    v15 = [v2 superview];
    [v6 convertRect:v15 fromView:{v8, v10, v12, v14}];
    v116 = v17;
    v117 = v16;
    v115 = v18;
    v113 = v19;

    v20 = *(a1 + 1232);
    [v3 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v3 superview];
    [v20 convertRect:v29 fromView:{v22, v24, v26, v28}];
    v106 = v30;
    v107 = v31;
    v108 = v32;
    v109 = v33;

    v34 = *(a1 + 1232);
    [v4 frame];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [v4 superview];
    [v34 convertRect:v43 fromView:{v36, v38, v40, v42}];
    v114.origin.x = v44;
    v114.origin.y = v45;
    v114.size.width = v46;
    v114.size.height = v47;

    v48 = *(a1 + 1232);
    [v5 frame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = [v5 superview];
    [v48 convertRect:v57 fromView:{v50, v52, v54, v56}];
    v102 = v58;
    v103 = v59;
    v104 = v60;
    v105 = v61;

    [*(a1 + 1232) bounds];
    Height = CGRectGetHeight(v123);
    v62 = [a1 visibleControls];
    v63 = [a1 visibleControls];
    v64 = [a1 visibleControls];
    v65 = [a1 visibleControls];
    v66 = [a1 playerController];
    [v66 contentDimensions];
    v68 = v67;
    v70 = v69;

    [*(a1 + 1232) bounds];
    v110 = v71;
    v111 = v72;
    v74 = v73;
    v76 = v75;
    v77 = [a1 isVideoScaled];
    v78 = *MEMORY[0x1E695F058];
    v79 = *(MEMORY[0x1E695F058] + 8);
    v80 = *(MEMORY[0x1E695F058] + 16);
    v81 = *(MEMORY[0x1E695F058] + 24);
    v82 = v81;
    v83 = v80;
    v84 = v79;
    v85 = *MEMORY[0x1E695F058];
    if (v70 != 0.0)
    {
      v82 = *(MEMORY[0x1E695F058] + 24);
      v83 = *(MEMORY[0x1E695F058] + 16);
      v84 = *(MEMORY[0x1E695F058] + 8);
      v85 = *MEMORY[0x1E695F058];
      if (v68 != 0.0)
      {
        v86 = v74 / v68;
        if (v77 == v74 / v68 < v76 / v70)
        {
          v86 = v76 / v70;
        }

        CGAffineTransformMakeScale(&v122, v86, v86);
        v83 = v70 * v122.c + v122.a * v68;
        v82 = v70 * v122.d + v122.b * v68;
        v85 = v110 - (v83 - v74) * 0.5;
        v84 = v111 - (v82 - v76) * 0.5;
      }
    }

    if ((v62 & 8) == 0)
    {
      if ((v63 & 0x20) != 0)
      {
        MaxY = CGRectGetMaxY(*&v85);
        x = v114.origin.x;
        y = v114.origin.y;
        width = v114.size.width;
        v91 = v114.size.height;
      }

      else if (v64)
      {
        MaxY = CGRectGetMaxY(*&v85);
        x = v106;
        y = v107;
        width = v108;
        v91 = v109;
      }

      else
      {
        MaxY = 0.0;
        x = v78;
        y = v79;
        width = v80;
        v91 = v81;
        if ((v65 & 0x40) != 0)
        {
          MaxY = CGRectGetMaxY(*&v85);
          x = v102;
          y = v103;
          width = v104;
          v91 = v105;
        }
      }

      goto LABEL_23;
    }

    if ((v63 & 0x20) != 0)
    {
      MaxY = CGRectGetMinY(v114);
      y = v116;
      x = v117;
      width = v115;
    }

    else
    {
      y = v116;
      x = v117;
      width = v115;
      if (v64)
      {
        v92 = v106;
        v93 = v107;
        v94 = v108;
        v95 = v109;
        goto LABEL_21;
      }

      MaxY = 0.0;
      if ((v65 & 0x40) != 0)
      {
        v92 = v102;
        v93 = v103;
        v94 = v104;
        v95 = v105;
LABEL_21:
        MinY = CGRectGetMinY(*&v92);
        x = v117;
        MaxY = MinY;
      }
    }

    v91 = v113;
LABEL_23:
    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = v91;
    v127.origin.x = v78;
    v97 = x;
    v127.origin.y = v79;
    v127.size.width = v80;
    v127.size.height = v81;
    if (!CGRectEqualToRect(v124, v127))
    {
      v125.origin.x = v97;
      v125.origin.y = y;
      v125.size.width = width;
      v125.size.height = v91;
      if (MaxY - CGRectGetMaxY(v125) < 60.0)
      {
        v126.origin.x = v97;
        v126.origin.y = y;
        v126.size.width = width;
        v126.size.height = v91;
        MaxY = CGRectGetMinY(v126);
      }

      v121 = Height - MaxY + 10.0;
    }
  }

  v98.f64[0] = v121;
  v98.f64[1] = v119;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 1744), v120), vceqq_f64(*(a1 + 1760), v98)))) & 1) == 0)
  {
    *(a1 + 1744) = v120;
    *(a1 + 1760) = v121;
    *(a1 + 1768) = v119;
    v99 = [a1 delegate];
    v100 = objc_opt_respondsToSelector();

    if (v100)
    {
      v101 = [a1 delegate];
      [v101 controlsViewControllerDidUpdateLegibleContentInsetsAvoidingUI:a1];
    }
  }
}

- (id)_timelineView
{
  if (a1)
  {
    a1 = [a1[154] timelineView];
    v1 = vars8;
  }

  return a1;
}

- (void)_updateControlsVisibilityStateAnimated:(uint64_t)a1
{
  location[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  [(AVMobileGlassControlsViewController *)a1 _cancelOutstandVisibilityUpdates];
  *(a1 + 1552) = 0;
  v4 = *(a1 + 1536);
  v3 = *(a1 + 1544);
  if ([a1 visibilityPolicy] != 1)
  {
    v89 = v4;
    v91 = v3;
    v7 = [*(a1 + 1232) volumeControlsView];
    v8 = [a1 excludedControls];
    v95 = [a1 includedControls];
    v9 = [v7 isTracking];
    v96 = [(AVMobileGlassControlsViewController *)a1 _isScrubbing];
    isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
    v94 = *(a1 + 1784);
    v88 = [a1 playerController];
    if ([v88 hasLiveStreamingContent])
    {
      v10 = [v88 canSeek];
    }

    else
    {
      v10 = 1;
    }

    if (([(AVMobileGlassControlsViewController *)a1 _isFullScreen]& 1) != 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = [a1 prefersFullScreenStyleForEmbeddedMode];
    }

    if (v94)
    {
      v12 = [*(a1 + 1824) presentationLayout] != 0;
    }

    else
    {
      v12 = 1;
    }

    v85 = v12;
    v13 = isFull;
    if (!(v9 & 1 | ((isFull & 1) == 0)))
    {
      if (*(a1 + 1416))
      {
        v13 = 1;
      }

      else
      {
        v13 = *(a1 + 1784);
      }
    }

    if (v96 && [v88 hasSeekableLiveStreamingContent])
    {
      v83 = [v88 isAtLiveEdge] ^ 1;
    }

    else
    {
      v83 = 0;
    }

    v14 = [a1 visibilityPolicy];
    v84 = v11;
    if (v14)
    {
      v15 = v14;
      if (v14 == 2)
      {
        if (([a1 temporarilyVisible] & 1) == 0)
        {
          v16 = *(a1 + 1584) > 0;
LABEL_31:
          v93 = v16;
          goto LABEL_32;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v93 = 0;
LABEL_32:
          v18 = [*(a1 + 1232) detachedViews];
          v19 = 0;
          if (((v93 | v13) & 1) != 0 && (v8 & 0x200) == 0)
          {
            v19 = [v88 hasEnabledAudio];
          }

          if (v93)
          {
            HIDWORD(v79) = (v8 & 0x20) == 0;
            if ((~v8 & 0x1C00) != 0)
            {
              v20 = (v8 & 8) == 0;
              v23 = [*(a1 + 1232) titlebarView];
              v82 = [v23 hasVisibleContent];

              LODWORD(v79) = [(AVMobileGlassControlsViewController *)a1 _timelineHasBackgroundMaterial];
              v21 = 1;
              if ((v8 & 8) != 0)
              {
                v24 = 0;
                if (v19)
                {
                  goto LABEL_59;
                }

                goto LABEL_56;
              }
            }

            else
            {
              LODWORD(v79) = [(AVMobileGlassControlsViewController *)a1 _timelineHasBackgroundMaterial];
              v20 = 0;
              v21 = 1;
              if ((v8 & 8) != 0)
              {
                v24 = 0;
                v82 = 0;
                if (v19)
                {
LABEL_59:
                  v27 = [*(a1 + 1232) volumeControlsView];
                  v28 = (v95 >> 1) & 1 & ~[v18 containsObject:v27];

                  if ((v28 & (v96 ^ 1)) != 0)
                  {
                    v24 |= 2uLL;
                  }

                  if (!v21)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_62;
                }

LABEL_56:
                if (!v21)
                {
LABEL_64:
                  if (v85)
                  {
                    v31 = [*(a1 + 1232) playbackControlsView];
                    v32 = (v95 >> 3) & 1 & ~[v18 containsObject:v31];

                    if ((v32 & (v96 ^ 1)) != 0)
                    {
                      v24 |= 8uLL;
                    }
                  }

                  v33 = [*(a1 + 1232) auxiliaryControlsView];
                  v34 = [v18 containsObject:v33];

                  if (v34 & 1 | v20 & 1 | ((v95 & 0x10) == 0) | v96 & v84 & 1 | v94 & 1)
                  {
                    v6 = v24;
                  }

                  else
                  {
                    v6 = v24 | 0x10;
                  }

                  if (v82)
                  {
                    v35 = [*(a1 + 1232) titlebarView];
                    v36 = [v18 containsObject:v35];
                    if ((v95 & 0x20) != 0)
                    {
                      v37 = v36;
                    }

                    else
                    {
                      v37 = 1;
                    }

                    if ((v37 | v96))
                    {
                    }

                    else
                    {

                      if (isFull & ~v94)
                      {
                        v6 |= 0x20uLL;
                      }
                    }
                  }

                  if (v81)
                  {
                    v38 = [*(a1 + 1232) contentTabsView];
                    v39 = v7;
                    v40 = v96;
                    v41 = v96 ^ 1;
                    v42 = (v95 >> 6) & 1 & ~[v18 containsObject:v38] & (v96 ^ 1);

                    if ((v42 & isFull) != 0)
                    {
                      v6 |= 0x40uLL;
                    }
                  }

                  else
                  {
                    v39 = v7;
                    v40 = v96;
                    v41 = v96 ^ 1;
                  }

                  v43 = 0x1000000;
                  if (v94)
                  {
                    v43 = 0;
                  }

                  if (!v83)
                  {
                    v43 = 0;
                  }

                  v44 = (v6 << 63 >> 63) & v43;
                  v45 = 0x10000;
                  if ((v40 & v80) == 0)
                  {
                    v45 = 0;
                  }

                  v5 = v45 | v93 & (v41 | v80) | ((v6 == 2) << 8) | v44;

                  v4 = v89;
                  v3 = v91;
                  goto LABEL_90;
                }

LABEL_62:
                v29 = [*(a1 + 1232) displayModeControlsView];
                v30 = (v95 >> 2) & 1 & ~[v18 containsObject:v29];

                if ((v30 & (v96 ^ 1)) != 0)
                {
                  v24 |= 4uLL;
                }

                goto LABEL_64;
              }

              v82 = 0;
            }
          }

          else
          {
            if ((v8 & 8) != 0)
            {
              v22 = 0;
            }

            else
            {
              v22 = v96;
            }

            if (*(a1 + 1784) == 1)
            {
              HIDWORD(v79) = (v8 & 0x20) == 0;
              LODWORD(v79) = [(AVMobileGlassControlsViewController *)a1 _timelineHasBackgroundMaterial];
              v20 = 1;
              v85 = 0;
              if ((v22 & 1) == 0)
              {
                v24 = 0;
                v21 = 1;
                v82 = 0;
                if (v19)
                {
                  goto LABEL_59;
                }

                goto LABEL_56;
              }

              v21 = 1;
            }

            else
            {
              LODWORD(v79) = [(AVMobileGlassControlsViewController *)a1 _timelineHasBackgroundMaterial];
              v85 = 0;
              if ((v22 & 1) == 0)
              {
                v24 = 0;
                v20 = 1;
                HIDWORD(v79) = 0;
                v82 = 0;
                v21 = 0;
                if (v19)
                {
                  goto LABEL_59;
                }

                goto LABEL_56;
              }

              HIDWORD(v79) = 0;
              v21 = 0;
            }

            v82 = 0;
          }

          v25 = [*(a1 + 1232) timelineView];
          v20 = !v93;
          v26 = v95 & ~[v18 containsObject:v25] & ~v94 & v10;

          v24 = v26 & 1;
          if (v19)
          {
            goto LABEL_59;
          }

          goto LABEL_56;
        }

        v17 = _AVLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 134217984;
          *(location + 4) = v15;
          _os_log_error_impl(&dword_18B49C000, v17, OS_LOG_TYPE_ERROR, "Error: Unrecognized AVControlsVisibilityPolicy %ld", location, 0xCu);
        }
      }
    }

    v16 = 1;
    goto LABEL_31;
  }

  v5 = 0;
  v6 = 0;
LABEL_90:
  if (*(a1 + 1232))
  {
    if (v4 != v6 || ((v5 ^ v3) & 1) != 0)
    {
      v90 = v4;
      v92 = v3;
      if ((v5 & 0x1000000) != 0)
      {
        v47 = [a1 playerController];
        v48 = [v47 hasSeekableLiveStreamingContent];

        v49 = [*(a1 + 1232) liveEdgeContentTagView];
        v50 = (v49 == 0) & v48;

        if (v50 == 1)
        {
          v51 = [AVMobileGlassContentTagView alloc];
          v52 = +[AVMobileContentTag liveEdgeContentTag];
          v53 = [(AVMobileGlassContentTagView *)v51 initWithContentTag:v52 withStyleSheet:*(a1 + 1224)];

          [(AVGlassBackedView *)v53 setWantsCapsuleShape:1];
          v54 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
          [v54 frameForSliderMark:*(a1 + 1672)];
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v62 = v61;

          [(AVMobileGlassContentTagView *)v53 setFrame:[(AVMobileGlassControlsViewController *)a1 _frameForLiveEdgeMarkContentTag:v56, v58, v60, v62]];
          [*(a1 + 1232) setLiveEdgeContentTagView:v53];
        }
      }

      v63 = objc_alloc_init(AVPlayerViewControllerAnimationCoordinator);
      v64 = [*(a1 + 1232) timelineView];
      v65 = [a1 delegate];
      if (v65)
      {
        v66 = [a1 delegate];
        v67 = objc_opt_respondsToSelector();

        if (v67)
        {
          v68 = [a1 delegate];
          [v68 controlsViewController:a1 willBeginUpdatingVisibleControlsTo:v6 withAnimationCoordinator:v63];
        }
      }

      [*(a1 + 1232) setHidden:0];
      if ((v6 != 0) == ([a1 visibleControls] == 0))
      {
        [(AVMobileGlassControlsViewController *)a1 _updateTimeResolver];
        if (v6)
        {
          [v64 layoutIfNeeded];
        }

        [(AVMobileGlassControlsViewController *)a1 _updatePrefersVolumeSliderIncludedAnimated:?];
      }

      if ((([a1 visibleControls] ^ v6) & 2) != 0)
      {
        [(AVMobileGlassControlsViewController *)a1 _updatePrefersSystemVolumeHUDHidden];
      }

      if (a2)
      {
        v69 = *(a1 + 1568);
        v70 = 1.0;
        if (v69 && [v69 isRunning] && objc_msgSend(*(a1 + 1568), "isInterruptible"))
        {
          [*(a1 + 1568) fractionComplete];
          v70 = v71;
          [*(a1 + 1568) stopAnimation:1];
          [*(a1 + 1568) finishAnimationAtPosition:2];
          v72 = *(a1 + 1568);
          *(a1 + 1568) = 0;
        }

        objc_initWeak(location, a1);
        v73 = objc_alloc(MEMORY[0x1E69DD278]);
        if (v70 > 1.0)
        {
          v70 = 1.0;
        }

        v100[0] = MEMORY[0x1E69E9820];
        v100[1] = 3221225472;
        v100[2] = __78__AVMobileGlassControlsViewController__updateControlsVisibilityStateAnimated___block_invoke;
        v100[3] = &unk_1E72091D8;
        objc_copyWeak(v102, location);
        v102[1] = v6;
        v102[2] = v5;
        v74 = v63;
        v101 = v74;
        v75 = [v73 initWithDuration:3 curve:v100 animations:v70 * 0.15];
        v76 = *(a1 + 1568);
        *(a1 + 1568) = v75;

        v77 = *(a1 + 1568);
        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 3221225472;
        v97[2] = __78__AVMobileGlassControlsViewController__updateControlsVisibilityStateAnimated___block_invoke_2;
        v97[3] = &unk_1E7209200;
        v78 = v74;
        v98 = v78;
        objc_copyWeak(v99, location);
        v99[1] = v6;
        v99[2] = v5;
        [v77 addCompletion:v97];
        *(a1 + 1576) = v6 == 0;
        [*(a1 + 1568) startAnimation];
        *(a1 + 1536) = v6;
        *(a1 + 1544) = v5;
        [(AVMobileGlassControlsViewController *)a1 _didBeginUpdatingControlsVisibilityStateFromState:v90 toState:v92 withAnimationCoordinator:v6, v5, v78];
        objc_destroyWeak(v99);

        objc_destroyWeak(v102);
        objc_destroyWeak(location);
      }

      else
      {
        *(a1 + 1576) = v6 == 0;
        [(AVMobileGlassControlsViewController *)a1 _updateViewVisibilityStatesTo:v6, v5];
        [(AVMobileGlassControlsViewController *)a1 _updateControlsViewLayoutConfiguration];
        [(AVPlayerViewControllerAnimationCoordinator *)v63 performCoordinatedAnimations];
        *(a1 + 1536) = v6;
        *(a1 + 1544) = v5;
        [(AVMobileGlassControlsViewController *)a1 _didBeginUpdatingControlsVisibilityStateFromState:v90 toState:v92 withAnimationCoordinator:v6, v5, v63];
        [(AVPlayerViewControllerAnimationCoordinator *)v63 didFinishAnimations:1];
        [(AVMobileGlassControlsViewController *)a1 _didEndUpdatingControlsVisibilityStateTo:v6 completed:v5, 1];
      }

      [(AVMobileGlassControlsViewController *)a1 _updateLegibleContentInsetsAvoidingControlsUIIfNeeded];
    }
  }
}

- (void)_cancelOutstandVisibilityUpdates
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v2 cancelPerformSelector:sel__updateControlsVisibilityStateIfNeededAnimated_ target:a1 argument:0];
  }
}

uint64_t __78__AVMobileGlassControlsViewController__updateControlsVisibilityStateAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateViewVisibilityStatesTo:*(a1 + 56)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [(AVMobileGlassControlsViewController *)v3 _updateControlsViewLayoutConfiguration];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 view];
  [v5 layoutIfNeeded];

  v6 = *(a1 + 32);

  return [v6 performCoordinatedAnimations];
}

uint64_t __78__AVMobileGlassControlsViewController__updateControlsVisibilityStateAnimated___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 0;
  [*(a1 + 32) didFinishAnimations:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AVMobileGlassControlsViewController *)WeakRetained _didEndUpdatingControlsVisibilityStateTo:*(a1 + 56) completed:v3];

  v5 = *(a1 + 32);

  return [v5 didFinishAnimations:v3];
}

- (void)_didBeginUpdatingControlsVisibilityStateFromState:(uint64_t)a3 toState:(uint64_t)a4 withAnimationCoordinator:(uint64_t)a5
{
  v16 = a6;
  v9 = [a1 delegate];
  if (v9)
  {
    v10 = [a1 delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [a1 delegate];
      [v12 controlsViewController:a1 didBeginUpdatingVisibleControlsTo:a4 withAnimationCoordinator:v16];
    }
  }

  [(AVMobileGlassControlsViewController *)a1 _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
  if (!a4)
  {
    [a1 cleanUpTips];
  }

  if ((a2 & 0x10) != 0 && (a4 & 0x10) == 0)
  {
    v13 = [a1[154] auxiliaryControlsView];
    [v13 interruptActiveInteractions];
  }

  if ((a2 & 4) != 0 && (a4 & 4) == 0)
  {
    v14 = [a1[154] displayModeControlsView];
    [v14 interruptActiveInteractions];
  }

  if ((a2 & 2) != 0 && (a4 & 2) == 0)
  {
    v15 = [a1[154] volumeControlsView];
    [v15 interruptActiveInteractions];
  }
}

- (void)_updateViewVisibilityStatesTo:(unint64_t)a3
{
  if (a1)
  {
    v24 = [*(a1 + 1232) auxiliaryControlsView];
    v6 = [*(a1 + 1232) contentTabsView];
    v23 = [*(a1 + 1232) backgroundView];
    v7 = [*(a1 + 1232) displayModeControlsView];
    v22 = [*(a1 + 1232) liveEdgeContentTagView];
    v20 = [*(a1 + 1232) playbackControlsView];
    v8 = [*(a1 + 1232) timelineView];
    v9 = [*(a1 + 1232) titlebarView];
    v10 = [*(a1 + 1232) volumeControlsView];
    v21 = [*(a1 + 1232) transportControlsView];
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

    if ((a3 & 0x1000000) != 0)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    [v8 setAlpha:v11];
    [v6 setAlpha:v12];
    [v10 setAlpha:v13];
    [v7 setAlpha:v14];
    [v20 setAlpha:v15];
    [v24 setAlpha:v16];
    [v9 setAlpha:v17];
    [v22 setAlpha:v18];
    [v8 setBackgroundMaterialized:a2 & 1];
    [v24 setBackgroundMaterialized:(a2 & 0x10) >> 4];
    [v21 setBackgroundMaterialized:(a2 & 0x11) != 0];
    [v6 setBackgroundMaterialized:(a2 & 0x40) >> 6];
    [v10 setBackgroundMaterialized:(a2 & 2) >> 1];
    [v7 setBackgroundMaterialized:(a2 & 4) >> 2];
    [v20 setBackgroundMaterialized:(a2 & 8) >> 3];
    [v22 setBackgroundMaterialized:(a3 & 0x1000000) >> 24];
    [v23 setActive:a3 & 1];
    v19 = [v10 backgroundView];
    [v19 setActive:(a3 >> 8) & 1];

    [v8 setDrawsShadow:BYTE2(a3) & 1u & a2];
  }
}

- (id)_didEndUpdatingControlsVisibilityStateTo:(uint64_t)a3 completed:(int)a4
{
  if (!result || !a4)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  if (!a2)
  {
    [result[154] setHidden:1];
  }

  [(AVMobileGlassControlsViewController *)v5 _updateTimeResolver];
  [(AVMobileGlassControlsViewController *)v5 _updatePrefersSystemVolumeHUDHidden];
  result = v5[228];
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
    v7 = v5[227];

    return [v7 invalidateContentTabsSelection];
  }

  return result;
}

- (void)_updateTimeResolver
{
  if (a1 && *(a1 + 1464))
  {
    v2 = *(a1 + 1232);
    if (v2 && *(a1 + 1216) == 1 && ([v2 isHidden] & 1) == 0)
    {
      v5 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
      v6 = [a1 traitCollection];
      [v6 displayScale];
      v8 = v7;

      [v5 bounds];
      v10 = fmax(v8 * v9, 1.0);
      v11 = [a1 playerController];
      v12 = [v11 interstitialController];

      v13 = [v12 currentInterstitialTimeRange];

      v14 = [a1 playerController];
      v20 = v14;
      if (v13)
      {
        v15 = [v14 timeline];

        v16 = [v12 currentInterstitialTimeRange];
        v17 = [v16 interstice];
        v18 = [v17 isCollapsedInTimeLine];

        if (v18 && v15)
        {
          v19 = [v12 interstitialTimingController];
        }

        else
        {
          v19 = [a1 playerController];
        }

        v20 = v19;
      }

      [*(a1 + 1464) setResolution:v10];
    }

    else
    {
      v20 = 0;
    }

    v3 = [*(a1 + 1464) playerController];

    v4 = v20;
    if (v3 != v20)
    {
      [*(a1 + 1464) setPlayerController:v20];
      [(AVMobileGlassControlsViewController *)a1 _updateTimelineValues];
      v4 = v20;
    }
  }
}

- (void)_updatePrefersSystemVolumeHUDHidden
{
  if (a1)
  {
    if (([a1 excludedControls] & 0x200) != 0)
    {
      v5 = 0;
    }

    else
    {
      v2 = [a1 pipController];
      v3 = [v2 isPictureInPictureActive];

      v4 = [a1 includedControls];
      if ([(AVMobileGlassControlsViewController *)a1 _isFullScreen]&& (v3 & 1) == 0 && (v4 & 2) != 0)
      {
        v5 = 1;
      }

      else
      {
        v6 = a1[192];
        v5 = (v6 >> 1) & 1 & ~([(AVMobileGlassControlsViewController *)a1 _isFullScreen]| v3);
      }
    }

    v7 = [a1 volumeController];
    [v7 setPrefersSystemVolumeHUDHidden:v5];
  }
}

- (void)_updateTransportControlsLayoutGuidesConstraintsIfNeeded
{
  if (a1)
  {
    v2 = a1[154];
    if (v2)
    {
      if (a1[203] && a1[204] && a1[205])
      {
        v22 = [v2 auxiliaryControlsView];
        v3 = [a1[154] timelineView];
        v4 = [a1[154] titlebarView];
        [v4 frame];
        v6 = v5;
        [v3 frame];
        v8 = v7;
        [v22 frame];
        v10 = v9;
        [a1[154] frame];
        Height = CGRectGetHeight(v24);
        v12 = [v4 isHidden];
        v13 = 0;
        if (v4 && (v12 & 1) == 0)
        {
          [v4 alpha];
          if (v14 != 1.0 || Height <= v6)
          {
            v13 = 0;
          }

          else
          {
            v13 = a1[203];
            Height = v6;
          }
        }

        if (([v3 isHidden] & 1) != 0 || !v3 || ((objc_msgSend(v3, "alpha"), v16 == 1.0) ? (v17 = Height <= v8) : (v17 = 1), v17))
        {
          v8 = Height;
        }

        else
        {
          v18 = a1[204];

          v13 = v18;
        }

        if (([v22 isHidden] & 1) == 0)
        {
          if (v22)
          {
            [v22 alpha];
            if (v19 == 1.0 && v8 > v10)
            {
              v20 = a1[205];

              v13 = v20;
            }
          }
        }

        if (!v13)
        {
          v13 = a1[206];
        }

        v21 = a1[202];
        if (v21 != v13)
        {
          [v21 setActive:0];
          objc_storeStrong(a1 + 202, v13);
          [a1[202] setActive:1];
        }
      }
    }
  }
}

- (void)_updatePrefersVolumeSliderIncludedAnimated:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 1232) volumeControlsView];
    if (([(AVMobileGlassControlsViewController *)a1 _activeRouteSupportsAdjustingVolume]& 1) != 0)
    {
      v5 = [*(a1 + 1232) volumeControlsView];
      if ([v5 isTracking] & 1) != 0 || (*(a1 + 1416))
      {
        v6 = 1;
      }

      else if ([(AVMobileGlassControlsViewController *)a1 _isFullScreen])
      {
        [*(a1 + 1232) bounds];
        v6 = v13 > 600.0;
      }

      else
      {
        v6 = 0;
      }

      if (v6 == [v4 prefersVolumeSliderIncluded])
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
      if (([v4 prefersVolumeSliderIncluded] & 1) == 0)
      {
LABEL_15:

        return;
      }

      v6 = 0;
      if (a2)
      {
LABEL_8:
        v7 = 0.0;
        if ([*(a1 + 1432) isRunning])
        {
          if ([*(a1 + 1432) isInterruptible])
          {
            [*(a1 + 1432) fractionComplete];
            v7 = v8;
            [*(a1 + 1432) stopAnimation:1];
            [*(a1 + 1432) finishAnimationAtPosition:2];
            v9 = *(a1 + 1432);
            *(a1 + 1432) = 0;
          }
        }

        objc_initWeak(&location, a1);
        v10 = objc_alloc(MEMORY[0x1E69DD278]);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __82__AVMobileGlassControlsViewController__updatePrefersVolumeSliderIncludedAnimated___block_invoke;
        v14[3] = &unk_1E720A0B8;
        objc_copyWeak(&v15, &location);
        v16 = v6;
        v11 = [v10 initWithDuration:3 curve:v14 animations:(1.0 - v7) * 0.1];
        v12 = *(a1 + 1432);
        *(a1 + 1432) = v11;

        [*(a1 + 1432) startAnimation];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
        goto LABEL_15;
      }
    }

    [v4 setPrefersVolumeSliderIncluded:v6];
    goto LABEL_15;
  }
}

- (uint64_t)_activeRouteSupportsAdjustingVolume
{
  v2 = [a1 playerController];
  v3 = [v2 isExternalPlaybackActive];

  v4 = [a1 volumeController];
  LODWORD(v2) = [v4 currentRouteHasVolumeControl];

  return (v3 ^ 1) & v2;
}

void __82__AVMobileGlassControlsViewController__updatePrefersVolumeSliderIncludedAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [(AVMobileGlassControlsViewController *)WeakRetained _volumeControlsView];
  [v3 setPrefersVolumeSliderIncluded:*(a1 + 40)];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

- (id)_volumeControlsView
{
  if (a1)
  {
    a1 = [a1[154] volumeControlsView];
    v1 = vars8;
  }

  return a1;
}

- (double)_frameForLiveEdgeMarkContentTag:(double)a3
{
  v10 = [*(a1 + 1232) liveEdgeContentTagView];
  v11 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
  v12 = [*(a1 + 1232) transportControlsView];
  [v11 convertRect:v12 toView:{a2, a3, a4, a5}];
  v14 = v13;
  v16 = v15;

  [v10 intrinsicContentSize];
  v18 = v17;

  return v14 + v16 * 0.5 - v18 * 0.5;
}

- (uint64_t)_timelineHasBackgroundMaterial
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 supportsContentTabs];

  v4 = [a1[222] count];
  if ([(AVMobileGlassControlsViewController *)a1 _isFullScreen])
  {
    v5 = v4 > 1;
    v6 = v3 & v5;
    if ((v3 & v5) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v8 = [a1 prefersFullScreenStyleForEmbeddedMode];
    v9 = v4 > 1;
    v6 = v8 & v3 & v9;
    if ((v8 & v3 & v9) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

  v10 = [a1[154] timelineView];
  [v10 setLayoutType:v7];

  return v6 & 1;
}

- (id)_displayModeControlsView
{
  if (a1)
  {
    a1 = [a1[154] displayModeControlsView];
    v1 = vars8;
  }

  return a1;
}

- (void)_updateControlsVisibilityStateIfNeededAnimated:(id)a3
{
  if (self->_needsControlsVisibilityStateUpdate)
  {
    v5 = [a3 BOOLValue];

    [(AVMobileGlassControlsViewController *)self _updateControlsVisibilityStateAnimated:v5];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contentTabTapGestureRecognizer == v4)
  {
    v7 = [(UIPanGestureRecognizer *)v4 view];
    v8 = [(AVMobileGlassControlsView *)self->_view contentTabsView];
    [(UIPanGestureRecognizer *)v5 locationInView:v8];
    v9 = [v7 hitTest:0 withEvent:?];

    v6 = v9 == 0;
  }

  else
  {
    v6 = 1;
    if (self->_contentTabPanGestureRecognizer == v4)
    {
      v10 = +[AVKitGlobalSettings shared];
      v11 = [v10 cornerPanGestureForContentTabsEnabled];

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        [(UIPanGestureRecognizer *)v5 locationInView:self->_view];
        v14 = v13;
        v16 = v15;
        [(AVMobileGlassControlsView *)self->_view bounds];
        v19 = v14 > v18 + -60.0 || v14 < 60.0;
        v12 = v19 && v16 < 60.0 || v16 > v17 + -60.0 && v19;
      }

      if (([(UIPanGestureRecognizer *)self->_contentTabPanGestureRecognizer velocityInView:self->_view], !self->_contentTabPresented) && v21 > 0.0 || (self->_contentTabViewPresentationAnimator != 0) | v12 & 1)
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)routePickerViewDidEndPresentingRoutes:(id)a3
{
  v4 = a3;
  [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DD250];
  v6 = [(AVMobileGlassControlsViewController *)self _routePickerInteractionDuration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AVMobileGlassControlsViewController_routePickerViewDidEndPresentingRoutes___block_invoke;
  v7[3] = &unk_1E7209EA8;
  objc_copyWeak(&v8, &location);
  [v5 animateWithDuration:v7 animations:0 completion:v6];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (uint64_t)_decrementUserInteractionCount
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1584);
    v3 = v2 == 1;
    v4 = v2 < 1;
    v5 = v2 - 1;
    if (!v4)
    {
      *(result + 1584) = v5;
      if (v3)
      {
        [objc_opt_class() autoHideInterval];

        return [v1 flashControlsWithDuration:?];
      }
    }
  }

  return result;
}

- (double)_routePickerInteractionDuration
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  result = 0.4;
  if (v2 == 1)
  {
    return 0.5;
  }

  return result;
}

void __77__AVMobileGlassControlsViewController_routePickerViewDidEndPresentingRoutes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)_updateBackgroundMaterial
{
  if (a1)
  {
    if (([(AVMobileGlassControlsViewController *)a1 _isFullScreen]& 1) != 0)
    {
      v2 = 1;
    }

    else if ([a1 prefersFullScreenStyleForEmbeddedMode])
    {
      v2 = 1;
    }

    else
    {
      v2 = 4;
    }

    v8 = [a1[154] contentTabsView];
    v3 = [a1[154] displayModeControlsView];
    v4 = [a1[154] liveEdgeContentTagView];
    v5 = [a1[154] playbackControlsView];
    v6 = [a1[154] volumeControlsView];
    v7 = [a1[154] transportControlsView];
    [v7 setBackgroundMaterialStyle:v2];
    [v8 setBackgroundMaterialStyle:v2];
    [v6 setBackgroundMaterialStyle:v2];
    [v3 setBackgroundMaterialStyle:v2];
    [v5 setBackgroundMaterialStyle:v2];
    [v4 setBackgroundMaterialStyle:v2];
  }
}

- (void)routePickerViewWillBeginPresentingRoutes:(id)a3
{
  v4 = a3;
  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DD250];
  v6 = [(AVMobileGlassControlsViewController *)self _routePickerInteractionDuration];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__AVMobileGlassControlsViewController_routePickerViewWillBeginPresentingRoutes___block_invoke;
  v7[3] = &unk_1E7209EA8;
  objc_copyWeak(&v8, &location);
  [v5 animateWithDuration:v7 animations:0 completion:v6];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_incrementUserInteractionCount
{
  if (a1)
  {
    v2 = *(a1 + 1584);
    if (!v2)
    {
      [(AVMobileGlassControlsViewController *)a1 _setNeedsControlsVisibilityStateUpdate];
      v2 = *(a1 + 1584);
    }

    *(a1 + 1584) = v2 + 1;
  }
}

void __80__AVMobileGlassControlsViewController_routePickerViewWillBeginPresentingRoutes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)webkitPlayerController:(id)a3 didChangeScrubbingStateTo:(BOOL)a4
{
  [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineEmphasisStateIfNeeded];
}

- (void)fullscreenControllerDidChangePresentationState:(id)a3
{
  [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];
  [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControlSpacing];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
  [(AVMobileGlassControlsViewController *)self _updateLayoutMargins];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackControlsDisplayMode];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateFullScreenState];
  [(AVMobileGlassControlsViewController *)self _updatePinnedAuxiliaryControlsIfNeeded];
  [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
  [(AVMobileGlassControlsViewController *)self _updateVolumeControllerClient];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsDisplayMode];
  [(AVMobileGlassControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];
  [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewAllowsVolumeAdjustmentState];

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineViewGlassBackgroundInclusion];
}

- (void)_updateAuxiliaryControlSpacing
{
  if (a1)
  {
    v7 = [*(a1 + 1232) auxiliaryControlsView];
    isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
    v3 = *(a1 + 1224);
    if (isFull)
    {
      [v3 controlsFullscreenInternalSpacing];
    }

    else
    {
      [v3 controlsInlineInternalSpacing];
    }

    v5 = v4;
    [v7 controlSpacing];
    if (v6 != v5)
    {
      [v7 setControlSpacing:v5];
      [*(a1 + 1232) setNeedsLayout];
    }
  }
}

- (void)_updateDisplayModeControlsButtonsInclusion
{
  if (a1)
  {
    v14 = [a1[154] displayModeControlsView];
    v2 = [a1 excludedControls];
    if (+[AVPictureInPictureController isPictureInPictureSupported])
    {
      v3 = [a1 pipController];
      v4 = [v3 isPictureInPicturePossible];
      if ((v2 & 0x100) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = [a1 fullscreenController];
    if ([v6 presentationState])
    {
      v7 = [a1 fullscreenController];
      v8 = [v7 presentationState] == 1 && (objc_msgSend(a1, "excludedControls") & 0x80) == 0;
    }

    else
    {
      v8 = ([a1 excludedControls] & 0x80) == 0;
    }

    if ([a1 showsFullScreenControl])
    {
      v9 = [a1 fullscreenController];
      v10 = [v9 presentationState] == 2 && (objc_msgSend(a1, "excludedControls") & 0x40) == 0;
    }

    else
    {
      v10 = 0;
    }

    shouldIncludeRoutePicker = [(AVMobileGlassControlsViewController *)a1 _shouldIncludeRoutePickerButton];
    [v14 setIncludesEnterFullscreenControl:v10];
    [v14 setIncludesExitFullscreenControl:v8];
    [v14 setIncludesPictureInPictureControl:v5];
    [v14 setIncludesRoutePickerControl:shouldIncludeRoutePicker];
    v12 = +[AVKitGlobalSettings shared];
    v13 = [v12 experienceControllerEnabled];

    if (v13)
    {
      [v14 setIncludesMultiviewControl:{objc_msgSend(a1, "showsMultiviewControl")}];
    }
  }
}

- (void)_updatePlaybackControlsDisplayMode
{
  if (!a1)
  {
    return;
  }

  v3 = [a1[154] playbackControlsView];
  if ([(AVMobileGlassControlsViewController *)a1 _isFullScreen])
  {
    if (([v3 isFullscreen] & 1) == 0)
    {
      v2 = 1;
LABEL_6:
      [v3 setFullscreen:v2];
      [a1[154] setNeedsLayout];
    }
  }

  else
  {
    v2 = [a1 prefersFullScreenStyleForEmbeddedMode];
    if (v2 != [v3 isFullscreen])
    {
      goto LABEL_6;
    }
  }
}

- (void)_updateFullScreenState
{
  if (a1)
  {
    v4 = [a1[154] displayModeControlsView];
    v2 = [a1 fullscreenController];
    v3 = [v2 presentationState];

    if (v3 <= 2)
    {
      [v4 setFullscreen:(3u >> (v3 & 7)) & 1];
    }

    [(AVMobileGlassControlsViewController *)a1 _updateBackgroundMaterial];
  }
}

- (void)_updatePinnedAuxiliaryControlsIfNeeded
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
    v3 = [a1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    [*(a1 + 1232) bounds];
    v6 = v5;
    v8 = v7;
    [*(a1 + 1232) bounds];
    v10 = v9;
    v11 = [a1 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = v13;
    if (isFull)
    {
      v16 = v6 <= v8 || v12 != 0;
      v17 = v10 > 600.0 && v4 == 1;
      if (v17 || !v16)
      {
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v23 = [*(a1 + 1232) auxiliaryControlsView];
        v18 = [v23 controls];

        v24 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v35;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v35 != v26)
              {
                objc_enumerationMutation(v18);
              }

              v28 = *(*(&v34 + 1) + 8 * i);
              if (([v28 canOnlyAppearInOverflowMenu] & 1) == 0)
              {
                [v14 addObject:v28];
              }
            }

            v25 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v25);
        }

        goto LABEL_35;
      }

      if (*(a1 + 1288))
      {
        [v13 addObject:?];
      }
    }

    if (*(a1 + 1280))
    {
      [v14 addObject:?];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = *(a1 + 1656);
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v14 addObject:{*(*(&v30 + 1) + 8 * j), v30}];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v20);
    }

LABEL_35:

    v29 = *(a1 + 1240);
    *(a1 + 1240) = v14;

    [(AVMobileGlassControlsViewController *)a1 _updateControlsViewLayoutConfiguration];
  }
}

- (void)_updateSecondaryPlaybackControlsTypes
{
  if (a1)
  {
    v2 = [a1[154] playbackControlsView];
    v3 = [a1 secondaryPlaybackControlsType];
    if (v3 == 1)
    {
      [v2 setBackwardSecondaryControlIcon:1];
      v4 = v2;
      v5 = 1;
    }

    else
    {
      if (v3)
      {
        v6 = _AVLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v7 = 0;
          _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Unrecognized AVMobileSecondaryPlaybackControlsType", v7, 2u);
        }

        goto LABEL_10;
      }

      [v2 setBackwardSecondaryControlIcon:0];
      v4 = v2;
      v5 = 0;
    }

    [v4 setForwardSecondaryControlIcon:v5];
LABEL_10:
  }
}

- (void)_updateVolumeControllerClient
{
  if (a1)
  {
    v2 = [*(a1 + 1232) window];
    v3 = [v2 windowScene];
    v4 = [v3 session];
    v6 = [v4 persistentIdentifier];

    v5 = [a1 volumeController];
    [v5 setClientWithIdentifier:*(a1 + 1456) forWindowSceneSessionWithIdentifier:v6];

    [(AVMobileGlassControlsViewController *)a1 _updatePrefersSystemVolumeHUDHidden];
  }
}

- (void)_updateVolumeControlsDisplayMode
{
  if (a1)
  {
    v2 = [a1[154] volumeControlsView];
    [v2 setFullscreen:-[AVMobileGlassControlsViewController _isFullScreen](a1)];
    [a1[154] setNeedsLayout];
  }
}

- (void)_updateVolumeControlsViewAllowsVolumeAdjustmentState
{
  if (a1)
  {
    v6 = [a1[154] volumeControlsView];
    active = [(AVMobileGlassControlsViewController *)a1 _activeRouteSupportsAdjustingVolume];
    if (([a1 excludedControls] & 0x200) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = active;
    }

    [v6 setAllowsVolumeAdjustment:v3];
    v4 = [a1 volumeController];
    v5 = [v4 currentRouteHasVolumeControl];

    [v6 setPrefersVolumeSliderEnabled:v5];
  }
}

- (void)_updateTimelineViewGlassBackgroundInclusion
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 supportsContentTabs];

    v4 = [a1[222] count];
    v5 = [(AVMobileGlassControlsViewController *)a1 _isFullScreen]& (v3 ^ 1 | (v4 < 2));
    v6 = [a1[154] transportControlsView];
    [v6 setTimelineBackgroundMaterialMode:v5];
  }
}

- (uint64_t)_shouldIncludeRoutePickerButton
{
  v2 = [a1 excludedControls];
  v3 = [a1 playerController];
  v4 = [v3 allowsExternalPlayback];

  if ((v2 & 0x10) != 0)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)contentTabsViewController:(id)a3 didChangeSelectedCustomInfoViewController:(id)a4 withReason:(unint64_t)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (self)
  {
    v8 = [(AVMobileGlassContentTabsViewController *)self->_contentTabsViewController selectedCustomInfoViewController];

    v9 = v8 == 0;
    v10 = v8 != 0;
    v11 = 0.0;
    if (!v9)
    {
      v11 = 1.0;
    }

    [(AVMobileGlassControlsViewController *)self _updateContentTabsAlpha:v11];
    [(AVMobileGlassControlsViewController *)self _setContentTabPresented:v10 animated:1];
    if (!a5)
    {
      [objc_opt_class() autoHideInterval];
      [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
    }
  }

  if (v7)
  {
    v12 = [v7 avkit_infoPanelKindIdentifier];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    v15 = @"Kind";
    v16[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    [v13 postNotificationName:@"AVPlayerViewControllerDidShowInfoViewControllerNotification" object:v7 userInfo:v14];
  }
}

- (void)titleBarViewInfoAffordanceWasPressed:(id)a3
{
  v5 = !self || (contentTabPresentationContext = self->_contentTabPresentationContext) == 0 || [(AVMobileContentTabPresentationContext *)contentTabPresentationContext state]!= 0;

  [(AVMobileGlassControlsViewController *)self _setContentTabPresented:v5 animated:1];
}

- (void)slider:(id)a3 didExtendWithInsets:(UIEdgeInsets)a4
{
  bottom = a4.bottom;
  right = a4.right;
  top = a4.top;
  left = a4.left;
  v5 = a3;
  v6 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
  v7 = [v6 fluidSlider];

  v8.f64[0] = bottom;
  v8.f64[1] = right;
  v9.f64[0] = top;
  v9.f64[1] = left;
  if (v7 == v5)
  {
    v10 = 1680;
  }

  else
  {
    v10 = 1712;
  }

  v11 = (self + v10);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v11, v9), vceqq_f64(v11[1], v8)))) & 1) == 0)
  {
    v11->f64[0] = top;
    v11->f64[1] = left;
    v11[1].f64[0] = bottom;
    v11[1].f64[1] = right;
    [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
    view = self->_view;

    [(AVMobileGlassControlsView *)view setNeedsLayout];
  }
}

- (void)slider:(id)a3 didUpdateFrame:(CGRect)a4 forSliderMark:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a5;
  v11 = a3;
  v12 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
  v13 = [v12 fluidSlider];

  v14 = v16;
  if (v13 == v11 && self->_liveEdgeSliderMark == v16)
  {
    v15 = [(AVMobileGlassControlsView *)self->_view liveEdgeContentTagView];
    if (v15)
    {
      [v15 setFrame:{-[AVMobileGlassControlsViewController _frameForLiveEdgeMarkContentTag:](self, x, y, width, height)}];
    }

    v14 = v16;
  }
}

- (void)sliderDidEndTracking:(id)a3
{
  v8 = a3;
  v4 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _volumeControlsView];
  v5 = [v4 volumeSlider];
  if (v5 == v8)
  {
    if ([v4 isTrackingEnabled])
    {
      [(AVMobileGlassControlsViewController *)self volumeControlsViewInteractionDidEnd:v4];
    }
  }

  else
  {
    v6 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
    v7 = [v6 fluidSlider];

    if (v7 == v8)
    {
      [(AVMobileGlassControlsViewController *)self _timelineSliderTrackingStateDidChange];
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlayPauseButtonIcon];
    }

    [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
    [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
  }
}

- (void)_updatePlayPauseButtonIcon
{
  if (a1)
  {
    v13 = [a1[154] playbackControlsView];
    v2 = [a1 playerController];
    v3 = [v2 player];
    v4 = v3;
    if (v3)
    {
      [v3 rate];
      v6 = v5;
    }

    else
    {
      [v2 rate];
      v6 = v7;
    }

    v8 = [v2 timeControlStatus];
    v10 = v6 == 0.0 && v8 == 0;
    if ([v2 avkit_isAVPlayerControllerOrSubclass])
    {
      [v2 suspendedRate];
      v12 = [v2 isPlaybackSuspended] ^ 1 | (v11 == 0.0);
    }

    else
    {
      v12 = 1;
    }

    [v13 setPlayPauseButtonShowsPlayIcon:v10 & v12];
  }
}

- (void)sliderWillEndTracking:(id)a3
{
  v9 = a3;
  v4 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _volumeControlsView];
  v5 = [v4 volumeSlider];
  if (v5 == v9)
  {
    if ([v4 isTrackingEnabled])
    {
      [(AVMobileGlassControlsViewController *)self volumeControlsViewInteractionDidEnd:v4];
    }
  }

  else
  {
    v6 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
    v7 = [v6 fluidSlider];

    if (v7 == v9)
    {
      [(AVMobileGlassControlsViewController *)self _timelineSliderTrackingStateDidChange];
      v8 = [(AVMobileControlsViewController *)self playerController];
      [v8 endScrubbing:self];
      [v8 endPlaybackSuspension];
    }
  }
}

- (void)sliderDidBeginTracking:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _timelineView];
  v6 = [v5 fluidSlider];

  if (v6 == v4)
  {
    v7 = [(AVMobileControlsViewController *)self playerController];
    [v7 beginPlaybackSuspension];
    [v7 beginScrubbing:self];
    [(AVMobileGlassControlsViewController *)self _timelineSliderTrackingStateDidChange];
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlayPauseButtonIcon];
  }

  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];

  [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

- (void)playbackControlsViewForwardSecondaryControlWasPressed:(id)a3
{
  v4 = a3;
  if ([v4 forwardSecondaryControlIcon])
  {
    if ([v4 forwardSecondaryControlIcon] == 1)
    {
      v5 = [(AVMobileControlsViewController *)self eventManager];
      [v5 sendActionsForEvent:@"AVControlsSkipForwardPressedEvent"];
    }

    else
    {
      if ([v4 forwardSecondaryControlIcon] != 2)
      {
        goto LABEL_12;
      }

      v5 = [(AVMobileControlsViewController *)self playerController];
      [v5 seekToEnd:self];
    }
  }

  else
  {
    if (v4)
    {
      [v4 forwardSecondaryControlSkipInterval];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v7 = [(AVMobileControlsViewController *)self playerController];
    [v7 seekByTimeInterval:Seconds];

    v5 = [(AVMobileControlsViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 controlsViewControllerDidPressSkipForwardButton:self];
    }
  }

LABEL_12:
  if (self)
  {
    [objc_opt_class() autoHideInterval];
    [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)playbackControlsViewBackwardSecondaryControlWasPressed:(id)a3
{
  v4 = a3;
  if ([v4 backwardSecondaryControlIcon])
  {
    if ([v4 backwardSecondaryControlIcon] != 1)
    {
      goto LABEL_10;
    }

    v5 = [(AVMobileControlsViewController *)self eventManager];
    [v5 sendActionsForEvent:@"AVControlsSkipBackwardPressedEvent"];
  }

  else
  {
    if (v4)
    {
      [v4 backwardSecondaryControlSkipInterval];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v7 = [(AVMobileControlsViewController *)self playerController];
    [v7 seekByTimeInterval:-Seconds];

    v5 = [(AVMobileControlsViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 controlsViewControllerDidPressSkipBackButton:self];
    }
  }

LABEL_10:
  if (self)
  {
    [objc_opt_class() autoHideInterval];
    [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)playbackControlsViewPlayPauseButtonWasPressed:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self eventManager];
  [v4 sendActionsForEvent:@"AVControlsPlayPauseButtonPressedEvent"];

  v5 = [(AVMobileControlsViewController *)self playerController];
  [v5 togglePlayback:self];

  if (self)
  {
    [objc_opt_class() autoHideInterval];

    [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)displayModeControlsView:(id)a3 layoutWithHiddenIdentifiers:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
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
        v12 = [(AVMobileGlassAuxiliaryControl *)self->_routePickerControl identifier];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          [(NSArray *)v6 addObject:self->_routePickerControl];
        }

        else
        {
          v14 = [(AVMobileGlassControlsViewController *)self _auxiliaryControlForIdentifier:v11];
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
  v16 = [v15 playerTipsEnabled];

  if (v16)
  {
    v17 = [MEMORY[0x1E695DFD8] setWithArray:self->_overflowDisplayModeControls];
    v18 = MEMORY[0x1E695DFD8];
    v19 = [(NSArray *)v6 copy];
    v20 = [v18 setWithArray:v19];

    v21 = v20;
    v22 = v17;
    v23 = [v21 mutableCopy];
    [v23 unionSet:v22];
    v24 = [v21 mutableCopy];

    [v24 intersectSet:v22];
    [v23 minusSet:v24];

    [(AVMobileGlassControlsViewController *)self _dismissControlItemWithTipInSymmetricDifferenceSet:v23];
  }

  overflowDisplayModeControls = self->_overflowDisplayModeControls;
  self->_overflowDisplayModeControls = v6;

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateRoutePickerControlInclusionState];
  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateControlItemsInclusionState];
  [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];
}

- (id)_auxiliaryControlForIdentifier:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 1656);
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
          v9 = [v8 identifier];

          if (v9 == v3)
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

- (void)_dismissControlItemWithTipInSymmetricDifferenceSet:(void *)a1
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [a1 controlItems];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [(AVMobileGlassControlsViewController *)a1 _auxiliaryControlForControlItem:v9];
          v11 = [v9 tip];

          if (v11 && [v3 containsObject:v10])
          {
            [a1 dismissTip];

            goto LABEL_13;
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
    v4 = [v1[154] displayModeControlsView];
    [v4 setIncludesRoutePickerControl:shouldIncludeRoutePicker];

    v5 = v1[160];

    return [v5 setIncluded:shouldIncludeRoutePicker & v3];
  }

  return result;
}

- (void)_updateControlItemsInclusionState
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v2 = [a1 controlItems];
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          v8 = [(AVMobileGlassControlsViewController *)a1 _auxiliaryControlForControlItem:v7];
          v9 = [v7 type];
          if ((v9 - 1) >= 2)
          {
            if (v9)
            {
              v10 = 0;
            }

            else
            {
              v10 = [a1[156] containsObject:v8];
            }
          }

          else
          {
            v10 = 1;
          }

          [v8 setIncluded:v10];
        }

        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

- (id)_auxiliaryControlForControlItem:(uint64_t)a1
{
  v3 = [a2 identifier];
  v4 = [(AVMobileGlassControlsViewController *)a1 _auxiliaryControlForIdentifier:v3];

  return v4;
}

- (void)displayModeControlsViewWillDismissContextMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__AVMobileGlassControlsViewController_displayModeControlsViewWillDismissContextMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __94__AVMobileGlassControlsViewController_displayModeControlsViewWillDismissContextMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)displayModeControlsViewWillPresentContextMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __94__AVMobileGlassControlsViewController_displayModeControlsViewWillPresentContextMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __94__AVMobileGlassControlsViewController_displayModeControlsViewWillPresentContextMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)displayModeControlsViewMultiviewButtonWasPressed:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(AVMobileControlsViewController *)self delegate];
    [v6 controlsViewControllerDidPressMultiviewButton:self];
  }
}

- (void)displayModeControlsViewPictureInPictureButtonWasPressed:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self pipController];
  v5 = [v4 isPictureInPicturePossible];

  if (v5)
  {
    v6 = [(AVMobileControlsViewController *)self pipController];
    v7 = [v6 isPictureInPictureActive];

    v8 = [(AVMobileControlsViewController *)self pipController];
    v9 = v8;
    if (v7)
    {
      [v8 stopPictureInPicture];
    }

    else
    {
      [v8 startPictureInPicture];
    }

    [(AVMobileGlassControlsViewController *)self _updatePrefersSystemVolumeHUDHidden];
  }
}

- (void)displayModeControlsViewDoneButtonWasPressed:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self eventManager];
  [v4 sendActionsForEvent:@"AVControlsDoneButtonPressedEvent"];

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateFullScreenState];
}

- (void)displayModeControlsViewFullscreenButtonWasPressed:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self fullscreenController];
  [v4 enterFullscreen:self];

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateFullScreenState];
}

- (void)volumeControlsView:(id)a3 didSelectHapticsOn:(BOOL)a4
{
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AVMobileGlassControlsViewController_volumeControlsView_didSelectHapticsOn___block_invoke;
  block[3] = &unk_1E720A0B8;
  objc_copyWeak(&v6, &location);
  v7 = a4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __77__AVMobileGlassControlsViewController_volumeControlsView_didSelectHapticsOn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playerController];
  [v3 setHapticsIsOn:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)v4 _updateHasHapticTrackSelectionMenuIDs];
}

- (void)volumeControlsViewButtonWasTapped:(id)a3
{
  v4 = [(AVMobileControlsViewController *)self eventManager];
  [v4 sendActionsForEvent:@"AVControlsVolumeButtonPressedEvent"];

  if (self)
  {
    if ([(AVMobileGlassControlsViewController *)self _isLandscape])
    {

      [(AVMobileGlassControlsViewController *)self _handleMuteStateToggle];
    }

    else
    {
      if (self->_volumeSliderTemporarilyVisibleInFullscreen)
      {
        [(AVMobileGlassControlsViewController *)self _handleMuteStateToggle];
      }

      [(AVMobileGlassControlsViewController *)self _temporarilyShowVolumeSlider];
    }
  }
}

- (BOOL)_isLandscape
{
  v1 = [*(a1 + 1232) window];
  v2 = [v1 windowScene];
  v3 = [v2 interfaceOrientation];

  return (v3 - 3) < 2;
}

- (void)_handleMuteStateToggle
{
  v8 = [a1 volumeController];
  [v8 volume];
  v3 = v2;
  v4 = [a1 playerController];
  v5 = [v4 isMuted];

  if (v3 != 0.0 || ([v8 beginChangingVolume], LODWORD(v6) = 1036831949, objc_msgSend(v8, "setTargetVolume:", v6), objc_msgSend(v8, "endChangingVolume"), v5))
  {
    v7 = [a1 playerController];
    [v7 toggleMuted:a1];

    [(AVMobileGlassControlsViewController *)a1 _updateVolumeControlsViewMutedState];
  }
}

- (void)_temporarilyShowVolumeSlider
{
  [(AVMobileGlassControlsViewController *)a1 _resetVolumeSliderTemporarilyVisibleTimer];
  if ((*(a1 + 1416) & 1) == 0)
  {
    *(a1 + 1416) = 1;
    [(AVMobileGlassControlsViewController *)a1 _updatePrefersVolumeSliderIncludedAnimated:?];
    [(AVMobileGlassControlsViewController *)a1 _setNeedsControlsVisibilityStateUpdate];
  }

  objc_initWeak(&location, a1);
  v2 = MEMORY[0x1E695DFF0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__AVMobileGlassControlsViewController__temporarilyShowVolumeSlider__block_invoke;
  v5[3] = &unk_1E7209DA8;
  objc_copyWeak(&v6, &location);
  v3 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
  v4 = *(a1 + 1448);
  *(a1 + 1448) = v3;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_resetVolumeSliderTemporarilyVisibleTimer
{
  v2 = *(a1 + 1448);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(a1 + 1448);
    *(a1 + 1448) = 0;
  }
}

void __67__AVMobileGlassControlsViewController__temporarilyShowVolumeSlider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1416] = 0;
    v2 = WeakRetained;
    [(AVMobileGlassControlsViewController *)WeakRetained _updatePrefersVolumeSliderIncludedAnimated:?];
    [(AVMobileGlassControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
    WeakRetained = v2;
  }
}

- (void)_updateVolumeControlsViewMutedState
{
  if (a1)
  {
    v4 = [a1[154] volumeControlsView];
    v2 = [a1 playerController];
    v3 = [v2 isMuted];

    [v4 setMute:v3];
  }
}

- (void)volumeControlsViewInteractionDidEnd:(id)a3
{
  [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
  if (self)
  {
    [(NSTimer *)self->_volumeEmphasisAnimationDelayTimer invalidate];
    volumeEmphasisAnimationDelayTimer = self->_volumeEmphasisAnimationDelayTimer;
    self->_volumeEmphasisAnimationDelayTimer = 0;

    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695DFF0];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __75__AVMobileGlassControlsViewController__volumeControlsViewInteractionDidEnd__block_invoke;
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

  [(AVMobileGlassControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];

  [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

void __75__AVMobileGlassControlsViewController__volumeControlsViewInteractionDidEnd__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _animateVolumeEmphasisTo:?];

  v3 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)v3 _volumeControlsViewInteractionDidContinue];
}

- (void)_animateVolumeEmphasisTo:(id *)a1
{
  if (a1)
  {
    v4 = [a1[154] volumeControlsView];
    if ([v4 isEmphasized] != a2)
    {
      v5 = 0.0;
      if ([a1[178] isRunning])
      {
        if ([a1[178] isInterruptible])
        {
          [a1[178] fractionComplete];
          v5 = v6;
          [a1[178] stopAnimation:1];
          [a1[178] finishAnimationAtPosition:2];
          v7 = a1[178];
          a1[178] = 0;
        }
      }

      objc_initWeak(&location, a1);
      v8 = objc_alloc(MEMORY[0x1E69DD278]);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __64__AVMobileGlassControlsViewController__animateVolumeEmphasisTo___block_invoke;
      v11[3] = &unk_1E720A0B8;
      objc_copyWeak(&v12, &location);
      v13 = a2;
      v9 = [v8 initWithDuration:3 curve:v11 animations:(1.0 - v5) * 0.2];
      v10 = a1[178];
      a1[178] = v9;

      [a1[178] startAnimation];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void __64__AVMobileGlassControlsViewController__animateVolumeEmphasisTo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [(AVMobileGlassControlsViewController *)WeakRetained _volumeControlsView];
  [v2 setEmphasized:*(a1 + 40)];
}

- (void)volumeControlsView:(id)a3 volumeDidChangeTo:(double)a4 withUpdateSource:(unint64_t)a5
{
  v13 = a3;
  v8 = [(AVMobileControlsViewController *)self playerController];
  [(AVMobileGlassControlsViewController *)self _volumeControlsViewInteractionDidContinue];
  if (a5 != 2)
  {
    v9 = [(AVMobileControlsViewController *)self volumeController];
    [v9 beginChangingVolume];

    v10 = [(AVMobileControlsViewController *)self volumeController];
    *&v11 = a4;
    [v10 setTargetVolume:v11];

    v12 = [(AVMobileControlsViewController *)self volumeController];
    [v12 endChangingVolume];
  }

  if ([v8 isMuted])
  {
    [v8 setMuted:0];
    [v13 setMute:0];
  }
}

- (void)_volumeControlsViewInteractionDidContinue
{
  if (a1)
  {
    [*(a1 + 1440) invalidate];
    v2 = *(a1 + 1440);
    *(a1 + 1440) = 0;
  }
}

- (void)volumeControlsView:(id)a3 volumeDidChangeTo:(double)a4
{
  v11 = a3;
  [(AVMobileGlassControlsViewController *)self _volumeControlsViewInteractionDidContinue];
  v6 = [(AVMobileControlsViewController *)self volumeController];
  *&v7 = a4;
  [v6 setTargetVolume:v7];

  v8 = [(AVMobileControlsViewController *)self playerController];
  v9 = [v8 isMuted];

  if (v9)
  {
    v10 = [(AVMobileControlsViewController *)self playerController];
    [v10 setMuted:0];

    [v11 setMute:0];
  }
}

- (void)volumeControlsViewInteractionDidBegin:(id)a3
{
  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];
  if (self)
  {
    [(NSTimer *)self->_volumeEmphasisAnimationDelayTimer invalidate];
    volumeEmphasisAnimationDelayTimer = self->_volumeEmphasisAnimationDelayTimer;
    self->_volumeEmphasisAnimationDelayTimer = 0;

    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _animateVolumeEmphasisTo:?];
  }

  v5 = [(AVMobileControlsViewController *)self volumeController];
  [v5 beginChangingVolume];

  [(AVMobileGlassControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];

  [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
}

- (id)auxiliaryControlsView:(id)a3 menuElementForControl:(id)a4
{
  v50[12] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 identifier];
  if (self && ([(AVMobileControlsViewController *)self transportBarCustomMenuItems], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v47 = 0u;
    v48 = 0u;
    *location = 0u;
    v46 = 0u;
    v8 = [(AVMobileControlsViewController *)self transportBarCustomMenuItems];
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:location objects:v49 count:16];
    if (v10)
    {
      v11 = *v46;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(location[1] + i);
          v14 = [AVMobileGlassControlsViewController _identifierForMenuElement:v13];
          if (v14 == v6)
          {
            v15 = v13;

            v9 = v15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:location objects:v49 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = v5;
  if (self)
  {
    v47 = 0u;
    v48 = 0u;
    *location = 0u;
    v46 = 0u;
    v17 = [(AVMobileControlsViewController *)self controlItems];
    v18 = [v17 countByEnumeratingWithState:location objects:v49 count:16];
    if (v18)
    {
      v19 = *v46;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(location[1] + j);
          v22 = [v21 identifier];
          v23 = [(AVMobileGlassAuxiliaryControl *)v16 identifier];
          v24 = v22 == v23;

          if (v24)
          {
            v25 = [v21 action];

            if (v25)
            {
              v26 = MEMORY[0x1E69DC628];
              v27 = [v21 title];
              v28 = [v21 image];
              v29 = [(AVMobileGlassAuxiliaryControl *)v16 identifier];
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __66__AVMobileGlassControlsViewController__menuElementForControlItem___block_invoke;
              v44[3] = &unk_1E72092D0;
              v44[4] = v21;
              v18 = [v26 actionWithTitle:v27 image:v28 identifier:v29 handler:v44];

              if (([v21 isEnabled] & 1) == 0)
              {
                [v18 setAttributes:1];
              }
            }

            else
            {
              v18 = [v21 menu];

              if (v18)
              {
                v18 = [v21 menu];
              }
            }

            goto LABEL_29;
          }
        }

        v18 = [v17 countByEnumeratingWithState:location objects:v49 count:16];
        if (v18)
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
    v18 = 0;
  }

  if (self->_audibleMediaSelectionControl == v16)
  {
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateAudibleMediaSelectionMenu];
    v32 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsOverflowMenu];
    goto LABEL_55;
  }

  v30 = +[AVKitGlobalSettings shared];
  if ([v30 hapticsEnabled])
  {
    hapticsSelectionControl = self->_hapticsSelectionControl;

    if (hapticsSelectionControl == v16)
    {
      v32 = [(AVMobileHapticsMenuController *)self->_hapticsMenuController hapticsOptionsMenu];
      goto LABEL_55;
    }
  }

  else
  {
  }

  if (self->_legibleMediaSelectionControl == v16)
  {
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateLegibleMediaSelectionMenu];
    v32 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
    goto LABEL_55;
  }

  if (self->_playbackSpeedControl == v16)
  {
    v32 = [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController menu];
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
          v32 = v9;
        }

        else
        {
          if (!v18)
          {
            v40 = 0;
            goto LABEL_56;
          }

          v32 = v18;
        }

        goto LABEL_55;
      }

      v41 = 1368;
    }

    v32 = *(&self->super.super.super.super.super.super.isa + v41);
LABEL_55:
    v40 = v32;
    goto LABEL_56;
  }

  v33 = [(AVMobileGlassControlsView *)self->_view displayModeControlsView];
  v34 = [v33 routePickerView];

  v35 = AVLocalizedString(@"EXTERNAL_PLAYBACK_OVERFLOW_MENU_ITEM_TITLE");
  v36 = [MEMORY[0x1E69DCAB8] avkit_imageWithSymbolNamed:@"airplayvideo" textStyle:*MEMORY[0x1E69DDD00] scale:2];
  if ([v34 isAirPlayActive])
  {
    v37 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.86 blue:1.0 alpha:1.0];
    v38 = [v36 imageWithTintColor:v37 renderingMode:1];

    v36 = v38;
  }

  objc_initWeak(location, self);
  v39 = MEMORY[0x1E69DC628];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __65__AVMobileGlassControlsViewController__menuElementForRoutePicker__block_invoke;
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
  if (a1)
  {
    v2 = [a1 playerController];
    v3 = [v2 audioMediaSelectionOptions];
    v4 = [v2 currentAudioMediaSelectionOption];
    v5 = [v3 indexOfObject:v4];

    [(AVMobileGlassControlsViewController *)a1 _setUpMediaSelectionMenuControllerIfNeeded];
    [a1[189] setAudibleOptions:v3];
    [a1[189] setCurrentAudibleOptionIndex:v5];
    v6 = +[AVKitGlobalSettings shared];
    LODWORD(v5) = [v6 customMediaSelectionSchemeEnabled];

    if (v5)
    {
      v7 = [v2 mediaPresentationSelectors];
      v8 = [v2 availableCustomMediaSelectionLanguages];
      [a1[189] setAudibleMediaPresentationSelectors:v7];
      [a1[189] setAudibleMediaPresentationLanguages:v8];
      v9 = [a1 transportBarCustomMenuItems];
      v10 = v9;
      if (v9 && [v9 count])
      {
        v34 = v8;
        v35 = v7;
        v36 = v3;
        v37 = v2;
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
                    v20 = [v19 selectedElements];
                    v21 = [v20 firstObject];
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      v23 = [v20 firstObject];
                      v24 = [v23 title];
                      [v19 setSubtitle:v24];
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
          [a1 setMediaPresentationSettingsCustomItems:v11];
        }

        v2 = v37;
        v7 = v35;
        v3 = v36;
        v10 = v33;
        v8 = v34;
      }
    }

    v25 = +[AVKitGlobalSettings shared];
    v26 = [v25 enhanceDialogueEnabled];

    if (v26)
    {
      v27 = [a1 enhanceDialogueController];
      v28 = [v27 currentLevel];

      v29 = [a1 enhanceDialogueController];
      v30 = [v29 availableLevels];

      v31 = [a1 enhanceDialogueController];
      v32 = [v31 currentContentSupported];

      [a1[189] setCurrentEnhanceDialogueOption:v28];
      [a1[189] setEnhanceDialogueOptions:v30];
      [a1[189] setShouldEnableEnhanceDialogueOptions:v32];
    }
  }
}

- (void)_updateLegibleMediaSelectionMenu
{
  if (a1)
  {
    v5 = [a1 playerController];
    v2 = [v5 legibleMediaSelectionOptions];
    v3 = [v5 currentLegibleMediaSelectionOption];
    v4 = [v2 indexOfObject:v3];

    [(AVMobileGlassControlsViewController *)a1 _setUpMediaSelectionMenuControllerIfNeeded];
    [a1[189] setLegibleOptions:v2];
    [a1[189] setCurrentLegibleOptionIndex:v4];
  }
}

void __65__AVMobileGlassControlsViewController__menuElementForRoutePicker__block_invoke(uint64_t a1)
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

void __66__AVMobileGlassControlsViewController__menuElementForControlItem___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) action];
  v1[2]();
}

- (void)auxiliaryControlsView:(id)a3 didOverflowControls:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AVKitGlobalSettings shared];
  v9 = [v8 playerTipsEnabled];

  if (v9)
  {
    controlsInOverflowMenu = self->_controlsInOverflowMenu;
    v23 = v7;
    v11 = v7;
    v12 = controlsInOverflowMenu;
    v13 = [v11 mutableCopy];
    [v13 unionSet:v12];
    v14 = [v11 mutableCopy];
    [v14 intersectSet:v12];

    [v13 minusSet:v14];
    v15 = [(AVTipKitControlsViewController *)self tips];
    v16 = [v15 objectForKeyedSubscript:@"AVPlayerControlTipForAudibleMediaSelection"];

    v17 = +[AVKitGlobalSettings shared];
    if ([v17 enhanceDialogueEnabled])
    {
      v18 = [(AVMobileGlassControlsViewController *)self enhanceDialogueController];
      [v18 availableLevels];
      v19 = v15;
      v21 = v20 = v6;
      v22 = [v21 count] != 0;

      v6 = v20;
      v15 = v19;
    }

    else
    {
      v22 = 0;
    }

    if ((v16 || v22) && [v13 containsObject:self->_audibleMediaSelectionControl])
    {
      [(AVTipKitControlsViewController *)self dismissTip];
    }

    else
    {
      [(AVMobileGlassControlsViewController *)self _dismissControlItemWithTipInSymmetricDifferenceSet:v13];
    }

    v7 = v23;
  }

  objc_storeStrong(&self->_controlsInOverflowMenu, a4);
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__AVMobileGlassControlsViewController_auxiliaryControlsView_didOverflowControls___block_invoke;
  v24[3] = &unk_1E7209EA8;
  objc_copyWeak(&v25, &location);
  [(AVTipKitControlsViewController *)self configureTipsUponNextOverflowControlUpdateWithCompletion:v24];
  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __81__AVMobileGlassControlsViewController_auxiliaryControlsView_didOverflowControls___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _configureTips];
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
  v2 = [result controlItems];
  v3 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [v7 tip];
        v9 = [v7 type];
        v10 = [v1 visibleControls];
        if (v9)
        {
          v11 = 16;
        }

        else
        {
          v11 = 4;
        }

        v12 = v11 & v10;
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
          v14 = [(AVMobileGlassControlsViewController *)v1 _auxiliaryControlForControlItem:v7];
          if ([v7 type])
          {
            if ([v1[230] containsObject:v14])
            {
              goto LABEL_16;
            }

LABEL_18:
            v18 = v2;
            v19 = [v7 view];
            v15 = [v19 accessibilityIdentifier];

            if (v15 == @"Overflow Menu")
            {
              v15 = @"Overflow Menu";
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

            v2 = v18;
          }

          else
          {
            if (([v1[156] containsObject:v14] & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_16:
            v15 = @"Overflow Menu";
            v16 = @"Overflow Menu";
            v17 = 2;
          }

          [v1 handleTipWithTipId:v8 sourceViewIdentifier:v15 arrowDirection:v17 priority:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  v20 = [v1 tips];
  v21 = [v1 visibleControls];
  v22 = [v20 objectForKeyedSubscript:@"AVPlayerControlTipForAudibleMediaSelection"];
  v23 = v22;
  if ((v21 & 0x10) != 0 && v22)
  {
    v24 = [(AVMobileGlassControlsViewController *)v1 _currentAccessibilityIdentifierForAudibleMedia];
    [v1 handleTipWithTipId:v23 sourceViewIdentifier:v24 arrowDirection:2 priority:1];
  }

  v25 = [v1 visibleControls];
  v26 = +[AVKitGlobalSettings shared];
  if (![v26 enhanceDialogueEnabled])
  {
    goto LABEL_35;
  }

  v27 = [v1 enhanceDialogueController];
  v28 = [v27 availableLevels];
  v29 = [v28 count];

  if ((v25 & 0x10) != 0)
  {
    if (v29)
    {
      v30 = [v1 enhanceDialogueController];
      v31 = [v30 currentLevel];

      if (!v31)
      {
        v26 = [(AVMobileGlassControlsViewController *)v1 _currentAccessibilityIdentifierForAudibleMedia];
        [v1 handleEnhanceDialogueWithSourceViewIdentifier:v26];
LABEL_35:
      }
    }
  }

  return [v1 displayTips];
}

- (__CFString)_currentAccessibilityIdentifierForAudibleMedia
{
  if ([*(a1 + 1840) containsObject:*(a1 + 1256)])
  {
    v1 = @"Overflow Menu";
  }

  else
  {
    v1 = @"Audible Options";
  }

  return v1;
}

- (void)auxiliaryControlsViewWillBeginShowingOverflowMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__AVMobileGlassControlsViewController_auxiliaryControlsViewWillBeginShowingOverflowMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __98__AVMobileGlassControlsViewController_auxiliaryControlsViewWillBeginShowingOverflowMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)auxiliaryControlsViewWillEndShowingOverflowMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96__AVMobileGlassControlsViewController_auxiliaryControlsViewWillEndShowingOverflowMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __96__AVMobileGlassControlsViewController_auxiliaryControlsViewWillEndShowingOverflowMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)viewIsOverVideoDidChange:(id)a3
{
  v4 = a3;
  if ([v4 isOverVideo])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [v4 setOverrideUserInterfaceStyle:v3];
}

- (void)menuButtonWillHideMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _decrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AVMobileGlassControlsViewController_menuButtonWillHideMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__AVMobileGlassControlsViewController_menuButtonWillHideMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (void)menuButtonWillShowMenu:(id)a3 animator:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(AVMobileGlassControlsViewController *)self _incrementUserInteractionCount];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__AVMobileGlassControlsViewController_menuButtonWillShowMenu_animator___block_invoke;
  v8[3] = &unk_1E7209EA8;
  objc_copyWeak(&v9, &location);
  [v7 addAnimations:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __71__AVMobileGlassControlsViewController_menuButtonWillShowMenu_animator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _updateBackgroundMaterial];
}

- (id)menuForMenuButton:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackSpeedButton == v4)
  {
    v8 = [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController menu];
    goto LABEL_10;
  }

  if (self->_audibleMediaSelectionButton == v4)
  {
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateAudibleMediaSelectionMenu];
    v8 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController audibleOptionsMenu];
    goto LABEL_10;
  }

  if (self->_legibleMediaSelectionButton == v4)
  {
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateLegibleMediaSelectionMenu];
    v8 = [(AVMediaSelectionMenuController *)self->_mediaSelectionMenuController legibleOptionsMenu];
    goto LABEL_10;
  }

  v6 = +[AVKitGlobalSettings shared];
  if ([v6 hapticsEnabled])
  {
    hapticsMediaSelectionButton = self->_hapticsMediaSelectionButton;

    if (hapticsMediaSelectionButton == v5)
    {
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateHasHapticTrackSelectionMenu];
      v8 = [(AVMobileHapticsMenuController *)self->_hapticsMenuController hapticsOptionsMenu];
LABEL_10:
      v9 = v8;
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

- (id)mediaSelectionMenuController:(id)a3 complementarySettingsForSelectedMediaPresentationSettingsForSelector:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  v7 = [v6 complementarySettingsForSelectedMediaPresentationSettingsForSelector:v5];

  return v7;
}

- (id)mediaSelectionMenuController:(id)a3 complementarySettingsForSelector:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  v7 = [v6 complementarySettingsForSelector:v5];

  return v7;
}

- (id)effectiveSettingsForSelectorForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 effectiveSettings];

  return v4;
}

- (id)mediaSelectionMenuController:(id)a3 effectiveSettingForSelector:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  v7 = [v6 effectiveSettingForSelector:v5];

  return v7;
}

- (id)mediaSelectionMenuController:(id)a3 selectedPresentationSettingForSelector:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  v7 = [v6 selectedPresentationSettingForSelector:v5];

  return v7;
}

- (void)mediaSelectionMenuController:(id)a3 selectMediaPresentationSetting:(id)a4 forSelector:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(AVMobileControlsViewController *)self playerController];
  [v8 selectPresentationSetting:v10];

  v9 = [(AVMobileControlsViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 chromelessControlsViewController:self didSelectSetting:v10 forSelector:v7];
  }
}

- (unint64_t)mediaSelectionMenuController:(id)a3 indexOfEffectivePresentationSettingForSelector:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  v7 = [v6 indexOfEffectivePresentationSettingForSelector:v5];

  return v7;
}

- (unint64_t)indexOfSelectedMediaPresentationLanguageForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 selectedMediaPresentationLanguageIndex];

  return v4;
}

- (void)mediaSelectionMenuController:(id)a3 selectMediaPresentationLanguage:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self playerController];
  [v6 selectAudibleMediaPresentationLanguage:v5];
}

- (BOOL)shouldFilterMediaPresentationOptionsToAvailableCacheForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 mediaPresentationOptionsOnlyAvailableOffline];

  return v4;
}

- (BOOL)shouldShowMediaAvailablePresentationLanguagesForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 shouldShowPresentationSettingsAudioTracks];

  return v4;
}

- (BOOL)isMediaPresentationSettingsEnabledForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 isMediaPresentationSettingsEnabled];

  return v4;
}

- (BOOL)shouldApplyLegibleMediaSelectionCriteriaAutomaticallyForMediaSelectionMenuController:(id)a3
{
  v3 = [(AVMobileControlsViewController *)self playerController];
  v4 = [v3 closedCaptionsEnabled];

  return v4;
}

- (id)mediaSelectionMenuController:(id)a3 displayNameForMediaSelectionOption:(id)a4
{
  v5 = a4;
  v6 = [(AVMobileControlsViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AVMobileControlsViewController *)self delegate];
    v9 = [v8 controlsViewController:self displayNameForMediaSelectionOption:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)mediaSelectionMenuController:(id)a3 didSelectEnhanceDialogueOption:(int64_t)a4
{
  v6 = a3;
  v7 = [(AVMobileGlassControlsViewController *)self enhanceDialogueController];
  [v7 setCurrentLevel:a4];

  [v6 setCurrentEnhanceDialogueOption:a4];
  [(AVTipKitControlsViewController *)self handleTipEventDidEnterEnhanceDialogue];
  [(AVMenuButton *)self->_audibleMediaSelectionButton updateContextMenu];

  [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];
}

- (void)mediaSelectionMenuController:(id)a3 didSelectOption:(id)a4
{
  v10 = a4;
  v6 = [a3 audibleOptions];
  v7 = [v6 containsObject:v10];

  v8 = [(AVMobileControlsViewController *)self playerController];
  v9 = v8;
  if (v7)
  {
    [v8 setCurrentAudioMediaSelectionOption:v10];
  }

  else
  {
    [v8 setCurrentLegibleMediaSelectionOption:v10];
  }
}

- (void)controlItemDidUpdateVisualConfiguration:(id)a3
{
  if (self)
  {
    v3 = [(AVMobileGlassControlsView *)self->_view auxiliaryControlsView];
    [v3 updateOverflowMenu];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v4 traitCollectionDidChange:a3];
  if (self)
  {
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _updateStyleSheet];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if (self && self->_hasBeenSetUp)
  {
    [(UIPanGestureRecognizer *)self->_contentTabPanGestureRecognizer setEnabled:0];
    [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
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
    v10[2] = __90__AVMobileGlassControlsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v10[3] = &unk_1E7209140;
    objc_copyWeak(&v11, &location);
    [v7 animateAlongsideTransition:v10 completion:0];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __90__AVMobileGlassControlsViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissCustomInfoViewControllerAnimated:1];
    [(AVMobileGlassControlsViewController *)v2 _updateAuxiliaryControlSpacing];
    [(AVMobileGlassControlsViewController *)v2 _updatePinnedAuxiliaryControlsIfNeeded];
    [(AVMobileGlassControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
    [(AVMobileGlassControlsViewController *)v2 _updateLayoutMargins];
    [(AVMobileGlassControlsViewController *)v2 _updateContentTabViewIsCompact];
    [v2[235] setEnabled:1];
    WeakRetained = v2;
  }
}

- (void)_updateContentTabViewIsCompact
{
  if (*(a1 + 1232))
  {
    v2 = *(a1 + 1816);
    if (v2)
    {
      v10 = [v2 view];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = *(a1 + 1232);
        v4 = v10;
        [v3 bounds];
        x = v12.origin.x;
        y = v12.origin.y;
        width = v12.size.width;
        height = v12.size.height;
        v9 = CGRectGetWidth(v12);
        v13.origin.x = x;
        v13.origin.y = y;
        v13.size.width = width;
        v13.size.height = height;
        [v4 setCompact:CGRectGetHeight(v13) >= v9];
      }
    }
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v6.receiver = self;
  v6.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v6 viewSafeAreaInsetsDidChange];
  if (self)
  {
    if (self->_hasBeenSetUp)
    {
      objc_initWeak(&location, self);
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __66__AVMobileGlassControlsViewController_viewSafeAreaInsetsDidChange__block_invoke;
      v3[3] = &unk_1E7209EA8;
      objc_copyWeak(&v4, &location);
      dispatch_async(MEMORY[0x1E69E96A0], v3);
      objc_destroyWeak(&v4);
      objc_destroyWeak(&location);
    }
  }
}

void __66__AVMobileGlassControlsViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained[1216];

    if (v3 == 1)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      [(AVMobileGlassControlsViewController *)v4 _updateLayoutMargins];
    }
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (self && self->_hasBeenSetUp)
  {
    [(AVMobileGlassControlsViewController *)self _updateVolumeControllerClient];
  }

  [(AVMobileGlassControlsViewController *)self _attemptSetupIfNeeded];
}

- (void)_attemptSetupIfNeeded
{
  if (a1)
  {
    if ([(AVMobileGlassControlsViewController *)a1 _canPerformSetup])
    {
      objc_initWeak(&location, a1);
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = __60__AVMobileGlassControlsViewController__attemptSetupIfNeeded__block_invoke;
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
  if ([a1 optimizeForPerformance])
  {
    v2 = 0;
  }

  else
  {
    v3 = [*(a1 + 1232) window];
    if (v3)
    {
      v2 = *(a1 + 1216) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t __60__AVMobileGlassControlsViewController__attemptSetupIfNeeded__block_invoke(uint64_t a1)
{
  v133[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    val = WeakRetained;
    WeakRetained = [(AVMobileGlassControlsViewController *)WeakRetained _canPerformSetup];
    v2 = val;
    if (WeakRetained)
    {
      *(val + 1216) = 1;
      if (!val[153])
      {
        [val _updateStyleSheet];
        v2 = val;
      }

      v3 = *(v2 + 1232);
      if (v3)
      {
        v4 = [v3 backgroundView];

        v2 = val;
        if (!v4)
        {
          v5 = +[AVKitGlobalSettings shared];
          [v5 gradientDimmingLayerEnabled];
          v6 = objc_opt_class();

          v7 = [v6 alloc];
          [val[154] bounds];
          v8 = [v7 initWithFrame:?];
          [v8 setAutoresizingMask:0];
          [val[154] setBackgroundView:v8];

          v2 = val;
        }
      }

      v9 = *(v2 + 1232);
      if (v9)
      {
        if (*(v2 + 1224))
        {
          v10 = [v9 displayModeControlsView];

          v2 = val;
          if (!v10)
          {
            v11 = [[AVMobileGlassDisplayModeControlsView alloc] initWithStyleSheet:val[153]];
            [(AVMobileGlassDisplayModeControlsView *)v11 setAutoresizingMask:0];
            [(AVMobileGlassDisplayModeControlsView *)v11 setDelegate:val];
            v12 = [val routingConfiguration];
            [(AVMobileGlassDisplayModeControlsView *)v11 setRoutingConfiguration:v12];

            [val[154] setDisplayModeControlsView:v11];
            v2 = val;
          }
        }
      }

      v13 = *(v2 + 1232);
      if (v13)
      {
        if (*(v2 + 1224))
        {
          v14 = [v13 playbackControlsView];

          v2 = val;
          if (!v14)
          {
            v15 = [[AVMobileGlassPlaybackControlsView alloc] initWithStyleSheet:val[153]];
            [(AVMobileGlassPlaybackControlsView *)v15 setAutoresizingMask:0];
            [(AVMobileGlassPlaybackControlsView *)v15 setDelegate:val];
            v16 = +[AVKitGlobalSettings shared];
            v17 = [v16 prefersTintColorForPlaybackControlsView];

            if (v17)
            {
              v18 = [MEMORY[0x1E69DC888] whiteColor];
              [(AVMobileGlassPlaybackControlsView *)v15 setTintColor:v18];
            }

            v19 = [val prefersFullScreenStyleForEmbeddedMode];
            v20 = 0.0;
            if (v19)
            {
              v20 = *(val + 239);
            }

            [(AVMobileGlassPlaybackControlsView *)v15 setAvkit_extendedDynamicRangeGain:v20];
            memset(&block, 0, sizeof(block));
            CMTimeMakeWithSeconds(&block, 10.0, 600);
            location = block;
            [(AVMobileGlassPlaybackControlsView *)v15 setBackwardSecondaryControlSkipInterval:&location];
            location = block;
            [(AVMobileGlassPlaybackControlsView *)v15 setForwardSecondaryControlSkipInterval:&location];
            [val[154] setPlaybackControlsView:v15];

            v2 = val;
          }
        }
      }

      v21 = *(v2 + 1232);
      if (v21)
      {
        if (*(v2 + 1224))
        {
          v22 = [v21 timelineView];

          v2 = val;
          if (!v22)
          {
            v23 = 0.0;
            if ([val prefersFullScreenStyleForEmbeddedMode])
            {
              v23 = *(val + 239);
            }

            v24 = [[AVMobileGlassTimelineView alloc] initWithStyleSheet:val[153]];
            [(AVMobileGlassTimelineView *)v24 setAutoresizingMask:0];
            [(AVMobileGlassTimelineView *)v24 setLabelPosition:0];
            [(AVMobileGlassTimelineView *)v24 setLabelsExtendedDynamicRangeGain:v23];
            [(AVMobileGlassTimelineView *)v24 setSliderExtendedDynamicRangeGain:v23];
            [(AVView *)v24 setContentIntersectingDelegate:val];
            [val[154] setTimelineView:v24];
            [(AVMobileGlassControlsViewController *)val _updateTimelineViewGlassBackgroundInclusion];

            v2 = val;
          }
        }
      }

      v25 = *(v2 + 1232);
      if (v25)
      {
        if (*(v2 + 1224))
        {
          v26 = [v25 titlebarView];

          v2 = val;
          if (!v26)
          {
            v27 = [[AVMobileTitlebarView alloc] initWithStyleSheet:val[153]];
            [(AVMobileTitlebarView *)v27 setAutoresizingMask:0];
            [(AVMobileTitlebarView *)v27 setDelegate:val];
            [val[154] setTitlebarView:v27];
            [(AVMobileGlassControlsViewController *)val _updateInfoAffordanceInclusion];
            [(AVMobileGlassControlsViewController *)val _updateTitleAndDescriptionInfo];
            [(AVMobileGlassControlsViewController *)val _updateContentTag];

            v2 = val;
          }
        }
      }

      [(AVMobileGlassControlsViewController *)v2 _setUpAuxiliaryControlsViewIfNeeded];
      v28 = val;
      if (val[154] && !val[160])
      {
        v29 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVRoutePickerControl"];
        v30 = val[160];
        val[160] = v29;

        v28 = val;
      }

      [(AVMobileGlassControlsViewController *)v28 _setUpAnalysisControlIfNeeded];
      v31 = val;
      if (!val[159] && val[154])
      {
        [(AVMobileGlassControlsViewController *)val _setUpAuxiliaryControlsViewIfNeeded];
        v32 = objc_alloc_init(AVMobilePlaybackRateMenuController);
        v33 = val[188];
        val[188] = v32;

        v34 = val[188];
        v35 = [val playbackSpeedCollection];
        [v34 setPlaybackSpeedCollection:v35];

        v36 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"AVPlaybackSpeedControl" isFirstGeneration:0];
        v37 = val[170];
        val[170] = v36;

        v38 = val[170];
        v39 = AVLocalizedString(@"Playback Speed");
        [v38 setAccessibilityLabel:v39];

        [val[170] setImageName:@"speedometer"];
        [val[170] setDelegate:val];
        v40 = val[170];
        v41 = [val[153] buttonFont];
        [v40 setInlineFont:v41];

        v42 = [AVMobileGlassAuxiliaryControl controlWithView:val[170] displayPriority:0 identifier:@"AVPlaybackSpeedControl"];
        v43 = val[159];
        val[159] = v42;

        [(AVMobileGlassControlsViewController *)val _updatePlaybackSpeedControlInclusion];
        v31 = val;
      }

      if (!v31[157] && v31[154])
      {
        [(AVMobileGlassControlsViewController *)v31 _setUpAuxiliaryControlsViewIfNeeded];
        v44 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Audible Options" isFirstGeneration:0];
        v45 = val[168];
        val[168] = v44;

        v46 = val[168];
        v47 = AVLocalizedString(@"Audio Track");
        [v46 setAccessibilityLabel:v47];

        [val[168] setImageName:@"waveform"];
        [val[168] setDelegate:val];
        v48 = val[168];
        v49 = [val[153] buttonFont];
        [v48 setInlineFont:v49];

        v50 = [AVMobileGlassAuxiliaryControl controlWithView:val[168] displayPriority:0 identifier:@"AVAudibleMediaSelectionControl"];
        v51 = val[157];
        val[157] = v50;

        v52 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Legible Options" isFirstGeneration:0];
        v53 = val[169];
        val[169] = v52;

        v54 = val[169];
        v55 = AVLocalizedString(@"Legible Options");
        [v54 setAccessibilityLabel:v55];

        [val[169] setImageName:@"captions.bubble"];
        [val[169] setDelegate:val];
        v56 = val[169];
        v57 = [val[153] buttonFont];
        [v56 setInlineFont:v57];

        v58 = [AVMobileGlassAuxiliaryControl controlWithView:val[169] displayPriority:0 identifier:@"AVLegibleMediaSelectionControl"];
        v59 = val[158];
        val[158] = v58;

        [(AVMobileGlassControlsViewController *)val _updateAudibleMediaSelectionControlInclusionState];
        [(AVMobileGlassControlsViewController *)val _updateLegibleMediaSelectionControlInclusionState];
        v31 = val;
      }

      v60 = v31[154];
      if (v60)
      {
        if (v31[153])
        {
          v61 = [v60 volumeControlsView];

          v31 = val;
          if (!v61)
          {
            v62 = [[AVMobileGlassVolumeControlsView alloc] initWithStyleSheet:val[153]];
            [(AVMobileGlassVolumeControlsView *)v62 setDelegate:val];
            v63 = [(AVMobileGlassVolumeControlsView *)v62 volumeSlider];
            [v63 setDelegate:val];

            [(AVMobileGlassVolumeControlsView *)v62 setPrefersVolumeSliderIncluded:1];
            [(AVMobileGlassVolumeControlsView *)v62 setAutoresizingMask:0];
            [(AVMobileGlassVolumeControlsView *)v62 setFullscreen:[(AVMobileGlassControlsViewController *)val _isFullScreen]];
            [val[154] setVolumeControlsView:v62];
            [(AVMobileGlassControlsViewController *)val _updateVolumeControllerClient];

            v31 = val;
          }
        }
      }

      [(AVMobileGlassControlsViewController *)v31 _setUpCopySubjectControlIfNeeded];
      [(AVMobileGlassControlsViewController *)val _setUpVisualLookupControlIfNeeded];
      v64 = +[AVKitGlobalSettings shared];
      v65 = [v64 hapticsEnabled];

      if (v65)
      {
        v66 = +[AVKitGlobalSettings shared];
        v67 = [v66 hapticsEnabled];

        if (v67)
        {
          if (!val[231] && val[154])
          {
            v68 = objc_alloc_init(AVMobileHapticsMenuController);
            v69 = val[233];
            val[233] = v68;

            [val[233] setDelegate:?];
            v70 = [(AVButton *)AVMenuButton buttonWithAccessibilityIdentifier:@"Haptics Options" isFirstGeneration:0];
            v71 = val[232];
            val[232] = v70;

            [val[232] setImageName:@"apple.haptics"];
            [val[232] setDelegate:?];
            v72 = val[153];
            v73 = val[232];
            v74 = [v72 buttonFont];
            [v73 setInlineFont:v74];

            v75 = [AVMobileGlassAuxiliaryControl controlWithView:val[232] displayPriority:0 identifier:@"hapticsId"];
            v76 = val[231];
            val[231] = v75;

            [val[231] setIncluded:1];
          }
        }
      }

      [(AVMobileGlassControlsViewController *)val _updateViewVisibilityStatesTo:0];
      objc_initWeak(&location, val);
      block.value = MEMORY[0x1E69E9820];
      *&block.timescale = 3221225472;
      block.epoch = __57__AVMobileGlassControlsViewController__loadControlsViews__block_invoke;
      v132 = &unk_1E7209EA8;
      objc_copyWeak(v133, &location);
      dispatch_async(MEMORY[0x1E69E96A0], &block);
      objc_destroyWeak(v133);
      objc_destroyWeak(&location);
      [(AVMobileGlassControlsViewController *)val _updateContentTabViewControllers];
      [(AVMobileGlassControlsViewController *)val _setUpPanGestureRecognizerIfNeeded];
      [(AVMobileGlassControlsViewController *)val _setUpTapGestureRecognizerIfNeeded];
      v77 = objc_alloc_init(MEMORY[0x1E6988158]);
      v78 = val[184];
      val[184] = v77;

      [val[184] setStyle:1];
      v79 = objc_alloc_init(MEMORY[0x1E6988158]);
      v80 = val[185];
      val[185] = v79;

      [val[185] setStyle:2];
      v81 = objc_alloc_init(MEMORY[0x1E696AB78]);
      v82 = val[186];
      val[186] = v81;

      [val[186] setDateFormat:@"h:mm a"];
      if (!val[183] && val[154])
      {
        v83 = objc_alloc_init(AVPlayerControllerTimeResolver);
        v84 = val[183];
        val[183] = v83;

        v85 = val[183];
        v86 = [val playerController];
        [v85 setPlayerController:v86];

        [val[183] setInterval:1.0];
      }

      v87 = [[AVObservationController alloc] initWithOwner:val];
      v88 = val[150];
      val[150] = v87;

      [val[150] startObservingNotificationForName:*MEMORY[0x1E69DE018] object:0 notificationCenter:0 observationHandler:&__block_literal_global_12477];
      [val[150] startObservingNotificationForName:@"AVVolumeControllerCurrentRouteHasVolumeControlChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_104_12479];
      v89 = [val[150] startObserving:val keyPath:@"pipController.pictureInPicturePossible" includeInitialValue:1 observationHandler:&__block_literal_global_111_12481];
      v90 = [val[150] startObserving:val keyPath:@"pipController.pictureInPictureActive" includeInitialValue:1 observationHandler:&__block_literal_global_116];
      [val[150] startObservingNotificationForName:@"AVVolumeControllerVolumeChangedNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_118_12483];
      v91 = [val[150] startObserving:val keyPath:@"playerController.muted" observationHandler:&__block_literal_global_124_12485];
      v92 = [val[150] startObserving:val keyPath:@"playerController.allowsExternalPlayback" observationHandler:&__block_literal_global_129];
      v93 = [val[150] startObserving:val keyPath:@"playerController.canSeek" observationHandler:&__block_literal_global_134];
      v94 = [val[150] startObserving:val keyPath:@"playerController.hasLiveStreamingContent" observationHandler:&__block_literal_global_139];
      v95 = [val[150] startObserving:val keyPath:@"playerController.hasSeekableLiveStreamingContent" observationHandler:&__block_literal_global_144];
      v96 = [val[150] startObserving:val keyPath:@"playerController.status" observationHandler:&__block_literal_global_149];
      v97 = [val[150] startObserving:val keyPath:@"playerController.timeControlStatus" observationHandler:&__block_literal_global_154];
      v98 = [val[150] startObserving:val keyPath:@"playerController.playing" includeInitialValue:0 observationHandler:&__block_literal_global_159];
      v99 = [val[150] startObserving:val keyPath:@"playerController.rate" observationHandler:&__block_literal_global_164];
      v100 = [val[150] startObserving:val keyPath:@"playerController.timeControlStatus" observationHandler:&__block_literal_global_166];
      v101 = [val[150] startObserving:val[188] keyPath:@"menu" observationHandler:&__block_literal_global_171];
      v102 = [val[150] startObserving:val keyPath:@"playerController.playingOnMatchPointDevice" observationHandler:&__block_literal_global_176];
      v103 = [val[150] startObserving:val keyPath:@"playerController.hasEnabledAudio" observationHandler:&__block_literal_global_181];
      v104 = [val[150] startObserving:val keyPath:@"playerController.hasAudioMediaSelectionOptions" observationHandler:&__block_literal_global_186];
      v105 = [val[150] startObserving:val keyPath:@"playerController.hasLegibleMediaSelectionOptions" observationHandler:&__block_literal_global_191];
      v106 = [val[150] startObserving:val keyPath:@"playerController.currentAssetIfReady" observationHandler:&__block_literal_global_196];
      v107 = [val[150] startObserving:val keyPath:@"playerController.scrubbing" observationHandler:&__block_literal_global_201];
      v108 = val[150];
      v109 = val[183];
      block.value = @"targetTime";
      *&block.timescale = @"minTime";
      v110 = [MEMORY[0x1E695DEC8] arrayWithObjects:&block count:2];
      v111 = [v108 startObserving:v109 keyPaths:v110 observationHandler:&__block_literal_global_210];

      v112 = [val[150] startObserving:val[183] keyPath:@"maxTime" observationHandler:&__block_literal_global_215];
      v113 = [val[150] startObserving:val keyPath:@"playerController.externalPlaybackActive" observationHandler:&__block_literal_global_220];
      [val[150] startObservingNotificationForName:@"AVNowPlayingInfoControllerDidReceiveSkipCommandEventNotification" object:0 notificationCenter:0 observationHandler:&__block_literal_global_222];
      v114 = +[AVKitGlobalSettings shared];
      LODWORD(v109) = [v114 playerTipsEnabled];

      if (v109)
      {
        v115 = val[150];
        v116 = [val didPresentTipNotificationName];
        [v115 startObservingNotificationForName:v116 object:0 notificationCenter:0 observationHandler:&__block_literal_global_224];
      }

      [val[150] startObservingNotificationForName:*MEMORY[0x1E69DDC48] object:0 notificationCenter:0 observationHandler:&__block_literal_global_226];
      [(AVMobileGlassControlsViewController *)val _updateAnalysisControlInclusionIfNeeded];
      [(AVMobileGlassControlsViewController *)val _updateAudibleMediaSelectionControlInclusionState];
      [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControls];
      [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControlsForControlItems];
      [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControlSpacing];
      [(AVMobileGlassControlsViewController *)val _updateContentTabsInteractionEnablementState];
      [(AVMobileGlassControlsViewController *)val _updateContentTag];
      [(AVMobileGlassControlsViewController *)val _updateControlsViewLayoutConfiguration];
      [(AVMobileGlassControlsViewController *)val _updateControlsVisibilityStateAnimated:?];
      [(AVMobileGlassControlsViewController *)val _updateDisplayModeControlsButtonsInclusion];
      [(AVMobileGlassControlsViewController *)val _updateDisplayModeControlsForControlItems];
      [(AVMobileGlassControlsViewController *)val _updateFullScreenState];
      [val[154] setLayoutAllowed:*(val + 1216)];
      [(AVMobileGlassControlsViewController *)val _updateLayoutMargins];
      [(AVMobileGlassControlsViewController *)val _updateLegibleMediaSelectionControlInclusionState];
      [(AVMobileGlassControlsViewController *)val _updateLoadingAnimatorState];
      [(AVMobileGlassControlsViewController *)val _updatePinnedAuxiliaryControlsIfNeeded];
      [(AVMobileGlassControlsViewController *)val _updatePlaybackSpeedControlInclusion];
      [(AVMobileGlassControlsViewController *)val _updatePlayPauseButtonIcon];
      [(AVMobileGlassControlsViewController *)val _updatePlaybackControlsViewInclusionState];
      [(AVMobileGlassControlsViewController *)val _updatePrefersVolumeSliderIncludedAnimated:?];
      [(AVMobileGlassControlsViewController *)val _updateRoutePickerControlInclusionState];
      [(AVMobileGlassControlsViewController *)val _updateSecondaryPlaybackControlsTypes];
      [(AVMobileGlassControlsViewController *)val _updatePlaybackControlsDisplayMode];
      [(AVMobileGlassControlsViewController *)val _updateTimelineSliderEnablementState];
      [(AVMobileGlassControlsViewController *)val _updateTimeResolver];
      [(AVMobileGlassControlsViewController *)val _updateTimelineValues];
      [(AVMobileGlassControlsViewController *)val _updateTitleAndDescriptionInfo];
      [(AVMobileGlassControlsViewController *)val _updateTitleBarViewInclusionState];
      [(AVMobileGlassControlsViewController *)val _updateVolumeControllerClient];
      [(AVMobileGlassControlsViewController *)val _updateVolumeControlsViewMutedState];
      [(AVMobileGlassControlsViewController *)val _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
      [(AVMobileGlassControlsViewController *)val _updateVolumeControlsViewAllowsVolumeAdjustmentState];
      [(AVMobileGlassControlsViewController *)val _updateVolumeControlsDisplayMode];
      [(AVMobileGlassControlsViewController *)val _updateWebKitExcludedObservationState];
      v117 = val;
      v118 = val[154];
      if (v118 && val[153])
      {
        v119 = [v118 timelineView];

        if (v119)
        {
          v120 = [val[154] timelineView];
          v121 = [v120 fluidSlider];
          [v121 setAccessibilityIdentifier:@"Current position"];
          v122 = AVLocalizedString(@"Current position");
          [v121 setAccessibilityLabel:v122];

          [v121 setIsAccessibilityElement:1];
          [v121 setDelegate:val];
          [v121 addTarget:val action:sel__timelineSliderDidChangeValue_ forControlEvents:4096];
          v123 = +[AVKitGlobalSettings shared];
          v124 = [v123 fluidSliderEnabled];

          if (v124)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v121 setFineScrubbingStyle:1];
            }
          }

          else
          {
            [v121 addTarget:val action:sel__timelineSliderTrackingStateDidChange forControlEvents:449];
          }

          [v121 setMinimumValue:0.0];
          LODWORD(v125) = 1.0;
          [v121 setMaximumValue:v125];
          LODWORD(v126) = 1.0;
          [v121 setTotalValue:v126];
        }

        v117 = val;
      }

      [v117[154] avkit_makeSubtreeDisallowGroupBlending];
      [val[154] layoutIfNeeded];
      v127 = [val[154] window];

      v2 = val;
      if (v127)
      {
        [(AVMobileGlassControlsViewController *)val _setNeedsControlsVisibilityStateUpdate];
        v2 = val;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)_updateContentTabViewControllers
{
  if (a1)
  {
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 supportsContentTabs];

    if (v3)
    {
      [*(a1 + 1816) invalidateContentTabsSelection];
      if (*(a1 + 1232) && !*(a1 + 1816))
      {
        v4 = objc_alloc_init(AVMobileGlassContentTabsViewController);
        v5 = *(a1 + 1816);
        *(a1 + 1816) = v4;

        [*(a1 + 1816) setCustomInfoViewControllers:*(a1 + 1776)];
        [*(a1 + 1816) setDelegate:a1];
        [*(a1 + 1816) willMoveToParentViewController:a1];
        [a1 addChildViewController:*(a1 + 1816)];
        v6 = [*(a1 + 1816) view];
        [*(a1 + 1232) setContentTabsView:v6];
        [*(a1 + 1816) didMoveToParentViewController:a1];
      }

      [(AVMobileGlassControlsViewController *)a1 _updateContentTabViewIsCompact];
      v7 = *(a1 + 1816);
      v8 = *(a1 + 1776);

      [v7 setCustomInfoViewControllers:v8];
    }
  }
}

- (void)_updateAnalysisControlInclusionIfNeeded
{
  if (a1)
  {
    v2 = *(a1 + 1296);
    if (v2)
    {
      v3 = *(a1 + 1874);
      v5 = v2;
      v4 = v3 == [v2 isIncluded];
      v2 = v5;
      if (!v4)
      {
        [v5 setIncluded:*(a1 + 1874)];
        [*(a1 + 1232) setNeedsLayout];
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
  v2 = [result playerController];
  if ([v2 hasAudioMediaSelectionOptions])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 playerController];
    v5 = [v4 hasAudioMediaPresentationSelectionOptions];

    if (v5)
    {
      v3 = 1;
      goto LABEL_9;
    }

    v6 = +[AVKitGlobalSettings shared];
    v3 = [v6 enhanceDialogueEnabled];

    if (!v3)
    {
      goto LABEL_9;
    }

    v2 = [v1 enhanceDialogueController];
    v7 = [v2 availableLevels];
    v3 = [v7 count] != 0;
  }

LABEL_9:
  v8 = v1[157];

  return [v8 setIncluded:v3];
}

- (void)_updateAuxiliaryControlsForControlItems
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 controlItems];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(AVMobileGlassControlsViewController *)a1 _auxiliaryControlForControlItem:v8];
        if (!v9)
        {
          v10 = [v8 type];
          if ((v10 - 1) >= 2)
          {
            if (v10)
            {
              goto LABEL_13;
            }

            v12 = [v8 identifier];
            v9 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:v12];
          }

          else
          {
            v11 = [v8 style];
            if (v11 != 1)
            {
              if (!v11)
              {
                v12 = [v8 view];
                v13 = [v8 identifier];
                v14 = [AVMobileGlassAuxiliaryControl controlWithView:v12 displayPriority:0 identifier:v13];
                goto LABEL_15;
              }

LABEL_13:
              v9 = 0;
LABEL_17:
              v15 = [v8 view];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v17 = [v8 view];
                [v17 setAutoresizingMask:0];
              }

              goto LABEL_19;
            }

            v12 = [v8 view];
            v13 = [v8 identifier];
            v14 = [AVMobileGlassAuxiliaryControl prominentControlWithView:v12 displayPriority:0 identifier:v13];
LABEL_15:
            v9 = v14;
          }

          goto LABEL_17;
        }

LABEL_19:
        [v8 setDelegate:a1];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v18 = a1[207];
  a1[207] = v2;

  [(AVMobileGlassControlsViewController *)a1 _updateControlItemsInclusionState];
  [(AVMobileGlassControlsViewController *)a1 _updateAuxiliaryControls];
  [(AVMobileGlassControlsViewController *)a1 _updatePinnedAuxiliaryControlsIfNeeded];
}

- (void)_updateContentTabsInteractionEnablementState
{
  if (a1)
  {
    v14 = [a1 playerController];
    v2 = [v14 status];
    [v14 contentDimensions];
    v7 = ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v4 >= 0 || (v4 - 1) < 0xFFFFFFFFFFFFFLL;
    v9 = (v3 < 0 || ((v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v3 - 1) > 0xFFFFFFFFFFFFELL;
    if (v9 || !v7)
    {
      v10 = [v14 isExternalPlaybackActive];
    }

    else
    {
      v10 = 1;
    }

    if ([a1[222] count])
    {
      v11 = (v2 == 2) & v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [a1 contentTabPanGestureRecognizer];
    [v12 setEnabled:v11];

    v13 = [a1[227] view];
    [v13 setUserInteractionEnabled:v11];
  }
}

- (void)_updateContentTag
{
  if (a1)
  {
    v6 = [a1[154] titlebarView];
    v2 = [a1 playerController];
    v3 = [v2 status];
    if ([v2 hasLiveStreamingContent])
    {
      if ([v2 isAtLiveEdge] && v3 == 2)
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

    [v6 setContentTag:v5];
    [(AVMobileGlassControlsViewController *)a1 _setNeedsControlsVisibilityStateUpdate];
    [a1[154] setNeedsLayout];
  }
}

- (void)_updateDisplayModeControlsForControlItems
{
  v2 = +[AVKitGlobalSettings shared];
  isFull = [(AVMobileGlassControlsViewController *)a1 _isFullScreen];
  if ([v2 isTVApp])
  {

    if (!isFull)
    {
      return;
    }
  }

  else
  {
    v4 = [v2 isAVKitTester] & isFull;

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__AVMobileGlassControlsViewController__updateDisplayModeControlsForControlItems__block_invoke;
  v11[3] = &unk_1E7209320;
  v12 = v5;
  v6 = v5;
  [a1 _enumerateControlItemsOfTypes:&unk_1EFF12E78 usingBlock:v11];
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
  v10 = [a1[154] displayModeControlsView];
  [v10 setCustomActions:v9];
}

- (void)_updateLegibleMediaSelectionControlInclusionState
{
  if (result)
  {
    v1 = result;
    v2 = ([result excludedControls] & 0x2000) == 0;
    v3 = [v1 playerController];
    v4 = [v3 hasLegibleMediaSelectionOptions];

    v5 = v1[158];

    return [v5 setIncluded:v2 & v4];
  }

  return result;
}

- (void)_updateLoadingAnimatorState
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = [a1 playerController];
  if ([v2 status] == 1)
  {

    v3 = a1 + 190;
LABEL_5:
    *v3 = 1;
    v5 = a1[191];
    if (!v5 || ([v5 isRunning] & 1) == 0)
    {
      v6 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
      v7 = [v6 tintState];

      if (v7 >= 3)
      {
        v9 = _AVLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 134217984;
          *(location + 4) = v7;
          _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, "Error: unknown slider tint state %ld", location, 0xCu);
        }

        v8 = 2;
      }

      else
      {
        v8 = qword_18B6EC680[v7];
      }

      objc_initWeak(location, a1);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __66__AVMobileGlassControlsViewController__updateLoadingAnimatorState__block_invoke;
      v10[3] = &unk_1E7209EA8;
      objc_copyWeak(&v11, location);
      [(AVMobileGlassControlsViewController *)a1 _animateSliderToTintState:v8 duration:v10 completionHandler:1.0];
      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
    }

    return;
  }

  v4 = [v2 timeControlStatus];

  v3 = a1 + 190;
  if (v4 == 1)
  {
    goto LABEL_5;
  }

  if (*v3 == 1)
  {
    *v3 = 0;

    [(AVMobileGlassControlsViewController *)a1 _animateSliderToTintState:0 duration:0.25 completionHandler:?];
  }
}

- (void)_updatePlaybackSpeedControlInclusion
{
  if (a1)
  {
    v6 = [a1 playerController];
    if ([v6 hasLiveStreamingContent])
    {
      v2 = [v6 hasSeekableLiveStreamingContent];
    }

    else
    {
      v2 = 1;
    }

    v3 = [a1 playbackSpeedCollection];
    if (v3)
    {
      v4 = +[AVKitGlobalSettings shared];
      if ([v4 playbackSpeedControlEnabled])
      {
        v5 = ([v6 isPlayingOnMatchPointDevice] ^ 1) & v2;
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

    [a1[159] setIncluded:v5];
  }
}

- (void)_updatePlaybackControlsViewInclusionState
{
  if (a1)
  {
    v2 = [a1 excludedControls];
    v7 = [a1[154] playbackControlsView];
    v3 = [a1 playerController];
    v4 = [v3 hasLiveStreamingContent];
    v5 = [v3 hasSeekableLiveStreamingContent];
    if (!v4 || v5)
    {
      v6 = [a1 requiresLinearPlayback] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    [v7 setShowsPlayPauseButton:(v2 & 1) == 0];
    [v7 setShowsBackwardSecondaryPlaybackButton:((v2 & 2) == 0) & v6];
    [v7 setShowsForwardSecondaryPlaybackButton:((v2 & 4) == 0) & v6];
  }
}

- (void)_updateTimelineSliderEnablementState
{
  v2 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
  [v2 setEnabled:{objc_msgSend(a1, "requiresLinearPlayback") ^ 1}];
}

- (void)_updateTitleAndDescriptionInfo
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [a1[154] titlebarView];
  v3 = [v1 playerController];
  v4 = [v3 player];
  v5 = [v4 currentItem];
  v6 = [v5 contentTitle];

  v7 = [v3 player];
  v8 = [v7 currentItem];
  v9 = [v8 contentSubtitle];

  if (![v3 avkit_isAVPlayerControllerOrSubclass])
  {
    v15 = 0;
    goto LABEL_29;
  }

  v37 = v1;
  v38 = v2;
  v35 = [v3 metadata];
  v36 = v3;
  v10 = [v3 player];
  v11 = [v10 currentItem];
  v12 = [v11 externalMetadata];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v12;
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
      v20 = [v19 identifier];
      v21 = v20;
      if (!v6 && [v20 isEqualToString:v40] && (objc_msgSend(v19, "stringValue"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        v23 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = [v19 stringValue];
        v6 = [v23 initWithString:v24];
      }

      else if (!v9 && [v21 isEqualToString:v39] && (objc_msgSend(v19, "stringValue"), v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
      {
        v26 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = [v19 stringValue];
        v9 = [v26 initWithString:v24];
      }

      else
      {
        if (![v21 isEqualToString:v17])
        {
          goto LABEL_19;
        }

        [v19 stringValue];
        v15 = v24 = v15;
      }

LABEL_19:
    }

    v14 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v14);
LABEL_24:

  v1 = v37;
  v2 = v38;
  v3 = v36;
  if (!v6)
  {
    v27 = *MEMORY[0x1E69876B8];
    v28 = [v35 objectForKeyedSubscript:*MEMORY[0x1E69876B8]];

    if (v28)
    {
      v29 = objc_alloc(MEMORY[0x1E696AAB0]);
      v30 = [v35 objectForKeyedSubscript:v27];
      v6 = [v29 initWithString:v30];

      if (!v9)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v6 = 0;
      if (!v9)
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
    v15 = [v35 objectForKeyedSubscript:*MEMORY[0x1E6987690]];
    goto LABEL_28;
  }

  if (v9)
  {
    goto LABEL_26;
  }

LABEL_35:
  v31 = *MEMORY[0x1E6987938];
  v32 = [v35 objectForKeyedSubscript:*MEMORY[0x1E6987938]];

  if (!v32)
  {
    v9 = 0;
    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v33 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = [v35 objectForKeyedSubscript:v31];
  v9 = [v33 initWithString:v34];

  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_28:

LABEL_29:
  [v2 setTitle:v6];
  [v2 setSubtitle:v9];
  [(AVMobileGlassControlsViewController *)v1 _setNeedsControlsVisibilityStateUpdate];
  [v1[154] setNeedsLayout];
}

- (void)_updateTitleBarViewInclusionState
{
  v2 = [a1 excludedControls];
  v3 = [a1[154] titlebarView];
  [v3 setShowsTitle:(v2 & 0x400) == 0];
  [v3 setShowsSubtitle:(v2 & 0x800) == 0];
  [v3 setShowsContentTag:(v2 & 0x1000) == 0];
  [v3 setNeedsLayout];
}

- (void)_updateVolumeControlsViewVolumeWithMuteStateUpdate:(id *)a1
{
  if (a1)
  {
    v12 = [a1[154] volumeControlsView];
    if (([v12 isTracking] & 1) == 0)
    {
      v4 = [a1 playerController];
      v5 = [v4 isMuted];

      v6 = [a1 playerController];
      v7 = [v6 isExternalPlaybackActive];

      v8 = [a1 volumeController];
      [v8 volume];
      v10 = v9;

      v11 = v10;
      if (v7)
      {
        v11 = 1.0;
      }

      if (v5)
      {
        v11 = 0.0;
      }

      [v12 setVolume:a2 forUpdateReason:v11];
    }
  }
}

- (uint64_t)_updateWebKitExcludedObservationState
{
  v26[2] = *MEMORY[0x1E69E9840];
  v23 = [a1 playerController];
  v2 = *(a1 + 1208);
  if (!v2)
  {
    v3 = [[AVObservationController alloc] initWithOwner:a1];
    v4 = *(a1 + 1208);
    *(a1 + 1208) = v3;

    v2 = *(a1 + 1208);
  }

  v5 = [v2 stopAllObservation];
  v6 = v24;
  if (v24)
  {
    v5 = [v24 avkit_isAVPlayerControllerOrSubclass];
    v6 = v24;
    if (v5)
    {
      v7 = [a1 playerController];
      v8 = *(a1 + 1200);
      v26[0] = @"playbackSuspended";
      v26[1] = @"suspendedRate";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v10 = [v8 startObserving:v7 keyPaths:v9 observationHandler:&__block_literal_global_236];

      v11 = [*(a1 + 1200) startObserving:v7 keyPath:@"photosensitivityRegions" includeInitialValue:1 observationHandler:&__block_literal_global_241];
      v12 = *(a1 + 1200);
      v13 = *MEMORY[0x1E69879F8];
      v14 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 startObservingNotificationForName:v13 object:0 notificationCenter:v14 observationHandler:&__block_literal_global_243];

      v15 = [*(a1 + 1200) startObserving:v7 keyPath:@"player.currentItem.interstitialTimeRanges" observationHandler:&__block_literal_global_248];
      v16 = *(a1 + 1200);
      v25[0] = @"playerController.player.currentItem.externalMetadata";
      v25[1] = @"playerController.metadata";
      v25[2] = @"playerController.player.currentItem.contentTitle";
      v25[3] = @"playerController.player.currentItem.contentSubtitle";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
      v18 = [v16 startObserving:a1 keyPaths:v17 observationHandler:&__block_literal_global_262];

      v19 = [*(a1 + 1200) startObserving:a1 keyPath:@"playerController.atLiveEdge" observationHandler:&__block_literal_global_267];
      v20 = [*(a1 + 1200) startObserving:a1 keyPath:@"playerController.coordinatedPlaybackActive" includeInitialValue:0 observationHandler:&__block_literal_global_272];
      v21 = [*(a1 + 1200) startObserving:a1 keyPath:@"playerController.contentDimensions" observationHandler:&__block_literal_global_277];

      v6 = v24;
    }
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

void __70__AVMobileGlassControlsViewController__webKitExcludedObservationSetup__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void __70__AVMobileGlassControlsViewController__webKitExcludedObservationSetup__block_invoke_6(uint64_t a1, void *a2)
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

  [(AVMobileGlassControlsViewController *)v5 _updateJumpToLiveControlInclusionStateIfNeeded];
  [(AVMobileGlassControlsViewController *)v5 _updateSliderMarkForLiveEdgeIfNeeded];
  [(AVMobileGlassControlsViewController *)v5 _setNeedsControlsVisibilityStateUpdate];
  [(AVMobileGlassControlsViewController *)v5 _updateContentTag];
}

- (void)_updateJumpToLiveControlInclusionStateIfNeeded
{
  if (!a1)
  {
    return;
  }

  v5 = [a1 playerController];
  v2 = [a1[161] isIncluded];
  if ([v5 hasSeekableLiveStreamingContent])
  {
    v3 = [v5 isAtLiveEdge] ^ 1;
    if (v2 == v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v2)
  {
    v3 = 0;
LABEL_7:
    [a1[161] setIncluded:v3];
    v4 = [a1[154] transportControlsView];
    [v4 setNeedsLayout];
  }

LABEL_8:
}

- (void)_updateSliderMarkForLiveEdgeIfNeeded
{
  if (a1)
  {
    v2 = [a1 playerController];
    if ([v2 hasSeekableLiveStreamingContent] && (objc_msgSend(v2, "isAtLiveEdge") & 1) == 0)
    {
      obja = *(a1 + 1672);
      v4 = [(AVMobileGlassControlsViewController *)a1 _timelineSlider];
      [v4 maximumValue];
      v6 = v5;

      if (!obja || ([obja startValue], v3 = obja, vabds_f32(*&v7, v6) >= 0.00000011921))
      {
        *&v7 = v6;
        v8 = [AVMobileFluidSliderMark liveEdgeMarkAtValue:v7];

        v3 = v8;
      }
    }

    else
    {
      v3 = 0;
    }

    obj = v3;
    if (*(a1 + 1672) != v3)
    {
      objc_storeStrong((a1 + 1672), v3);
      [(AVMobileGlassControlsViewController *)a1 _updateTimelineViewSliderMarksIfNeeded];
    }
  }
}

- (void)_updateTimelineViewSliderMarksIfNeeded
{
  v70 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [(AVMobileFluidSliderMark *)v1 playerController];
  v58 = v3;
  if ([v3 avkit_isAVPlayerControllerOrSubclass])
  {
    v4 = v2;
    v5 = [(AVMobileFluidSliderMark *)v1 playerController];
    v6 = [v5 timeline];
    v7 = [v5 timeline];

    v8 = [v5 interstitialController];
    v9 = [v8 currentInterstitialTimeRange];

    if (v7)
    {
      v10 = v1;
      v11 = [v5 interstitialController];
      v12 = [v11 currentInterstitialTimeRange];
      v13 = [v12 interstice];
      v14 = [v13 isCollapsedInTimeLine];

      if (v14)
      {
        v1 = v10;
      }

      else
      {
        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v67[2] = __80__AVMobileGlassControlsViewController__addTimelineViewSliderMarksToSliderMarks___block_invoke;
        v67[3] = &unk_1E7209258;
        v68 = v4;
        v69 = v10;
        v1 = v10;
        [v6 enumerateSegments:v67];
      }
    }

    else
    {
      if (v9)
      {
        goto LABEL_17;
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v15 = [v5 player];
      v16 = [v15 currentItem];
      v11 = [v16 interstitialTimeRanges];

      v17 = [v11 countByEnumeratingWithState:&v63 objects:v67 count:16];
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
              objc_enumerationMutation(v11);
            }

            v21 = [(AVMobileGlassControlsViewController *)v1 _sliderMarkForInterstitialTimeRange:1 isCollapsed:?];
            [v4 addObject:v21];
          }

          v18 = [v11 countByEnumeratingWithState:&v63 objects:v67 count:16];
        }

        while (v18);
      }
    }

LABEL_17:
    if ([v5 hasSeekableLiveStreamingContent] && v1[41]._markType)
    {
      [v4 addObject:?];
    }

    v3 = v58;
  }

  v59 = v2;
  v22 = [(AVMobileGlassControlsViewController *)v1 _timelineSlider];
  v23 = [(AVMobileFluidSliderMark *)v1 playerController];
  v24 = objc_opt_respondsToSelector();

  if (v24)
  {
    v57 = v22;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v25 = [(AVMobileFluidSliderMark *)v1 playerController];
    v26 = [v25 photosensitivityRegions];

    obj = v26;
    v27 = [v26 countByEnumeratingWithState:&v63 objects:v67 count:16];
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
            v33 = [v31 colors];
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
            v36 = [(AVMobileGlassControlsViewController *)v1 _normalizeTimeValue:v35];
            v37 = [(AVMobileGlassControlsViewController *)v1 _normalizeTimeValue:?];
            v38 = MEMORY[0x1E69DC888];
            v39 = [v33 objectAtIndexedSubscript:0];
            [v39 doubleValue];
            v41 = v40;
            v42 = [v33 objectAtIndexedSubscript:1];
            [v42 doubleValue];
            v44 = v43;
            [v33 objectAtIndexedSubscript:2];
            v46 = v45 = v1;
            [v46 doubleValue];
            v48 = v47;
            v49 = [v33 objectAtIndexedSubscript:3];
            [v49 doubleValue];
            v51 = [v38 colorWithRed:v41 green:v44 blue:v48 alpha:v50];

            v1 = v45;
            v52 = [AVMobileFluidSliderMark alloc];
            *&v53 = v36;
            *&v54 = v37;
            v55 = [(AVMobileFluidSliderMark *)v52 initWithStartValue:v51 endValue:v51 filledColor:2 unfilledColor:v53 markWithType:v54];
            [v59 addObject:v55];
          }
        }

        v28 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
      }

      while (v28);
    }

    v22 = v57;
    [v57 setSliderMarks:v59];
    v3 = v58;
  }

  v56 = [(AVMobileGlassControlsViewController *)v1 _timelineSlider];
  [v56 setSliderMarks:v59];
}

- (float)_normalizeTimeValue:(uint64_t)a1
{
  v3 = *(a1 + 1464);
  v4 = 0.0;
  if (v3)
  {
    [v3 minTime];
    v7 = v6;
    v8 = v6;
    [*(a1 + 1464) maxTime];
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

void __80__AVMobileGlassControlsViewController__addTimelineViewSliderMarksToSliderMarks___block_invoke(uint64_t a1, void *a2)
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
      v7 = [(AVMobileGlassControlsViewController *)*(a1 + 40) _sliderMarkForInterstitialTimeRange:v3 isCollapsed:v5];
      [v6 addObject:v7];
    }
  }
}

- (AVMobileFluidSliderMark)_sliderMarkForInterstitialTimeRange:(char)a3 isCollapsed:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      [v5 timeRange];
    }

    else
    {
      memset(&v20[4], 0, 24);
    }

    time = *&v20[4];
    Seconds = CMTimeGetSeconds(&time);
    v8 = [(AVMobileGlassControlsViewController *)a1 _normalizeTimeValue:?];
    v9 = [(AVMobileFluidSliderMark *)a1 playerController];
    v10 = [v9 timeline];
    if (!v10 || (a3 & 1) != 0)
    {
      *&v11 = v8;
      a1 = [AVMobileFluidSliderMark interstitialMarkAtValue:v11];
    }

    else
    {
      if (v6)
      {
        [v6 timeRange];
      }

      else
      {
        memset(v20, 0, 32);
      }

      time = *&v20[1];
      v12 = CMTimeGetSeconds(&time);
      v13 = [(AVMobileGlassControlsViewController *)a1 _normalizeTimeValue:?];
      v14 = [AVMobileFluidSliderMark alloc];
      v15 = [MEMORY[0x1E69DC888] systemYellowColor];
      v16 = [MEMORY[0x1E69DC888] systemYellowColor];
      *&v17 = v8;
      *&v18 = v13;
      a1 = [(AVMobileFluidSliderMark *)v14 initWithStartValue:v15 endValue:v16 filledColor:2 unfilledColor:v17 markWithType:v18];
    }
  }

  return a1;
}

void __70__AVMobileGlassControlsViewController__webKitExcludedObservationSetup__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = [a4 object];
  v6 = [v5 interstitialPlayer];
  v7 = [(AVMobileFluidSliderMark *)v10 playerController];
  v8 = [v7 interstitialController];
  v9 = [v8 interstitialPlayer];

  if (v6 == v9)
  {
    [(AVMobileGlassControlsViewController *)v10 _updateTimeResolver];
    [(AVMobileGlassControlsViewController *)v10 _updateTimelineViewSliderMarksIfNeeded];
  }
}

void __66__AVMobileGlassControlsViewController__updateLoadingAnimatorState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [AVMobileGlassControlsViewController _updateLoadingAnimatorState];
}

- (void)_animateSliderToTintState:(void *)a3 duration:(double)a4 completionHandler:
{
  v7 = a3;
  v8 = *(a1 + 1528);
  if (v8 && [v8 isRunning] && objc_msgSend(*(a1 + 1528), "isInterruptible"))
  {
    [*(a1 + 1528) stopAnimation:1];
    [*(a1 + 1528) finishAnimationAtPosition:2];
    v9 = *(a1 + 1528);
    *(a1 + 1528) = 0;
  }

  v10 = [*(a1 + 1232) timelineView];
  objc_initWeak(&location, v10);

  v11 = objc_alloc(MEMORY[0x1E69DD278]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __92__AVMobileGlassControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke;
  v20[3] = &unk_1E7209A38;
  objc_copyWeak(v21, &location);
  v21[1] = a2;
  v12 = [v11 initWithDuration:3 curve:v20 animations:a4];
  v13 = *(a1 + 1528);
  *(a1 + 1528) = v12;

  if (v7)
  {
    v14 = *(a1 + 1528);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __92__AVMobileGlassControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_2;
    v18 = &unk_1E7209280;
    v19 = v7;
    [v14 addCompletion:&v15];
  }

  [*(a1 + 1528) startAnimation];
  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __92__AVMobileGlassControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained fluidSlider];
  [v2 setTintState:*(a1 + 40)];
}

void __92__AVMobileGlassControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__AVMobileGlassControlsViewController__animateSliderToTintState_duration_completionHandler___block_invoke_3;
  block[3] = &unk_1E72099C8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __80__AVMobileGlassControlsViewController__updateDisplayModeControlsForControlItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 action];
  v5 = [v3 title];
  v6 = [v3 image];
  v7 = [v3 identifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__AVMobileGlassControlsViewController__updateDisplayModeControlsForControlItems__block_invoke_2;
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

uint64_t __80__AVMobileGlassControlsViewController__updateDisplayModeControlsForControlItems__block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_27(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_26(uint64_t a1, void *a2, uint64_t a3, void *a4)
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

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
  [(AVMobileGlassControlsViewController *)v2 _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
  [(AVMobileGlassControlsViewController *)v2 _updateVolumeControlsViewAllowsVolumeAdjustmentState];
  [(AVMobileGlassControlsViewController *)v2 _updateDisplayModeControlsButtonsInclusion];
  [(AVMobileGlassControlsViewController *)v2 _updateContentTabsInteractionEnablementState];
  [(AVMobileGlassControlsViewController *)v2 _updateAudibleMediaSelectionControlInclusionState];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updateTimelineValues];
  [(AVMobileGlassControlsViewController *)v2 _updateTimelineViewSliderMarksIfNeeded];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
  [v2 _timelineSliderTrackingStateDidChange];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_21(uint64_t a1, void *a2)
{
  v4 = a2;
  [(AVMobileGlassControlsViewController *)v4 _updateAudibleMediaSelectionControlInclusionState];
  [(AVMobileGlassControlsViewController *)v4 _updateAudibleMediaSelectionMenu];
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 hapticsEnabled];

  if (v3)
  {
    [(AVMobileGlassControlsViewController *)v4 _updateHasHapticTrackSelectionMenu];
  }
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  [(AVMobileGlassControlsViewController *)v6 _updateAudibleMediaSelectionControlInclusionState];
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

uint64_t __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(AVMobileGlassControlsViewController *)v2 _auxiliaryControlsView];
  [v3 updateOverflowMenu];

  v4 = v2[170];

  return [v4 updateContextMenu];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_15(uint64_t a1, void *a2)
{
  v7 = a2;
  [(AVMobileGlassControlsViewController *)v7 _updatePlayPauseButtonIcon];
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

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_13(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
      [(AVMobileGlassControlsViewController *)v9 _resetControlsVisibilityTimer];
    }
  }
}

- (void)_resetControlsVisibilityTimer
{
  if (a1)
  {
    [*(a1 + 1560) invalidate];
    v2 = *(a1 + 1560);
    *(a1 + 1560) = 0;
  }
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updateLoadingAnimatorState];
  [(AVMobileGlassControlsViewController *)v2 _updateContentTabsInteractionEnablementState];
  [(AVMobileGlassControlsViewController *)v2 _updateContentTag];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_10(uint64_t a1, void *a2)
{
  val = a2;
  [(AVMobileGlassControlsViewController *)val _updateSecondaryPlaybackControlsTypes];
  [(AVMobileGlassControlsViewController *)val _updatePlaybackControlsViewInclusionState];
  [(AVMobileGlassControlsViewController *)val _updatePlaybackSpeedControlInclusion];
  if (!val)
  {
    [(AVMobileGlassControlsViewController *)0 _updateSliderMarkForLiveEdgeIfNeeded];
    [(AVMobileGlassControlsViewController *)0 _updateTimelineViewSliderMarksIfNeeded];
    [(AVMobileGlassControlsViewController *)0 _setNeedsControlsVisibilityStateUpdate];
    goto LABEL_10;
  }

  v2 = [(AVMobileGlassControlsViewController *)val _timelineSlider];
  [v2 maximumValue];
  v4 = v3;
  v5 = [val playerController];
  v6 = [v5 hasSeekableLiveStreamingContent];

  if (v6)
  {
    if ([(AVMobileGlassControlsViewController *)val _isLandscape])
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

  [(AVMobileGlassControlsViewController *)val _updateSliderMarkForLiveEdgeIfNeeded];
  [(AVMobileGlassControlsViewController *)val _updateTimelineViewSliderMarksIfNeeded];
  [(AVMobileGlassControlsViewController *)val _setNeedsControlsVisibilityStateUpdate];
  v12 = [val playerController];
  v13 = [v12 hasSeekableLiveStreamingContent];

  v14 = val;
  if (!*(val + 161) && ((*(val + 154) != 0) & v13) == 1)
  {
    v15 = [AVButton buttonWithAccessibilityIdentifier:@"Jump to Live" isFirstGeneration:0];
    v16 = *(val + 167);
    *(val + 167) = v15;

    [*(val + 167) setAccessibilityIdentifier:@"Jump to Live"];
    v17 = *(val + 167);
    v18 = AVLocalizedString(@"Jump to Live");
    [v17 setAccessibilityLabel:v18];

    [*(val + 167) addTarget:val action:sel__handleJumpToLiveAction forControlEvents:64];
    [*(val + 167) setImageName:@"forward.end.fill.tv"];
    v19 = *(val + 167);
    v20 = [*(val + 153) buttonFont];
    [v19 setInlineFont:v20];

    v21 = [AVMobileGlassAuxiliaryControl prominentControlWithView:*(val + 167) displayPriority:0 identifier:@"AVJumpToLiveControl"];
    v22 = *(val + 161);
    *(val + 161) = v21;

    [*(val + 161) setIncluded:1];
    objc_initWeak(&location, val);
    v23 = MEMORY[0x1E69DC628];
    v24 = AVLocalizedString(@"OVERFLOW_MENU_JUMP_TO_LIVE");
    v25 = MEMORY[0x1E69DCAB8];
    v26 = AVBundle();
    v27 = [v25 imageNamed:@"forward.end.fill.tv" inBundle:v26];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __70__AVMobileGlassControlsViewController__setUpJumpToLiveControlIfNeeded__block_invoke;
    v31[3] = &unk_1E7209230;
    objc_copyWeak(&v32, &location);
    v28 = [v23 actionWithTitle:v24 image:v27 identifier:0 handler:v31];
    v29 = *(val + 171);
    *(val + 171) = v28;

    [(AVMobileGlassControlsViewController *)val _updateJumpToLiveControlInclusionStateIfNeeded];
    [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControls];
    [(AVMobileGlassControlsViewController *)val _updatePinnedAuxiliaryControlsIfNeeded];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
LABEL_10:
    v14 = val;
  }

  [(AVMobileGlassControlsViewController *)v14 _updateJumpToLiveControlInclusionStateIfNeeded];
}

void __70__AVMobileGlassControlsViewController__setUpJumpToLiveControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleJumpToLiveAction];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updateContentTag];
  [(AVMobileGlassControlsViewController *)v2 _updateSecondaryPlaybackControlsTypes];
  [(AVMobileGlassControlsViewController *)v2 _updatePlaybackControlsViewInclusionState];
  [(AVMobileGlassControlsViewController *)v2 _updatePlaybackSpeedControlInclusion];
  [(AVMobileGlassControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
  [(AVMobileGlassControlsViewController *)v2 _updateVolumeControlsViewMutedState];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
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
        [(AVMobileGlassControlsViewController *)val _animateVolumeEmphasisTo:?];
        [val[180] invalidate];
        v15 = val[180];
        val[180] = 0;

        if (([v14 isTracking] & 1) == 0)
        {
          objc_initWeak(&location, val);
          v16 = MEMORY[0x1E695DFF0];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __101__AVMobileGlassControlsViewController__animateVolumeControlsToEmphasizedWithTransformToIdentityDelay__block_invoke;
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

        [(AVMobileGlassControlsViewController *)val _temporarilyShowVolumeSlider];
      }

      [(AVMobileGlassControlsViewController *)val _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
    }
  }
}

void __101__AVMobileGlassControlsViewController__animateVolumeControlsToEmphasizedWithTransformToIdentityDelay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _animateVolumeEmphasisTo:?];

  v3 = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)v3 _volumeControlsViewInteractionDidContinue];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v5 = [a4 oldValue];
  v6 = [v5 BOOLValue];

  v7 = [v10 pipController];
  v8 = [v7 isPictureInPictureActive];

  v9 = v6 ^ v8;
  if ((v6 & 1) != 0 || !v9)
  {
    [(AVMobileGlassControlsViewController *)v10 _updateLayoutMargins];
  }

  else
  {
    [(AVMobileGlassControlsViewController *)v10 _setContentTabPresented:0 animated:?];
  }

  if ((v6 & v9) == 1)
  {
    [(AVMobileGlassControlsViewController *)v10 _updatePinnedAuxiliaryControlsIfNeeded];
    [(AVMobileGlassControlsViewController *)v10 _updateAuxiliaryControlSpacing];
  }

  [(AVMobileGlassControlsViewController *)v10 _updatePrefersSystemVolumeHUDHidden];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [(AVMobileGlassControlsViewController *)v2 _updateVolumeControlsViewAllowsVolumeAdjustmentState];
  [(AVMobileGlassControlsViewController *)v2 _updatePrefersVolumeSliderIncludedAnimated:?];
}

void __56__AVMobileGlassControlsViewController__observationSetup__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
      [(AVMobileGlassControlsViewController *)a2 _updateLayoutMargins];
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
          v21[2] = __74__AVMobileGlassControlsViewController__animateKeyboardAvoidance_duration___block_invoke;
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

void __74__AVMobileGlassControlsViewController__animateKeyboardAvoidance_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained viewIfLoaded];

  [v2 setNeedsLayout];
  [v2 layoutIfNeeded];
}

- (void)_setUpAuxiliaryControlsViewIfNeeded
{
  v2 = *(a1 + 1232);
  if (v2)
  {
    v3 = [v2 auxiliaryControlsView];

    if (!v3)
    {
      v6 = [[AVMobileGlassAuxiliaryControlsView alloc] initWithStyleSheet:*(a1 + 1224)];
      [(AVMobileGlassAuxiliaryControlsView *)v6 setAutoresizingMask:0];
      [(AVMobileGlassAuxiliaryControlsView *)v6 setDelegate:a1];
      [(AVView *)v6 setContentIntersectingDelegate:a1];
      v4 = [a1 prefersFullScreenStyleForEmbeddedMode];
      v5 = 0.0;
      if (v4)
      {
        v5 = *(a1 + 1912);
      }

      [(AVMobileGlassAuxiliaryControlsView *)v6 setAvkit_extendedDynamicRangeGain:v5];
      [*(a1 + 1232) setAuxiliaryControlsView:v6];
    }
  }
}

- (void)_setUpAnalysisControlIfNeeded
{
  if (val && *(val + 154) && !*(val + 162) && *(val + 1874) == 1)
  {
    objc_initWeak(&location, val);
    v2 = MEMORY[0x1E69DC628];
    v3 = AVLocalizedString(@"OVERFLOW_MENU_LIVE_TEXT_TITLE");
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.viewfinder"];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __68__AVMobileGlassControlsViewController__setUpAnalysisControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 172);
    *(val + 172) = v5;

    v7 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisControl", v9, v10, v11, v12];
    v8 = *(val + 162);
    *(val + 162) = v7;

    [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControls];
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
    v11 = __71__AVMobileGlassControlsViewController__setUpCopySubjectControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 173);
    *(val + 173) = v5;

    v7 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisCopySubjectControl", v9, v10, v11, v12];
    v8 = *(val + 163);
    *(val + 163) = v7;

    [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControls];
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
    v11 = __72__AVMobileGlassControlsViewController__setUpVisualLookupControlIfNeeded__block_invoke;
    v12 = &unk_1E7209230;
    objc_copyWeak(&v13, &location);
    v5 = [v2 actionWithTitle:v3 image:v4 identifier:0 handler:&v9];
    v6 = *(val + 174);
    *(val + 174) = v5;

    v7 = [AVMobileGlassAuxiliaryControl controlWithDisplayPriority:0 identifier:@"AVAnalysisVisualLookupControl", v9, v10, v11, v12];
    v8 = *(val + 164);
    *(val + 164) = v7;

    [(AVMobileGlassControlsViewController *)val _updateAuxiliaryControls];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __57__AVMobileGlassControlsViewController__loadControlsViews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 controlsViewControllerDidUpdateLayoutGuides:v3];
}

void __72__AVMobileGlassControlsViewController__setUpVisualLookupControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventManager];
  [v1 sendActionsForEvent:@"AVControlsVisualLookupMenuItemPressedEvent"];
}

void __71__AVMobileGlassControlsViewController__setUpCopySubjectControlIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained eventManager];
  [v1 sendActionsForEvent:@"AVControlsCopySubjectMenuItemPressedEvent"];
}

void __68__AVMobileGlassControlsViewController__setUpAnalysisControlIfNeeded__block_invoke(uint64_t a1)
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

- (void)_updateInfoAffordanceInclusion
{
  if (a1)
  {
    v5 = [*(a1 + 1232) titlebarView];
    v2 = +[AVKitGlobalSettings shared];
    v3 = [v2 supportsContentTabs];

    if (v3)
    {
      v4 = v5 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      [v5 setShowsInfoAffordance:{objc_msgSend(*(a1 + 1776), "count") == 1}];
      [(AVMobileGlassControlsViewController *)a1 _setNeedsControlsVisibilityStateUpdate];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v3 viewDidLayoutSubviews];
  if (self && !self->_needsTimeResolverUpdate)
  {
    self->_needsTimeResolverUpdate = 1;
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__AVMobileGlassControlsViewController__setNeedsTimeResolverUpdate__block_invoke;
    block[3] = &unk_1E7209EA8;
    objc_copyWeak(&v5, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
  [(AVMobileGlassControlsViewController *)self _updateLegibleContentInsetsAvoidingControlsUIIfNeeded];
}

void __66__AVMobileGlassControlsViewController__setNeedsTimeResolverUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1496] = 0;
    v2 = WeakRetained;
    [(AVMobileGlassControlsViewController *)WeakRetained _updateTimeResolver];
    WeakRetained = v2;
  }
}

- (void)loadView
{
  obj = objc_alloc_init(AVMobileGlassControlsView);
  [(AVMobileGlassControlsView *)obj setDelegate:self];
  [(AVMobileGlassControlsView *)obj setPreservesSuperviewLayoutMargins:0];
  [(AVMobileGlassControlsView *)obj setInsetsLayoutMarginsFromSafeArea:0];
  v3 = 1;
  [(AVView *)obj setHidden:1];
  [(AVView *)obj setAutomaticallyUpdatesSubviewContentIntersections:1];
  [(AVMobileGlassControlsViewController *)self setView:obj];
  objc_storeStrong(&self->_view, obj);
  contentTabPresentationContext = self->_contentTabPresentationContext;
  if (contentTabPresentationContext)
  {
    v3 = [(AVMobileContentTabPresentationContext *)contentTabPresentationContext state]== 1;
  }

  [(AVView *)self->_view setIgnoresTouches:v3];
}

- (void)updateVisibilityPolicy:(unint64_t)a3 animated:(BOOL)a4
{
  v7 = [(AVMobileControlsViewController *)self visibilityPolicy];
  if (v7 != a3)
  {
    v8 = v7;
    v9.receiver = self;
    v9.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v9 setVisibilityPolicy:a3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        if (a3 == 2)
        {
          if (v8 == 1)
          {
            [(AVMobileGlassControlsViewController *)self _hideControlsIfPossible];
          }

          else if (!v8)
          {
            [objc_opt_class() autoHideInterval];
            [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
          }
        }

        [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
        if (!a4)
        {
          [(AVMobileGlassControlsViewController *)self _updateControlsVisibilityStateIfNeededAnimated:MEMORY[0x1E695E110]];
        }
      }
    }
  }
}

- (void)_hideControlsIfPossible
{
  if (a1)
  {
    [a1 setTemporarilyVisible:0];
    *(a1 + 1416) = 0;
    [(AVMobileGlassControlsViewController *)a1 _resetVolumeSliderTemporarilyVisibleTimer];
    [*(a1 + 1560) invalidate];
    v2 = *(a1 + 1560);
    *(a1 + 1560) = 0;

    [(AVMobileGlassControlsViewController *)a1 _setNeedsControlsVisibilityStateUpdate];
  }
}

- (void)toggleVisibility:(id)a3
{
  if ([(AVMobileControlsViewController *)self temporarilyVisible])
  {

    [(AVMobileGlassControlsViewController *)self _hideControlsIfPossible];
  }

  else if (self)
  {
    [objc_opt_class() autoHideInterval];

    [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
  }
}

- (void)scheduleTips
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVMobileGlassControlsViewController_scheduleTips__block_invoke;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, &location);
  [(AVTipKitControlsViewController *)self scheduleTipsIfNeededWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __51__AVMobileGlassControlsViewController_scheduleTips__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _configureTips];
}

- (void)didBeginIndirectUserInteraction
{
  [objc_opt_class() autoHideInterval];

  [(AVMobileGlassControlsViewController *)self flashControlsWithDuration:?];
}

- (void)flashControlsWithDuration:(double)a3
{
  [(AVMobileGlassControlsViewController *)self _resetControlsVisibilityTimer];
  v5 = [(AVMobileControlsViewController *)self pipController];
  v6 = [v5 isPictureInPictureActive];

  if ((v6 & 1) == 0)
  {
    v7 = [(AVMobileControlsViewController *)self playerController];
    v8 = [v7 isPlaying];

    v10 = self && (contentTabPresentationContext = self->_contentTabPresentationContext) != 0 && [(AVMobileContentTabPresentationContext *)contentTabPresentationContext state]!= 1 && [(AVMobileContentTabPresentationContext *)self->_contentTabPresentationContext presentationLayout]== 0;
    if (v8)
    {
      if (!v10)
      {
        objc_initWeak(&location, self);
        v11 = MEMORY[0x1E695DFF0];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __65__AVMobileGlassControlsViewController_flashControlsWithDuration___block_invoke;
        v16[3] = &unk_1E7209DA8;
        objc_copyWeak(&v17, &location);
        v12 = [v11 scheduledTimerWithTimeInterval:0 repeats:v16 block:a3];
        visibilityTimer = self->_visibilityTimer;
        self->_visibilityTimer = v12;

        objc_destroyWeak(&v17);
        objc_destroyWeak(&location);
      }
    }

    [(AVMobileControlsViewController *)self setTemporarilyVisible:1];
    [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__AVMobileGlassControlsViewController_flashControlsWithDuration___block_invoke_2;
    v14[3] = &unk_1E7209EA8;
    objc_copyWeak(&v15, &location);
    [(AVTipKitControlsViewController *)self showTipsIfNeededWithCompletion:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __65__AVMobileGlassControlsViewController_flashControlsWithDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setTemporarilyVisible:0];
    [(AVMobileGlassControlsViewController *)v2 _setNeedsControlsVisibilityStateUpdate];
    WeakRetained = v2;
  }
}

void __65__AVMobileGlassControlsViewController_flashControlsWithDuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AVMobileGlassControlsViewController *)WeakRetained _configureTips];
}

- (void)dismissCustomInfoViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
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
    v8 = [(AVMobileContentTabPresentationContext *)v10 transitionContext];
    v9 = [v8 direction] == 0;
  }

  else
  {
    v9 = 0;
  }

  if ((v7 | v9))
  {
    [(AVMobileGlassControlsViewController *)self _setContentTabPresented:v3 animated:?];
  }
}

- (void)setMediaPresentationSettingsCustomItems:(id)a3
{
  if (self->_mediaPresentationSettingsCustomItems != a3)
  {
    v4 = [a3 copy];
    mediaPresentationSettingsCustomItems = self->_mediaPresentationSettingsCustomItems;
    self->_mediaPresentationSettingsCustomItems = v4;

    MEMORY[0x1EEE66BB8](v4, mediaPresentationSettingsCustomItems);
  }
}

- (void)setPrefersMediaPresentationSettingsMenuGroupTitle:(id)a3
{
  if (self->_prefersMediaPresentationSettingsMenuGroupTitle != a3)
  {
    v4 = [a3 copy];
    prefersMediaPresentationSettingsMenuGroupTitle = self->_prefersMediaPresentationSettingsMenuGroupTitle;
    self->_prefersMediaPresentationSettingsMenuGroupTitle = v4;

    MEMORY[0x1EEE66BB8](v4, prefersMediaPresentationSettingsMenuGroupTitle);
  }
}

- (void)setPrefersFullScreenStyleForEmbeddedMode:(BOOL)a3
{
  if (self->_prefersFullScreenStyleForEmbeddedMode != a3)
  {
    self->_prefersFullScreenStyleForEmbeddedMode = a3;
    [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];

    [(AVMobileGlassControlsViewController *)self _updateExtendedDynamicRangeGain];
  }
}

- (void)_updateExtendedDynamicRangeGain
{
  if (a1)
  {
    v2 = 0.0;
    if ([a1 prefersFullScreenStyleForEmbeddedMode])
    {
      v2 = *(a1 + 1912);
    }

    v5 = [*(a1 + 1232) timelineView];
    [v5 setLabelsExtendedDynamicRangeGain:v2];
    [v5 setSliderExtendedDynamicRangeGain:v2];
    v3 = [*(a1 + 1232) playbackControlsView];
    [v3 setAvkit_extendedDynamicRangeGain:v2];
    v4 = [*(a1 + 1232) auxiliaryControlsView];
    [v4 setAvkit_extendedDynamicRangeGain:v2];
  }
}

- (void)setExtendedDynamicRangeGain:(double)a3
{
  if (self->_extendedDynamicRangeGain != a3)
  {
    self->_extendedDynamicRangeGain = a3;
    [(AVMobileGlassControlsViewController *)self _updateExtendedDynamicRangeGain];
  }
}

- (UIPanGestureRecognizer)contentTabPanGestureRecognizer
{
  [(AVMobileGlassControlsViewController *)self _setUpPanGestureRecognizerIfNeeded];
  contentTabPanGestureRecognizer = self->_contentTabPanGestureRecognizer;

  return contentTabPanGestureRecognizer;
}

- (id)volumeControlsLayoutItem
{
  if (self)
  {
    v3 = [(AVMobileGlassControlsView *)self->_view volumeControlsView];
    v4 = v3;
    if (self->_view)
    {
      v5 = v3 == 0;
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

      [(AVMobileGlassControlsView *)self->_view addLayoutGuide:self->_volumeControlsLayoutGuide];
      v8 = [(UILayoutGuide *)self->_volumeControlsLayoutGuide avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v4];
      [MEMORY[0x1E696ACD8] activateConstraints:v8];
    }
  }

  v9 = self->_volumeControlsLayoutGuide;

  return v9;
}

- (void)setVolumeController:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileControlsViewController *)self volumeController];

  if (v5)
  {
    v6 = [(AVMobileControlsViewController *)self volumeController];
    [v6 setPrefersSystemVolumeHUDHidden:0];
  }

  v7.receiver = self;
  v7.super_class = AVMobileGlassControlsViewController;
  [(AVMobileControlsViewController *)&v7 setVolumeController:v4];
  if (self && self->_hasBeenSetUp)
  {
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewVolumeWithMuteStateUpdate:?];
    [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewMutedState];
    [(AVMobileGlassControlsViewController *)self _updatePrefersSystemVolumeHUDHidden];
    [(AVMobileGlassControlsViewController *)self _updatePrefersVolumeSliderIncludedAnimated:?];
  }
}

- (id)transportControlsLayoutItem
{
  v44[3] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = [(AVMobileGlassControlsView *)self->_view auxiliaryControlsView];
    v4 = [(AVMobileGlassControlsView *)self->_view timelineView];
    v5 = [(AVMobileGlassControlsView *)self->_view titlebarView];
    v6 = v5;
    if (self->_view)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    v9 = v7 || v3 == 0 || v5 == 0;
    if (!v9 && ![(AVMobileControlsViewController *)self optimizeForPerformance])
    {
      v10 = [(AVMobileGlassControlsView *)self->_view layoutMarginsGuide];
      v11 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      transportControlsLayoutGuide = self->_transportControlsLayoutGuide;
      self->_transportControlsLayoutGuide = v11;

      [(AVMobileGlassControlsView *)self->_view addLayoutGuide:self->_transportControlsLayoutGuide];
      v13 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      v14 = [v6 topAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      titlebarViewTopAnchorConstraint = self->_titlebarViewTopAnchorConstraint;
      self->_titlebarViewTopAnchorConstraint = v15;

      v17 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      v18 = [v4 topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      timelineTopAnchorConstraint = self->_timelineTopAnchorConstraint;
      self->_timelineTopAnchorConstraint = v19;

      v21 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      v22 = [v3 topAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      auxiliaryControlsViewTopAnchorConstraint = self->_auxiliaryControlsViewTopAnchorConstraint;
      self->_auxiliaryControlsViewTopAnchorConstraint = v23;

      v25 = [(UILayoutGuide *)self->_transportControlsLayoutGuide topAnchor];
      v26 = [v10 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      defaultTopAnchorConstraint = self->_defaultTopAnchorConstraint;
      self->_defaultTopAnchorConstraint = v27;

      v29 = objc_alloc(MEMORY[0x1E695DF70]);
      v43 = [(UILayoutGuide *)self->_transportControlsLayoutGuide leadingAnchor];
      v42 = [v10 leadingAnchor];
      v41 = [v43 constraintEqualToAnchor:v42];
      v44[0] = v41;
      v39 = [(UILayoutGuide *)self->_transportControlsLayoutGuide trailingAnchor];
      v40 = v10;
      v38 = [v10 trailingAnchor];
      v30 = [v39 constraintEqualToAnchor:v38];
      v44[1] = v30;
      v31 = [(UILayoutGuide *)self->_transportControlsLayoutGuide bottomAnchor];
      v32 = [v10 bottomAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];
      v44[2] = v33;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
      v35 = [v29 initWithArray:v34];

      [MEMORY[0x1E696ACD8] activateConstraints:v35];
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTransportControlsLayoutGuidesConstraintsIfNeeded];
    }
  }

  v36 = self->_transportControlsLayoutGuide;

  return v36;
}

- (void)setTransportBarCustomMenuItems:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileControlsViewController *)self transportBarCustomMenuItems];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v6 setTransportBarCustomMenuItems:v4];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];
      }
    }
  }
}

- (void)setShowsAudioTrackSelectionMenu:(BOOL)a3
{
  if (self->_showsAudioTrackSelectionMenu != a3)
  {
    self->_showsAudioTrackSelectionMenu = a3;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControls];
    }
  }
}

- (void)setShowsVisualLookupControl:(BOOL)a3
{
  if (self->_showsVisualLookupControl != a3)
  {
    self->_showsVisualLookupControl = a3;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _setUpVisualLookupControlIfNeeded];
      v4 = self->_visualLookupControl;
      showsVisualLookupControl = self->_showsVisualLookupControl;
      v6 = v4;
      if (showsVisualLookupControl != [(AVMobileGlassAuxiliaryControl *)v4 isIncluded])
      {
        [(AVMobileGlassAuxiliaryControl *)v6 setIncluded:self->_showsVisualLookupControl];
      }
    }
  }
}

- (void)setShowsCopySubjectControl:(BOOL)a3
{
  if (self->_showsCopySubjectControl != a3)
  {
    self->_showsCopySubjectControl = a3;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _setUpCopySubjectControlIfNeeded];
      copySubjectControl = self->_copySubjectControl;
      if (copySubjectControl)
      {
        showsCopySubjectControl = self->_showsCopySubjectControl;

        [(AVMobileGlassAuxiliaryControl *)copySubjectControl setIncluded:showsCopySubjectControl];
      }
    }
  }
}

- (void)setShowsAnalysisControl:(BOOL)a3
{
  if (self->_showsAnalysisControl != a3)
  {
    self->_showsAnalysisControl = a3;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _setUpAnalysisControlIfNeeded];
      [(AVMobileGlassControlsViewController *)self _updateAnalysisControlInclusionIfNeeded];

      [(AVMobileGlassControlsViewController *)self _updatePinnedAuxiliaryControlsIfNeeded];
    }
  }
}

- (void)setSecondaryPlaybackControlsType:(unint64_t)a3
{
  if ([(AVMobileControlsViewController *)self secondaryPlaybackControlsType]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setSecondaryPlaybackControlsType:a3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
      }
    }
  }
}

- (void)setRoutingConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileControlsViewController *)self routingConfiguration];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v7 setRoutingConfiguration:v4];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        v6 = [(AVMobileGlassControlsView *)self->_view displayModeControlsView];
        [v6 setRoutingConfiguration:v4];

        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
      }
    }
  }
}

- (void)setRequiresLinearPlayback:(BOOL)a3
{
  v3 = a3;
  if ([(AVMobileControlsViewController *)self requiresLinearPlayback]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setRequiresLinearPlayback:v3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateSecondaryPlaybackControlsTypes];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackControlsViewInclusionState];
        [(AVMobileGlassControlsViewController *)self _updateTimelineSliderEnablementState];
      }
    }
  }
}

- (void)setPlayerController:(id)a3
{
  v4 = a3;
  v5 = [(AVMobileControlsViewController *)self playerController];

  if (v5 != v4)
  {
    v6 = [(AVMobileControlsViewController *)self playerController];
    [v6 avkit_setWebKitDelegate:0];

    v8.receiver = self;
    v8.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v8 setPlayerController:v4];
    v7 = [(AVMobileControlsViewController *)self playerController];
    [v7 avkit_setWebKitDelegate:self];

    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVPlayerControllerTimeResolver *)self->_timeResolver setPlayerController:v4];
        [(AVMobileGlassControlsViewController *)self _updateWebKitExcludedObservationState];
        [(AVMobileGlassControlsViewController *)self _updateTimeResolver];
      }
    }
  }
}

- (void)setPlaybackSpeedCollection:(id)a3
{
  v4 = a3;
  v5 = [(AVControlsViewController *)self playbackSpeedCollection];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = AVMobileGlassControlsViewController;
    [(AVControlsViewController *)&v6 setPlaybackSpeedCollection:v4];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobilePlaybackRateMenuController *)self->_playbackSpeedMenuController setPlaybackSpeedCollection:v4];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackSpeedControlInclusion];
      }
    }
  }
}

- (void)setOptimizeForPerformance:(BOOL)a3
{
  v3 = a3;
  if ([(AVMobileControlsViewController *)self optimizeForPerformance]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setOptimizeForPerformance:v3];
    [(AVMobileGlassControlsViewController *)self _attemptSetupIfNeeded];
  }
}

- (UIEdgeInsets)legibleContentInsetsAvoidingControlsUI
{
  top = self->_legibleContentInsetsAvoidingControlsUI.top;
  left = self->_legibleContentInsetsAvoidingControlsUI.left;
  bottom = self->_legibleContentInsetsAvoidingControlsUI.bottom;
  right = self->_legibleContentInsetsAvoidingControlsUI.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setIncludedControls:(unint64_t)a3
{
  if ([(AVMobileControlsViewController *)self includedControls]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setIncludedControls:a3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
        [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
      }
    }
  }
}

- (void)setExcludedControls:(unint64_t)a3
{
  if ([(AVMobileControlsViewController *)self excludedControls]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setExcludedControls:a3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updatePlaybackControlsViewInclusionState];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateRoutePickerControlInclusionState];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTitleBarViewInclusionState];
        [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
        [(AVMobileGlassControlsViewController *)self _updateLegibleMediaSelectionControlInclusionState];
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateVolumeControlsViewAllowsVolumeAdjustmentState];
        [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
        [(AVMobileGlassControlsViewController *)self _setNeedsControlsVisibilityStateUpdate];
      }
    }
  }
}

- (void)setFullscreenController:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassControlsViewController;
  v4 = a3;
  [(AVMobileControlsViewController *)&v5 setFullscreenController:v4];
  [v4 setDelegate:{self, v5.receiver, v5.super_class}];
}

- (id)displayModeControlsLayoutItem
{
  if (self)
  {
    v3 = [(AVMobileGlassControlsView *)self->_view displayModeControlsView];
    v4 = v3;
    if (self->_view)
    {
      v5 = v3 == 0;
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

      [(AVMobileGlassControlsView *)self->_view addLayoutGuide:self->_displayModeControlsLayoutGuide];
      v8 = [(UILayoutGuide *)self->_displayModeControlsLayoutGuide avkit_constraintsFromEdgeAnchorsToEdgeAnchorsOfItem:v4];
      [MEMORY[0x1E696ACD8] activateConstraints:v8];
    }
  }

  v9 = self->_displayModeControlsLayoutGuide;

  return v9;
}

- (void)setControlItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AVMobileGlassControlsViewController;
  v5 = [(AVMobileControlsViewController *)&v18 controlItems];
  v6 = [v4 isEqualToArray:v5];

  if ((v6 & 1) == 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13.receiver = self;
    v13.super_class = AVMobileGlassControlsViewController;
    v7 = [(AVMobileControlsViewController *)&v13 controlItems];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) setDelegate:0];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    v12.receiver = self;
    v12.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v12 setControlItems:v4];
    if (self && self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _updateAuxiliaryControlsForControlItems];
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsForControlItems];
    }
  }
}

- (void)setShowsFullScreenControl:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVMobileGlassControlsViewController;
  if ([(AVMobileControlsViewController *)&v6 showsFullScreenControl]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassControlsViewController;
    [(AVMobileControlsViewController *)&v5 setShowsFullScreenControl:v3];
    if (self)
    {
      if (self->_hasBeenSetUp)
      {
        [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateDisplayModeControlsButtonsInclusion];
      }
    }
  }
}

- (void)setVideoScaled:(BOOL)a3
{
  if (self->_videoScaled != a3)
  {
    self->_videoScaled = a3;
    [(AVMobileGlassControlsViewController *)self _updateLegibleContentInsetsAvoidingControlsUIIfNeeded];
  }
}

- (CGRect)unobscuredContentArea
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _volumeControlsView];
  [v7 frame];
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

  v16 = [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _displayModeControlsView];
  [v16 frame];
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

  [(AVMobileGlassControlsView *)self->_view bounds];
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

- (void)setCustomInfoViewControllers:(id)a3
{
  v5 = a3;
  if (self->_customInfoViewControllers != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_customInfoViewControllers, a3);
    v5 = v6;
    if (self->_hasBeenSetUp)
    {
      [(AVMobileGlassControlsViewController *)self _updateContentTabViewControllers];
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateContentTabsInteractionEnablementState];
      [(AVMobileGlassControlsViewController *)&self->super.super.super.super.super.super.isa _updateTimelineViewGlassBackgroundInclusion];
      [(AVMobileGlassControlsViewController *)self _updateInfoAffordanceInclusion];
      [(AVMobileGlassControlsViewController *)self _updateControlsViewLayoutConfiguration];
      v5 = v6;
    }
  }
}

- (void)dealloc
{
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3 = [(AVMobileControlsViewController *)self volumeController];
  [v3 setPrefersSystemVolumeHUDHidden:0];

  v4 = [(AVMobileControlsViewController *)self volumeController];
  [v4 setClientWithIdentifier:0 forWindowSceneSessionWithIdentifier:0];

  [(AVMobileGlassControlsViewController *)self _cancelOutstandVisibilityUpdates];
  v5.receiver = self;
  v5.super_class = AVMobileGlassControlsViewController;
  [(AVMobileGlassControlsViewController *)&v5 dealloc];
}

- (AVMobileGlassControlsViewController)init
{
  v11.receiver = self;
  v11.super_class = AVMobileGlassControlsViewController;
  v2 = [(AVTipKitControlsViewController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *MEMORY[0x1E69DDCE0];
    *&v2->_timelineSliderEdgeInsets.top = *MEMORY[0x1E69DDCE0];
    *&v2->_timelineSliderEdgeInsets.bottom = v9;
    *&v2->_volumeSliderEdgeInsets.top = v10;
    *&v2->_volumeSliderEdgeInsets.bottom = v9;
    v2->_showsAudioTrackSelectionMenu = 1;
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 globallyUniqueString];
    uniqueIdentifier = v3->_uniqueIdentifier;
    v3->_uniqueIdentifier = v5;

    controlsInOverflowMenu = v3->_controlsInOverflowMenu;
    v3->_controlsInOverflowMenu = 0;

    *&v3->_legibleContentInsetsAvoidingControlsUI.top = v10;
    *&v3->_legibleContentInsetsAvoidingControlsUI.bottom = v9;
    v3->_videoScaled = 0;
    [(AVMobileGlassControlsViewController *)v3 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v3;
}

@end
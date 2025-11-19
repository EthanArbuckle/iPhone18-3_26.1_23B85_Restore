@interface QLMovieItemViewController
- (BOOL)_enterEditModeIfPossible;
- (BOOL)_hasMemoriesAppleMusic;
- (BOOL)_isInteractingWithAnalysis;
- (BOOL)canEnterFullScreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canSwipeToDismiss;
- (BOOL)canToggleFullScreen;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)play;
- (BOOL)shouldAllowEditingContents;
- (PHPlaceholderView)airPlayPlaceholderView;
- (QLBadgeView)assetBadgeView;
- (QLMovieItemViewController)init;
- (UIScrollView)playerViewControllerScrollView;
- (id)_metadataItemTitle;
- (id)editBehaviorAlertActionsForDoneButtonTap:(id)a3;
- (id)imageAnalysisToolbarButton;
- (id)lookupAction;
- (id)registeredKeyCommands;
- (id)scrollView;
- (id)scrollViewInView:(id)a3;
- (id)setupPlayerViewWithPlayer:(id)a3;
- (id)toolbarButtonsForTraitCollection:(id)a3;
- (id)transitioningView;
- (void)_addAssetBadgeViewToHierarchyIfNeeded:(id)a3;
- (void)_checkForMemoriesAppleMusic;
- (void)_displayAssetBadgeView:(id)a3;
- (void)_enterEditMode;
- (void)_exitEditMode:(BOOL)a3;
- (void)_hideAssetBadgeViewAfterDelayIfNeeded:(double)a3;
- (void)_hideAssetBadgeViewIfVisible;
- (void)_lookupButtonTapped;
- (void)_modifySessionForMemoriesAppleMusicMixing;
- (void)_resetTrimmingValues;
- (void)_rotateIfPossible;
- (void)_rotateMovieRight;
- (void)_saveMovieIfEdited:(BOOL)a3 forceSaving:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_saveMovieIfEditedWithEditedCopy:(id)a3 shouldDismissAfterSaving:(BOOL)a4 completionHandler:(id)a5;
- (void)_setupEditBehavior;
- (void)_setupWithCompletionHandler:(id)a3;
- (void)_showAssetBadgeView:(id)a3;
- (void)_showAssetBadgeViewIfNeeded;
- (void)_showBadge;
- (void)_showFailedToSaveChangesAlertWithError:(id)a3;
- (void)_stopLookupIfNeeded;
- (void)_updateAssetBadgeViewVisibilityForFullscreenMode:(BOOL)a3;
- (void)_updateAssetBadgeViewVisibilityWithNewPlayingStatus:(int64_t)a3;
- (void)_updateEditMode;
- (void)_updateEditsTrimmingValuesWithTrimStartTime:(double)a3 trimEndTime:(double)a4;
- (void)_updateInterfaceAfterExitingEditMode;
- (void)_updateMemoriesAppleMusicAudioTrackWithPlayerItem:(id)a3 shouldUseNoMusicTrack:(BOOL)a4;
- (void)_updateMemoriesAppleMusicIsPlaying:(BOOL)a3;
- (void)_updatePlaceHolderView;
- (void)_updatePlayButtonVisibility;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)didChangePlayingStatus;
- (void)didReachEndOfMedia;
- (void)handlePerformedKeyCommandIfNeeded:(id)a3;
- (void)hostApplicationDidEnterBackground:(id)a3;
- (void)loadAssetMetadata;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performFirstTimeAppearanceActions:(unint64_t)a3;
- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5;
- (void)playerViewControllerWillPerformAnalysisCalloutAction:(id)a3;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3;
- (void)transitionDidFinish:(BOOL)a3 didComplete:(BOOL)a4;
- (void)transitionDidStart:(BOOL)a3;
- (void)updateInterfaceAfterSavingEdits;
- (void)updateInterfaceForSavingEdits;
@end

@implementation QLMovieItemViewController

- (QLMovieItemViewController)init
{
  v8.receiver = self;
  v8.super_class = QLMovieItemViewController;
  v2 = [(QLScrollableContentItemViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    editsSinceLastSave = v2->_editsSinceLastSave;
    v2->_editsSinceLastSave = v3;

    v5 = objc_opt_new();
    edits = v2->_edits;
    v2->_edits = v5;
  }

  return v2;
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(QLScrollableContentItemViewController *)self setShouldFit:1];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__QLMovieItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v13[3] = &unk_278B57740;
  v11 = v10;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  v12.receiver = self;
  v12.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v12 loadPreviewControllerWithContents:v8 context:v9 completionHandler:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);
}

void __89__QLMovieItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      [v8 _setupWithCompletionHandler:*(a1 + 32)];
    }

    else
    {
      v9 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v11 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v9 = *v11;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_ERROR, "Could not setup media item view controller because it has been deallocated #Media", &v12, 2u);
      }

      if (!*(a1 + 32))
      {
        goto LABEL_17;
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:0 userInfo:0];
      (*(*(a1 + 32) + 16))();
    }

LABEL_17:
    goto LABEL_18;
  }

  v4 = MEMORY[0x277D43EF8];
  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Error while attempting to load media item view controller: %@ #Media", &v12, 0xCu);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

LABEL_18:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setupWithCompletionHandler:(id)a3
{
  v7 = a3;
  [(QLMediaItemBaseViewController *)self imageSize];
  [(QLMovieItemViewController *)self setPreferredContentSize:?];
  [(QLMovieItemViewController *)self loadAssetMetadata];
  v4 = [(QLMediaItemBaseViewController *)self player];
  [v4 addObserver:self forKeyPath:@"externalPlaybackActive" options:3 context:&QLMovieItemViewControllerContext];

  self->_isObservingPlayerExternalPlaybackActive = 1;
  v5 = [(QLMediaItemBaseViewController *)self mediaAsset];
  self->_assetHasValidVideoTrack = [v5 ql_hasValidVideoTrack];

  [(QLMovieItemViewController *)self _setupEditBehavior];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (id)setupPlayerViewWithPlayer:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(QLMovieItemViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, 20.0, 0.0];
  v5 = objc_alloc_init(MEMORY[0x277CB85E0]);
  playerViewController = self->_playerViewController;
  self->_playerViewController = v5;

  [(AVPlayerViewController *)self->_playerViewController setAllowsVideoFrameAnalysis:1];
  [(AVPlayerViewController *)self->_playerViewController setUpdatesNowPlayingInfoCenter:1];
  v7 = [(AVPlayerViewController *)self->_playerViewController view];
  [v7 setBackgroundColor:0];

  [(AVPlayerViewController *)self->_playerViewController setShowsPlaybackControls:_os_feature_enabled_impl()];
  [(AVPlayerViewController *)self->_playerViewController setPlayer:v4];

  [(AVPlayerViewController *)self->_playerViewController setAllowsPictureInPicturePlayback:0];
  [(AVPlayerViewController *)self->_playerViewController setDelegate:self];
  [(AVPlayerViewController *)self->_playerViewController setShowsExitFullScreenButton:0];
  if (_os_feature_enabled_impl())
  {
    v8 = [(AVPlayerViewController *)self->_playerViewController configuration];
    [v8 setExcludedControls:{objc_msgSend(v8, "excludedControls") | 0x1FD0}];
    [v8 setPrefersFullScreenStyleForEmbeddedMode:1];
    [(AVPlayerViewController *)self->_playerViewController setConfiguration:v8];
    [(AVPlayerViewController *)self->_playerViewController setPrefersDeviceUserInterfaceStyle:1];
  }

  v9 = [(QLMovieItemViewController *)self _metadataItemTitle];
  v41[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v11 = [(AVPlayerViewController *)self->_playerViewController player];
  v12 = [v11 currentItem];
  [v12 setExternalMetadata:v10];

  v13 = [(AVPlayerViewController *)self->_playerViewController view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(QLMovieItemViewController *)self addChildViewController:self->_playerViewController];
  v14 = [(QLMovieItemViewController *)self view];
  v15 = [(AVPlayerViewController *)self->_playerViewController view];
  [v14 addSubview:v15];

  [(AVPlayerViewController *)self->_playerViewController didMoveToParentViewController:self];
  v16 = [(QLMovieItemViewController *)self view];
  v17 = MEMORY[0x277CCAAD0];
  v39 = @"player";
  v18 = [(AVPlayerViewController *)self->_playerViewController view];
  v40 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v20 = [v17 constraintsWithVisualFormat:@"H:|[player]|" options:0 metrics:0 views:v19];
  [v16 addConstraints:v20];

  v21 = [(QLMovieItemViewController *)self view];
  v22 = MEMORY[0x277CCAAD0];
  v23 = [(AVPlayerViewController *)self->_playerViewController view];
  v38 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v25 = [v22 constraintsWithVisualFormat:@"V:|[player]|" options:0 metrics:0 views:v24];
  [v21 addConstraints:v25];

  v26 = [(QLMovieItemViewController *)self playerViewController];
  LOBYTE(v25) = objc_opt_respondsToSelector();

  if (v25)
  {
    v27 = [(QLMovieItemViewController *)self playerViewController];
    [v27 addObserver:self forKeyPath:@"analysisInteractionInProgress" options:5 context:&QLMovieItemViewControllerContext];
  }

  v28 = [(QLMovieItemViewController *)self playerViewController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    v30 = [(QLMovieItemViewController *)self playerViewController];
    [v30 addObserver:self forKeyPath:@"toggleLookupAction" options:5 context:&QLMovieItemViewControllerContext];
  }

  v31 = [(QLMovieItemViewController *)self playerViewController];
  [v31 addObserver:self forKeyPath:@"videoBounds" options:5 context:&QLMovieItemViewControllerContext];

  if (_os_feature_enabled_impl())
  {
    [(QLMovieItemViewController *)self _checkForMemoriesAppleMusic];
    if ([(QLMovieItemViewController *)self _hasMemoriesAppleMusic])
    {
      v32 = [(AVPlayerViewController *)self->_playerViewController player];
      v33 = [v32 currentItem];
      [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:v33 shouldUseNoMusicTrack:1];

      [(QLMovieItemViewController *)self _modifySessionForMemoriesAppleMusicMixing];
    }
  }

  playerViewContainer = self->_playerViewContainer;
  v35 = *MEMORY[0x277D85DE8];

  return playerViewContainer;
}

- (id)_metadataItemTitle
{
  v3 = MEMORY[0x277CD5DE0];
  v4 = [(QLMediaItemBaseViewController *)self mediaAsset];
  v5 = [v3 ql_propertyTitleFromAsset:v4];

  if (!v5)
  {
    v6 = [(QLItemViewController *)self context];
    v5 = [v6 previewTitle];
  }

  v7 = [MEMORY[0x277CE6558] metadataItem];
  [v7 setKey:*MEMORY[0x277CE5F28]];
  [v7 setIdentifier:*MEMORY[0x277CE5EF0]];
  [v7 setValue:v5];

  return v7;
}

- (void)dealloc
{
  v3 = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(QLMovieItemViewController *)self playerViewController];
    [v5 removeObserver:self forKeyPath:@"analysisInteractionInProgress" context:&QLMovieItemViewControllerContext];
  }

  v6 = [(QLMovieItemViewController *)self playerViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(QLMovieItemViewController *)self playerViewController];
    [v8 removeObserver:self forKeyPath:@"toggleLookupAction" context:&QLMovieItemViewControllerContext];
  }

  if (self->_isObservingPlayerExternalPlaybackActive)
  {
    v9 = [(QLMediaItemBaseViewController *)self player];
    [v9 removeObserver:self forKeyPath:@"externalPlaybackActive" context:&QLMovieItemViewControllerContext];
  }

  v10 = [(QLMovieItemViewController *)self playerViewController];
  [v10 removeObserver:self forKeyPath:@"videoBounds" context:&QLMovieItemViewControllerContext];

  v11.receiver = self;
  v11.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v11 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  if (a6 == &QLMovieItemViewControllerContext)
  {
    v12 = [(QLMediaItemBaseViewController *)self player];

    if (v12 == v11)
    {
      if ([v10 isEqualToString:@"externalPlaybackActive"])
      {
        [(QLMovieItemViewController *)self _updatePlaceHolderView];
      }
    }

    else
    {
      v13 = [(QLMovieItemViewController *)self playerViewController];

      if (v13 == v11)
      {
        if (![v10 isEqualToString:@"analysisInteractionInProgress"])
        {
          if ([v10 isEqualToString:@"toggleLookupAction"] && (-[QLMovieItemViewController lookupAction](self, "lookupAction"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
          {
            v15 = [(QLItemViewController *)self delegate];
            [v15 previewItemViewControllerWantsUpdateOverlay:self animated:0];
          }

          else
          {
            if (![v10 isEqualToString:@"videoBounds"])
            {
              goto LABEL_3;
            }

            v15 = [(QLMovieItemViewController *)self view];
            v16 = [(QLMovieItemViewController *)self playerViewController];
            [v16 videoBounds];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;
            v25 = [(QLMovieItemViewController *)self playerViewController];
            v26 = [v25 view];
            [v15 convertRect:v26 fromView:{v18, v20, v22, v24}];
            [(QLItemViewController *)self setContentFrame:?];
          }

          goto LABEL_3;
        }

        [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = QLMovieItemViewController;
    [(QLMediaItemViewController *)&v27 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }

LABEL_3:
}

- (void)hostApplicationDidEnterBackground:(id)a3
{
  v4.receiver = self;
  v4.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v4 hostApplicationDidEnterBackground:a3];
  [(QLMediaItemBaseViewController *)self pause];
}

- (BOOL)canEnterFullScreen
{
  v2 = [(QLMediaItemBaseViewController *)self player];
  v3 = [v2 isExternalPlaybackActive];

  return v3 ^ 1;
}

- (BOOL)play
{
  v6.receiver = self;
  v6.super_class = QLMovieItemViewController;
  v3 = [(QLMediaItemBaseViewController *)&v6 play];
  if (v3)
  {
    v4 = [(QLItemViewController *)self delegate];
    [v4 previewItemViewController:self wantsFullScreen:1];
  }

  return v3;
}

- (id)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewControllerScrollView);

  if (!WeakRetained)
  {
    v4 = [(AVPlayerViewController *)self->_playerViewController view];
    v5 = [(QLMovieItemViewController *)self scrollViewInView:v4];
    objc_storeWeak(&self->_playerViewControllerScrollView, v5);
  }

  v6 = objc_loadWeakRetained(&self->_playerViewControllerScrollView);

  return v6;
}

- (id)scrollViewInView:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 subviews];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(QLMovieItemViewController *)self scrollViewInView:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)canPinchToDismiss
{
  if (self->_isEditing)
  {
    return 0;
  }

  v3 = [(QLMovieItemViewController *)self scrollView];
  [v3 minimumZoomScale];
  v5 = v4;
  [v3 zoomScale];
  v2 = v5 == v6;

  return v2;
}

- (BOOL)canSwipeToDismiss
{
  if (self->_isEditing)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = QLMovieItemViewController;
  return [(QLItemViewController *)&v5 canSwipeToDismiss];
}

- (BOOL)canToggleFullScreen
{
  if (self->_isEditing)
  {
    return 0;
  }

  v7 = v2;
  v8 = v3;
  if ([(QLItemViewController *)self isSavingEdits])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = QLMovieItemViewController;
  return [(QLItemViewController *)&v6 canToggleFullScreen];
}

- (void)_updatePlayButtonVisibility
{
  v3 = [(QLMovieItemViewController *)self _isInteractingWithAnalysis];
  v4 = [(QLItemViewController *)self appearance];
  v5 = [v4 presentationMode] == 4;

  if (v3 || ![(QLMediaItemBaseViewController *)self playable]|| self->_isEditing || (_os_feature_enabled_impl() & 1) == 0 && ([(QLItemViewController *)self isSavingEdits]|| self->_isSavingEditsBeforeDismissing))
  {
    v5 = 1;
  }

  [(QLMovieItemViewController *)self setPlayControlsHidden:v5 animated:0];
}

- (void)didChangePlayingStatus
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
    [(QLMovieItemViewController *)self _updateAssetBadgeViewVisibilityWithNewPlayingStatus:[(QLMediaItemBaseViewController *)self playingStatus]];
  }

  [(QLMovieItemViewController *)self _stopLookupIfNeeded];
  if (_os_feature_enabled_impl())
  {
    v3 = [(QLMediaItemBaseViewController *)self playingStatus]== 1;

    [(QLMovieItemViewController *)self _updateMemoriesAppleMusicIsPlaying:v3];
  }
}

- (void)didReachEndOfMedia
{
  if (_os_feature_enabled_impl())
  {

    [(QLMovieItemViewController *)self _updateMemoriesAppleMusicIsPlaying:0];
  }
}

- (void)_stopLookupIfNeeded
{
  v3 = [(QLMovieItemViewController *)self lookupAction];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 state] == 1;
    v3 = v5;
    if (v4)
    {
      [(QLMovieItemViewController *)self _lookupButtonTapped];
      v3 = v5;
    }
  }
}

- (BOOL)_isInteractingWithAnalysis
{
  v3 = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(QLMovieItemViewController *)self playerViewController];
  v6 = [v5 analysisInteractionInProgress];

  return v6;
}

- (void)transitionDidStart:(BOOL)a3
{
  if (a3)
  {

    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  }

  else
  {
    [(QLMovieItemViewController *)self setPlayControlsHidden:1 animated:1];
    if ((_os_feature_enabled_impl() & 1) == 0)
    {

      [(QLMovieItemViewController *)self _hideAssetBadgeViewIfVisible];
    }
  }
}

- (void)transitionDidFinish:(BOOL)a3 didComplete:(BOOL)a4
{
  if (a3 && a4 && ![(QLMovieItemViewController *)self isEditing])
  {
    v6 = [(QLMediaItemBaseViewController *)self player];
    [v6 play];
  }

  else if (!a4 && [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {

    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  }
}

- (id)transitioningView
{
  v3 = [(QLMediaItemBaseViewController *)self player];
  if ([v3 isExternalPlaybackActive])
  {
    v4 = self->_airPlayPlaceholderView;
  }

  else
  {
    v4 = [(AVPlayerViewController *)self->_playerViewController view];
  }

  v5 = v4;

  return v5;
}

- (BOOL)shouldAllowEditingContents
{
  v3 = [(QLMediaItemBaseViewController *)self mediaAsset];
  v4 = [v3 hasProtectedContent];

  if ((v4 & 1) == 0)
  {
    v6 = [(QLItemViewController *)self context];
    v7 = [v6 canBeEdited];
    if (v7 && (-[QLItemViewController context](self, "context"), v4 = objc_claimAutoreleasedReturnValue(), [v4 editedFileBehavior]))
    {
      v5 = 1;
    }

    else
    {
      v8 = [(QLItemViewController *)self context];
      v9 = [v8 item];
      v5 = [v9 editingMode] != 0;

      if (!v7)
      {
LABEL_8:

        return v5;
      }
    }

    goto LABEL_8;
  }

  return 0;
}

- (void)_modifySessionForMemoriesAppleMusicMixing
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CB8030];
  v4 = [(QLMediaItemBaseViewController *)self player];
  v5 = [v4 audioSession];
  v10 = 0;
  [v5 setCategory:v3 withOptions:1 error:&v10];
  v6 = v10;

  if (v6)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "Could not set category (%@): %@ #Media", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateMemoriesAppleMusicIsPlaying:(BOOL)a3
{
  v3 = a3;
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D43F88] sharedInstance];
  if (([v5 isConnected] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];

  if (!v6)
  {
LABEL_6:
    v16 = [(AVPlayerViewController *)self->_playerViewController player];
    v17 = [v16 currentItem];
    [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:v17 shouldUseNoMusicTrack:0];

    v18 = [(QLMovieItemViewController *)self _musicPlayer];
    goto LABEL_7;
  }

  v7 = [(AVPlayerViewController *)self->_playerViewController player];
  v8 = [v7 currentItem];
  [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:v8 shouldUseNoMusicTrack:1];

  if (v3)
  {
    objc_initWeak(&location, self);
    v9 = [(QLMovieItemViewController *)self _musicPlayer];
    [v9 stop];

    v10 = [(QLMovieItemViewController *)self _musicPlayer];
    [v10 setRepeatMode:1];

    v11 = [(QLMovieItemViewController *)self _musicPlayer];
    v12 = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];
    v24[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v11 setQueueWithStoreIDs:v13];

    v14 = [(QLMovieItemViewController *)self _musicPlayer];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke;
    v21[3] = &unk_278B588C0;
    objc_copyWeak(&v22, &location);
    [v14 prepareToPlayWithCompletionHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v18 = [(QLMovieItemViewController *)self _musicPlayer];
LABEL_7:
  v20 = v18;
  [v18 stop];
  v19 = *MEMORY[0x277D85DE8];
}

void __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_2;
  block[3] = &unk_278B56D10;
  v14 = v3;
  v4 = v3;
  objc_copyWeak(&v15, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v4)
  {
    v5 = v9;
    v6 = &v10;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v7 = __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_3;
  }

  else
  {
    v5 = v11;
    v6 = &v12;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v7 = __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_2_66;
  }

  v5[2] = v7;
  v5[3] = &unk_278B57858;
  objc_copyWeak(v6, (a1 + 32));
  v8 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(v6);
  objc_destroyWeak(&v15);
}

void __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v6 = [WeakRetained _memoriesAppleMusicAdamID];
      v7 = *(a1 + 32);
      *v16 = 138412546;
      *&v16[4] = v6;
      *&v16[12] = 2112;
      *&v16[14] = v7;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Apple Music could not play song  (%@): %@ #Media", v16, 0x16u);
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v8 player];
    v10 = [v9 currentItem];
    [v8 _updateMemoriesAppleMusicAudioTrackWithPlayerItem:v10 shouldUseNoMusicTrack:0];

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 player];
    [v12 cancelPendingPrerolls];

    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 player];
    *v16 = *MEMORY[0x277CC08F0];
    *&v16[16] = *(MEMORY[0x277CC08F0] + 16);
    [v14 seekToTime:v16 completionHandler:&__block_literal_global_14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_2_66(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _musicPlayer];
  [v1 play];
}

void __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _musicPlayer];
  [v1 stop];
}

- (BOOL)_hasMemoriesAppleMusic
{
  v2 = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];
  v3 = v2 != 0;

  return v3;
}

- (void)_checkForMemoriesAppleMusic
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(QLMediaItemBaseViewController *)self mediaAsset];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
    [(QLMovieItemViewController *)self set_memoriesAppleMusicAdamID:0];
    [(QLMovieItemViewController *)self set_memoriesWithoutMusicMediaOption:0];
    if (v5)
    {
      [v5 options];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v41 = 0u;
      v27 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v27)
      {
        v23 = self;
        v24 = v5;
        v30 = 0;
        v33 = 0;
        v25 = v4;
        v26 = *v39;
        v32 = *MEMORY[0x277CE5FD0];
        v6 = *MEMORY[0x277CE5FD8];
        do
        {
          v7 = 0;
          do
          {
            if (*v39 != v26)
            {
              objc_enumerationMutation(obj);
            }

            v28 = v7;
            v29 = *(*(&v38 + 1) + 8 * v7);
            v8 = [v29 commonMetadata];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v35;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v35 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = [*(*(&v34 + 1) + 8 * i) mutableCopy];
                  v14 = [v13 key];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v16 = [v13 key];
                    v17 = [v13 stringValue];
                    if ([v16 isEqualToString:v32])
                    {
                      v18 = v17;

                      v33 = v18;
                    }

                    if ([v16 isEqualToString:v6] && objc_msgSend(v17, "isEqualToString:", @"No Music Just Voice") && objc_msgSend(obj, "count") >= 2)
                    {
                      v19 = v29;

                      v30 = v19;
                    }
                  }
                }

                v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v10);
            }

            v7 = v28 + 1;
          }

          while (v28 + 1 != v27);
          v27 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v27);
        v20 = v33;
        if (v33)
        {
          v5 = v24;
          v4 = v25;
          v21 = v30;
          if (v30)
          {
            [(QLMovieItemViewController *)v23 set_memoriesAppleMusicAdamID:v33];
            [(QLMovieItemViewController *)v23 set_memoriesWithoutMusicMediaOption:v30];
          }
        }

        else
        {
          v5 = v24;
          v4 = v25;
          v21 = v30;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_updateMemoriesAppleMusicAudioTrackWithPlayerItem:(id)a3 shouldUseNoMusicTrack:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [v11 asset];
  v7 = [v6 mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v8 = v7;
  if (v7)
  {
    if (v4)
    {
      v9 = [(QLMovieItemViewController *)self _memoriesWithoutMusicMediaOption];
      [v11 selectMediaOption:v9 inMediaSelectionGroup:v8];
    }

    else
    {
      v9 = [v7 options];
      v10 = [v9 objectAtIndexedSubscript:0];
      [v11 selectMediaOption:v10 inMediaSelectionGroup:v8];
    }
  }
}

- (void)_setupEditBehavior
{
  v3 = objc_opt_new();
  editBehavior = self->_editBehavior;
  self->_editBehavior = v3;

  [(AVEditBehavior *)self->_editBehavior setDelegate:self];
  playerViewController = self->_playerViewController;
  v6 = self->_editBehavior;

  [(AVPlayerViewController *)playerViewController addBehavior:v6];
}

- (BOOL)_enterEditModeIfPossible
{
  v3 = [(QLItemViewController *)self isSavingEdits];
  if (v3)
  {
    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "Ignored request to enter edit mode because changes are being saved. #ItemViewController", v7, 2u);
    }
  }

  else
  {
    [(QLMovieItemViewController *)self _enterEditMode];
  }

  return !v3;
}

- (void)_enterEditMode
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(QLMovieItemViewController *)self shouldAllowEditingContents])
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_ERROR, "Could not enter edit mode because editing preview (%@) is not allowed. #PreviewController", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  self->_isEditing = 1;
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  v3 = [(QLItemViewController *)self delegate];
  [v3 previewItemViewController:self didEnableEditMode:1];

  v4 = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [v4 startEditing];

  v5 = [(QLItemViewController *)self delegate];
  [v5 previewItemViewController:self wantsFullScreen:1];

  v6 = [(QLItemViewController *)self delegate];
  [v6 previewItemViewControllerWantsUpdateOverlay:self animated:0];

  v7 = [(QLItemViewController *)self delegate];
  [v7 previewItemViewControllerWantsUpdateKeyCommands:self];

  if (!_os_feature_enabled_impl())
  {
LABEL_10:
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  playerViewController = self->_playerViewController;
  v9 = *MEMORY[0x277D85DE8];

  [(AVPlayerViewController *)playerViewController setShowsPlaybackControls:0];
}

- (void)_exitEditMode:(BOOL)a3
{
  v3 = a3;
  self->_isEditing = 0;
  v5 = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [v5 endEditing];

  v6 = [(QLMovieItemViewController *)self playerViewController];
  v7 = [v6 player];
  v8 = [v7 currentItem];
  v9 = v8;
  if (v8)
  {
    [v8 reversePlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  v11 = [(QLMovieItemViewController *)self playerViewController];
  v12 = [v11 player];
  v13 = [v12 currentItem];
  v14 = v13;
  if (v13)
  {
    [v13 forwardPlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  [(QLMovieItemViewController *)self _updateEditsTrimmingValuesWithTrimStartTime:Seconds trimEndTime:CMTimeGetSeconds(&time)];

  [(QLMovieItemViewController *)self _updateEditMode];
  if (_os_feature_enabled_impl())
  {
    [(AVPlayerViewController *)self->_playerViewController setShowsPlaybackControls:1];
  }

  [(QLMovieEdits *)self->_editsSinceLastSave trimmed];
  if (v3)
  {
    objc_initWeak(&time, self);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__QLMovieItemViewController__exitEditMode___block_invoke;
    v18[3] = &unk_278B588E8;
    objc_copyWeak(&v19, &time);
    [(QLMovieItemViewController *)self _saveMovieIfEdited:1 forceSaving:1 withCompletionHandler:v18];
    v15 = dispatch_time(0, (*MEMORY[0x277D43FD8] * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__QLMovieItemViewController__exitEditMode___block_invoke_3;
    block[3] = &unk_278B57858;
    objc_copyWeak(&v17, &time);
    dispatch_after(v15, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&time);
  }

  else
  {
    [(QLMovieItemViewController *)self _updateInterfaceAfterExitingEditMode];
    [(QLMovieItemViewController *)self _resetTrimmingValues];
  }
}

void __43__QLMovieItemViewController__exitEditMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      [WeakRetained _showFailedToSaveChangesAlertWithError:v6];
    }

    else
    {
      v9 = [WeakRetained delegate];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __43__QLMovieItemViewController__exitEditMode___block_invoke_2;
      v10[3] = &unk_278B57858;
      objc_copyWeak(&v11, (a1 + 32));
      [v9 previewItemViewControllerDidEditCopyOfPreviewItem:v8 editedCopy:v5 completionHandler:v10];

      objc_destroyWeak(&v11);
    }
  }
}

void __43__QLMovieItemViewController__exitEditMode___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 previewItemViewControllerWantsToDismissQuickLook:v3];

    WeakRetained = v3;
  }
}

void __43__QLMovieItemViewController__exitEditMode___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isSavingEdits];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _updateInterfaceAfterExitingEditMode];
  }
}

- (void)_updateEditsTrimmingValuesWithTrimStartTime:(double)a3 trimEndTime:(double)a4
{
  [(QLMovieEdits *)self->_editsSinceLastSave setTrimStartTime:?];
  [(QLMovieEdits *)self->_editsSinceLastSave setTrimEndTime:a4];
  [(QLMovieEdits *)self->_edits setTrimStartTime:a3];
  edits = self->_edits;

  [(QLMovieEdits *)edits setTrimEndTime:a4];
}

- (void)_updateInterfaceAfterExitingEditMode
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(QLMovieItemViewController *)self playerViewController];
    [v3 flashPlaybackControlsWithDuration:10.0];
  }

  else
  {
    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  }

  v4 = [(QLItemViewController *)self delegate];
  [v4 previewItemViewController:self wantsFullScreen:0];
}

- (void)_resetTrimmingValues
{
  [(QLMovieEdits *)self->_editsSinceLastSave resetTrimmingValues];
  edits = self->_edits;

  [(QLMovieEdits *)edits resetTrimmingValues];
}

- (void)_updateEditMode
{
  v3 = [(QLMovieEdits *)self->_editsSinceLastSave hasEdits];
  v4 = [(QLItemViewController *)self delegate];
  [v4 previewItemViewController:self hasUnsavedEdits:v3];

  v5 = [(QLItemViewController *)self delegate];
  [v5 previewItemViewController:self didEnableEditMode:v3];
}

- (void)updateInterfaceForSavingEdits
{
  [(QLMediaItemBaseViewController *)self pause];
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  v3 = [(QLMovieItemViewController *)self view];
  [v3 setUserInteractionEnabled:0];
}

- (void)updateInterfaceAfterSavingEdits
{
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  v3 = [(QLMovieItemViewController *)self view];
  [v3 setUserInteractionEnabled:1];
}

- (void)_rotateIfPossible
{
  if ([(QLItemViewController *)self isSavingEdits])
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Ignored request to rotate right because changes are being saved. #ItemViewController", v5, 2u);
    }
  }

  else
  {
    [(QLMovieItemViewController *)self _rotateMovieRight];

    [(QLMovieItemViewController *)self _updateEditMode];
  }
}

- (void)_rotateMovieRight
{
  [(QLMovieEdits *)self->_editsSinceLastSave incrementRightRotationsCount];
  [(QLMovieEdits *)self->_edits incrementRightRotationsCount];
  v3 = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [v3 rotateClockwise];
}

- (void)_saveMovieIfEdited:(BOOL)a3 forceSaving:(BOOL)a4 withCompletionHandler:(id)a5
{
  v8 = a5;
  if ([(QLMovieEdits *)self->_editsSinceLastSave hasEdits]|| a4)
  {
    objc_initWeak(buf, self);
    v11 = [(QLItemViewController *)self context];
    v12 = [v11 item];
    v13 = [v12 previewItemContentType];

    if (v13)
    {
      v14 = MEMORY[0x277CE1CB8];
      v15 = [(QLItemViewController *)self context];
      v16 = [v15 item];
      v17 = [v16 previewItemContentType];
      v18 = [v14 typeWithIdentifier:v17];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __82__QLMovieItemViewController__saveMovieIfEdited_forceSaving_withCompletionHandler___block_invoke;
      v19[3] = &unk_278B58238;
      v20 = v8;
      objc_copyWeak(&v21, buf);
      v22 = a3;
      [(QLItemViewController *)self editedCopyToSaveChangesWithOutputType:v18 completionHandler:v19];
      objc_destroyWeak(&v21);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:0 userInfo:0];
      (*(v8 + 2))(v8, 0, v18);
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_DEBUG, "Not saving new video because it was not edited (was already saved or no changed were made). #AnyItemViewController", buf, 2u);
    }

    (*(v8 + 2))(v8, 0, 0);
  }
}

void __82__QLMovieItemViewController__saveMovieIfEdited_forceSaving_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = MEMORY[0x277D43EF8];
    v10 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_23A714000, v10, OS_LOG_TYPE_ERROR, "Could not create edited movie because could not generate a URL to save the file. #AnyItemViewController", v11, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _saveMovieIfEditedWithEditedCopy:v5 shouldDismissAfterSaving:*(a1 + 48) completionHandler:*(a1 + 32)];
  }
}

- (void)_saveMovieIfEditedWithEditedCopy:(id)a3 shouldDismissAfterSaving:(BOOL)a4 completionHandler:(id)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v76 = [(QLMovieEdits *)self->_edits rotated];
  v10 = [(QLMovieEdits *)self->_edits trimmed];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__QLMovieItemViewController__saveMovieIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke;
  aBlock[3] = &unk_278B58910;
  objc_copyWeak(&v89, &location);
  v77 = v9;
  v88 = v77;
  v78 = _Block_copy(aBlock);
  [(QLItemViewController *)self showSaveEditsProgressIndicatorAfterDelay];
  self->_isSavingEditsBeforeDismissing = a4;
  [(QLItemViewController *)self didStartSavingEdits];
  if (!v10)
  {
    v15 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v15 = *MEMORY[0x277D43EF8];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 138412290;
      *(&buf.a + 4) = self;
      _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_INFO, "Creating AVMutableMovie for new rotated movie. %@ #Media", &buf, 0xCu);
    }

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v8 url];
    v18 = [v17 path];
    v19 = [v16 fileExistsAtPath:v18];

    if (v19)
    {
      [v8 removeFromDisk:0];
    }

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [(QLItemViewController *)self context];
    v22 = [v21 item];
    v23 = [v22 saveURL];
    v24 = [v8 url];
    v81 = 0;
    v25 = [v20 copyItemAtURL:v23 toURL:v24 error:&v81];
    v26 = v81;
    if (v26)
    {
      v25 = 0;
    }

    if ((v25 & 1) == 0)
    {
      v30 = MEMORY[0x277D43EF8];
      v31 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v31 = *v30;
      }

      v32 = v31;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v8 url];
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = v33;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v26;
        _os_log_impl(&dword_23A714000, v32, OS_LOG_TYPE_ERROR, "Could not copy original movie to save rotated version at URL: %@. Error: %@ #Media", &buf, 0x16u);
      }

      [v8 removeFromDisk:0];
      v78[2](v78, 0, v26);
      goto LABEL_35;
    }

    v27 = MEMORY[0x277CE6560];
    v28 = [v8 url];
    v29 = [v27 movieWithURL:v28 options:0];

    goto LABEL_43;
  }

  memset(&t2, 0, 24);
  v11 = [(QLMovieItemViewController *)self playerViewController];
  v12 = [v11 player];
  v13 = [v12 currentItem];
  v14 = v13;
  if (v13)
  {
    [v13 reversePlaybackEndTime];
  }

  else
  {
    memset(&t2, 0, 24);
  }

  v85 = 0uLL;
  v86 = 0.0;
  v34 = [(QLMovieItemViewController *)self playerViewController];
  v35 = [v34 player];
  v36 = [v35 currentItem];
  v37 = v36;
  if (v36)
  {
    [v36 forwardPlaybackEndTime];
  }

  else
  {
    v85 = 0uLL;
    v86 = 0.0;
  }

  memset(&v84, 0, sizeof(v84));
  *&buf.a = v85;
  buf.c = v86;
  *&rhs.a = *&t2.a;
  rhs.c = t2.c;
  CMTimeSubtract(&v84, &buf, &rhs);
  *&buf.a = *&v84.value;
  *&buf.c = v84.epoch;
  *&rhs.a = *MEMORY[0x277CC0898];
  rhs.c = *(MEMORY[0x277CC0898] + 16);
  v38 = CMTimeCompare(&buf, &rhs);
  v39 = MEMORY[0x277CC08F0];
  if (v38)
  {
    *&buf.a = *&v84.value;
    *&buf.c = v84.epoch;
    *&rhs.a = *MEMORY[0x277CC08F0];
    rhs.c = *(MEMORY[0x277CC08F0] + 16);
    v40 = CMTimeCompare(&buf, &rhs) == 0;
  }

  else
  {
    v40 = 1;
  }

  [(QLMovieEdits *)self->_edits trimStartTime];
  v42 = v41;
  [(QLMovieEdits *)self->_edits trimEndTime];
  v44 = v42 > v43 || v40;
  v45 = MEMORY[0x277D43EF8];
  v46 = *MEMORY[0x277D43EF8];
  if (v44 == 1)
  {
    if (!v46)
    {
      QLSInitLogging();
      v46 = *v45;
    }

    v47 = v46;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [v8 url];
      [(QLMovieEdits *)self->_edits trimStartTime];
      v50 = v49;
      [(QLMovieEdits *)self->_edits trimEndTime];
      LODWORD(buf.a) = 138412802;
      *(&buf.a + 4) = v48;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v50;
      HIWORD(buf.c) = 2048;
      buf.d = v51;
      _os_log_impl(&dword_23A714000, v47, OS_LOG_TYPE_ERROR, "Could not create edited movie for trimmed movie at URL: %@ because of invalid trim values (startTime: %f endTime: %f). #Media", &buf, 0x20u);
    }

    [v8 removeFromDisk:0];
    v78[2](v78, 0, 0);
    v26 = 0;
LABEL_35:
    v29 = 0;
    goto LABEL_71;
  }

  if (!v46)
  {
    QLSInitLogging();
    v46 = *v45;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 138412290;
    *(&buf.a + 4) = self;
    _os_log_impl(&dword_23A714000, v46, OS_LOG_TYPE_INFO, "Creating AVMutableMovie for new trimmed movie. %@ #Media", &buf, 0xCu);
  }

  v29 = objc_alloc_init(MEMORY[0x277CE6560]);
  v52 = objc_alloc(MEMORY[0x277CE64F0]);
  v53 = [v8 url];
  v54 = [v52 initWithURL:v53 options:0];
  [v29 setDefaultMediaDataStorage:v54];

  memset(&buf, 0, sizeof(buf));
  *&rhs.a = *&t2.a;
  rhs.c = t2.c;
  duration = v84;
  CMTimeRangeMake(&buf, &rhs, &duration);
  v55 = [(QLMediaItemBaseViewController *)self mediaAsset];
  v82 = 0;
  rhs = buf;
  duration = *v39;
  v56 = [v29 insertTimeRange:&rhs ofAsset:v55 atTime:&duration copySampleData:1 error:&v82];
  v26 = v82;
  if (v26)
  {
    v56 = 0;
  }

  if (v56)
  {
LABEL_43:
    if (v76)
    {
      v57 = MEMORY[0x277D43EF8];
      v58 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v58 = *v57;
      }

      v59 = v58;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = [(QLMovieEdits *)self->_edits rightRotationsCount];
        LODWORD(buf.a) = 134218242;
        *(&buf.a + 4) = v60;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = self;
        _os_log_impl(&dword_23A714000, v59, OS_LOG_TYPE_INFO, "Setting preferred transform of rotated movie with rotations count: %lu. %@ #Media", &buf, 0x16u);
      }

      v61 = [v29 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
      v62 = [v61 firstObject];

      if (v62)
      {
        [v62 preferredTransform];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      CGAffineTransformMakeRotation(&t2, [(QLMovieEdits *)self->_edits rightRotationsCount]* 1.57079633);
      CGAffineTransformConcat(&buf, &rhs, &t2);
      [v62 setPreferredTransform:&buf];
    }

    v66 = [v8 url];
    v67 = [(QLItemViewController *)self context];
    v68 = [v67 contentType];
    v79 = 0;
    v69 = [v29 writeMovieHeaderToURL:v66 fileType:v68 options:0 error:&v79];
    v26 = v79;
    if (v26)
    {
      v70 = 0;
    }

    else
    {
      v70 = v69;
    }

    v71 = MEMORY[0x277D43EF8];
    v72 = *MEMORY[0x277D43EF8];
    if (v70)
    {
      if (!v72)
      {
        QLSInitLogging();
        v72 = *v71;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = v8;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = self;
        _os_log_impl(&dword_23A714000, v72, OS_LOG_TYPE_INFO, "Successfully wrote new header of edited movie to URL of edited copy: %@. %@ #Media", &buf, 0x16u);
      }

      [(QLMovieEdits *)self->_editsSinceLastSave resetEditingValues];
      [(QLMovieItemViewController *)self _updateEditMode];
      [v8 bumpVersion];
      [v8 markAsPurgeable];
      (v78)[2](v78, v8, 0);
      v26 = 0;
    }

    else
    {
      if (!v72)
      {
        QLSInitLogging();
        v72 = *v71;
      }

      v73 = v72;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        v74 = [v8 url];
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = v74;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v26;
        _os_log_impl(&dword_23A714000, v73, OS_LOG_TYPE_ERROR, "Could not write header for trimmed movie at URL of edited copy: %@. Error: %@ #Media", &buf, 0x16u);
      }

      [v8 removeFromDisk:0];
      v78[2](v78, 0, v26);
    }

    goto LABEL_71;
  }

  v63 = *v45;
  if (!*v45)
  {
    QLSInitLogging();
    v63 = *v45;
  }

  v64 = v63;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    v65 = [v8 url];
    LODWORD(rhs.a) = 138412546;
    *(&rhs.a + 4) = v65;
    WORD2(rhs.b) = 2112;
    *(&rhs.b + 6) = v26;
    _os_log_impl(&dword_23A714000, v64, OS_LOG_TYPE_ERROR, "Could not write contents for trimmed movie at URL: %@. Error: %@ #Media", &rhs, 0x16u);
  }

  [v8 removeFromDisk:0];
  v78[2](v78, 0, v26);
LABEL_71:

  objc_destroyWeak(&v89);
  objc_destroyWeak(&location);

  v75 = *MEMORY[0x277D85DE8];
}

void __105__QLMovieItemViewController__saveMovieIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  QLRunInMainThread();

  objc_destroyWeak(&v10);
}

void __105__QLMovieItemViewController__saveMovieIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    WeakRetained[1409] = 0;
    [WeakRetained hideSaveEditProgressIndicator];
    [WeakRetained didFinishSavingEdits];
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(QLMovieItemViewController *)self shouldAllowEditingContents])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__QLMovieItemViewController_savePreviewEditedCopyWithCompletionHandler___block_invoke;
    v5[3] = &unk_278B58210;
    v6 = v4;
    [(QLMovieItemViewController *)self _saveMovieIfEdited:1 withCompletionHandler:v5];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)imageAnalysisToolbarButton
{
  v3 = [(QLMovieItemViewController *)self lookupAction];
  v4 = v3;
  if (v3 && ([v3 attributes] & 5) == 0)
  {
    if (!self->_imageAnalysisToolbarButton)
    {
      v6 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLMediaLookupButtonIdentifier"];
      imageAnalysisToolbarButton = self->_imageAnalysisToolbarButton;
      self->_imageAnalysisToolbarButton = v6;

      if (_UISolariumEnabled())
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }

      [(QLToolbarButton *)self->_imageAnalysisToolbarButton setPlacement:v8];
      [(QLToolbarButton *)self->_imageAnalysisToolbarButton setAccessibilityIdentifier:@"QLOverlayImageAnalysisButtonAccessibilityIdentifier"];
    }

    if ([v4 state] == 1)
    {
      v9 = @"info.circle.and.sparkles.fill";
    }

    else
    {
      v9 = @"info.circle.and.sparkles";
    }

    [(QLToolbarButton *)self->_imageAnalysisToolbarButton setSymbolImageName:v9];
    [(QLToolbarButton *)self->_imageAnalysisToolbarButton setUseInternalSymbolImage:1];
    v5 = self->_imageAnalysisToolbarButton;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)lookupAction
{
  v3 = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(QLMovieItemViewController *)self playerViewController];
    v6 = [v5 toggleLookupAction];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_lookupButtonTapped
{
  v3 = [(QLMovieItemViewController *)self lookupAction];
  if (v3)
  {
    v4 = v3;
    [v3 performWithSender:self target:0];
    v3 = v4;
  }
}

- (void)_showFailedToSaveChangesAlertWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = QLLocalizedStringFromTable();
  v7 = [v4 localizedDescription];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D750F8];
  v10 = QLLocalizedStringWithDefaultValue();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __68__QLMovieItemViewController__showFailedToSaveChangesAlertWithError___block_invoke;
  v15 = &unk_278B58938;
  objc_copyWeak(&v16, &location);
  v11 = [v9 actionWithTitle:v10 style:0 handler:&v12];

  [v8 addAction:{v11, v12, v13, v14, v15}];
  [(QLMovieItemViewController *)self presentViewController:v8 animated:1 completion:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __68__QLMovieItemViewController__showFailedToSaveChangesAlertWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateInterfaceAfterExitingEditMode];
}

- (id)editBehaviorAlertActionsForDoneButtonTap:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(QLItemViewController *)self context];
  v6 = [v5 item];
  [v6 editingMode];

  v7 = QLLocalizedString();
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __70__QLMovieItemViewController_editBehaviorAlertActionsForDoneButtonTap___block_invoke;
  v16 = &unk_278B58938;
  objc_copyWeak(&v17, &location);
  v9 = [v8 actionWithTitle:v7 style:0 handler:&v13];
  v19[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:{1, v13, v14, v15, v16}];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __70__QLMovieItemViewController_editBehaviorAlertActionsForDoneButtonTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _exitEditMode:1];
}

- (void)performFirstTimeAppearanceActions:(unint64_t)a3
{
  if ((a3 & 2) != 0)
  {
    [(QLMovieItemViewController *)self play];
  }

  else if ((a3 & 4) != 0)
  {
    [(QLMovieItemViewController *)self _enterEditMode];
  }
}

- (id)toolbarButtonsForTraitCollection:(id)a3
{
  v16.receiver = self;
  v16.super_class = QLMovieItemViewController;
  v4 = [(QLMediaItemBaseViewController *)&v16 toolbarButtonsForTraitCollection:a3];
  v5 = [v4 mutableCopy];

  v6 = [(QLMovieItemViewController *)self imageAnalysisToolbarButton];
  if (v6)
  {
    [v5 addObject:v6];
  }

  if (![(QLMovieItemViewController *)self shouldAllowEditingContents])
  {
    goto LABEL_16;
  }

  if (v5)
  {
    if (self->_assetHasValidVideoTrack)
    {
      v7 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLMediaRotateRightButtonIdentifier"];
      v8 = QLLocalizedString();
      [v7 setTitle:v8];

      [v7 setSymbolImageName:@"rotate.right"];
      [v7 setForceToNavBar:_UIBarsDesktopNavigationBarEnabled() ^ 1];
      if (_UISolariumEnabled())
      {
        v9 = 0;
      }

      else
      {
        v9 = 2;
      }

      [v7 setPlacement:v9];
      [v7 setAccessibilityIdentifier:@"QLMediaItemViewControllerBarRotateRightButtonAccessibilityIdentifier"];
      [v5 addObject:v7];
      v10 = [objc_alloc(MEMORY[0x277D43FB0]) initWithIdentifier:@"QLMediaTrimButtonIdentifier"];
      v11 = QLLocalizedString();
      [v10 setTitle:v11];

      if (_os_feature_enabled_impl())
      {
        v12 = @"timeline.selection";
      }

      else
      {
        v12 = @"selection.pin.in.out";
      }

      [v10 setSymbolImageName:v12];
      [v10 setForceToNavBar:_UIBarsDesktopNavigationBarEnabled() ^ 1];
      if (_UISolariumEnabled())
      {
        v13 = 0;
      }

      else
      {
        v13 = 2;
      }

      [v10 setPlacement:v13];
      [v10 setAccessibilityIdentifier:@"QLMediaItemViewControllerBarTrimButtonAccessibilityIdentifier"];
      [v5 addObject:v10];
    }

LABEL_16:
    v14 = v5;
    goto LABEL_17;
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_17:

  return v14;
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"QLMediaTrimButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self editButtonTapped];
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"QLMediaRotateRightButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self _rotateRightButtonTapped];
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([v6 isEqualToString:@"QLMediaLookupButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self _lookupButtonTapped];
    if (v7)
    {
LABEL_9:
      v7[2](v7);
    }
  }

  else if ([v6 isEqualToString:@"QLActionButtonIdentifier"])
  {
    v9.receiver = self;
    v9.super_class = QLMovieItemViewController;
    [(QLMediaItemBaseViewController *)&v9 buttonPressedWithIdentifier:v6 completionHandler:v7];
    [(QLMediaItemBaseViewController *)self pause];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = QLMovieItemViewController;
    [(QLMediaItemBaseViewController *)&v8 buttonPressedWithIdentifier:v6 completionHandler:v7];
  }

LABEL_10:
}

- (id)registeredKeyCommands
{
  v3 = objc_opt_new();
  if ([(QLMovieItemViewController *)self shouldAllowEditingContents]&& !self->_isEditing)
  {
    v4 = [MEMORY[0x277D75650] keyCommandWithInput:@"t" modifierFlags:1179648 action:sel__enterEditModeIfPossible];
    v5 = QLLocalizedString();
    [v4 setDiscoverabilityTitle:v5];

    v6 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v4 identifier:6];
    [v3 addObject:v6];

    v7 = [MEMORY[0x277D75650] keyCommandWithInput:@"r" modifierFlags:0x100000 action:sel__rotateIfPossible];
    v8 = QLLocalizedString();
    [v7 setDiscoverabilityTitle:v8];

    v9 = [MEMORY[0x277D43F80] keyCommandWithKeyCommand:v7 identifier:7];
    [v3 addObject:v9];
  }

  v13.receiver = self;
  v13.super_class = QLMovieItemViewController;
  v10 = [(QLMediaItemViewController *)&v13 registeredKeyCommands];
  v11 = [v10 arrayByAddingObjectsFromArray:v3];

  return v11;
}

- (void)handlePerformedKeyCommandIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 keyCommandIdentifier];
  if (v5 == 4)
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5 == 7)
  {
    [(QLMovieItemViewController *)self _rotateIfPossible];
    goto LABEL_8;
  }

  if (v5 != 6)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLMovieItemViewController;
    [(QLMediaItemViewController *)&v6 handlePerformedKeyCommandIfNeeded:v4];
    goto LABEL_8;
  }

  [(QLMovieItemViewController *)self _enterEditModeIfPossible];
LABEL_8:
}

- (PHPlaceholderView)airPlayPlaceholderView
{
  airPlayPlaceholderView = self->_airPlayPlaceholderView;
  if (!airPlayPlaceholderView)
  {
    gotLoadHelper_x8__OBJC_CLASS___PHPlaceholderView(v2);
    v6 = [objc_alloc(*v5) initWithType:0];
    v7 = self->_airPlayPlaceholderView;
    self->_airPlayPlaceholderView = v6;

    airPlayPlaceholderView = self->_airPlayPlaceholderView;
  }

  return airPlayPlaceholderView;
}

- (void)_updatePlaceHolderView
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = [(QLMovieItemViewController *)self airPlayPlaceholderView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(QLMovieItemViewController *)self view];
    [v5 addSubview:self->_airPlayPlaceholderView];

    [(PHPlaceholderView *)self->_airPlayPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(QLMovieItemViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    airPlayPlaceholderView = self->_airPlayPlaceholderView;
    v26 = @"placeHolderView";
    v27[0] = airPlayPlaceholderView;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v7 constraintsWithVisualFormat:@"H:|-0-[placeHolderView]-0-|" options:0 metrics:0 views:v9];
    [v6 addConstraints:v10];

    v11 = [(QLMovieItemViewController *)self view];
    v12 = MEMORY[0x277CCAAD0];
    v13 = self->_airPlayPlaceholderView;
    v24 = @"placeHolderView";
    v25 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v12 constraintsWithVisualFormat:@"V:|-0-[placeHolderView]-0-|" options:0 metrics:0 views:v14];
    [v11 addConstraints:v15];
  }

  v16 = [(QLMediaItemBaseViewController *)self player];
  v17 = [v16 isExternalPlaybackActive];

  if (v17)
  {
    v18 = [(QLItemViewController *)self delegate];
    [v18 previewItemViewController:self wantsFullScreen:1];
  }

  v19 = [(QLMediaItemBaseViewController *)self player];
  v20 = [v19 isExternalPlaybackActive] ^ 1;

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__QLMovieItemViewController__updatePlaceHolderView__block_invoke;
  v22[3] = &unk_278B57340;
  v22[4] = self;
  v23 = v20;
  [MEMORY[0x277D75D18] animateWithDuration:v22 animations:0.2];
  v21 = *MEMORY[0x277D85DE8];
}

void __51__QLMovieItemViewController__updatePlaceHolderView__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) airPlayPlaceholderView];
  [v2 setAlpha:v1];
}

- (void)_showBadge
{
  v3 = [(QLMovieItemViewController *)self assetIsHDR];
  if ([v3 BOOLValue])
  {
  }

  else
  {
    v4 = [(QLMovieItemViewController *)self assetIsProRes];
    v5 = [v4 BOOLValue];

    if (!v5)
    {
      return;
    }
  }

  v6 = [(QLMovieItemViewController *)self assetBadgeView];
  [(QLMovieItemViewController *)self _showAssetBadgeView:v6];
}

- (void)_showAssetBadgeViewIfNeeded
{
  if ((_os_feature_enabled_impl() & 1) == 0 && ![(QLMediaItemBaseViewController *)self isFullScreen]&& [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {
    v3 = [(QLMovieItemViewController *)self assetIsHDR];
    if ([v3 BOOLValue])
    {
    }

    else
    {
      v4 = [(QLMovieItemViewController *)self assetIsProRes];
      v5 = [v4 BOOLValue];

      if (!v5)
      {
        return;
      }
    }

    v6 = [(QLMovieItemViewController *)self assetBadgeView];
    [(QLMovieItemViewController *)self _showAssetBadgeView:v6];
  }
}

- (void)_showAssetBadgeView:(id)a3
{
  v4 = a3;
  [(QLMovieItemViewController *)self _addAssetBadgeViewToHierarchyIfNeeded:v4];
  [(QLMovieItemViewController *)self _displayAssetBadgeView:v4];
}

- (void)_addAssetBadgeViewToHierarchyIfNeeded:(id)a3
{
  v16 = a3;
  v4 = [v16 superview];

  if (!v4)
  {
    v5 = [(QLMovieItemViewController *)self view];
    [v5 addSubview:v16];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v16 topAnchor];
    v7 = [(QLMovieItemViewController *)self view];
    v8 = [v7 safeAreaLayoutGuide];
    v9 = [v8 topAnchor];
    v10 = [v6 constraintEqualToAnchor:v9 constant:20.0];
    [v10 setActive:1];

    v11 = [v16 leadingAnchor];
    v12 = [(QLMovieItemViewController *)self view];
    v13 = [v12 safeAreaLayoutGuide];
    v14 = [v13 leadingAnchor];
    v15 = [v11 constraintEqualToAnchor:v14 constant:16.0];
    [v15 setActive:1];
  }
}

- (void)_displayAssetBadgeView:(id)a3
{
  v4 = a3;
  v5 = [(QLMovieItemViewController *)self assetIsProRes];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [v4 setImage:0];
    v7 = [(QLMovieItemViewController *)self assetIsProResRaw];
    [v7 BOOLValue];
  }

  else
  {
    v8 = [(QLMovieItemViewController *)self assetIsHDR];
    v9 = [v8 BOOLValue];

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"tv"];
    [v4 setImage:v10];
  }

  v11 = QLLocalizedString();
  [v4 setText:v11];

LABEL_6:
  if ([v4 isHidden])
  {
    [v4 setAlpha:0.0];
    [v4 setHidden:0];
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__QLMovieItemViewController__displayAssetBadgeView___block_invoke;
    v13[3] = &unk_278B57190;
    v14 = v4;
    [v12 animateWithDuration:v13 animations:0.2];
  }
}

- (void)_hideAssetBadgeViewAfterDelayIfNeeded:(double)a3
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, (a3 * 1000000000.0));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__QLMovieItemViewController__hideAssetBadgeViewAfterDelayIfNeeded___block_invoke;
    v6[3] = &unk_278B57858;
    objc_copyWeak(&v7, &location);
    dispatch_after(v5, MEMORY[0x277D85CD0], v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __67__QLMovieItemViewController__hideAssetBadgeViewAfterDelayIfNeeded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained playingStatus];

  if (v3 == 1)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _hideAssetBadgeViewIfVisible];
  }
}

- (void)_hideAssetBadgeViewIfVisible
{
  v2 = [(QLMovieItemViewController *)self assetBadgeView];
  [v2 setHidden:1];
}

- (void)_updateAssetBadgeViewVisibilityWithNewPlayingStatus:(int64_t)a3
{
  if (a3 == 1)
  {
    [(QLMovieItemViewController *)self _hideAssetBadgeViewAfterDelayIfNeeded:2.5];
  }

  else
  {
    [(QLMovieItemViewController *)self _showAssetBadgeViewIfNeeded];
  }
}

- (void)_updateAssetBadgeViewVisibilityForFullscreenMode:(BOOL)a3
{
  v3 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (v3)
    {

      [(QLMovieItemViewController *)self _hideAssetBadgeViewIfVisible];
    }

    else
    {

      [(QLMovieItemViewController *)self _showAssetBadgeViewIfNeeded];
    }
  }
}

- (QLBadgeView)assetBadgeView
{
  assetBadgeView = self->_assetBadgeView;
  if (!assetBadgeView)
  {
    v4 = [QLBadgeView alloc];
    v5 = [(QLBadgeView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_assetBadgeView;
    self->_assetBadgeView = v5;

    assetBadgeView = self->_assetBadgeView;
  }

  return assetBadgeView;
}

- (void)loadAssetMetadata
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = self;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Loading metadata for current asset. %@ #Media", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = [(QLMediaItemBaseViewController *)self mediaAsset];
  if (v5)
  {
    gotLoadHelper_x8__OBJC_CLASS___PFMetadata(v6);
    v8 = *(v7 + 1112);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__QLMovieItemViewController_loadAssetMetadata__block_invoke;
    v10[3] = &unk_278B58960;
    v11 = v5;
    objc_copyWeak(&v12, buf);
    [v8 metadataForAsset:v11 completionHandler:v10];
    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(buf);
  v9 = *MEMORY[0x277D85DE8];
}

void __46__QLMovieItemViewController_loadAssetMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = MEMORY[0x277D43EF8];
  if (!v5 || v6)
  {
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v29 = v10;
      v30 = 2112;
      *v31 = v7;
      _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_ERROR, "Failed to get metadata for asset %@ finished loading: %@ #Media", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v12 = [v5 firstVideoTrackCodec];
    }

    else
    {
      v12 = 0;
    }

    v14 = v12 == 1634759278 || v12 == 1634759272;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:v14];
    v16 = WeakRetained[182];
    WeakRetained[182] = v15;

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = [v5 isProRes];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v19 = WeakRetained[181];
    WeakRetained[181] = v18;

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [v5 isHDR];
    }

    else
    {
      v20 = 0;
    }

    v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
    v22 = WeakRetained[180];
    WeakRetained[180] = v21;

    v23 = *v8;
    if (!*v8)
    {
      QLSInitLogging();
      v23 = *v8;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      *buf = 138413058;
      v29 = v24;
      v30 = 1024;
      *v31 = v17;
      *&v31[4] = 1024;
      *&v31[6] = v14;
      v32 = 1024;
      v33 = v20;
      _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Updated badge info with metadata for asset %@. isProRes: %d (raw=%d). isHDR: %d. #Media", buf, 0x1Eu);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__QLMovieItemViewController_loadAssetMetadata__block_invoke_228;
      block[3] = &unk_278B57858;
      objc_copyWeak(&v27, (a1 + 40));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v27);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __46__QLMovieItemViewController_loadAssetMetadata__block_invoke_228(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 _updateAssetBadgeViewVisibilityWithNewPlayingStatus:{objc_msgSend(v1, "playingStatus")}];
}

- (void)playerViewControllerWillPerformAnalysisCalloutAction:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "Will perform analysis callout action #ItemViewController", v8, 2u);
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = [(QLItemViewController *)self delegate];
    [v7 previewItemViewController:self wantsFullScreen:1];
  }
}

- (void)playerViewController:(id)a3 willTransitionToVisibilityOfPlaybackControls:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  LOBYTE(self) = _os_feature_enabled_impl();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v14[3] = &unk_278B57540;
  objc_copyWeak(&v15, &location);
  v16 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v10[3] = &unk_278B58988;
  objc_copyWeak(&v11, &location);
  v12 = a4;
  v13 = self;
  [v9 addCoordinatedAnimations:v14 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 previewItemViewController:v4 wantsFullScreen:0];

    WeakRetained = v4;
  }
}

void __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2 && (*(a1 + 40) & 1) == 0)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained delegate];
    [v5 previewItemViewController:v6 wantsFullScreen:1];

    [v6 _hideBadge];
    goto LABEL_9;
  }

  if (a2 && *(a1 + 40) == 1 && *(a1 + 41) == 1)
  {
    v6 = WeakRetained;
    [WeakRetained _showBadge];
LABEL_9:
    WeakRetained = v6;
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (UIScrollView)playerViewControllerScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewControllerScrollView);

  return WeakRetained;
}

@end
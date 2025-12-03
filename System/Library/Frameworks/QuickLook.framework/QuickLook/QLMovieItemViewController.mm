@interface QLMovieItemViewController
- (BOOL)_enterEditModeIfPossible;
- (BOOL)_hasMemoriesAppleMusic;
- (BOOL)_isInteractingWithAnalysis;
- (BOOL)canEnterFullScreen;
- (BOOL)canPinchToDismiss;
- (BOOL)canSwipeToDismiss;
- (BOOL)canToggleFullScreen;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)play;
- (BOOL)shouldAllowEditingContents;
- (PHPlaceholderView)airPlayPlaceholderView;
- (QLBadgeView)assetBadgeView;
- (QLMovieItemViewController)init;
- (UIScrollView)playerViewControllerScrollView;
- (id)_metadataItemTitle;
- (id)editBehaviorAlertActionsForDoneButtonTap:(id)tap;
- (id)imageAnalysisToolbarButton;
- (id)lookupAction;
- (id)registeredKeyCommands;
- (id)scrollView;
- (id)scrollViewInView:(id)view;
- (id)setupPlayerViewWithPlayer:(id)player;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (id)transitioningView;
- (void)_addAssetBadgeViewToHierarchyIfNeeded:(id)needed;
- (void)_checkForMemoriesAppleMusic;
- (void)_displayAssetBadgeView:(id)view;
- (void)_enterEditMode;
- (void)_exitEditMode:(BOOL)mode;
- (void)_hideAssetBadgeViewAfterDelayIfNeeded:(double)needed;
- (void)_hideAssetBadgeViewIfVisible;
- (void)_lookupButtonTapped;
- (void)_modifySessionForMemoriesAppleMusicMixing;
- (void)_resetTrimmingValues;
- (void)_rotateIfPossible;
- (void)_rotateMovieRight;
- (void)_saveMovieIfEdited:(BOOL)edited forceSaving:(BOOL)saving withCompletionHandler:(id)handler;
- (void)_saveMovieIfEditedWithEditedCopy:(id)copy shouldDismissAfterSaving:(BOOL)saving completionHandler:(id)handler;
- (void)_setupEditBehavior;
- (void)_setupWithCompletionHandler:(id)handler;
- (void)_showAssetBadgeView:(id)view;
- (void)_showAssetBadgeViewIfNeeded;
- (void)_showBadge;
- (void)_showFailedToSaveChangesAlertWithError:(id)error;
- (void)_stopLookupIfNeeded;
- (void)_updateAssetBadgeViewVisibilityForFullscreenMode:(BOOL)mode;
- (void)_updateAssetBadgeViewVisibilityWithNewPlayingStatus:(int64_t)status;
- (void)_updateEditMode;
- (void)_updateEditsTrimmingValuesWithTrimStartTime:(double)time trimEndTime:(double)endTime;
- (void)_updateInterfaceAfterExitingEditMode;
- (void)_updateMemoriesAppleMusicAudioTrackWithPlayerItem:(id)item shouldUseNoMusicTrack:(BOOL)track;
- (void)_updateMemoriesAppleMusicIsPlaying:(BOOL)playing;
- (void)_updatePlaceHolderView;
- (void)_updatePlayButtonVisibility;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)didChangePlayingStatus;
- (void)didReachEndOfMedia;
- (void)handlePerformedKeyCommandIfNeeded:(id)needed;
- (void)hostApplicationDidEnterBackground:(id)background;
- (void)loadAssetMetadata;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator;
- (void)playerViewControllerWillPerformAnalysisCalloutAction:(id)action;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler;
- (void)transitionDidFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)transitionDidStart:(BOOL)start;
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

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  contextCopy = context;
  handlerCopy = handler;
  [(QLScrollableContentItemViewController *)self setShouldFit:1];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__QLMovieItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke;
  v13[3] = &unk_278B57740;
  v11 = handlerCopy;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  v12.receiver = self;
  v12.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v12 loadPreviewControllerWithContents:contentsCopy context:contextCopy completionHandler:v13];
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

- (void)_setupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(QLMediaItemBaseViewController *)self imageSize];
  [(QLMovieItemViewController *)self setPreferredContentSize:?];
  [(QLMovieItemViewController *)self loadAssetMetadata];
  player = [(QLMediaItemBaseViewController *)self player];
  [player addObserver:self forKeyPath:@"externalPlaybackActive" options:3 context:&QLMovieItemViewControllerContext];

  self->_isObservingPlayerExternalPlaybackActive = 1;
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  self->_assetHasValidVideoTrack = [mediaAsset ql_hasValidVideoTrack];

  [(QLMovieItemViewController *)self _setupEditBehavior];
  v6 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v6 = handlerCopy;
  }
}

- (id)setupPlayerViewWithPlayer:(id)player
{
  v41[1] = *MEMORY[0x277D85DE8];
  playerCopy = player;
  [(QLMovieItemViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, 20.0, 0.0];
  v5 = objc_alloc_init(MEMORY[0x277CB85E0]);
  playerViewController = self->_playerViewController;
  self->_playerViewController = v5;

  [(AVPlayerViewController *)self->_playerViewController setAllowsVideoFrameAnalysis:1];
  [(AVPlayerViewController *)self->_playerViewController setUpdatesNowPlayingInfoCenter:1];
  view = [(AVPlayerViewController *)self->_playerViewController view];
  [view setBackgroundColor:0];

  [(AVPlayerViewController *)self->_playerViewController setShowsPlaybackControls:_os_feature_enabled_impl()];
  [(AVPlayerViewController *)self->_playerViewController setPlayer:playerCopy];

  [(AVPlayerViewController *)self->_playerViewController setAllowsPictureInPicturePlayback:0];
  [(AVPlayerViewController *)self->_playerViewController setDelegate:self];
  [(AVPlayerViewController *)self->_playerViewController setShowsExitFullScreenButton:0];
  if (_os_feature_enabled_impl())
  {
    configuration = [(AVPlayerViewController *)self->_playerViewController configuration];
    [configuration setExcludedControls:{objc_msgSend(configuration, "excludedControls") | 0x1FD0}];
    [configuration setPrefersFullScreenStyleForEmbeddedMode:1];
    [(AVPlayerViewController *)self->_playerViewController setConfiguration:configuration];
    [(AVPlayerViewController *)self->_playerViewController setPrefersDeviceUserInterfaceStyle:1];
  }

  _metadataItemTitle = [(QLMovieItemViewController *)self _metadataItemTitle];
  v41[0] = _metadataItemTitle;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  player = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem = [player currentItem];
  [currentItem setExternalMetadata:v10];

  view2 = [(AVPlayerViewController *)self->_playerViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(QLMovieItemViewController *)self addChildViewController:self->_playerViewController];
  view3 = [(QLMovieItemViewController *)self view];
  view4 = [(AVPlayerViewController *)self->_playerViewController view];
  [view3 addSubview:view4];

  [(AVPlayerViewController *)self->_playerViewController didMoveToParentViewController:self];
  view5 = [(QLMovieItemViewController *)self view];
  v17 = MEMORY[0x277CCAAD0];
  v39 = @"player";
  view6 = [(AVPlayerViewController *)self->_playerViewController view];
  v40 = view6;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  v20 = [v17 constraintsWithVisualFormat:@"H:|[player]|" options:0 metrics:0 views:v19];
  [view5 addConstraints:v20];

  view7 = [(QLMovieItemViewController *)self view];
  v22 = MEMORY[0x277CCAAD0];
  view8 = [(AVPlayerViewController *)self->_playerViewController view];
  v38 = view8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v25 = [v22 constraintsWithVisualFormat:@"V:|[player]|" options:0 metrics:0 views:v24];
  [view7 addConstraints:v25];

  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  LOBYTE(v25) = objc_opt_respondsToSelector();

  if (v25)
  {
    playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
    [playerViewController2 addObserver:self forKeyPath:@"analysisInteractionInProgress" options:5 context:&QLMovieItemViewControllerContext];
  }

  playerViewController3 = [(QLMovieItemViewController *)self playerViewController];
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    playerViewController4 = [(QLMovieItemViewController *)self playerViewController];
    [playerViewController4 addObserver:self forKeyPath:@"toggleLookupAction" options:5 context:&QLMovieItemViewControllerContext];
  }

  playerViewController5 = [(QLMovieItemViewController *)self playerViewController];
  [playerViewController5 addObserver:self forKeyPath:@"videoBounds" options:5 context:&QLMovieItemViewControllerContext];

  if (_os_feature_enabled_impl())
  {
    [(QLMovieItemViewController *)self _checkForMemoriesAppleMusic];
    if ([(QLMovieItemViewController *)self _hasMemoriesAppleMusic])
    {
      player2 = [(AVPlayerViewController *)self->_playerViewController player];
      currentItem2 = [player2 currentItem];
      [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:currentItem2 shouldUseNoMusicTrack:1];

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
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  previewTitle = [v3 ql_propertyTitleFromAsset:mediaAsset];

  if (!previewTitle)
  {
    context = [(QLItemViewController *)self context];
    previewTitle = [context previewTitle];
  }

  metadataItem = [MEMORY[0x277CE6558] metadataItem];
  [metadataItem setKey:*MEMORY[0x277CE5F28]];
  [metadataItem setIdentifier:*MEMORY[0x277CE5EF0]];
  [metadataItem setValue:previewTitle];

  return metadataItem;
}

- (void)dealloc
{
  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
    [playerViewController2 removeObserver:self forKeyPath:@"analysisInteractionInProgress" context:&QLMovieItemViewControllerContext];
  }

  playerViewController3 = [(QLMovieItemViewController *)self playerViewController];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    playerViewController4 = [(QLMovieItemViewController *)self playerViewController];
    [playerViewController4 removeObserver:self forKeyPath:@"toggleLookupAction" context:&QLMovieItemViewControllerContext];
  }

  if (self->_isObservingPlayerExternalPlaybackActive)
  {
    player = [(QLMediaItemBaseViewController *)self player];
    [player removeObserver:self forKeyPath:@"externalPlaybackActive" context:&QLMovieItemViewControllerContext];
  }

  playerViewController5 = [(QLMovieItemViewController *)self playerViewController];
  [playerViewController5 removeObserver:self forKeyPath:@"videoBounds" context:&QLMovieItemViewControllerContext];

  v11.receiver = self;
  v11.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v11 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  if (context == &QLMovieItemViewControllerContext)
  {
    player = [(QLMediaItemBaseViewController *)self player];

    if (player == objectCopy)
    {
      if ([pathCopy isEqualToString:@"externalPlaybackActive"])
      {
        [(QLMovieItemViewController *)self _updatePlaceHolderView];
      }
    }

    else
    {
      playerViewController = [(QLMovieItemViewController *)self playerViewController];

      if (playerViewController == objectCopy)
      {
        if (![pathCopy isEqualToString:@"analysisInteractionInProgress"])
        {
          if ([pathCopy isEqualToString:@"toggleLookupAction"] && (-[QLMovieItemViewController lookupAction](self, "lookupAction"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
          {
            delegate = [(QLItemViewController *)self delegate];
            [delegate previewItemViewControllerWantsUpdateOverlay:self animated:0];
          }

          else
          {
            if (![pathCopy isEqualToString:@"videoBounds"])
            {
              goto LABEL_3;
            }

            delegate = [(QLMovieItemViewController *)self view];
            playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
            [playerViewController2 videoBounds];
            v18 = v17;
            v20 = v19;
            v22 = v21;
            v24 = v23;
            playerViewController3 = [(QLMovieItemViewController *)self playerViewController];
            view = [playerViewController3 view];
            [delegate convertRect:view fromView:{v18, v20, v22, v24}];
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
    [(QLMediaItemViewController *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:change context:context];
  }

LABEL_3:
}

- (void)hostApplicationDidEnterBackground:(id)background
{
  v4.receiver = self;
  v4.super_class = QLMovieItemViewController;
  [(QLMediaItemViewController *)&v4 hostApplicationDidEnterBackground:background];
  [(QLMediaItemBaseViewController *)self pause];
}

- (BOOL)canEnterFullScreen
{
  player = [(QLMediaItemBaseViewController *)self player];
  isExternalPlaybackActive = [player isExternalPlaybackActive];

  return isExternalPlaybackActive ^ 1;
}

- (BOOL)play
{
  v6.receiver = self;
  v6.super_class = QLMovieItemViewController;
  play = [(QLMediaItemBaseViewController *)&v6 play];
  if (play)
  {
    delegate = [(QLItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsFullScreen:1];
  }

  return play;
}

- (id)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerViewControllerScrollView);

  if (!WeakRetained)
  {
    view = [(AVPlayerViewController *)self->_playerViewController view];
    v5 = [(QLMovieItemViewController *)self scrollViewInView:view];
    objc_storeWeak(&self->_playerViewControllerScrollView, v5);
  }

  v6 = objc_loadWeakRetained(&self->_playerViewControllerScrollView);

  return v6;
}

- (id)scrollViewInView:(id)view
{
  v19 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = viewCopy;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subviews = [viewCopy subviews];
    v7 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subviews);
          }

          v11 = [(QLMovieItemViewController *)self scrollViewInView:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  scrollView = [(QLMovieItemViewController *)self scrollView];
  [scrollView minimumZoomScale];
  v5 = v4;
  [scrollView zoomScale];
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
  _isInteractingWithAnalysis = [(QLMovieItemViewController *)self _isInteractingWithAnalysis];
  appearance = [(QLItemViewController *)self appearance];
  v5 = [appearance presentationMode] == 4;

  if (_isInteractingWithAnalysis || ![(QLMediaItemBaseViewController *)self playable]|| self->_isEditing || (_os_feature_enabled_impl() & 1) == 0 && ([(QLItemViewController *)self isSavingEdits]|| self->_isSavingEditsBeforeDismissing))
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
  lookupAction = [(QLMovieItemViewController *)self lookupAction];
  if (lookupAction)
  {
    v5 = lookupAction;
    v4 = [lookupAction state] == 1;
    lookupAction = v5;
    if (v4)
    {
      [(QLMovieItemViewController *)self _lookupButtonTapped];
      lookupAction = v5;
    }
  }
}

- (BOOL)_isInteractingWithAnalysis
{
  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
  analysisInteractionInProgress = [playerViewController2 analysisInteractionInProgress];

  return analysisInteractionInProgress;
}

- (void)transitionDidStart:(BOOL)start
{
  if (start)
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

- (void)transitionDidFinish:(BOOL)finish didComplete:(BOOL)complete
{
  if (finish && complete && ![(QLMovieItemViewController *)self isEditing])
  {
    player = [(QLMediaItemBaseViewController *)self player];
    [player play];
  }

  else if (!complete && [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {

    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  }
}

- (id)transitioningView
{
  player = [(QLMediaItemBaseViewController *)self player];
  if ([player isExternalPlaybackActive])
  {
    view = self->_airPlayPlaceholderView;
  }

  else
  {
    view = [(AVPlayerViewController *)self->_playerViewController view];
  }

  v5 = view;

  return v5;
}

- (BOOL)shouldAllowEditingContents
{
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  hasProtectedContent = [mediaAsset hasProtectedContent];

  if ((hasProtectedContent & 1) == 0)
  {
    context = [(QLItemViewController *)self context];
    canBeEdited = [context canBeEdited];
    if (canBeEdited && (-[QLItemViewController context](self, "context"), hasProtectedContent = objc_claimAutoreleasedReturnValue(), [hasProtectedContent editedFileBehavior]))
    {
      v5 = 1;
    }

    else
    {
      context2 = [(QLItemViewController *)self context];
      item = [context2 item];
      v5 = [item editingMode] != 0;

      if (!canBeEdited)
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
  player = [(QLMediaItemBaseViewController *)self player];
  audioSession = [player audioSession];
  v10 = 0;
  [audioSession setCategory:v3 withOptions:1 error:&v10];
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

- (void)_updateMemoriesAppleMusicIsPlaying:(BOOL)playing
{
  playingCopy = playing;
  v24[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D43F88] = [MEMORY[0x277D43F88] sharedInstance];
  if (([mEMORY[0x277D43F88] isConnected] & 1) == 0)
  {

    goto LABEL_6;
  }

  _memoriesAppleMusicAdamID = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];

  if (!_memoriesAppleMusicAdamID)
  {
LABEL_6:
    player = [(AVPlayerViewController *)self->_playerViewController player];
    currentItem = [player currentItem];
    [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:currentItem shouldUseNoMusicTrack:0];

    _musicPlayer = [(QLMovieItemViewController *)self _musicPlayer];
    goto LABEL_7;
  }

  player2 = [(AVPlayerViewController *)self->_playerViewController player];
  currentItem2 = [player2 currentItem];
  [(QLMovieItemViewController *)self _updateMemoriesAppleMusicAudioTrackWithPlayerItem:currentItem2 shouldUseNoMusicTrack:1];

  if (playingCopy)
  {
    objc_initWeak(&location, self);
    _musicPlayer2 = [(QLMovieItemViewController *)self _musicPlayer];
    [_musicPlayer2 stop];

    _musicPlayer3 = [(QLMovieItemViewController *)self _musicPlayer];
    [_musicPlayer3 setRepeatMode:1];

    _musicPlayer4 = [(QLMovieItemViewController *)self _musicPlayer];
    _memoriesAppleMusicAdamID2 = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];
    v24[0] = _memoriesAppleMusicAdamID2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [_musicPlayer4 setQueueWithStoreIDs:v13];

    _musicPlayer5 = [(QLMovieItemViewController *)self _musicPlayer];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__QLMovieItemViewController__updateMemoriesAppleMusicIsPlaying___block_invoke;
    v21[3] = &unk_278B588C0;
    objc_copyWeak(&v22, &location);
    [_musicPlayer5 prepareToPlayWithCompletionHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  _musicPlayer = [(QLMovieItemViewController *)self _musicPlayer];
LABEL_7:
  v20 = _musicPlayer;
  [_musicPlayer stop];
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
  _memoriesAppleMusicAdamID = [(QLMovieItemViewController *)self _memoriesAppleMusicAdamID];
  v3 = _memoriesAppleMusicAdamID != 0;

  return v3;
}

- (void)_checkForMemoriesAppleMusic
{
  v44 = *MEMORY[0x277D85DE8];
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  v4 = mediaAsset;
  if (mediaAsset)
  {
    v5 = [mediaAsset mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
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
        selfCopy = self;
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
            commonMetadata = [v29 commonMetadata];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v9 = [commonMetadata countByEnumeratingWithState:&v34 objects:v42 count:16];
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
                    objc_enumerationMutation(commonMetadata);
                  }

                  v13 = [*(*(&v34 + 1) + 8 * i) mutableCopy];
                  v14 = [v13 key];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    v16 = [v13 key];
                    stringValue = [v13 stringValue];
                    if ([v16 isEqualToString:v32])
                    {
                      v18 = stringValue;

                      v33 = v18;
                    }

                    if ([v16 isEqualToString:v6] && objc_msgSend(stringValue, "isEqualToString:", @"No Music Just Voice") && objc_msgSend(obj, "count") >= 2)
                    {
                      v19 = v29;

                      v30 = v19;
                    }
                  }
                }

                v10 = [commonMetadata countByEnumeratingWithState:&v34 objects:v42 count:16];
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
            [(QLMovieItemViewController *)selfCopy set_memoriesAppleMusicAdamID:v33];
            [(QLMovieItemViewController *)selfCopy set_memoriesWithoutMusicMediaOption:v30];
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

- (void)_updateMemoriesAppleMusicAudioTrackWithPlayerItem:(id)item shouldUseNoMusicTrack:(BOOL)track
{
  trackCopy = track;
  itemCopy = item;
  asset = [itemCopy asset];
  v7 = [asset mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];
  v8 = v7;
  if (v7)
  {
    if (trackCopy)
    {
      _memoriesWithoutMusicMediaOption = [(QLMovieItemViewController *)self _memoriesWithoutMusicMediaOption];
      [itemCopy selectMediaOption:_memoriesWithoutMusicMediaOption inMediaSelectionGroup:v8];
    }

    else
    {
      _memoriesWithoutMusicMediaOption = [v7 options];
      v10 = [_memoriesWithoutMusicMediaOption objectAtIndexedSubscript:0];
      [itemCopy selectMediaOption:v10 inMediaSelectionGroup:v8];
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
  isSavingEdits = [(QLItemViewController *)self isSavingEdits];
  if (isSavingEdits)
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

  return !isSavingEdits;
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
      selfCopy = self;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_ERROR, "Could not enter edit mode because editing preview (%@) is not allowed. #PreviewController", &v13, 0xCu);
    }

    goto LABEL_10;
  }

  self->_isEditing = 1;
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self didEnableEditMode:1];

  behaviorContext = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [behaviorContext startEditing];

  delegate2 = [(QLItemViewController *)self delegate];
  [delegate2 previewItemViewController:self wantsFullScreen:1];

  delegate3 = [(QLItemViewController *)self delegate];
  [delegate3 previewItemViewControllerWantsUpdateOverlay:self animated:0];

  delegate4 = [(QLItemViewController *)self delegate];
  [delegate4 previewItemViewControllerWantsUpdateKeyCommands:self];

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

- (void)_exitEditMode:(BOOL)mode
{
  modeCopy = mode;
  self->_isEditing = 0;
  behaviorContext = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [behaviorContext endEditing];

  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  player = [playerViewController player];
  currentItem = [player currentItem];
  v9 = currentItem;
  if (currentItem)
  {
    [currentItem reversePlaybackEndTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
  player2 = [playerViewController2 player];
  currentItem2 = [player2 currentItem];
  v14 = currentItem2;
  if (currentItem2)
  {
    [currentItem2 forwardPlaybackEndTime];
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
  if (modeCopy)
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

- (void)_updateEditsTrimmingValuesWithTrimStartTime:(double)time trimEndTime:(double)endTime
{
  [(QLMovieEdits *)self->_editsSinceLastSave setTrimStartTime:?];
  [(QLMovieEdits *)self->_editsSinceLastSave setTrimEndTime:endTime];
  [(QLMovieEdits *)self->_edits setTrimStartTime:time];
  edits = self->_edits;

  [(QLMovieEdits *)edits setTrimEndTime:endTime];
}

- (void)_updateInterfaceAfterExitingEditMode
{
  if (_os_feature_enabled_impl())
  {
    playerViewController = [(QLMovieItemViewController *)self playerViewController];
    [playerViewController flashPlaybackControlsWithDuration:10.0];
  }

  else
  {
    [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  }

  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:0];
}

- (void)_resetTrimmingValues
{
  [(QLMovieEdits *)self->_editsSinceLastSave resetTrimmingValues];
  edits = self->_edits;

  [(QLMovieEdits *)edits resetTrimmingValues];
}

- (void)_updateEditMode
{
  hasEdits = [(QLMovieEdits *)self->_editsSinceLastSave hasEdits];
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self hasUnsavedEdits:hasEdits];

  delegate2 = [(QLItemViewController *)self delegate];
  [delegate2 previewItemViewController:self didEnableEditMode:hasEdits];
}

- (void)updateInterfaceForSavingEdits
{
  [(QLMediaItemBaseViewController *)self pause];
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  view = [(QLMovieItemViewController *)self view];
  [view setUserInteractionEnabled:0];
}

- (void)updateInterfaceAfterSavingEdits
{
  [(QLMovieItemViewController *)self _updatePlayButtonVisibility];
  view = [(QLMovieItemViewController *)self view];
  [view setUserInteractionEnabled:1];
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
  behaviorContext = [(AVEditBehavior *)self->_editBehavior behaviorContext];
  [behaviorContext rotateClockwise];
}

- (void)_saveMovieIfEdited:(BOOL)edited forceSaving:(BOOL)saving withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLMovieEdits *)self->_editsSinceLastSave hasEdits]|| saving)
  {
    objc_initWeak(buf, self);
    context = [(QLItemViewController *)self context];
    item = [context item];
    previewItemContentType = [item previewItemContentType];

    if (previewItemContentType)
    {
      v14 = MEMORY[0x277CE1CB8];
      context2 = [(QLItemViewController *)self context];
      item2 = [context2 item];
      previewItemContentType2 = [item2 previewItemContentType];
      v18 = [v14 typeWithIdentifier:previewItemContentType2];

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __82__QLMovieItemViewController__saveMovieIfEdited_forceSaving_withCompletionHandler___block_invoke;
      v19[3] = &unk_278B58238;
      v20 = handlerCopy;
      objc_copyWeak(&v21, buf);
      editedCopy = edited;
      [(QLItemViewController *)self editedCopyToSaveChangesWithOutputType:v18 completionHandler:v19];
      objc_destroyWeak(&v21);
    }

    else
    {
      v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D43EF0] code:0 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, v18);
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

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
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

- (void)_saveMovieIfEditedWithEditedCopy:(id)copy shouldDismissAfterSaving:(BOOL)saving completionHandler:(id)handler
{
  v93 = *MEMORY[0x277D85DE8];
  copyCopy = copy;
  handlerCopy = handler;
  rotated = [(QLMovieEdits *)self->_edits rotated];
  trimmed = [(QLMovieEdits *)self->_edits trimmed];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__QLMovieItemViewController__saveMovieIfEditedWithEditedCopy_shouldDismissAfterSaving_completionHandler___block_invoke;
  aBlock[3] = &unk_278B58910;
  objc_copyWeak(&v89, &location);
  v77 = handlerCopy;
  v88 = v77;
  v78 = _Block_copy(aBlock);
  [(QLItemViewController *)self showSaveEditsProgressIndicatorAfterDelay];
  self->_isSavingEditsBeforeDismissing = saving;
  [(QLItemViewController *)self didStartSavingEdits];
  if (!trimmed)
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

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [copyCopy url];
    path = [v17 path];
    v19 = [defaultManager fileExistsAtPath:path];

    if (v19)
    {
      [copyCopy removeFromDisk:0];
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    context = [(QLItemViewController *)self context];
    item = [context item];
    saveURL = [item saveURL];
    v24 = [copyCopy url];
    v81 = 0;
    v25 = [defaultManager2 copyItemAtURL:saveURL toURL:v24 error:&v81];
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
        v33 = [copyCopy url];
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = v33;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v26;
        _os_log_impl(&dword_23A714000, v32, OS_LOG_TYPE_ERROR, "Could not copy original movie to save rotated version at URL: %@. Error: %@ #Media", &buf, 0x16u);
      }

      [copyCopy removeFromDisk:0];
      v78[2](v78, 0, v26);
      goto LABEL_35;
    }

    v27 = MEMORY[0x277CE6560];
    v28 = [copyCopy url];
    v29 = [v27 movieWithURL:v28 options:0];

    goto LABEL_43;
  }

  memset(&t2, 0, 24);
  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  player = [playerViewController player];
  currentItem = [player currentItem];
  v14 = currentItem;
  if (currentItem)
  {
    [currentItem reversePlaybackEndTime];
  }

  else
  {
    memset(&t2, 0, 24);
  }

  v85 = 0uLL;
  v86 = 0.0;
  playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
  player2 = [playerViewController2 player];
  currentItem2 = [player2 currentItem];
  v37 = currentItem2;
  if (currentItem2)
  {
    [currentItem2 forwardPlaybackEndTime];
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
      v48 = [copyCopy url];
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

    [copyCopy removeFromDisk:0];
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
  v53 = [copyCopy url];
  v54 = [v52 initWithURL:v53 options:0];
  [v29 setDefaultMediaDataStorage:v54];

  memset(&buf, 0, sizeof(buf));
  *&rhs.a = *&t2.a;
  rhs.c = t2.c;
  duration = v84;
  CMTimeRangeMake(&buf, &rhs, &duration);
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  v82 = 0;
  rhs = buf;
  duration = *v39;
  v56 = [v29 insertTimeRange:&rhs ofAsset:mediaAsset atTime:&duration copySampleData:1 error:&v82];
  v26 = v82;
  if (v26)
  {
    v56 = 0;
  }

  if (v56)
  {
LABEL_43:
    if (rotated)
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
        rightRotationsCount = [(QLMovieEdits *)self->_edits rightRotationsCount];
        LODWORD(buf.a) = 134218242;
        *(&buf.a + 4) = rightRotationsCount;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = self;
        _os_log_impl(&dword_23A714000, v59, OS_LOG_TYPE_INFO, "Setting preferred transform of rotated movie with rotations count: %lu. %@ #Media", &buf, 0x16u);
      }

      v61 = [v29 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
      firstObject = [v61 firstObject];

      if (firstObject)
      {
        [firstObject preferredTransform];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      CGAffineTransformMakeRotation(&t2, [(QLMovieEdits *)self->_edits rightRotationsCount]* 1.57079633);
      CGAffineTransformConcat(&buf, &rhs, &t2);
      [firstObject setPreferredTransform:&buf];
    }

    v66 = [copyCopy url];
    context2 = [(QLItemViewController *)self context];
    contentType = [context2 contentType];
    v79 = 0;
    v69 = [v29 writeMovieHeaderToURL:v66 fileType:contentType options:0 error:&v79];
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
        *(&buf.a + 4) = copyCopy;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = self;
        _os_log_impl(&dword_23A714000, v72, OS_LOG_TYPE_INFO, "Successfully wrote new header of edited movie to URL of edited copy: %@. %@ #Media", &buf, 0x16u);
      }

      [(QLMovieEdits *)self->_editsSinceLastSave resetEditingValues];
      [(QLMovieItemViewController *)self _updateEditMode];
      [copyCopy bumpVersion];
      [copyCopy markAsPurgeable];
      (v78)[2](v78, copyCopy, 0);
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
        v74 = [copyCopy url];
        LODWORD(buf.a) = 138412546;
        *(&buf.a + 4) = v74;
        WORD2(buf.b) = 2112;
        *(&buf.b + 6) = v26;
        _os_log_impl(&dword_23A714000, v73, OS_LOG_TYPE_ERROR, "Could not write header for trimmed movie at URL of edited copy: %@. Error: %@ #Media", &buf, 0x16u);
      }

      [copyCopy removeFromDisk:0];
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
    v65 = [copyCopy url];
    LODWORD(rhs.a) = 138412546;
    *(&rhs.a + 4) = v65;
    WORD2(rhs.b) = 2112;
    *(&rhs.b + 6) = v26;
    _os_log_impl(&dword_23A714000, v64, OS_LOG_TYPE_ERROR, "Could not write contents for trimmed movie at URL: %@. Error: %@ #Media", &rhs, 0x16u);
  }

  [copyCopy removeFromDisk:0];
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

- (void)savePreviewEditedCopyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(QLMovieItemViewController *)self shouldAllowEditingContents])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __72__QLMovieItemViewController_savePreviewEditedCopyWithCompletionHandler___block_invoke;
    v5[3] = &unk_278B58210;
    v6 = handlerCopy;
    [(QLMovieItemViewController *)self _saveMovieIfEdited:1 withCompletionHandler:v5];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)imageAnalysisToolbarButton
{
  lookupAction = [(QLMovieItemViewController *)self lookupAction];
  v4 = lookupAction;
  if (lookupAction && ([lookupAction attributes] & 5) == 0)
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
  playerViewController = [(QLMovieItemViewController *)self playerViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    playerViewController2 = [(QLMovieItemViewController *)self playerViewController];
    toggleLookupAction = [playerViewController2 toggleLookupAction];
  }

  else
  {
    toggleLookupAction = 0;
  }

  return toggleLookupAction;
}

- (void)_lookupButtonTapped
{
  lookupAction = [(QLMovieItemViewController *)self lookupAction];
  if (lookupAction)
  {
    v4 = lookupAction;
    [lookupAction performWithSender:self target:0];
    lookupAction = v4;
  }
}

- (void)_showFailedToSaveChangesAlertWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277D75110];
  v6 = QLLocalizedStringFromTable();
  localizedDescription = [errorCopy localizedDescription];
  v8 = [v5 alertControllerWithTitle:v6 message:localizedDescription preferredStyle:1];

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

- (id)editBehaviorAlertActionsForDoneButtonTap:(id)tap
{
  v19[1] = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  context = [(QLItemViewController *)self context];
  item = [context item];
  [item editingMode];

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

- (void)performFirstTimeAppearanceActions:(unint64_t)actions
{
  if ((actions & 2) != 0)
  {
    [(QLMovieItemViewController *)self play];
  }

  else if ((actions & 4) != 0)
  {
    [(QLMovieItemViewController *)self _enterEditMode];
  }
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v16.receiver = self;
  v16.super_class = QLMovieItemViewController;
  v4 = [(QLMediaItemBaseViewController *)&v16 toolbarButtonsForTraitCollection:collection];
  v5 = [v4 mutableCopy];

  imageAnalysisToolbarButton = [(QLMovieItemViewController *)self imageAnalysisToolbarButton];
  if (imageAnalysisToolbarButton)
  {
    [v5 addObject:imageAnalysisToolbarButton];
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

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy isEqualToString:@"QLMediaTrimButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self editButtonTapped];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"QLMediaRotateRightButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self _rotateRightButtonTapped];
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ([identifierCopy isEqualToString:@"QLMediaLookupButtonIdentifier"])
  {
    [(QLMovieItemViewController *)self _lookupButtonTapped];
    if (handlerCopy)
    {
LABEL_9:
      handlerCopy[2](handlerCopy);
    }
  }

  else if ([identifierCopy isEqualToString:@"QLActionButtonIdentifier"])
  {
    v9.receiver = self;
    v9.super_class = QLMovieItemViewController;
    [(QLMediaItemBaseViewController *)&v9 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
    [(QLMediaItemBaseViewController *)self pause];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = QLMovieItemViewController;
    [(QLMediaItemBaseViewController *)&v8 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
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
  registeredKeyCommands = [(QLMediaItemViewController *)&v13 registeredKeyCommands];
  v11 = [registeredKeyCommands arrayByAddingObjectsFromArray:v3];

  return v11;
}

- (void)handlePerformedKeyCommandIfNeeded:(id)needed
{
  neededCopy = needed;
  keyCommandIdentifier = [neededCopy keyCommandIdentifier];
  if (keyCommandIdentifier == 4)
  {
    if (_os_feature_enabled_impl())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (keyCommandIdentifier == 7)
  {
    [(QLMovieItemViewController *)self _rotateIfPossible];
    goto LABEL_8;
  }

  if (keyCommandIdentifier != 6)
  {
LABEL_7:
    v6.receiver = self;
    v6.super_class = QLMovieItemViewController;
    [(QLMediaItemViewController *)&v6 handlePerformedKeyCommandIfNeeded:neededCopy];
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
  airPlayPlaceholderView = [(QLMovieItemViewController *)self airPlayPlaceholderView];
  superview = [airPlayPlaceholderView superview];

  if (!superview)
  {
    view = [(QLMovieItemViewController *)self view];
    [view addSubview:self->_airPlayPlaceholderView];

    [(PHPlaceholderView *)self->_airPlayPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(QLMovieItemViewController *)self view];
    v7 = MEMORY[0x277CCAAD0];
    airPlayPlaceholderView = self->_airPlayPlaceholderView;
    v26 = @"placeHolderView";
    v27[0] = airPlayPlaceholderView;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    v10 = [v7 constraintsWithVisualFormat:@"H:|-0-[placeHolderView]-0-|" options:0 metrics:0 views:v9];
    [view2 addConstraints:v10];

    view3 = [(QLMovieItemViewController *)self view];
    v12 = MEMORY[0x277CCAAD0];
    v13 = self->_airPlayPlaceholderView;
    v24 = @"placeHolderView";
    v25 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v15 = [v12 constraintsWithVisualFormat:@"V:|-0-[placeHolderView]-0-|" options:0 metrics:0 views:v14];
    [view3 addConstraints:v15];
  }

  player = [(QLMediaItemBaseViewController *)self player];
  isExternalPlaybackActive = [player isExternalPlaybackActive];

  if (isExternalPlaybackActive)
  {
    delegate = [(QLItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsFullScreen:1];
  }

  player2 = [(QLMediaItemBaseViewController *)self player];
  v20 = [player2 isExternalPlaybackActive] ^ 1;

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
  assetIsHDR = [(QLMovieItemViewController *)self assetIsHDR];
  if ([assetIsHDR BOOLValue])
  {
  }

  else
  {
    assetIsProRes = [(QLMovieItemViewController *)self assetIsProRes];
    bOOLValue = [assetIsProRes BOOLValue];

    if (!bOOLValue)
    {
      return;
    }
  }

  assetBadgeView = [(QLMovieItemViewController *)self assetBadgeView];
  [(QLMovieItemViewController *)self _showAssetBadgeView:assetBadgeView];
}

- (void)_showAssetBadgeViewIfNeeded
{
  if ((_os_feature_enabled_impl() & 1) == 0 && ![(QLMediaItemBaseViewController *)self isFullScreen]&& [(QLMediaItemBaseViewController *)self playingStatus]!= 1)
  {
    assetIsHDR = [(QLMovieItemViewController *)self assetIsHDR];
    if ([assetIsHDR BOOLValue])
    {
    }

    else
    {
      assetIsProRes = [(QLMovieItemViewController *)self assetIsProRes];
      bOOLValue = [assetIsProRes BOOLValue];

      if (!bOOLValue)
      {
        return;
      }
    }

    assetBadgeView = [(QLMovieItemViewController *)self assetBadgeView];
    [(QLMovieItemViewController *)self _showAssetBadgeView:assetBadgeView];
  }
}

- (void)_showAssetBadgeView:(id)view
{
  viewCopy = view;
  [(QLMovieItemViewController *)self _addAssetBadgeViewToHierarchyIfNeeded:viewCopy];
  [(QLMovieItemViewController *)self _displayAssetBadgeView:viewCopy];
}

- (void)_addAssetBadgeViewToHierarchyIfNeeded:(id)needed
{
  neededCopy = needed;
  superview = [neededCopy superview];

  if (!superview)
  {
    view = [(QLMovieItemViewController *)self view];
    [view addSubview:neededCopy];

    [neededCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [neededCopy topAnchor];
    view2 = [(QLMovieItemViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
    [v10 setActive:1];

    leadingAnchor = [neededCopy leadingAnchor];
    view3 = [(QLMovieItemViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v15 setActive:1];
  }
}

- (void)_displayAssetBadgeView:(id)view
{
  viewCopy = view;
  assetIsProRes = [(QLMovieItemViewController *)self assetIsProRes];
  bOOLValue = [assetIsProRes BOOLValue];

  if (bOOLValue)
  {
    [viewCopy setImage:0];
    assetIsProResRaw = [(QLMovieItemViewController *)self assetIsProResRaw];
    [assetIsProResRaw BOOLValue];
  }

  else
  {
    assetIsHDR = [(QLMovieItemViewController *)self assetIsHDR];
    bOOLValue2 = [assetIsHDR BOOLValue];

    if (!bOOLValue2)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"tv"];
    [viewCopy setImage:v10];
  }

  v11 = QLLocalizedString();
  [viewCopy setText:v11];

LABEL_6:
  if ([viewCopy isHidden])
  {
    [viewCopy setAlpha:0.0];
    [viewCopy setHidden:0];
    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__QLMovieItemViewController__displayAssetBadgeView___block_invoke;
    v13[3] = &unk_278B57190;
    v14 = viewCopy;
    [v12 animateWithDuration:v13 animations:0.2];
  }
}

- (void)_hideAssetBadgeViewAfterDelayIfNeeded:(double)needed
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    objc_initWeak(&location, self);
    v5 = dispatch_time(0, (needed * 1000000000.0));
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
  assetBadgeView = [(QLMovieItemViewController *)self assetBadgeView];
  [assetBadgeView setHidden:1];
}

- (void)_updateAssetBadgeViewVisibilityWithNewPlayingStatus:(int64_t)status
{
  if (status == 1)
  {
    [(QLMovieItemViewController *)self _hideAssetBadgeViewAfterDelayIfNeeded:2.5];
  }

  else
  {
    [(QLMovieItemViewController *)self _showAssetBadgeViewIfNeeded];
  }
}

- (void)_updateAssetBadgeViewVisibilityForFullscreenMode:(BOOL)mode
{
  modeCopy = mode;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (modeCopy)
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
    selfCopy = self;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "Loading metadata for current asset. %@ #Media", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  mediaAsset = [(QLMediaItemBaseViewController *)self mediaAsset];
  if (mediaAsset)
  {
    gotLoadHelper_x8__OBJC_CLASS___PFMetadata(v6);
    v8 = *(v7 + 1112);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__QLMovieItemViewController_loadAssetMetadata__block_invoke;
    v10[3] = &unk_278B58960;
    v11 = mediaAsset;
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

- (void)playerViewControllerWillPerformAnalysisCalloutAction:(id)action
{
  actionCopy = action;
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
    delegate = [(QLItemViewController *)self delegate];
    [delegate previewItemViewController:self wantsFullScreen:1];
  }
}

- (void)playerViewController:(id)controller willTransitionToVisibilityOfPlaybackControls:(BOOL)controls withAnimationCoordinator:(id)coordinator
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  objc_initWeak(&location, self);
  LOBYTE(self) = _os_feature_enabled_impl();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke;
  v14[3] = &unk_278B57540;
  objc_copyWeak(&v15, &location);
  controlsCopy = controls;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __120__QLMovieItemViewController_playerViewController_willTransitionToVisibilityOfPlaybackControls_withAnimationCoordinator___block_invoke_2;
  v10[3] = &unk_278B58988;
  objc_copyWeak(&v11, &location);
  controlsCopy2 = controls;
  selfCopy = self;
  [coordinatorCopy addCoordinatedAnimations:v14 completion:v10];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
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
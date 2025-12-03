@interface RCPlaybackViewController
- (BOOL)_shouldCollapseToolbarButtons;
- (UISplitViewController)parentSplitViewController;
- (id)_createMoreOptionsMenu:(BOOL)menu shouldShowTranscriptionOption:(BOOL)option;
- (id)_navigationItemToUseForToolbarItems;
- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview isCompact:(BOOL)compact waveformOnly:(BOOL)only;
- (id)createView;
- (id)deferredTranscriptMenuElement;
- (id)showTranscriptMenuElement;
- (void)_classSpecificLoadView;
- (void)_doDelete:(id)delete;
- (void)_doDisplayPlaybackSettings:(id)settings;
- (void)_doEdit;
- (void)_doErase:(id)erase;
- (void)_doMoveToFolder:(id)folder;
- (void)_doRecover:(id)recover;
- (void)_doShare:(id)share;
- (void)_doShowTranscriptionView:(id)view;
- (void)_reset;
- (void)_setupToolbarWithButtonItemsIfNeeded;
- (void)_toggleFavorite;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateBarButtonItemsState:(id)state enabled:(BOOL)enabled;
- (void)_updateMoreOptionsMenu;
- (void)_updatePlaybackSettingsButtonTint:(BOOL)tint;
- (void)_updateToolbarItems;
- (void)_updateTranscriptionButtonTint:(BOOL)tint;
- (void)clear;
- (void)deviceTranscriptionSupportDidChange:(BOOL)change;
- (void)didUpdateRecordingCenterContentViewState;
- (void)enablePlaybackWithComposition:(id)composition displayModel:(id)model timeController:(id)controller;
- (void)enableWaveformScrolling:(BOOL)scrolling;
- (void)updateActionButtonState:(BOOL)state;
- (void)updateContentUnavailableConfigurationUsingState:(id)state;
- (void)updateContentUnavailableViewState:(int64_t)state;
- (void)updateWithPlaybackSettings:(id)settings;
- (void)updateWithRecordingModel:(id)model;
- (void)updateWithRecordingModel:(id)model requireMatchingUUID:(BOOL)d;
- (void)viewDidLoad;
@end

@implementation RCPlaybackViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v7 viewDidLoad];
  v3 = objc_opt_self();
  v8 = v3;
  v4 = [NSArray arrayWithObjects:&v8 count:1];
  v5 = [(RCPlaybackViewController *)self registerForTraitChanges:v4 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

  view = [(RCPlaybackViewController *)self view];
  [view setAccessibilityIdentifier:@"PlaybackView"];
}

- (id)createView
{
  v2 = [(RCRecordingView *)[RCPlaybackView alloc] initWithRecordButtonRepository:0 interactionHandler:0];

  return v2;
}

- (void)updateActionButtonState:(BOOL)state
{
  stateCopy = state;
  _navigationItemToUseForToolbarItems = [(RCPlaybackViewController *)self _navigationItemToUseForToolbarItems];
  leftBarButtonItems = [_navigationItemToUseForToolbarItems leftBarButtonItems];
  [(RCPlaybackViewController *)self _updateBarButtonItemsState:leftBarButtonItems enabled:stateCopy];

  rightBarButtonItems = [_navigationItemToUseForToolbarItems rightBarButtonItems];
  [(RCPlaybackViewController *)self _updateBarButtonItemsState:rightBarButtonItems enabled:stateCopy];
}

- (void)_updateBarButtonItemsState:(id)state enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  stateCopy = state;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [stateCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateCopy);
        }

        [*(*(&v10 + 1) + 8 * v9) setEnabled:enabledCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [stateCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_classSpecificLoadView
{
  waveformContainerViewControllers = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [waveformContainerViewControllers setIsPlayback:1];

  overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];
  waveformViewController = [overviewWaveformViewController waveformViewController];
  [waveformViewController setIsPlayback:1];
}

- (void)_reset
{
  v4.receiver = self;
  v4.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v4 _reset];
  view = [(RCPlaybackViewController *)self view];
  [view reset];

  [(RCRecordingViewController *)self setUUID:0];
  [(RCPlaybackViewController *)self _updateToolbarItems];
}

- (void)updateWithRecordingModel:(id)model requireMatchingUUID:(BOOL)d
{
  dCopy = d;
  modelCopy = model;
  v27.receiver = self;
  v27.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v27 updateWithRecordingModel:modelCopy requireMatchingUUID:dCopy];
  if (!dCopy || ([modelCopy UUID], v7 = objc_claimAutoreleasedReturnValue(), -[RCRecordingViewController UUID](self, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    if (modelCopy)
    {
      [(RCPlaybackViewController *)self _setupToolbarWithButtonItemsIfNeeded];
    }

    -[RCPlaybackViewController setIsFavorite:](self, "setIsFavorite:", [modelCopy isFavorite]);
    isFavorite = [modelCopy isFavorite];
    v11 = +[RCRecorderStyleProvider sharedStyleProvider];
    v12 = v11;
    if (isFavorite)
    {
      [v11 favoriteImage];
    }

    else
    {
      [v11 notFavoriteImage];
    }
    v13 = ;
    favoriteButtonItem = [(RCPlaybackViewController *)self favoriteButtonItem];
    [favoriteButtonItem setImage:v13];

    isFavorite2 = [modelCopy isFavorite];
    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (isFavorite2)
    {
      v18 = @"Unfavorite";
    }

    else
    {
      v18 = @"Favorite";
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_100295BB8 table:0];
    favoriteButtonItem2 = [(RCPlaybackViewController *)self favoriteButtonItem];
    [favoriteButtonItem2 setTitle:v19];

    isFavorite3 = [modelCopy isFavorite];
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (isFavorite3)
    {
      v24 = @"AX_REMOVE_FROM_FAVORITES";
    }

    else
    {
      v24 = @"AX_ADD_TO_FAVORITES";
    }

    v25 = [v22 localizedStringForKey:v24 value:&stru_100295BB8 table:0];
    favoriteButtonItem3 = [(RCPlaybackViewController *)self favoriteButtonItem];
    [favoriteButtonItem3 setAccessibilityLabel:v25];

    [(RCPlaybackViewController *)self _updateMoreOptionsMenu];
  }
}

- (void)updateWithRecordingModel:(id)model
{
  modelCopy = model;
  v26.receiver = self;
  v26.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v26 updateWithRecordingModel:modelCopy];
  -[RCPlaybackViewController setIsRecentlyDeleted:](self, "setIsRecentlyDeleted:", [modelCopy recentlyDeleted]);
  -[RCPlaybackViewController setIsFavorite:](self, "setIsFavorite:", [modelCopy isFavorite]);
  uUID = [(RCRecordingViewController *)self UUID];

  view = [(RCPlaybackViewController *)self view];
  [view setUserInteractionEnabled:uUID != 0];

  isFavorite = [modelCopy isFavorite];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  v9 = v8;
  if (isFavorite)
  {
    [v8 favoriteImage];
  }

  else
  {
    [v8 notFavoriteImage];
  }
  v10 = ;
  v11 = uUID != 0;
  favoriteButtonItem = [(RCPlaybackViewController *)self favoriteButtonItem];
  [favoriteButtonItem setImage:v10];

  favoriteButtonItem2 = [(RCPlaybackViewController *)self favoriteButtonItem];
  [favoriteButtonItem2 setEnabled:uUID != 0];

  shareButtonItem = [(RCPlaybackViewController *)self shareButtonItem];
  [shareButtonItem setEnabled:uUID != 0];

  moveToFolderButtonItem = [(RCPlaybackViewController *)self moveToFolderButtonItem];
  [moveToFolderButtonItem setEnabled:uUID != 0];

  moreOptionsButtonItem = [(RCPlaybackViewController *)self moreOptionsButtonItem];
  [moreOptionsButtonItem setEnabled:uUID != 0];

  deleteButtonItem = [(RCPlaybackViewController *)self deleteButtonItem];
  [deleteButtonItem setEnabled:uUID != 0];

  eraseButtonItem = [(RCPlaybackViewController *)self eraseButtonItem];
  [eraseButtonItem setEnabled:uUID != 0];

  recoverButtonItem = [(RCPlaybackViewController *)self recoverButtonItem];
  [recoverButtonItem setEnabled:uUID != 0];

  LODWORD(recoverButtonItem) = [modelCopy recentlyDeleted];
  playbackSettingsButtonItem = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
  [playbackSettingsButtonItem setEnabled:v11 & ~recoverButtonItem];

  LODWORD(recoverButtonItem) = [modelCopy recentlyDeleted];
  transcriptionButtonItem = [(RCPlaybackViewController *)self transcriptionButtonItem];
  [transcriptionButtonItem setEnabled:v11 & ~recoverButtonItem];

  v22 = [modelCopy recentlyDeleted] ^ 1;
  if (uUID)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  editButtonItem = [(RCPlaybackViewController *)self editButtonItem];
  [editButtonItem setEnabled:v23];

  if (modelCopy)
  {
    [(RCPlaybackViewController *)self _updateToolbarItems];
  }

  else
  {
    [(RCPlaybackViewController *)self updateContentUnavailableViewState:0];
  }

  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [recordingViewControllerDelegate didUpdateWithRecordingModel:modelCopy];
}

- (void)didUpdateRecordingCenterContentViewState
{
  v5.receiver = self;
  v5.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v5 didUpdateRecordingCenterContentViewState];
  view = [(RCPlaybackViewController *)self view];
  v4 = [view centerContentViewState] == 1;

  [(RCPlaybackViewController *)self _updateTranscriptionButtonTint:v4];
}

- (void)updateWithPlaybackSettings:(id)settings
{
  hasCustomizedPlaybackSettings = [settings hasCustomizedPlaybackSettings];

  [(RCPlaybackViewController *)self _updatePlaybackSettingsButtonTint:hasCustomizedPlaybackSettings];
}

- (id)_navigationItemToUseForToolbarItems
{
  v2 = +[UIApplication sharedApplication];
  delegate = [v2 delegate];

  defaultSceneDelegate = [delegate defaultSceneDelegate];
  rootSplitViewController = [defaultSceneDelegate rootSplitViewController];

  playbackViewNavigationItem = [rootSplitViewController playbackViewNavigationItem];

  return playbackViewNavigationItem;
}

- (void)_updateToolbarItems
{
  if ([(RCPlaybackViewController *)self didSetupToolbarWithButtonItems])
  {
    _navigationItemToUseForToolbarItems = [(RCPlaybackViewController *)self _navigationItemToUseForToolbarItems];
    uUID = [(RCRecordingViewController *)self UUID];

    if (uUID)
    {
      if ([(RCPlaybackViewController *)self isRecentlyDeleted])
      {
        recoverButtonItem = [(RCPlaybackViewController *)self recoverButtonItem];
        v29 = recoverButtonItem;
        v6 = [NSArray arrayWithObjects:&v29 count:1];

        eraseButtonItem = [(RCPlaybackViewController *)self eraseButtonItem];
        v28 = eraseButtonItem;
        allObjects = [NSArray arrayWithObjects:&v28 count:1];
      }

      else
      {
        v9 = +[RCRecorderStyleProvider sharedStyleProvider];
        playbackToolbarHasMoveToFolder = [v9 playbackToolbarHasMoveToFolder];

        shareButtonItem = [(RCPlaybackViewController *)self shareButtonItem];
        v12 = shareButtonItem;
        if (playbackToolbarHasMoveToFolder)
        {
          v27[0] = shareButtonItem;
          favoriteButtonItem = [(RCPlaybackViewController *)self favoriteButtonItem];
          v27[1] = favoriteButtonItem;
          moveToFolderButtonItem = [(RCPlaybackViewController *)self moveToFolderButtonItem];
          v27[2] = moveToFolderButtonItem;
          deleteButtonItem = [(RCPlaybackViewController *)self deleteButtonItem];
          v27[3] = deleteButtonItem;
          v6 = [NSArray arrayWithObjects:v27 count:4];
        }

        else
        {
          v26[0] = shareButtonItem;
          favoriteButtonItem = [(RCPlaybackViewController *)self favoriteButtonItem];
          v26[1] = favoriteButtonItem;
          moveToFolderButtonItem = [(RCPlaybackViewController *)self deleteButtonItem];
          v26[2] = moveToFolderButtonItem;
          v6 = [NSArray arrayWithObjects:v26 count:3];
        }

        playbackSettingsButtonItem = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
        v25 = playbackSettingsButtonItem;
        v17 = [NSArray arrayWithObjects:&v25 count:1];
        eraseButtonItem = [NSMutableArray arrayWithArray:v17];

        v18 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
        LODWORD(v17) = [v18 deviceIsSupported];

        if (v17)
        {
          transcriptionButtonItem = [(RCPlaybackViewController *)self transcriptionButtonItem];
          [eraseButtonItem addObject:transcriptionButtonItem];
        }

        v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
        v24[0] = v20;
        editButtonItem = [(RCPlaybackViewController *)self editButtonItem];
        v24[1] = editButtonItem;
        v22 = [NSArray arrayWithObjects:v24 count:2];
        [eraseButtonItem addObjectsFromArray:v22];

        reverseObjectEnumerator = [eraseButtonItem reverseObjectEnumerator];
        allObjects = [reverseObjectEnumerator allObjects];
      }

      [_navigationItemToUseForToolbarItems setLeftBarButtonItems:v6];
      [_navigationItemToUseForToolbarItems setRightBarButtonItems:allObjects];
    }

    else
    {
      [_navigationItemToUseForToolbarItems setLeftBarButtonItems:0];
      [_navigationItemToUseForToolbarItems setRightBarButtonItems:0];
    }
  }
}

- (void)_updatePlaybackSettingsButtonTint:(BOOL)tint
{
  tintCopy = tint;
  playbackSettingsButtonItem = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
  [playbackSettingsButtonItem setSelected:tintCopy];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v8 shouldUseTintedImageForSelectedUIBarButtonItems])
  {
    if (tintCopy)
    {
      [v8 playbackSettingsImageForNavBarSelectedState];
    }

    else
    {
      [v8 playbackSettingsImage];
    }
    v6 = ;
    playbackSettingsButtonItem2 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
    [playbackSettingsButtonItem2 setImage:v6];
  }
}

- (void)_updateTranscriptionButtonTint:(BOOL)tint
{
  tintCopy = tint;
  transcriptionButtonItem = [(RCPlaybackViewController *)self transcriptionButtonItem];
  [transcriptionButtonItem setSelected:tintCopy];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v8 shouldUseTintedImageForSelectedUIBarButtonItems])
  {
    if (tintCopy)
    {
      [v8 transcriptionImageForNavBarSelectedState];
    }

    else
    {
      [v8 transcriptionImage];
    }
    v6 = ;
    transcriptionButtonItem2 = [(RCPlaybackViewController *)self transcriptionButtonItem];
    [transcriptionButtonItem2 setImage:v6];
  }
}

- (void)_setupToolbarWithButtonItemsIfNeeded
{
  v59 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (![(RCPlaybackViewController *)self didSetupToolbarWithButtonItems])
  {
    favoriteButtonItem = [(RCPlaybackViewController *)self favoriteButtonItem];
    if (!favoriteButtonItem)
    {
      v4 = [UIBarButtonItem alloc];
      notFavoriteImage = [v59 notFavoriteImage];
      favoriteButtonItem = [v4 initWithImage:notFavoriteImage style:0 target:self action:"_toggleFavorite"];

      [favoriteButtonItem setAccessibilityIdentifier:@"PlaybackView/FavoriteButton"];
      [(RCPlaybackViewController *)self setFavoriteButtonItem:favoriteButtonItem];
    }

    shareButtonItem = [(RCPlaybackViewController *)self shareButtonItem];
    if (!shareButtonItem)
    {
      shareButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"_doShare:"];
      [shareButtonItem setAccessibilityIdentifier:@"PlaybackView/ShareButton"];
      [(RCPlaybackViewController *)self setShareButtonItem:shareButtonItem];
    }

    deleteButtonItem = [(RCPlaybackViewController *)self deleteButtonItem];
    if (!deleteButtonItem)
    {
      deleteButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"_doDelete:"];
      [deleteButtonItem setAccessibilityIdentifier:@"PlaybackView/DeleteButton"];
      [(RCPlaybackViewController *)self setDeleteButtonItem:deleteButtonItem];
    }

    v58 = deleteButtonItem;
    recoverButtonItem = [(RCPlaybackViewController *)self recoverButtonItem];
    if (!recoverButtonItem)
    {
      v9 = [UIBarButtonItem alloc];
      +[NSBundle mainBundle];
      v11 = v10 = shareButtonItem;
      v12 = [v11 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
      v13 = [v9 initWithTitle:v12 style:0 target:self action:"_doRecover:"];

      recoverButtonItem = v13;
      shareButtonItem = v10;
      [v13 setAccessibilityIdentifier:@"PlaybackView/RecoverButton"];
      [(RCPlaybackViewController *)self setRecoverButtonItem:v13];
    }

    playbackSettingsButtonItem = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
    if (!playbackSettingsButtonItem)
    {
      v15 = [UIBarButtonItem alloc];
      [v59 playbackSettingsImage];
      v17 = v16 = recoverButtonItem;
      playbackSettingsButtonItem = [v15 initWithImage:v17 style:0 target:self action:"_doDisplayPlaybackSettings:"];

      [playbackSettingsButtonItem setAccessibilityIdentifier:@"PlaybackView/PlaybackSettingsButton"];
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"PLAYBACK_SETTINGS_VIEW_TITLE" value:&stru_100295BB8 table:0];
      [playbackSettingsButtonItem setTitle:v19];

      recoverButtonItem = v16;
      [(RCPlaybackViewController *)self setPlaybackSettingsButtonItem:playbackSettingsButtonItem];
    }

    transcriptionButtonItem = [(RCPlaybackViewController *)self transcriptionButtonItem];
    if (!transcriptionButtonItem)
    {
      v21 = [UIBarButtonItem alloc];
      [v59 transcriptionImage];
      v23 = v22 = playbackSettingsButtonItem;
      transcriptionButtonItem = [v21 initWithImage:v23 style:0 target:self action:"_doShowTranscriptionView:"];

      [transcriptionButtonItem setAccessibilityIdentifier:@"PlaybackView/TranscriptionButton"];
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"Transcription" value:&stru_100295BB8 table:0];
      [transcriptionButtonItem setTitle:v25];

      playbackSettingsButtonItem = v22;
      [(RCPlaybackViewController *)self setTranscriptionButtonItem:transcriptionButtonItem];
    }

    v57 = transcriptionButtonItem;
    editButtonItem = [(RCPlaybackViewController *)self editButtonItem];
    if (!editButtonItem)
    {
      v27 = [UIBarButtonItem alloc];
      editButtonImage = [v59 editButtonImage];
      editButtonItem = [v27 initWithImage:editButtonImage style:0 target:self action:"_doEdit"];

      [editButtonItem setAccessibilityIdentifier:@"PlaybackView/EditRecordingButton"];
      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"Edit Recording" value:&stru_100295BB8 table:0];
      [editButtonItem setTitle:v30];

      [(RCPlaybackViewController *)self setEditButtonItem:editButtonItem];
    }

    v56 = editButtonItem;
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"AX_EDIT" value:&stru_100295BB8 table:0];
    editButtonItem2 = [(RCPlaybackViewController *)self editButtonItem];
    [editButtonItem2 setAccessibilityLabel:v32];

    eraseButtonItem = [(RCPlaybackViewController *)self eraseButtonItem];
    if (!eraseButtonItem)
    {
      v35 = [UIBarButtonItem alloc];
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
      eraseButtonItem = [v35 initWithTitle:v37 style:0 target:self action:"_doErase:"];

      [eraseButtonItem setAccessibilityIdentifier:@"PlaybackView/EraseButton"];
      [(RCPlaybackViewController *)self setEraseButtonItem:eraseButtonItem];
    }

    v55 = eraseButtonItem;
    moveToFolderButtonItem = [(RCPlaybackViewController *)self moveToFolderButtonItem];
    if (!moveToFolderButtonItem)
    {
      v39 = [UIBarButtonItem alloc];
      moveToFolderImage = [v59 moveToFolderImage];
      moveToFolderButtonItem = [v39 initWithImage:moveToFolderImage style:0 target:self action:"_doMoveToFolder:"];

      [moveToFolderButtonItem setAccessibilityIdentifier:@"PlaybackView/MoveToFolderButton"];
      v41 = +[NSBundle mainBundle];
      v42 = [v41 localizedStringForKey:@"Move to Folder" value:&stru_100295BB8 table:0];
      [moveToFolderButtonItem setTitle:v42];

      [(RCPlaybackViewController *)self setMoveToFolderButtonItem:moveToFolderButtonItem];
    }

    moreOptionsButtonItem = [(RCPlaybackViewController *)self moreOptionsButtonItem];
    if (!moreOptionsButtonItem)
    {
      v44 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
      deviceIsSupported = [v44 deviceIsSupported];

      v46 = [(RCPlaybackViewController *)self _createMoreOptionsMenu:0 shouldShowTranscriptionOption:deviceIsSupported];
      v47 = [UIImage systemImageNamed:@"ellipsis.circle"];
      v48 = playbackSettingsButtonItem;
      v49 = recoverButtonItem;
      v50 = shareButtonItem;
      v51 = favoriteButtonItem;
      v52 = [[UIBarButtonItem alloc] initWithImage:v47 menu:v46];
      [(RCPlaybackViewController *)self setMoreOptionsButtonItem:v52];

      favoriteButtonItem = v51;
      shareButtonItem = v50;
      recoverButtonItem = v49;
      playbackSettingsButtonItem = v48;
    }

    uUID = [(RCRecordingViewController *)self UUID];
    v54 = uUID != 0;

    [shareButtonItem setEnabled:v54];
    [v58 setEnabled:v54];
    [v56 setEnabled:v54];
    [(RCPlaybackViewController *)self setDidSetupToolbarWithButtonItems:1];
    [(RCPlaybackViewController *)self _updateToolbarItems];
  }
}

- (void)_updateMoreOptionsMenu
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  deviceIsSupported = [v3 deviceIsSupported];

  v6 = [(RCPlaybackViewController *)self _createMoreOptionsMenu:[(RCPlaybackViewController *)self isFavorite] shouldShowTranscriptionOption:deviceIsSupported];
  moreOptionsButtonItem = [(RCPlaybackViewController *)self moreOptionsButtonItem];
  [moreOptionsButtonItem setMenu:v6];
}

- (id)_createMoreOptionsMenu:(BOOL)menu shouldShowTranscriptionOption:(BOOL)option
{
  optionCopy = option;
  menuCopy = menu;
  objc_initWeak(&location, self);
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  shareToolbarMenuImage = [v5 shareToolbarMenuImage];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SHARE_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100056880;
  v30[3] = &unk_10028AE08;
  objc_copyWeak(&v31, &location);
  v25 = [UIAction actionWithTitle:v7 image:shareToolbarMenuImage identifier:0 handler:v30];

  v8 = +[NSBundle mainBundle];
  if (menuCopy)
  {
    v23 = [v8 localizedStringForKey:@"REMOVE_FROM_FAVORITES" value:&stru_100295BB8 table:0];

    [v5 favoriteImage];
  }

  else
  {
    v23 = [v8 localizedStringForKey:@"ADD_TO_FAVORITES" value:&stru_100295BB8 table:0];

    [v5 notFavoriteImage];
  }
  v22 = ;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000568F4;
  v28[3] = &unk_10028AE08;
  objc_copyWeak(&v29, &location);
  v9 = [UIAction actionWithTitle:v23 image:v22 identifier:0 handler:v28];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"MOVE_TO_FOLDER" value:&stru_100295BB8 table:0];
  moveToFolderImage = [v5 moveToFolderImage];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100056934;
  v26[3] = &unk_10028AE08;
  objc_copyWeak(&v27, &location);
  v13 = [UIAction actionWithTitle:v11 image:moveToFolderImage identifier:0 handler:v26];

  v34[0] = v25;
  v34[1] = v9;
  v34[2] = v13;
  v14 = [NSArray arrayWithObjects:v34 count:3];
  v15 = [UIMenu menuWithChildren:v14];

  if (optionCopy)
  {
    deferredTranscriptMenuElement = [(RCPlaybackViewController *)self deferredTranscriptMenuElement];
    v33[0] = v25;
    v33[1] = v9;
    v33[2] = v13;
    v33[3] = deferredTranscriptMenuElement;
    v17 = [NSArray arrayWithObjects:v33 count:4];
    v18 = [UIMenu menuWithChildren:v17];

    v15 = v18;
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  return v15;
}

- (id)showTranscriptMenuElement
{
  view = [(RCPlaybackViewController *)self view];
  v4 = [view centerContentViewState] == 1;

  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = @"SHOW_WAVEFORM";
  }

  else
  {
    v7 = @"VIEW_TRANSCRIPT";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_100295BB8 table:0];

  v9 = +[RCRecorderStyleProvider sharedStyleProvider];
  v10 = v9;
  if (v4)
  {
    transcriptionImage = 0;
  }

  else
  {
    transcriptionImage = [v9 transcriptionImage];
  }

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100056BEC;
  v17[3] = &unk_10028AE08;
  objc_copyWeak(&v18, &location);
  v12 = [UIAction actionWithTitle:v8 image:transcriptionImage identifier:0 handler:v17];
  v21 = v12;
  v13 = [NSArray arrayWithObjects:&v21 count:1];
  v14 = [UIMenu menuWithTitle:&stru_100295BB8 image:transcriptionImage identifier:0 options:1 children:v13];

  v20 = v14;
  v15 = [NSArray arrayWithObjects:&v20 count:1];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

  return v15;
}

- (id)deferredTranscriptMenuElement
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100056D24;
  v4[3] = &unk_10028AE30;
  objc_copyWeak(&v5, &location);
  v2 = [UIDeferredMenuElement elementWithUncachedProvider:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (BOOL)_shouldCollapseToolbarButtons
{
  view = [(RCPlaybackViewController *)self view];
  window = [view window];

  result = 0;
  if (window)
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    view2 = [(RCPlaybackViewController *)self view];
    [view2 frame];
    v8 = v7;
    [v5 playbackViewWidthToCollapseToolbarButtons];
    v10 = v9;

    if (v8 <= v10)
    {
      return 1;
    }
  }

  return result;
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  traitCollection = [(RCPlaybackViewController *)self traitCollection];
  [v6 setCurrentUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  traitCollection2 = [(RCPlaybackViewController *)self traitCollection];
  userInterfaceStyle2 = [traitCollection2 userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"RCTraitCollectionUserInterfaceStyleChangedNotification" object:0];
  }
}

- (void)_toggleFavorite
{
  uUID = [(RCRecordingViewController *)self UUID];

  if (uUID)
  {
    recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    uUID2 = [(RCRecordingViewController *)self UUID];
    [recordingViewControllerDelegate toggleFavoriteForUUID:uUID2];
  }
}

- (void)_doShare:(id)share
{
  shareCopy = share;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:28 atPosition:uUID forUUID:self sourceController:shareCopy source:0.0];
}

- (void)_doDelete:(id)delete
{
  deleteCopy = delete;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:14 atPosition:uUID forUUID:self sourceController:deleteCopy source:0.0];
}

- (void)_doRecover:(id)recover
{
  recoverCopy = recover;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:19 atPosition:uUID forUUID:self sourceController:recoverCopy source:0.0];
}

- (void)_doErase:(id)erase
{
  eraseCopy = erase;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:16 atPosition:uUID forUUID:self sourceController:eraseCopy source:0.0];
}

- (void)_doDisplayPlaybackSettings:(id)settings
{
  settingsCopy = settings;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:41 atPosition:uUID forUUID:self sourceController:settingsCopy source:0.0];
}

- (void)_doShowTranscriptionView:(id)view
{
  viewCopy = view;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:42 atPosition:uUID forUUID:self sourceController:viewCopy source:0.0];
}

- (void)_doEdit
{
  [(RCRecordingViewController *)self stopScrolling];
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:22 atPosition:uUID forUUID:0 sourceController:0 source:0.0];
}

- (void)_doMoveToFolder:(id)folder
{
  folderCopy = folder;
  recordingViewControllerDelegate = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  uUID = [(RCRecordingViewController *)self UUID];
  [recordingViewControllerDelegate performAction:40 atPosition:uUID forUUID:self sourceController:folderCopy source:0.0];
}

- (void)enableWaveformScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  waveformContainerViewControllers = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [waveformContainerViewControllers enableWaveformScrolling:scrollingCopy];
}

- (id)createNewWaveformViewControllerWithDataSource:(id)source isOverview:(BOOL)overview isCompact:(BOOL)compact waveformOnly:(BOOL)only
{
  v11.receiver = self;
  v11.super_class = RCPlaybackViewController;
  v7 = [(RCRecordingViewController *)&v11 createNewWaveformViewControllerWithDataSource:source isOverview:overview isCompact:compact waveformOnly:only];
  waveformViewController = [v7 waveformViewController];
  [waveformViewController setIsPlayback:1];

  view = [(RCPlaybackViewController *)self view];
  [view setDisplayStyle:3];

  return v7;
}

- (void)enablePlaybackWithComposition:(id)composition displayModel:(id)model timeController:(id)controller
{
  modelCopy = model;
  compositionCopy = composition;
  [(RCRecordingViewController *)self setActiveTimeController:controller];
  [(RCRecordingViewController *)self reloadWaveformsFromComposition:compositionCopy];

  [(RCPlaybackViewController *)self updateWithRecordingModel:modelCopy];
  waveformContainerViewControllers = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [waveformContainerViewControllers setIsPlayback:1];

  waveformContainerViewControllers2 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [waveformContainerViewControllers2 resetZoomScale];

  overviewWaveformViewController = [(RCRecordingViewController *)self overviewWaveformViewController];
  waveformViewController = [overviewWaveformViewController waveformViewController];
  [waveformViewController setIsPlayback:1];

  view = [(RCPlaybackViewController *)self view];
  [view setRecordingViewState:2 * (modelCopy != 0)];
  [(RCRecordingViewController *)self _beginFileTranscriptionIfNeeded];
}

- (void)updateContentUnavailableViewState:(int64_t)state
{
  [(RCPlaybackViewController *)self setContentUnavailableState:state];

  [(RCPlaybackViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)state
{
  contentUnavailableState = [(RCPlaybackViewController *)self contentUnavailableState];
  if (contentUnavailableState == -1)
  {
    v10 = 0;
  }

  else
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v12 = +[UIContentUnavailableConfiguration emptyConfiguration];
    playbackContentUnavailableViewBackgroundColor = [v5 playbackContentUnavailableViewBackgroundColor];
    background = [v12 background];
    [background setBackgroundColor:playbackContentUnavailableViewBackgroundColor];

    if ([(RCPlaybackViewController *)self contentUnavailableState]== 1)
    {
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"PLAYBACK_CONTENT_NO_SELECTION_TITLE" value:&stru_100295BB8 table:0];
      [v12 setText:v9];
    }

    v10 = v12;
  }

  v13 = v10;
  [(RCPlaybackViewController *)self setContentUnavailableConfiguration:v10];
  view = [(RCPlaybackViewController *)self view];
  [view updateUIForContentUnavailable:contentUnavailableState != -1];
}

- (void)clear
{
  if ([(RCPlaybackViewController *)self isViewLoaded])
  {

    [(RCPlaybackViewController *)self _reset];
  }
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)change
{
  [(RCRecordingViewController *)self _setupTranscriptViewDependenciesIfNeeded];
  [(RCPlaybackViewController *)self _updateMoreOptionsMenu];

  [(RCPlaybackViewController *)self _updateToolbarItems];
}

- (UISplitViewController)parentSplitViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentSplitViewController);

  return WeakRetained;
}

@end
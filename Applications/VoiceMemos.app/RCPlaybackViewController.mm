@interface RCPlaybackViewController
- (BOOL)_shouldCollapseToolbarButtons;
- (UISplitViewController)parentSplitViewController;
- (id)_createMoreOptionsMenu:(BOOL)a3 shouldShowTranscriptionOption:(BOOL)a4;
- (id)_navigationItemToUseForToolbarItems;
- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 waveformOnly:(BOOL)a6;
- (id)createView;
- (id)deferredTranscriptMenuElement;
- (id)showTranscriptMenuElement;
- (void)_classSpecificLoadView;
- (void)_doDelete:(id)a3;
- (void)_doDisplayPlaybackSettings:(id)a3;
- (void)_doEdit;
- (void)_doErase:(id)a3;
- (void)_doMoveToFolder:(id)a3;
- (void)_doRecover:(id)a3;
- (void)_doShare:(id)a3;
- (void)_doShowTranscriptionView:(id)a3;
- (void)_reset;
- (void)_setupToolbarWithButtonItemsIfNeeded;
- (void)_toggleFavorite;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateBarButtonItemsState:(id)a3 enabled:(BOOL)a4;
- (void)_updateMoreOptionsMenu;
- (void)_updatePlaybackSettingsButtonTint:(BOOL)a3;
- (void)_updateToolbarItems;
- (void)_updateTranscriptionButtonTint:(BOOL)a3;
- (void)clear;
- (void)deviceTranscriptionSupportDidChange:(BOOL)a3;
- (void)didUpdateRecordingCenterContentViewState;
- (void)enablePlaybackWithComposition:(id)a3 displayModel:(id)a4 timeController:(id)a5;
- (void)enableWaveformScrolling:(BOOL)a3;
- (void)updateActionButtonState:(BOOL)a3;
- (void)updateContentUnavailableConfigurationUsingState:(id)a3;
- (void)updateContentUnavailableViewState:(int64_t)a3;
- (void)updateWithPlaybackSettings:(id)a3;
- (void)updateWithRecordingModel:(id)a3;
- (void)updateWithRecordingModel:(id)a3 requireMatchingUUID:(BOOL)a4;
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

  v6 = [(RCPlaybackViewController *)self view];
  [v6 setAccessibilityIdentifier:@"PlaybackView"];
}

- (id)createView
{
  v2 = [(RCRecordingView *)[RCPlaybackView alloc] initWithRecordButtonRepository:0 interactionHandler:0];

  return v2;
}

- (void)updateActionButtonState:(BOOL)a3
{
  v3 = a3;
  v7 = [(RCPlaybackViewController *)self _navigationItemToUseForToolbarItems];
  v5 = [v7 leftBarButtonItems];
  [(RCPlaybackViewController *)self _updateBarButtonItemsState:v5 enabled:v3];

  v6 = [v7 rightBarButtonItems];
  [(RCPlaybackViewController *)self _updateBarButtonItemsState:v6 enabled:v3];
}

- (void)_updateBarButtonItemsState:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
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

        [*(*(&v10 + 1) + 8 * v9) setEnabled:v4];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_classSpecificLoadView
{
  v3 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [v3 setIsPlayback:1];

  v5 = [(RCRecordingViewController *)self overviewWaveformViewController];
  v4 = [v5 waveformViewController];
  [v4 setIsPlayback:1];
}

- (void)_reset
{
  v4.receiver = self;
  v4.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v4 _reset];
  v3 = [(RCPlaybackViewController *)self view];
  [v3 reset];

  [(RCRecordingViewController *)self setUUID:0];
  [(RCPlaybackViewController *)self _updateToolbarItems];
}

- (void)updateWithRecordingModel:(id)a3 requireMatchingUUID:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v27.receiver = self;
  v27.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v27 updateWithRecordingModel:v6 requireMatchingUUID:v4];
  if (!v4 || ([v6 UUID], v7 = objc_claimAutoreleasedReturnValue(), -[RCRecordingViewController UUID](self, "UUID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    if (v6)
    {
      [(RCPlaybackViewController *)self _setupToolbarWithButtonItemsIfNeeded];
    }

    -[RCPlaybackViewController setIsFavorite:](self, "setIsFavorite:", [v6 isFavorite]);
    v10 = [v6 isFavorite];
    v11 = +[RCRecorderStyleProvider sharedStyleProvider];
    v12 = v11;
    if (v10)
    {
      [v11 favoriteImage];
    }

    else
    {
      [v11 notFavoriteImage];
    }
    v13 = ;
    v14 = [(RCPlaybackViewController *)self favoriteButtonItem];
    [v14 setImage:v13];

    v15 = [v6 isFavorite];
    v16 = +[NSBundle mainBundle];
    v17 = v16;
    if (v15)
    {
      v18 = @"Unfavorite";
    }

    else
    {
      v18 = @"Favorite";
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_100295BB8 table:0];
    v20 = [(RCPlaybackViewController *)self favoriteButtonItem];
    [v20 setTitle:v19];

    v21 = [v6 isFavorite];
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (v21)
    {
      v24 = @"AX_REMOVE_FROM_FAVORITES";
    }

    else
    {
      v24 = @"AX_ADD_TO_FAVORITES";
    }

    v25 = [v22 localizedStringForKey:v24 value:&stru_100295BB8 table:0];
    v26 = [(RCPlaybackViewController *)self favoriteButtonItem];
    [v26 setAccessibilityLabel:v25];

    [(RCPlaybackViewController *)self _updateMoreOptionsMenu];
  }
}

- (void)updateWithRecordingModel:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v26 updateWithRecordingModel:v4];
  -[RCPlaybackViewController setIsRecentlyDeleted:](self, "setIsRecentlyDeleted:", [v4 recentlyDeleted]);
  -[RCPlaybackViewController setIsFavorite:](self, "setIsFavorite:", [v4 isFavorite]);
  v5 = [(RCRecordingViewController *)self UUID];

  v6 = [(RCPlaybackViewController *)self view];
  [v6 setUserInteractionEnabled:v5 != 0];

  v7 = [v4 isFavorite];
  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  v9 = v8;
  if (v7)
  {
    [v8 favoriteImage];
  }

  else
  {
    [v8 notFavoriteImage];
  }
  v10 = ;
  v11 = v5 != 0;
  v12 = [(RCPlaybackViewController *)self favoriteButtonItem];
  [v12 setImage:v10];

  v13 = [(RCPlaybackViewController *)self favoriteButtonItem];
  [v13 setEnabled:v5 != 0];

  v14 = [(RCPlaybackViewController *)self shareButtonItem];
  [v14 setEnabled:v5 != 0];

  v15 = [(RCPlaybackViewController *)self moveToFolderButtonItem];
  [v15 setEnabled:v5 != 0];

  v16 = [(RCPlaybackViewController *)self moreOptionsButtonItem];
  [v16 setEnabled:v5 != 0];

  v17 = [(RCPlaybackViewController *)self deleteButtonItem];
  [v17 setEnabled:v5 != 0];

  v18 = [(RCPlaybackViewController *)self eraseButtonItem];
  [v18 setEnabled:v5 != 0];

  v19 = [(RCPlaybackViewController *)self recoverButtonItem];
  [v19 setEnabled:v5 != 0];

  LODWORD(v19) = [v4 recentlyDeleted];
  v20 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
  [v20 setEnabled:v11 & ~v19];

  LODWORD(v19) = [v4 recentlyDeleted];
  v21 = [(RCPlaybackViewController *)self transcriptionButtonItem];
  [v21 setEnabled:v11 & ~v19];

  v22 = [v4 recentlyDeleted] ^ 1;
  if (v5)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(RCPlaybackViewController *)self editButtonItem];
  [v24 setEnabled:v23];

  if (v4)
  {
    [(RCPlaybackViewController *)self _updateToolbarItems];
  }

  else
  {
    [(RCPlaybackViewController *)self updateContentUnavailableViewState:0];
  }

  v25 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  [v25 didUpdateWithRecordingModel:v4];
}

- (void)didUpdateRecordingCenterContentViewState
{
  v5.receiver = self;
  v5.super_class = RCPlaybackViewController;
  [(RCRecordingViewController *)&v5 didUpdateRecordingCenterContentViewState];
  v3 = [(RCPlaybackViewController *)self view];
  v4 = [v3 centerContentViewState] == 1;

  [(RCPlaybackViewController *)self _updateTranscriptionButtonTint:v4];
}

- (void)updateWithPlaybackSettings:(id)a3
{
  v4 = [a3 hasCustomizedPlaybackSettings];

  [(RCPlaybackViewController *)self _updatePlaybackSettingsButtonTint:v4];
}

- (id)_navigationItemToUseForToolbarItems
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];

  v4 = [v3 defaultSceneDelegate];
  v5 = [v4 rootSplitViewController];

  v6 = [v5 playbackViewNavigationItem];

  return v6;
}

- (void)_updateToolbarItems
{
  if ([(RCPlaybackViewController *)self didSetupToolbarWithButtonItems])
  {
    v3 = [(RCPlaybackViewController *)self _navigationItemToUseForToolbarItems];
    v4 = [(RCRecordingViewController *)self UUID];

    if (v4)
    {
      if ([(RCPlaybackViewController *)self isRecentlyDeleted])
      {
        v5 = [(RCPlaybackViewController *)self recoverButtonItem];
        v29 = v5;
        v6 = [NSArray arrayWithObjects:&v29 count:1];

        v7 = [(RCPlaybackViewController *)self eraseButtonItem];
        v28 = v7;
        v8 = [NSArray arrayWithObjects:&v28 count:1];
      }

      else
      {
        v9 = +[RCRecorderStyleProvider sharedStyleProvider];
        v10 = [v9 playbackToolbarHasMoveToFolder];

        v11 = [(RCPlaybackViewController *)self shareButtonItem];
        v12 = v11;
        if (v10)
        {
          v27[0] = v11;
          v13 = [(RCPlaybackViewController *)self favoriteButtonItem];
          v27[1] = v13;
          v14 = [(RCPlaybackViewController *)self moveToFolderButtonItem];
          v27[2] = v14;
          v15 = [(RCPlaybackViewController *)self deleteButtonItem];
          v27[3] = v15;
          v6 = [NSArray arrayWithObjects:v27 count:4];
        }

        else
        {
          v26[0] = v11;
          v13 = [(RCPlaybackViewController *)self favoriteButtonItem];
          v26[1] = v13;
          v14 = [(RCPlaybackViewController *)self deleteButtonItem];
          v26[2] = v14;
          v6 = [NSArray arrayWithObjects:v26 count:3];
        }

        v16 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
        v25 = v16;
        v17 = [NSArray arrayWithObjects:&v25 count:1];
        v7 = [NSMutableArray arrayWithArray:v17];

        v18 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
        LODWORD(v17) = [v18 deviceIsSupported];

        if (v17)
        {
          v19 = [(RCPlaybackViewController *)self transcriptionButtonItem];
          [v7 addObject:v19];
        }

        v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
        v24[0] = v20;
        v21 = [(RCPlaybackViewController *)self editButtonItem];
        v24[1] = v21;
        v22 = [NSArray arrayWithObjects:v24 count:2];
        [v7 addObjectsFromArray:v22];

        v23 = [v7 reverseObjectEnumerator];
        v8 = [v23 allObjects];
      }

      [v3 setLeftBarButtonItems:v6];
      [v3 setRightBarButtonItems:v8];
    }

    else
    {
      [v3 setLeftBarButtonItems:0];
      [v3 setRightBarButtonItems:0];
    }
  }
}

- (void)_updatePlaybackSettingsButtonTint:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
  [v5 setSelected:v3];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v8 shouldUseTintedImageForSelectedUIBarButtonItems])
  {
    if (v3)
    {
      [v8 playbackSettingsImageForNavBarSelectedState];
    }

    else
    {
      [v8 playbackSettingsImage];
    }
    v6 = ;
    v7 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
    [v7 setImage:v6];
  }
}

- (void)_updateTranscriptionButtonTint:(BOOL)a3
{
  v3 = a3;
  v5 = [(RCPlaybackViewController *)self transcriptionButtonItem];
  [v5 setSelected:v3];

  v8 = +[RCRecorderStyleProvider sharedStyleProvider];
  if ([v8 shouldUseTintedImageForSelectedUIBarButtonItems])
  {
    if (v3)
    {
      [v8 transcriptionImageForNavBarSelectedState];
    }

    else
    {
      [v8 transcriptionImage];
    }
    v6 = ;
    v7 = [(RCPlaybackViewController *)self transcriptionButtonItem];
    [v7 setImage:v6];
  }
}

- (void)_setupToolbarWithButtonItemsIfNeeded
{
  v59 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (![(RCPlaybackViewController *)self didSetupToolbarWithButtonItems])
  {
    v3 = [(RCPlaybackViewController *)self favoriteButtonItem];
    if (!v3)
    {
      v4 = [UIBarButtonItem alloc];
      v5 = [v59 notFavoriteImage];
      v3 = [v4 initWithImage:v5 style:0 target:self action:"_toggleFavorite"];

      [v3 setAccessibilityIdentifier:@"PlaybackView/FavoriteButton"];
      [(RCPlaybackViewController *)self setFavoriteButtonItem:v3];
    }

    v6 = [(RCPlaybackViewController *)self shareButtonItem];
    if (!v6)
    {
      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"_doShare:"];
      [v6 setAccessibilityIdentifier:@"PlaybackView/ShareButton"];
      [(RCPlaybackViewController *)self setShareButtonItem:v6];
    }

    v7 = [(RCPlaybackViewController *)self deleteButtonItem];
    if (!v7)
    {
      v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"_doDelete:"];
      [v7 setAccessibilityIdentifier:@"PlaybackView/DeleteButton"];
      [(RCPlaybackViewController *)self setDeleteButtonItem:v7];
    }

    v58 = v7;
    v8 = [(RCPlaybackViewController *)self recoverButtonItem];
    if (!v8)
    {
      v9 = [UIBarButtonItem alloc];
      +[NSBundle mainBundle];
      v11 = v10 = v6;
      v12 = [v11 localizedStringForKey:@"RECOVER" value:&stru_100295BB8 table:0];
      v13 = [v9 initWithTitle:v12 style:0 target:self action:"_doRecover:"];

      v8 = v13;
      v6 = v10;
      [v13 setAccessibilityIdentifier:@"PlaybackView/RecoverButton"];
      [(RCPlaybackViewController *)self setRecoverButtonItem:v13];
    }

    v14 = [(RCPlaybackViewController *)self playbackSettingsButtonItem];
    if (!v14)
    {
      v15 = [UIBarButtonItem alloc];
      [v59 playbackSettingsImage];
      v17 = v16 = v8;
      v14 = [v15 initWithImage:v17 style:0 target:self action:"_doDisplayPlaybackSettings:"];

      [v14 setAccessibilityIdentifier:@"PlaybackView/PlaybackSettingsButton"];
      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"PLAYBACK_SETTINGS_VIEW_TITLE" value:&stru_100295BB8 table:0];
      [v14 setTitle:v19];

      v8 = v16;
      [(RCPlaybackViewController *)self setPlaybackSettingsButtonItem:v14];
    }

    v20 = [(RCPlaybackViewController *)self transcriptionButtonItem];
    if (!v20)
    {
      v21 = [UIBarButtonItem alloc];
      [v59 transcriptionImage];
      v23 = v22 = v14;
      v20 = [v21 initWithImage:v23 style:0 target:self action:"_doShowTranscriptionView:"];

      [v20 setAccessibilityIdentifier:@"PlaybackView/TranscriptionButton"];
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"Transcription" value:&stru_100295BB8 table:0];
      [v20 setTitle:v25];

      v14 = v22;
      [(RCPlaybackViewController *)self setTranscriptionButtonItem:v20];
    }

    v57 = v20;
    v26 = [(RCPlaybackViewController *)self editButtonItem];
    if (!v26)
    {
      v27 = [UIBarButtonItem alloc];
      v28 = [v59 editButtonImage];
      v26 = [v27 initWithImage:v28 style:0 target:self action:"_doEdit"];

      [v26 setAccessibilityIdentifier:@"PlaybackView/EditRecordingButton"];
      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"Edit Recording" value:&stru_100295BB8 table:0];
      [v26 setTitle:v30];

      [(RCPlaybackViewController *)self setEditButtonItem:v26];
    }

    v56 = v26;
    v31 = +[NSBundle mainBundle];
    v32 = [v31 localizedStringForKey:@"AX_EDIT" value:&stru_100295BB8 table:0];
    v33 = [(RCPlaybackViewController *)self editButtonItem];
    [v33 setAccessibilityLabel:v32];

    v34 = [(RCPlaybackViewController *)self eraseButtonItem];
    if (!v34)
    {
      v35 = [UIBarButtonItem alloc];
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"DELETE" value:&stru_100295BB8 table:0];
      v34 = [v35 initWithTitle:v37 style:0 target:self action:"_doErase:"];

      [v34 setAccessibilityIdentifier:@"PlaybackView/EraseButton"];
      [(RCPlaybackViewController *)self setEraseButtonItem:v34];
    }

    v55 = v34;
    v38 = [(RCPlaybackViewController *)self moveToFolderButtonItem];
    if (!v38)
    {
      v39 = [UIBarButtonItem alloc];
      v40 = [v59 moveToFolderImage];
      v38 = [v39 initWithImage:v40 style:0 target:self action:"_doMoveToFolder:"];

      [v38 setAccessibilityIdentifier:@"PlaybackView/MoveToFolderButton"];
      v41 = +[NSBundle mainBundle];
      v42 = [v41 localizedStringForKey:@"Move to Folder" value:&stru_100295BB8 table:0];
      [v38 setTitle:v42];

      [(RCPlaybackViewController *)self setMoveToFolderButtonItem:v38];
    }

    v43 = [(RCPlaybackViewController *)self moreOptionsButtonItem];
    if (!v43)
    {
      v44 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
      v45 = [v44 deviceIsSupported];

      v46 = [(RCPlaybackViewController *)self _createMoreOptionsMenu:0 shouldShowTranscriptionOption:v45];
      v47 = [UIImage systemImageNamed:@"ellipsis.circle"];
      v48 = v14;
      v49 = v8;
      v50 = v6;
      v51 = v3;
      v52 = [[UIBarButtonItem alloc] initWithImage:v47 menu:v46];
      [(RCPlaybackViewController *)self setMoreOptionsButtonItem:v52];

      v3 = v51;
      v6 = v50;
      v8 = v49;
      v14 = v48;
    }

    v53 = [(RCRecordingViewController *)self UUID];
    v54 = v53 != 0;

    [v6 setEnabled:v54];
    [v58 setEnabled:v54];
    [v56 setEnabled:v54];
    [(RCPlaybackViewController *)self setDidSetupToolbarWithButtonItems:1];
    [(RCPlaybackViewController *)self _updateToolbarItems];
  }
}

- (void)_updateMoreOptionsMenu
{
  v3 = +[_TtC10VoiceMemos33TranscriptionAvailabilityProvider shared];
  v4 = [v3 deviceIsSupported];

  v6 = [(RCPlaybackViewController *)self _createMoreOptionsMenu:[(RCPlaybackViewController *)self isFavorite] shouldShowTranscriptionOption:v4];
  v5 = [(RCPlaybackViewController *)self moreOptionsButtonItem];
  [v5 setMenu:v6];
}

- (id)_createMoreOptionsMenu:(BOOL)a3 shouldShowTranscriptionOption:(BOOL)a4
{
  v21 = a4;
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  v24 = [v5 shareToolbarMenuImage];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"SHARE_CURRENT_RECORDING_MENU_ITEM" value:&stru_100295BB8 table:0];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100056880;
  v30[3] = &unk_10028AE08;
  objc_copyWeak(&v31, &location);
  v25 = [UIAction actionWithTitle:v7 image:v24 identifier:0 handler:v30];

  v8 = +[NSBundle mainBundle];
  if (v4)
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
  v12 = [v5 moveToFolderImage];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100056934;
  v26[3] = &unk_10028AE08;
  objc_copyWeak(&v27, &location);
  v13 = [UIAction actionWithTitle:v11 image:v12 identifier:0 handler:v26];

  v34[0] = v25;
  v34[1] = v9;
  v34[2] = v13;
  v14 = [NSArray arrayWithObjects:v34 count:3];
  v15 = [UIMenu menuWithChildren:v14];

  if (v21)
  {
    v16 = [(RCPlaybackViewController *)self deferredTranscriptMenuElement];
    v33[0] = v25;
    v33[1] = v9;
    v33[2] = v13;
    v33[3] = v16;
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
  v3 = [(RCPlaybackViewController *)self view];
  v4 = [v3 centerContentViewState] == 1;

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
    v11 = 0;
  }

  else
  {
    v11 = [v9 transcriptionImage];
  }

  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100056BEC;
  v17[3] = &unk_10028AE08;
  objc_copyWeak(&v18, &location);
  v12 = [UIAction actionWithTitle:v8 image:v11 identifier:0 handler:v17];
  v21 = v12;
  v13 = [NSArray arrayWithObjects:&v21 count:1];
  v14 = [UIMenu menuWithTitle:&stru_100295BB8 image:v11 identifier:0 options:1 children:v13];

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
  v3 = [(RCPlaybackViewController *)self view];
  v4 = [v3 window];

  result = 0;
  if (v4)
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = [(RCPlaybackViewController *)self view];
    [v6 frame];
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

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = a4;
  v6 = +[RCRecorderStyleProvider sharedStyleProvider];
  v7 = [(RCPlaybackViewController *)self traitCollection];
  [v6 setCurrentUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];

  v8 = [v5 userInterfaceStyle];
  v9 = [(RCPlaybackViewController *)self traitCollection];
  v10 = [v9 userInterfaceStyle];

  if (v8 != v10)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"RCTraitCollectionUserInterfaceStyleChangedNotification" object:0];
  }
}

- (void)_toggleFavorite
{
  v3 = [(RCRecordingViewController *)self UUID];

  if (v3)
  {
    v5 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
    v4 = [(RCRecordingViewController *)self UUID];
    [v5 toggleFavoriteForUUID:v4];
  }
}

- (void)_doShare:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:28 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doDelete:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:14 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doRecover:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:19 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doErase:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:16 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doDisplayPlaybackSettings:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:41 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doShowTranscriptionView:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:42 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)_doEdit
{
  [(RCRecordingViewController *)self stopScrolling];
  v4 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v3 = [(RCRecordingViewController *)self UUID];
  [v4 performAction:22 atPosition:v3 forUUID:0 sourceController:0 source:0.0];
}

- (void)_doMoveToFolder:(id)a3
{
  v4 = a3;
  v6 = [(RCRecordingViewController *)self recordingViewControllerDelegate];
  v5 = [(RCRecordingViewController *)self UUID];
  [v6 performAction:40 atPosition:v5 forUUID:self sourceController:v4 source:0.0];
}

- (void)enableWaveformScrolling:(BOOL)a3
{
  v3 = a3;
  v4 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [v4 enableWaveformScrolling:v3];
}

- (id)createNewWaveformViewControllerWithDataSource:(id)a3 isOverview:(BOOL)a4 isCompact:(BOOL)a5 waveformOnly:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = RCPlaybackViewController;
  v7 = [(RCRecordingViewController *)&v11 createNewWaveformViewControllerWithDataSource:a3 isOverview:a4 isCompact:a5 waveformOnly:a6];
  v8 = [v7 waveformViewController];
  [v8 setIsPlayback:1];

  v9 = [(RCPlaybackViewController *)self view];
  [v9 setDisplayStyle:3];

  return v7;
}

- (void)enablePlaybackWithComposition:(id)a3 displayModel:(id)a4 timeController:(id)a5
{
  v8 = a4;
  v9 = a3;
  [(RCRecordingViewController *)self setActiveTimeController:a5];
  [(RCRecordingViewController *)self reloadWaveformsFromComposition:v9];

  [(RCPlaybackViewController *)self updateWithRecordingModel:v8];
  v10 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [v10 setIsPlayback:1];

  v11 = [(RCRecordingViewController *)self waveformContainerViewControllers];
  [v11 resetZoomScale];

  v12 = [(RCRecordingViewController *)self overviewWaveformViewController];
  v13 = [v12 waveformViewController];
  [v13 setIsPlayback:1];

  v14 = [(RCPlaybackViewController *)self view];
  [v14 setRecordingViewState:2 * (v8 != 0)];
  [(RCRecordingViewController *)self _beginFileTranscriptionIfNeeded];
}

- (void)updateContentUnavailableViewState:(int64_t)a3
{
  [(RCPlaybackViewController *)self setContentUnavailableState:a3];

  [(RCPlaybackViewController *)self setNeedsUpdateContentUnavailableConfiguration];
}

- (void)updateContentUnavailableConfigurationUsingState:(id)a3
{
  v4 = [(RCPlaybackViewController *)self contentUnavailableState];
  if (v4 == -1)
  {
    v10 = 0;
  }

  else
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v12 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v6 = [v5 playbackContentUnavailableViewBackgroundColor];
    v7 = [v12 background];
    [v7 setBackgroundColor:v6];

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
  v11 = [(RCPlaybackViewController *)self view];
  [v11 updateUIForContentUnavailable:v4 != -1];
}

- (void)clear
{
  if ([(RCPlaybackViewController *)self isViewLoaded])
  {

    [(RCPlaybackViewController *)self _reset];
  }
}

- (void)deviceTranscriptionSupportDidChange:(BOOL)a3
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
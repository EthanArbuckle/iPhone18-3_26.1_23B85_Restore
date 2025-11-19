@interface MTBridgeCollectionSettingsViewController
- (MTBridgeCollectionSettingsViewController)initWithCollectionType:(unint64_t)a3 identifier:(id)a4;
- (id)_footerTextWithValue:(int64_t)a3;
- (id)_specifierNameWithValue:(int64_t)a3;
- (id)_specifierWithValue:(int64_t)a3;
- (id)specifiers;
- (int64_t)_selectedNumberOfEpisodes;
- (void)_removeShow;
- (void)_setNumberOfEpisodesWithSpecifier:(id)a3;
@end

@implementation MTBridgeCollectionSettingsViewController

- (MTBridgeCollectionSettingsViewController)initWithCollectionType:(unint64_t)a3 identifier:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MTBridgeCollectionSettingsViewController;
  v8 = [(MTBridgeCollectionSettingsViewController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_collectionType = a3;
    objc_storeStrong(&v8->_identifier, a4);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"_handlePodcastsIdentifiersDidChangeNotification:" name:NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification object:0];
  }

  return v9;
}

- (id)specifiers
{
  v2 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v36 = OBJC_IVAR___PSListController__specifiers;
    v5 = +[NSMutableArray array];
    v6 = [(MTBridgeCollectionSettingsViewController *)self _selectedNumberOfEpisodes];
    v7 = [PSSpecifier groupSpecifierWithID:@"NumberOfEpisodesGroup"];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v8 = [(MTBridgeCollectionSettingsViewController *)self _footerTextWithValue:v6];
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    v37 = v7;
    [v5 addObject:v7];
    v9 = +[NMSPodcastsDownloadSettings orderedDownloadSettings];
    v10 = [NSMutableArray arrayWithArray:v9];

    if (self->_collectionType != 3)
    {
      [v10 insertObject:&off_1DB18 atIndex:0];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v39;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = -[MTBridgeCollectionSettingsViewController _specifierWithValue:](self, "_specifierWithValue:", [v17 unsignedIntegerValue]);
          [v5 addObject:v18];
          if (v6 == [v17 unsignedIntegerValue])
          {
            v19 = v18;

            v14 = v19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    v20 = v37;
    [v37 setProperty:v14 forKey:PSRadioGroupCheckedSpecifierKey];
    if (self->_collectionType == 3)
    {
      v21 = [PSSpecifier groupSpecifierWithID:@"RemoveShowGroup"];
      [v5 addObject:v21];

      v22 = +[NSBundle podcastsFoundationBundle];
      v23 = [v22 localizedStringForKey:@"REMOVE_SHOW_TEXT" value:@"Remove Show" table:0];
      v24 = [PSConfirmationSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v24 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v24 setProperty:&off_1DB30 forKey:PSAlignmentKey];
      [v24 setConfirmationAction:"_removeShow"];
      [v24 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
      v25 = +[NSBundle podcastsFoundationBundle];
      v26 = [v25 localizedStringForKey:@"REMOVE_CONFIRMATION_TITLE" value:&stru_1CB88 table:0];
      v27 = [NSString localizedStringWithValidatedFormat:v26 validFormatSpecifiers:@"%ld" error:0, [(MTBridgeCollectionSettingsViewController *)self _selectedNumberOfEpisodes]];
      [v24 setPrompt:v27];

      v28 = +[NSBundle podcastsFoundationBundle];
      v29 = [v28 localizedStringForKey:@"REMOVE_CONFIRMATION_BUTTON" value:&stru_1CB88 table:0];
      v30 = [NSString localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%ld" error:0, [(MTBridgeCollectionSettingsViewController *)self _selectedNumberOfEpisodes]];
      [v24 setTitle:v30];

      v31 = +[NSBundle podcastsFoundationBundle];
      v32 = [v31 localizedStringForKey:@"CANCEL_TEXT" value:@"Cancel" table:0];
      [v24 setCancelButton:v32];

      [v5 addObject:v24];
      v20 = v37;
    }

    v33 = [v5 copy];
    v34 = *&self->BPSListController_opaque[v36];
    *&self->BPSListController_opaque[v36] = v33;

    v3 = *&self->BPSListController_opaque[v36];
  }

  return v3;
}

- (id)_specifierNameWithValue:(int64_t)a3
{
  if (a3)
  {
    [MTBridgeUtilities localizedStringForEpisodeCount:?];
  }

  else
  {
    +[MTBridgeUtilities localizedOffString];
  }
  v3 = ;

  return v3;
}

- (void)_setNumberOfEpisodesWithSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"MTBNumberOfEpisodesKey"];
  v5 = [v4 integerValue];

  collectionType = self->_collectionType;
  if (collectionType > 1)
  {
    if (collectionType == 2)
    {
      v8 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2];
      [v8 setNumberOfEpisodes:v5];
      v7 = +[NMSMediaPinningManager sharedManager];
      [v7 setPodcastsDownloadSettings:v8 forStationUUID:self->_identifier];
    }

    else
    {
      if (collectionType != 3)
      {
        return;
      }

      v8 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3];
      [v8 setNumberOfEpisodes:v5];
      v7 = +[NMSMediaPinningManager sharedManager];
      [v7 setPodcastsDownloadSettings:v8 forShowFeedURL:self->_identifier];
    }
  }

  else if (collectionType)
  {
    if (collectionType != 1)
    {
      return;
    }

    v8 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:1];
    [v8 setNumberOfEpisodes:v5];
    v7 = +[NMSMediaPinningManager sharedManager];
    [v7 setPodcastsSavedEpisodesDownloadSettings:v8];
  }

  else
  {
    v8 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:0];
    [v8 setNumberOfEpisodes:v5];
    v7 = +[NMSMediaPinningManager sharedManager];
    [v7 setPodcastsUpNextDownloadSettings:v8];
  }
}

- (id)_specifierWithValue:(int64_t)a3
{
  v5 = [(MTBridgeCollectionSettingsViewController *)self _specifierNameWithValue:?];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setButtonAction:"_setNumberOfEpisodesWithSpecifier:"];
  v7 = [NSNumber numberWithInteger:a3];
  [v6 setProperty:v7 forKey:@"MTBNumberOfEpisodesKey"];

  return v6;
}

- (void)_removeShow
{
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3];
  [v6 setNumberOfEpisodes:0];
  v3 = +[NMSMediaPinningManager sharedManager];
  [v3 setPodcastsDownloadSettings:v6 forShowFeedURL:self->_identifier];

  v4 = [(MTBridgeCollectionSettingsViewController *)self navigationController];
  v5 = [v4 popViewControllerAnimated:1];
}

- (id)_footerTextWithValue:(int64_t)a3
{
  v5 = +[NSBundle podcastsFoundationBundle];
  v6 = v5;
  if (a3)
  {
    v7 = [v5 localizedStringForKey:@"NUMBER_OF_EPISODES_FOOTER_TEXT" value:&stru_1CB88 table:0];
    v8 = [(MTBridgeCollectionSettingsViewController *)self title];
    [NSString localizedStringWithFormat:v7, a3, v8];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"NUMBER_OF_EPISODES_OFF_FOOTER_TEXT" value:@"Episodes from %@ won’t be downloaded." table:0];
    v8 = [(MTBridgeCollectionSettingsViewController *)self title];
    [NSString localizedStringWithFormat:v7, v8, v11];
  }
  v9 = ;

  return v9;
}

- (int64_t)_selectedNumberOfEpisodes
{
  collectionType = self->_collectionType;
  if (collectionType > 1)
  {
    if (collectionType == 2)
    {
      v3 = +[NMSMediaPinningManager sharedManager];
      v4 = [v3 podcastsDownloadSettingsForStationUUID:self->_identifier];
      goto LABEL_11;
    }

    if (collectionType == 3)
    {
      v3 = +[NMSMediaPinningManager sharedManager];
      v4 = [v3 podcastsDownloadSettingsForShowFeedURL:self->_identifier];
      goto LABEL_11;
    }

    return 0;
  }

  if (!collectionType)
  {
    v3 = +[NMSMediaPinningManager sharedManager];
    v4 = [v3 podcastsUpNextDownloadSettings];
    goto LABEL_11;
  }

  if (collectionType != 1)
  {
    return 0;
  }

  v3 = +[NMSMediaPinningManager sharedManager];
  v4 = [v3 podcastsSavedEpisodesDownloadSettings];
LABEL_11:
  v7 = v4;
  v8 = [v4 numberOfEpisodes];

  return v8;
}

@end
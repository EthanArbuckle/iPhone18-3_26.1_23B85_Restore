@interface RCPlaybackSettingsCollectionViewController
- (RCPlaybackSettingsCollectionViewController)init;
- (RCPlaybackSettingsCollectionViewControllerDelegate)delegate;
- (RCPlaybackSettingsDelegate)settingsDelegate;
- (id)_createCollectionViewLayout;
- (id)_createDiffableDataSource;
- (id)_enhanceRecordingToggleCellAtIndexPath:(id)a3;
- (id)_layerMixSliderCellAtIndexPath:(id)a3;
- (id)_playbackSpeedSliderCellAtIndexPath:(id)a3;
- (id)_removeSilenceToggleCellAtIndexPath:(id)a3;
- (id)_speechIsolatorSliderAtIndexPath:(id)a3;
- (id)_speechIsolatorToggleAtIndexPath:(id)a3;
- (void)_updateContent;
- (void)didToggleSwitch:(id)a3 toState:(BOOL)a4;
- (void)didUpdateSlider:(id)a3 toValue:(double)a4;
- (void)setPlaybackSettings:(id)a3;
- (void)viewDidLoad;
@end

@implementation RCPlaybackSettingsCollectionViewController

- (RCPlaybackSettingsCollectionViewController)init
{
  v3 = [(RCPlaybackSettingsCollectionViewController *)self _createCollectionViewLayout];
  v6.receiver = self;
  v6.super_class = RCPlaybackSettingsCollectionViewController;
  v4 = [(RCPlaybackSettingsCollectionViewController *)&v6 initWithCollectionViewLayout:v3];

  return v4;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = RCPlaybackSettingsCollectionViewController;
  [(RCPlaybackSettingsCollectionViewController *)&v22 viewDidLoad];
  v3 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  [v3 setAllowsSelection:0];
  v4 = [(RCPlaybackSettingsCollectionViewController *)self _createDiffableDataSource];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v4;

  [v3 setDataSource:self->_diffableDataSource];
  v6 = objc_opt_class();
  v7 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSectionHeaderCellIdentifier];
  [v3 registerClass:v6 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixSectionHeaderCellIdentifier];
  [v3 registerClass:v8 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
  [v3 registerClass:v10 forCellWithReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
  [v3 registerClass:v12 forCellWithReuseIdentifier:v13];

  v14 = objc_opt_class();
  v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
  [v3 registerClass:v14 forCellWithReuseIdentifier:v15];

  v16 = objc_opt_class();
  v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
  [v3 registerClass:v16 forCellWithReuseIdentifier:v17];

  v18 = objc_opt_class();
  v19 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
  [v3 registerClass:v18 forCellWithReuseIdentifier:v19];

  v20 = objc_opt_class();
  v21 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
  [v3 registerClass:v20 forCellWithReuseIdentifier:v21];

  [(RCPlaybackSettingsCollectionViewController *)self _updateContent];
}

- (void)_updateContent
{
  v3 = [_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper buildDiffableDataSourceSnapshotWithSpatialAudioRecording:[(RCPlaybackSettings *)self->_playbackSettings isSpatialRecording] multitrackRecording:self->_showLayerMixSlider speechIsolatorEnabled:[(RCPlaybackSettings *)self->_playbackSettings speechIsolatorEnabled]];
  v4 = [v3 itemIdentifiers];
  [v3 reconfigureItemsWithIdentifiers:v4];

  objc_initWeak(&location, self);
  diffableDataSource = self->_diffableDataSource;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100042184;
  v6[3] = &unk_10028A6A0;
  objc_copyWeak(&v7, &location);
  [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshot:v3 animatingDifferences:1 completion:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setPlaybackSettings:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_playbackSettings, a3);
  self->_showLayerMixSlider = [v5 hasMultipleTracks];
  if ([(RCPlaybackSettingsCollectionViewController *)self isViewLoaded])
  {
    [(RCPlaybackSettingsCollectionViewController *)self _updateContent];
  }
}

- (id)_createDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  v4 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000423D0;
  v10[3] = &unk_10028AA28;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithCollectionView:v4 cellProvider:v10];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004263C;
  v8[3] = &unk_10028AA50;
  v6 = v5;
  v9 = v6;
  [v6 setSupplementaryViewProvider:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_playbackSpeedSliderCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v8 playbackSpeed];
  [v7 setSliderValue:v9];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_removeSilenceToggleCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SKIP_SILENCE_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/SkipSilenceSwitch"];
  v10 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(v10, "silenceRemoved")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_enhanceRecordingToggleCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ENHANCE_RECORDING_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/EnhanceRecordingSwitch"];
  v10 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(v10, "enhanced")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_layerMixSliderCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v8 layerMix];
  [v7 setSliderValue:v9];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_speechIsolatorToggleAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"STUDIO_VOICE_TOGGLE_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/StudioVoiceSwitch"];
  v10 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(v10, "speechIsolatorEnabled")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_speechIsolatorSliderAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
  v7 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v4];

  v8 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v8 speechIsolatorValue];
  [v7 setSliderValue:v9];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_createCollectionViewLayout
{
  objc_initWeak(&location, self);
  v2 = [UICollectionViewCompositionalLayout alloc];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042EF0;
  v5[3] = &unk_10028AA78;
  objc_copyWeak(&v6, &location);
  v3 = [v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)didToggleSwitch:(id)a3 toState:(BOOL)a4
{
  v4 = a4;
  v22 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v22;
  if (isKindOfClass)
  {
    v8 = v22;
    v9 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
    v10 = [v9 indexPathForCell:v8];

    v11 = [(RCPlaybackSettingsCollectionViewController *)self diffableDataSource];
    v12 = [v11 itemIdentifierForIndexPath:v10];

    v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
    v14 = [v12 isEqual:v13];

    v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
    v16 = [v12 isEqual:v15];

    v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
    v18 = [v12 isEqual:v17];

    v19 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
    v20 = [v19 uuid];

    if (v14)
    {
      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [v21 setEnhanced:v4 forUUID:v20];
    }

    else if (v16)
    {
      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [v21 setRemoveSilence:v4 forUUID:v20];
    }

    else
    {
      if (!v18)
      {
LABEL_9:

        v7 = v22;
        goto LABEL_10;
      }

      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [v21 setSpeechIsolatorEnabled:v4 forUUID:v20];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)didUpdateSlider:(id)a3 toValue:(double)a4
{
  v23 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v23;
  if (isKindOfClass)
  {
    v8 = v23;
    v9 = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
    v10 = [v9 indexPathForCell:v8];

    v11 = [(RCPlaybackSettingsCollectionViewController *)self diffableDataSource];
    v12 = [v11 itemIdentifierForIndexPath:v10];

    v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
    v14 = [v12 isEqual:v13];

    v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
    v16 = [v12 isEqual:v15];

    v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
    v18 = [v12 isEqual:v17];

    v19 = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
    v20 = [v19 uuid];

    if (v14)
    {
      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [v21 setPlaybackSpeed:v20 forUUID:a4];
    }

    else if (v16)
    {
      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [v21 setLayerMix:v20 forUUID:a4];
    }

    else
    {
      if (!v18)
      {
LABEL_9:

        v7 = v23;
        goto LABEL_10;
      }

      v21 = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      *&v22 = a4;
      [v21 setSpeechIsolatorValue:v20 forUUID:v22];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (RCPlaybackSettingsCollectionViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RCPlaybackSettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

@end
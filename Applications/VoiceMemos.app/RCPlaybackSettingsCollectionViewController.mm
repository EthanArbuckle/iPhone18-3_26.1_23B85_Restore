@interface RCPlaybackSettingsCollectionViewController
- (RCPlaybackSettingsCollectionViewController)init;
- (RCPlaybackSettingsCollectionViewControllerDelegate)delegate;
- (RCPlaybackSettingsDelegate)settingsDelegate;
- (id)_createCollectionViewLayout;
- (id)_createDiffableDataSource;
- (id)_enhanceRecordingToggleCellAtIndexPath:(id)path;
- (id)_layerMixSliderCellAtIndexPath:(id)path;
- (id)_playbackSpeedSliderCellAtIndexPath:(id)path;
- (id)_removeSilenceToggleCellAtIndexPath:(id)path;
- (id)_speechIsolatorSliderAtIndexPath:(id)path;
- (id)_speechIsolatorToggleAtIndexPath:(id)path;
- (void)_updateContent;
- (void)didToggleSwitch:(id)switch toState:(BOOL)state;
- (void)didUpdateSlider:(id)slider toValue:(double)value;
- (void)setPlaybackSettings:(id)settings;
- (void)viewDidLoad;
@end

@implementation RCPlaybackSettingsCollectionViewController

- (RCPlaybackSettingsCollectionViewController)init
{
  _createCollectionViewLayout = [(RCPlaybackSettingsCollectionViewController *)self _createCollectionViewLayout];
  v6.receiver = self;
  v6.super_class = RCPlaybackSettingsCollectionViewController;
  v4 = [(RCPlaybackSettingsCollectionViewController *)&v6 initWithCollectionViewLayout:_createCollectionViewLayout];

  return v4;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = RCPlaybackSettingsCollectionViewController;
  [(RCPlaybackSettingsCollectionViewController *)&v22 viewDidLoad];
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  [collectionView setAllowsSelection:0];
  _createDiffableDataSource = [(RCPlaybackSettingsCollectionViewController *)self _createDiffableDataSource];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = _createDiffableDataSource;

  [collectionView setDataSource:self->_diffableDataSource];
  v6 = objc_opt_class();
  v7 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSectionHeaderCellIdentifier];
  [collectionView registerClass:v6 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixSectionHeaderCellIdentifier];
  [collectionView registerClass:v8 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
  [collectionView registerClass:v10 forCellWithReuseIdentifier:v11];

  v12 = objc_opt_class();
  v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
  [collectionView registerClass:v12 forCellWithReuseIdentifier:v13];

  v14 = objc_opt_class();
  v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
  [collectionView registerClass:v14 forCellWithReuseIdentifier:v15];

  v16 = objc_opt_class();
  v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
  [collectionView registerClass:v16 forCellWithReuseIdentifier:v17];

  v18 = objc_opt_class();
  v19 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
  [collectionView registerClass:v18 forCellWithReuseIdentifier:v19];

  v20 = objc_opt_class();
  v21 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
  [collectionView registerClass:v20 forCellWithReuseIdentifier:v21];

  [(RCPlaybackSettingsCollectionViewController *)self _updateContent];
}

- (void)_updateContent
{
  v3 = [_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper buildDiffableDataSourceSnapshotWithSpatialAudioRecording:[(RCPlaybackSettings *)self->_playbackSettings isSpatialRecording] multitrackRecording:self->_showLayerMixSlider speechIsolatorEnabled:[(RCPlaybackSettings *)self->_playbackSettings speechIsolatorEnabled]];
  itemIdentifiers = [v3 itemIdentifiers];
  [v3 reconfigureItemsWithIdentifiers:itemIdentifiers];

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

- (void)setPlaybackSettings:(id)settings
{
  settingsCopy = settings;
  objc_storeStrong(&self->_playbackSettings, settings);
  self->_showLayerMixSlider = [settingsCopy hasMultipleTracks];
  if ([(RCPlaybackSettingsCollectionViewController *)self isViewLoaded])
  {
    [(RCPlaybackSettingsCollectionViewController *)self _updateContent];
  }
}

- (id)_createDiffableDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000423D0;
  v10[3] = &unk_10028AA28;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithCollectionView:collectionView cellProvider:v10];

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

- (id)_playbackSpeedSliderCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [playbackSettings playbackSpeed];
  [v7 setSliderValue:v9];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_removeSilenceToggleCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"SKIP_SILENCE_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/SkipSilenceSwitch"];
  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(playbackSettings, "silenceRemoved")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_enhanceRecordingToggleCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"ENHANCE_RECORDING_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/EnhanceRecordingSwitch"];
  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(playbackSettings, "enhanced")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_layerMixSliderCellAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [playbackSettings layerMix];
  [v7 setSliderValue:v9];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_speechIsolatorToggleAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"STUDIO_VOICE_TOGGLE_SETTING" value:&stru_100295BB8 table:0];
  [v7 setTitle:v9];

  [v7 setAccessibilityIdentifier:@"PlaybackOptions/StudioVoiceSwitch"];
  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [v7 setSwitchState:{objc_msgSend(playbackSettings, "speechIsolatorEnabled")}];

  [v7 setCellActionsDelegate:self];

  return v7;
}

- (id)_speechIsolatorSliderAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
  v6 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:pathCopy];

  playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
  [playbackSettings speechIsolatorValue];
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

- (void)didToggleSwitch:(id)switch toState:(BOOL)state
{
  stateCopy = state;
  switchCopy = switch;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = switchCopy;
  if (isKindOfClass)
  {
    v8 = switchCopy;
    collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
    v10 = [collectionView indexPathForCell:v8];

    diffableDataSource = [(RCPlaybackSettingsCollectionViewController *)self diffableDataSource];
    v12 = [diffableDataSource itemIdentifierForIndexPath:v10];

    v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper enhanceCellIdentifier];
    v14 = [v12 isEqual:v13];

    v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper removeSilenceCellIdentifier];
    v16 = [v12 isEqual:v15];

    v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorToggleCellIdentifier];
    v18 = [v12 isEqual:v17];

    playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
    uuid = [playbackSettings uuid];

    if (v14)
    {
      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [settingsDelegate setEnhanced:stateCopy forUUID:uuid];
    }

    else if (v16)
    {
      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [settingsDelegate setRemoveSilence:stateCopy forUUID:uuid];
    }

    else
    {
      if (!v18)
      {
LABEL_9:

        v7 = switchCopy;
        goto LABEL_10;
      }

      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [settingsDelegate setSpeechIsolatorEnabled:stateCopy forUUID:uuid];
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)didUpdateSlider:(id)slider toValue:(double)value
{
  sliderCopy = slider;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = sliderCopy;
  if (isKindOfClass)
  {
    v8 = sliderCopy;
    collectionView = [(RCPlaybackSettingsCollectionViewController *)self collectionView];
    v10 = [collectionView indexPathForCell:v8];

    diffableDataSource = [(RCPlaybackSettingsCollectionViewController *)self diffableDataSource];
    v12 = [diffableDataSource itemIdentifierForIndexPath:v10];

    v13 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper playbackSpeedSliderCellIdentifier];
    v14 = [v12 isEqual:v13];

    v15 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper layerMixCellIdentifier];
    v16 = [v12 isEqual:v15];

    v17 = +[_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper speechIsolatorSliderCellIdentifier];
    v18 = [v12 isEqual:v17];

    playbackSettings = [(RCPlaybackSettingsCollectionViewController *)self playbackSettings];
    uuid = [playbackSettings uuid];

    if (v14)
    {
      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [settingsDelegate setPlaybackSpeed:uuid forUUID:value];
    }

    else if (v16)
    {
      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      [settingsDelegate setLayerMix:uuid forUUID:value];
    }

    else
    {
      if (!v18)
      {
LABEL_9:

        v7 = sliderCopy;
        goto LABEL_10;
      }

      settingsDelegate = [(RCPlaybackSettingsCollectionViewController *)self settingsDelegate];
      *&v22 = value;
      [settingsDelegate setSpeechIsolatorValue:uuid forUUID:v22];
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
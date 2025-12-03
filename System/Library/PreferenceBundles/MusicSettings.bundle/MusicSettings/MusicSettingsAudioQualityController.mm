@interface MusicSettingsAudioQualityController
- (BOOL)cellularHighDataModeEnabled;
- (MusicSettingsAudioQualityController)init;
- (id)cellularDataEnabled;
- (id)highBandwidthLabel;
- (void)displayDowngradeAlertIfNeededWithCompletion:(id)completion;
- (void)setParentController:(id)controller;
- (void)setShowLosslessAudio:(id)audio specifier:(id)specifier;
@end

@implementation MusicSettingsAudioQualityController

- (MusicSettingsAudioQualityController)init
{
  v6.receiver = self;
  v6.super_class = MusicSettingsAudioQualityController;
  v2 = [(MusicSettingsAudioQualityController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MusicSettingsAudioQualityController *)v2 loadSpecifiersFromPlistName:@"MusicSettingsAudioQuality" target:v2];
    [(MusicSettingsAudioQualityController *)v3 setAllSpecifiers:v4];
  }

  return v3;
}

- (void)setParentController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(MusicSettingsAudioQualityController *)self parentViewController];
  v6.receiver = self;
  v6.super_class = MusicSettingsAudioQualityController;
  [(MusicSettingsAudioQualityController *)&v6 setParentController:controllerCopy];

  if (controllerCopy && parentViewController != controllerCopy)
  {
    [(MusicSettingsAudioQualityController *)self reloadSpecifiers];
  }
}

- (BOOL)cellularHighDataModeEnabled
{
  v3 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[v3]);
  cellularHighDataModeEnabled = [v6 cellularHighDataModeEnabled];

  return cellularHighDataModeEnabled;
}

- (void)setShowLosslessAudio:(id)audio specifier:(id)specifier
{
  specifierCopy = specifier;
  audioCopy = audio;
  selfCopy = [(MusicSettingsAudioQualityController *)self rootController];
  v9 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy setPreferenceValue:audioCopy specifier:specifierCopy];

  bOOLValue = [audioCopy BOOLValue];
  if (bOOLValue)
  {
    v11 = +[MPPlaybackUserDefaults standardUserDefaults];
    v12 = 48000;
    [v11 setPreferredMusicHighBandwidthResolution:48000];

LABEL_11:
    v21 = +[MPPlaybackUserDefaults standardUserDefaults];
    [v21 setPreferredMusicDownloadResolution:v12];

    goto LABEL_12;
  }

  [(MusicSettingsAudioQualityController *)self displayDowngradeAlertIfNeededWithCompletion:&stru_24FC8];
  v13 = +[MPPlaybackUserDefaults standardUserDefaults];
  preferredMusicLowBandwidthResolution = [v13 preferredMusicLowBandwidthResolution];

  if (preferredMusicLowBandwidthResolution >= 48000)
  {
    v15 = +[MPPlaybackUserDefaults standardUserDefaults];
    [v15 setPreferredMusicLowBandwidthResolution:256];
  }

  v16 = +[MPPlaybackUserDefaults standardUserDefaults];
  preferredMusicHighBandwidthResolution = [v16 preferredMusicHighBandwidthResolution];

  if (preferredMusicHighBandwidthResolution >= 48000)
  {
    v18 = +[MPPlaybackUserDefaults standardUserDefaults];
    [v18 setPreferredMusicHighBandwidthResolution:256];
  }

  v19 = +[MPPlaybackUserDefaults standardUserDefaults];
  preferredMusicDownloadResolution = [v19 preferredMusicDownloadResolution];

  if (preferredMusicDownloadResolution >= 48000)
  {
    v12 = 256;
    goto LABEL_11;
  }

LABEL_12:

  [(MusicSettingsAudioQualityController *)self updateVisibleSpecifiers];
}

- (id)cellularDataEnabled
{
  v3 = OBJC_IVAR___PSViewController__parentController;
  WeakRetained = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSViewController__parentController]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = objc_loadWeakRetained(&self->MusicSettingsListViewController_opaque[v3]);
    cellularDataEnabled = [v6 cellularDataEnabled];
  }

  else
  {
    cellularDataEnabled = &__kCFBooleanFalse;
  }

  return cellularDataEnabled;
}

- (id)highBandwidthLabel
{
  v3 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v3 sf_isChinaRegionCellularDevice];

  cellularHighDataModeEnabled = [(MusicSettingsAudioQualityController *)self cellularHighDataModeEnabled];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  v8 = @"FIVEG_AND_WIFI_STREAMING";
  if (sf_isChinaRegionCellularDevice)
  {
    v8 = @"FIVEG_AND_WLAN_STREAMING";
  }

  v9 = @"WLAN_STREAMING";
  if (!sf_isChinaRegionCellularDevice)
  {
    v9 = @"WIFI_STREAMING";
  }

  if (cellularHighDataModeEnabled)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_25A88 table:@"MusicSettings"];

  return v11;
}

- (void)displayDowngradeAlertIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v6 = [ML3BitMaskPredicate predicateWithProperty:ML3TrackPropertyHLSAssetTraits mask:20 value:0];
  v7 = [ML3NegationPredicate predicateWithPredicate:v6];

  v8 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset value:&__kCFBooleanTrue comparison:1];
  v38[0] = v8;
  v38[1] = v7;
  v9 = [NSArray arrayWithObjects:v38 count:2];
  v10 = [ML3AllCompoundPredicate predicateMatchingPredicates:v9];
  v11 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v5 predicate:v10 orderingTerms:0];

  if ([v11 hasEntities])
  {
    v12 = +[UIDevice currentDevice];
    sf_isChinaRegionCellularDevice = [v12 sf_isChinaRegionCellularDevice];

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    [v14 localizedStringForKey:@"LOSSLESS_DOWNGRADE_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v15 = v30 = v7;
    v29 = v11;
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = v16;
    if (sf_isChinaRegionCellularDevice)
    {
      v18 = @"LOSSLESS_DOWNGRADE_WLAN_BODY";
    }

    else
    {
      v18 = @"LOSSLESS_DOWNGRADE_WIFI_BODY";
    }

    [v16 localizedStringForKey:v18 value:&stru_25A88 table:@"MusicSettings"];
    v19 = v31 = completionCopy;
    v20 = [UIAlertController alertControllerWithTitle:v15 message:v19 preferredStyle:1];

    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"LOSSLESS_DOWNGRADE_ACTION_KEEP" value:&stru_25A88 table:@"MusicSettings"];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_732C;
    v36[3] = &unk_24E58;
    v23 = v31;
    v37 = v23;
    v24 = [UIAlertAction actionWithTitle:v22 style:0 handler:v36];
    [v20 addAction:v24];

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = [v25 localizedStringForKey:@"LOSSLESS_DOWNGRADE_ACTION_REPLACE" value:&stru_25A88 table:@"MusicSettings"];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_733C;
    v32[3] = &unk_25040;
    v27 = v23;
    v11 = v29;
    v35 = v27;
    v33 = v29;
    v34 = v5;
    v7 = v30;
    v28 = [UIAlertAction actionWithTitle:v26 style:1 handler:v32];
    [v20 addAction:v28];

    completionCopy = v31;
    [(MusicSettingsAudioQualityController *)self presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

@end
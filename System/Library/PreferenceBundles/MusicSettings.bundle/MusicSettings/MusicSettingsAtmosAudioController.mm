@interface MusicSettingsAtmosAudioController
- (id)itemsFromParent;
- (void)_displayDownloadsDialogIfNeededWithCompletion:(id)completion;
- (void)listItemSelected:(id)selected;
- (void)shouldSelectAtmosAlwaysOn:(id)on completion:(id)completion;
- (void)shouldSelectAtmosAutomatic:(id)automatic completion:(id)completion;
@end

@implementation MusicSettingsAtmosAudioController

- (void)shouldSelectAtmosAlwaysOn:(id)on completion:(id)completion
{
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ATMOS_ALWAYS_ON_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ATMOS_ALWAYS_ON_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"ATMOS_ALWAYS_ON_WARN_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_4A9C;
  v25[3] = &unk_24F20;
  v25[4] = self;
  v13 = completionCopy;
  v26 = v13;
  v14 = [UIAlertAction actionWithTitle:v12 style:1 handler:v25];
  [v10 addAction:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"ATMOS_ALWAYS_ON_WARN_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_4B38;
  v22 = &unk_24F20;
  selfCopy = self;
  v24 = v13;
  v17 = v13;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v19];
  [v10 addAction:{v18, v19, v20, v21, v22, selfCopy}];

  [(MusicSettingsAtmosAudioController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)shouldSelectAtmosAutomatic:(id)automatic completion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_4C68;
  v6[3] = &unk_24ED0;
  completionCopy = completion;
  v5 = completionCopy;
  [(MusicSettingsAtmosAudioController *)self _displayDownloadsDialogIfNeededWithCompletion:v6];
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(MusicSettingsAtmosAudioController *)self specifierAtIndexPath:selectedCopy];
  v6 = [v5 propertyForKey:@"cellObject"];
  if (([v6 isChecked] & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_4E38;
    v15[3] = &unk_24EA8;
    v16 = selectedCopy;
    selfCopy = self;
    v7 = v5;
    v18 = v7;
    v8 = objc_retainBlock(v15);
    v9 = [v7 propertyForKey:MusicSettingsShouldSelectAction];
    v10 = NSSelectorFromString(v9);

    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_4EC8;
      v13[3] = &unk_24ED0;
      v14 = v8;
      v11 = objc_retainBlock(v13);
      v12 = MusicSettingsPerformSelector2();
    }

    else
    {
      (v8[2])(v8);
    }
  }
}

- (id)itemsFromParent
{
  v17.receiver = self;
  v17.super_class = MusicSettingsAtmosAudioController;
  itemsFromParent = [(MusicSettingsAtmosAudioController *)&v17 itemsFromParent];
  v4 = OBJC_IVAR___PSViewController__specifier;
  properties = [*&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__specifier] properties];
  v6 = MusicSettingsShouldSelectAction;
  v7 = [properties objectForKeyedSubscript:MusicSettingsShouldSelectAction];

  properties2 = [*&self->PSListItemsController_opaque[v4] properties];
  v9 = MusicSettingsDidSelectAction;
  v10 = [properties2 objectForKeyedSubscript:MusicSettingsDidSelectAction];

  v11 = [itemsFromParent subarrayWithRange:{1, objc_msgSend(itemsFromParent, "count") - 1}];
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = [v11 objectAtIndexedSubscript:v12];
      if (v12 < [v7 count])
      {
        v14 = [v7 objectAtIndexedSubscript:v12];
        if ([v14 length])
        {
          [v13 setProperty:v14 forKey:v6];
        }
      }

      if (v12 < [v10 count])
      {
        v15 = [v10 objectAtIndexedSubscript:v12];
        if ([v15 length])
        {
          [v13 setProperty:v15 forKey:v9];
        }
      }

      ++v12;
    }

    while (v12 < [v11 count]);
  }

  return itemsFromParent;
}

- (void)_displayDownloadsDialogIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[MPPlaybackUserDefaults standardUserDefaults];
  prefersSpatialDownloads = [v5 prefersSpatialDownloads];

  if (prefersSpatialDownloads)
  {
    completionCopy[2](completionCopy, 1);
  }

  else
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"ATMOS_UPGRADE_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ATMOS_UPGRADE_BODY" value:&stru_25A88 table:@"MusicSettings"];
    v11 = [UIAlertController alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"ATMOS_UPGRADE_ACTION_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_53B8;
    v24[3] = &unk_24E58;
    v14 = completionCopy;
    v25 = v14;
    v15 = [UIAlertAction actionWithTitle:v13 style:1 handler:v24];
    [v11 addAction:v15];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"ATMOS_UPGRADE_ACTION_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_53CC;
    v22 = &unk_24E58;
    v23 = v14;
    v18 = [UIAlertAction actionWithTitle:v17 style:0 handler:&v19];
    [v11 addAction:{v18, v19, v20, v21, v22}];

    [(MusicSettingsAtmosAudioController *)self presentViewController:v11 animated:1 completion:0];
  }
}

@end
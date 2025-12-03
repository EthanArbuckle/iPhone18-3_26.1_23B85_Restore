@interface MusicSettingsAudioQualityDetailController
- (id)itemsFromParent;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)listItemSelected:(id)selected;
- (void)shouldSelectHiResLosslessCellular:(id)cellular completion:(id)completion;
- (void)shouldSelectHiResLosslessDownload:(id)download completion:(id)completion;
- (void)shouldSelectHiResLosslessWiFi:(id)fi completion:(id)completion;
- (void)shouldSelectHighQualityDownload:(id)download completion:(id)completion;
- (void)shouldSelectLosslessCellular:(id)cellular completion:(id)completion;
- (void)shouldSelectLosslessDownload:(id)download completion:(id)completion;
@end

@implementation MusicSettingsAudioQualityDetailController

- (void)shouldSelectLosslessCellular:(id)cellular completion:(id)completion
{
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"LOSSLESS_CELLULAR_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"LOSSLESS_CELLULAR_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"LOSSLESS_CELLULAR_WARN_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_282C;
  v24[3] = &unk_24E58;
  v13 = completionCopy;
  v25 = v13;
  v14 = [UIAlertAction actionWithTitle:v12 style:1 handler:v24];
  [v10 addAction:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"LOSSLESS_CELLULAR_WARN_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_2840;
  v22 = &unk_24E58;
  v23 = v13;
  v17 = v13;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v19];
  [v10 addAction:{v18, v19, v20, v21, v22}];

  [(MusicSettingsAudioQualityDetailController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)shouldSelectHiResLosslessCellular:(id)cellular completion:(id)completion
{
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HI_RES_LOSSLESS_CELLULAR_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HI_RES_LOSSLESS_CELLULAR_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"HI_RES_LOSSLESS_CELLULAR_WARN_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_2B20;
  v24[3] = &unk_24E58;
  v13 = completionCopy;
  v25 = v13;
  v14 = [UIAlertAction actionWithTitle:v12 style:1 handler:v24];
  [v10 addAction:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"HI_RES_LOSSLESS_CELLULAR_WARN_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_2B34;
  v22 = &unk_24E58;
  v23 = v13;
  v17 = v13;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v19];
  [v10 addAction:{v18, v19, v20, v21, v22}];

  [(MusicSettingsAudioQualityDetailController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)shouldSelectHiResLosslessWiFi:(id)fi completion:(id)completion
{
  completionCopy = completion;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"HI_RES_LOSSLESS_DAC_REQUIRED_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"HI_RES_LOSSLESS_DAC_REQUIRED_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
  v10 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:1];

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"HI_RES_LOSSLESS_DAC_REQUIRED_WARN_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_2E14;
  v24[3] = &unk_24E58;
  v13 = completionCopy;
  v25 = v13;
  v14 = [UIAlertAction actionWithTitle:v12 style:1 handler:v24];
  [v10 addAction:v14];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"HI_RES_LOSSLESS_DAC_REQUIRED_WARN_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_2E28;
  v22 = &unk_24E58;
  v23 = v13;
  v17 = v13;
  v18 = [UIAlertAction actionWithTitle:v16 style:0 handler:&v19];
  [v10 addAction:{v18, v19, v20, v21, v22}];

  [(MusicSettingsAudioQualityDetailController *)self presentViewController:v10 animated:1 completion:0];
}

- (void)shouldSelectHighQualityDownload:(id)download completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2EF0;
  v8[3] = &unk_24E80;
  v9 = completionCopy;
  v7 = completionCopy;
  [WeakRetained displayDowngradeAlertIfNeededWithCompletion:v8];
}

- (void)shouldSelectLosslessDownload:(id)download completion:(id)completion
{
  completionCopy = completion;
  v6 = +[MPNetworkObserver sharedNetworkObserver];
  isMusicCellularDownloadingAllowed = [v6 isMusicCellularDownloadingAllowed];

  if (isMusicCellularDownloadingAllowed)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"LOSSLESS_DOWNLOAD_CELLULAR_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"LOSSLESS_DOWNLOAD_CELLULAR_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"LOSSLESS_DOWNLOAD_CELLULAR_WARN_ACTION_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_320C;
    v25[3] = &unk_24E58;
    v15 = completionCopy;
    v26 = v15;
    v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v25];
    [v12 addAction:v16];

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"LOSSLESS_DOWNLOAD_CELLULAR_WARN_ACTION_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_3220;
    v23 = &unk_24E58;
    v24 = v15;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v20];
    [v12 addAction:{v19, v20, v21, v22, v23}];

    [(MusicSettingsAudioQualityDetailController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)shouldSelectHiResLosslessDownload:(id)download completion:(id)completion
{
  completionCopy = completion;
  v6 = +[MPNetworkObserver sharedNetworkObserver];
  isMusicCellularDownloadingAllowed = [v6 isMusicCellularDownloadingAllowed];

  if (isMusicCellularDownloadingAllowed)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"HI_RES_LOSSLESS_DOWNLOAD_CELLULAR_WARN_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"HI_RES_LOSSLESS_DOWNLOAD_CELLULAR_WARN_BODY" value:&stru_25A88 table:@"MusicSettings"];
    v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];

    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"HI_RES_LOSSLESS_DOWNLOAD_CELLULAR_WARN_ACTION_CANCEL" value:&stru_25A88 table:@"MusicSettings"];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_353C;
    v25[3] = &unk_24E58;
    v15 = completionCopy;
    v26 = v15;
    v16 = [UIAlertAction actionWithTitle:v14 style:1 handler:v25];
    [v12 addAction:v16];

    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"HI_RES_LOSSLESS_DOWNLOAD_CELLULAR_WARN_ACTION_ACCEPT" value:&stru_25A88 table:@"MusicSettings"];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_3550;
    v23 = &unk_24E58;
    v24 = v15;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v20];
    [v12 addAction:{v19, v20, v21, v22, v23}];

    [(MusicSettingsAudioQualityDetailController *)self presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(MusicSettingsAudioQualityDetailController *)self specifierAtIndexPath:pathCopy];
  v15.receiver = self;
  v15.super_class = MusicSettingsAudioQualityDetailController;
  v9 = [(MusicSettingsAudioQualityDetailController *)&v15 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  v10 = [v8 propertyForKey:@"musicDetails"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_25A88 table:@"MusicSettings"];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:v12];

  return v9;
}

- (void)listItemSelected:(id)selected
{
  selectedCopy = selected;
  v5 = [(MusicSettingsAudioQualityDetailController *)self specifierAtIndexPath:selectedCopy];
  v6 = [v5 propertyForKey:@"cellObject"];
  if (([v6 isChecked] & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3850;
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
      v13[2] = sub_38E0;
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
  v22.receiver = self;
  v22.super_class = MusicSettingsAudioQualityDetailController;
  itemsFromParent = [(MusicSettingsAudioQualityDetailController *)&v22 itemsFromParent];
  v4 = OBJC_IVAR___PSViewController__specifier;
  properties = [*&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__specifier] properties];
  v6 = [properties objectForKeyedSubscript:MusicSettingsValidDetails];

  properties2 = [*&self->PSListItemsController_opaque[v4] properties];
  v21 = MusicSettingsShouldSelectAction;
  v8 = [properties2 objectForKeyedSubscript:?];

  properties3 = [*&self->PSListItemsController_opaque[v4] properties];
  v10 = MusicSettingsDidSelectAction;
  v11 = [properties3 objectForKeyedSubscript:MusicSettingsDidSelectAction];

  v20 = itemsFromParent;
  v12 = [itemsFromParent subarrayWithRange:{1, objc_msgSend(itemsFromParent, "count") - 1}];
  if ([v12 count])
  {
    v13 = 0;
    v14 = PSCellClassKey;
    do
    {
      v15 = [v12 objectAtIndexedSubscript:v13];
      [v15 setProperty:objc_opt_class() forKey:v14];
      if (v13 < [v6 count])
      {
        v16 = [v6 objectAtIndexedSubscript:v13];
        [v15 setProperty:v16 forKey:@"musicDetails"];
      }

      if (v13 < [v8 count])
      {
        v17 = [v8 objectAtIndexedSubscript:v13];
        if ([v17 length])
        {
          [v15 setProperty:v17 forKey:v21];
        }
      }

      if (v13 < [v11 count])
      {
        v18 = [v11 objectAtIndexedSubscript:v13];
        if ([v18 length])
        {
          [v15 setProperty:v18 forKey:v10];
        }
      }

      ++v13;
    }

    while (v13 < [v12 count]);
  }

  return v20;
}

@end
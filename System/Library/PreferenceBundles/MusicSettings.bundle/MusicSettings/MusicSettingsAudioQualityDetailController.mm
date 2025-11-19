@interface MusicSettingsAudioQualityDetailController
- (id)itemsFromParent;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)listItemSelected:(id)a3;
- (void)shouldSelectHiResLosslessCellular:(id)a3 completion:(id)a4;
- (void)shouldSelectHiResLosslessDownload:(id)a3 completion:(id)a4;
- (void)shouldSelectHiResLosslessWiFi:(id)a3 completion:(id)a4;
- (void)shouldSelectHighQualityDownload:(id)a3 completion:(id)a4;
- (void)shouldSelectLosslessCellular:(id)a3 completion:(id)a4;
- (void)shouldSelectLosslessDownload:(id)a3 completion:(id)a4;
@end

@implementation MusicSettingsAudioQualityDetailController

- (void)shouldSelectLosslessCellular:(id)a3 completion:(id)a4
{
  v5 = a4;
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
  v13 = v5;
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

- (void)shouldSelectHiResLosslessCellular:(id)a3 completion:(id)a4
{
  v5 = a4;
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
  v13 = v5;
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

- (void)shouldSelectHiResLosslessWiFi:(id)a3 completion:(id)a4
{
  v5 = a4;
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
  v13 = v5;
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

- (void)shouldSelectHighQualityDownload:(id)a3 completion:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__parentController]);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_2EF0;
  v8[3] = &unk_24E80;
  v9 = v5;
  v7 = v5;
  [WeakRetained displayDowngradeAlertIfNeededWithCompletion:v8];
}

- (void)shouldSelectLosslessDownload:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[MPNetworkObserver sharedNetworkObserver];
  v7 = [v6 isMusicCellularDownloadingAllowed];

  if (v7)
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
    v15 = v5;
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
    (*(v5 + 2))(v5, 1);
  }
}

- (void)shouldSelectHiResLosslessDownload:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[MPNetworkObserver sharedNetworkObserver];
  v7 = [v6 isMusicCellularDownloadingAllowed];

  if (v7)
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
    v15 = v5;
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
    (*(v5 + 2))(v5, 1);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MusicSettingsAudioQualityDetailController *)self specifierAtIndexPath:v6];
  v15.receiver = self;
  v15.super_class = MusicSettingsAudioQualityDetailController;
  v9 = [(MusicSettingsAudioQualityDetailController *)&v15 tableView:v7 cellForRowAtIndexPath:v6];

  v10 = [v8 propertyForKey:@"musicDetails"];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_25A88 table:@"MusicSettings"];

  v13 = [v9 detailTextLabel];
  [v13 setText:v12];

  return v9;
}

- (void)listItemSelected:(id)a3
{
  v4 = a3;
  v5 = [(MusicSettingsAudioQualityDetailController *)self specifierAtIndexPath:v4];
  v6 = [v5 propertyForKey:@"cellObject"];
  if (([v6 isChecked] & 1) == 0)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_3850;
    v15[3] = &unk_24EA8;
    v16 = v4;
    v17 = self;
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
  v3 = [(MusicSettingsAudioQualityDetailController *)&v22 itemsFromParent];
  v4 = OBJC_IVAR___PSViewController__specifier;
  v5 = [*&self->PSListItemsController_opaque[OBJC_IVAR___PSViewController__specifier] properties];
  v6 = [v5 objectForKeyedSubscript:MusicSettingsValidDetails];

  v7 = [*&self->PSListItemsController_opaque[v4] properties];
  v21 = MusicSettingsShouldSelectAction;
  v8 = [v7 objectForKeyedSubscript:?];

  v9 = [*&self->PSListItemsController_opaque[v4] properties];
  v10 = MusicSettingsDidSelectAction;
  v11 = [v9 objectForKeyedSubscript:MusicSettingsDidSelectAction];

  v20 = v3;
  v12 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
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
@interface ClarityUIWallpaperSelectionController
- (ClarityUIWallpaperSelectionController)init;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_removeWallpaperButtonTapped:(id)a3;
- (void)_retrieveWallpaperData;
- (void)_setWallpaper:(id)a3;
- (void)_showImagePicker:(id)a3;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)saveWallpaperData:(id)a3;
@end

@implementation ClarityUIWallpaperSelectionController

- (ClarityUIWallpaperSelectionController)init
{
  v5.receiver = self;
  v5.super_class = ClarityUIWallpaperSelectionController;
  v2 = [(ClarityUIWallpaperSelectionController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ClarityUIWallpaperSelectionController *)v2 _retrieveWallpaperData];
  }

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[ClarityUIWallpaperPreviewTableCell previewSpecifier];
    [v6 setProperty:self->_wallpaperData forKey:@"wallpaperData"];
    [v5 addObject:v6];
    v7 = settingsLocString(@"CHOOSE_WALLPAPER", @"ClarityUISettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v8 setButtonAction:"_showImagePicker:"];
    v9 = PSAllowMultilineTitleKey;
    [v8 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v5 addObject:v8];
    if (self->_wallpaperData)
    {
      v10 = +[PSSpecifier emptyGroupSpecifier];
      v11 = settingsLocString(@"REMOVE_WALLPAPER", @"ClarityUISettings");
      v12 = [PSSpecifier deleteButtonSpecifierWithName:v11 target:self action:"_removeWallpaperButtonTapped:"];

      [v12 setProperty:&__kCFBooleanTrue forKey:v9];
      [v5 addObject:v10];
      [v5 addObject:v12];
    }

    v13 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6.receiver = self;
  v6.super_class = ClarityUIWallpaperSelectionController;
  v4 = [(ClarityUIWallpaperSelectionController *)&v6 tableView:a3 cellForRowAtIndexPath:a4];

  return v4;
}

- (void)_showImagePicker:(id)a3
{
  v4 = objc_alloc_init(UIImagePickerController);
  [v4 setSourceType:0];
  [v4 setDelegate:self];
  [(ClarityUIWallpaperSelectionController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_removeWallpaperButtonTapped:(id)a3
{
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = settingsLocString(@"REMOVE_WALLPAPER", @"ClarityUISettings");
  [v8 setTitle:v4];

  v5 = settingsLocString(@"REMOVE_WALLPAPER_PROMP", @"ClarityUISettings");
  [v8 setPrompt:v5];

  v6 = settingsLocString(@"CANCEL", @"ClarityUISettings");
  [v8 setCancelButton:v6];

  v7 = settingsLocString(@"REMOVE_WALLPAPER", @"ClarityUISettings");
  [v8 setOkButton:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [(ClarityUIWallpaperSelectionController *)self showConfirmationViewForSpecifier:v8];
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  wallpaperData = self->_wallpaperData;
  self->_wallpaperData = 0;

  v5 = CLFWallpaperURL();
  v6 = [v5 path];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v12 = 0;
    [v9 removeItemAtURL:v5 error:&v12];
    v10 = v12;

    if (v10)
    {
      v11 = AXLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ClarityUIWallpaperSelectionController confirmationViewAcceptedForSpecifier:];
      }
    }
  }

  [(ClarityUIWallpaperSelectionController *)self reloadSpecifiers];
}

- (void)_retrieveWallpaperData
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__ClarityUIWallpaperSelectionController__retrieveWallpaperData__block_invoke;
  block[3] = &unk_2553B0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __63__ClarityUIWallpaperSelectionController__retrieveWallpaperData__block_invoke(uint64_t a1)
{
  v2 = CLFWallpaperURL();
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = [[NSData alloc] initWithContentsOfFile:v3];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __63__ClarityUIWallpaperSelectionController__retrieveWallpaperData__block_invoke_2;
    v7[3] = &unk_255538;
    v7[4] = *(a1 + 32);
    v8 = v5;
    v6 = v5;
    dispatch_async(&_dispatch_main_q, v7);
  }
}

id __63__ClarityUIWallpaperSelectionController__retrieveWallpaperData__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v6 = a3;
  v8 = [a4 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];
  v7 = UIImageJPEGRepresentation(v8, 1.0);
  [(ClarityUIWallpaperSelectionController *)self _setWallpaper:v7];

  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (void)_setWallpaper:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __55__ClarityUIWallpaperSelectionController__setWallpaper___block_invoke;
  v7[3] = &unk_255538;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)saveWallpaperData:(id)a3
{
  v4 = a3;
  v5 = CLFWallpaperURL();
  v6 = [v5 path];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  v9 = +[NSFileManager defaultManager];
  v10 = v9;
  if (v8)
  {
    v21 = 0;
    [v9 removeItemAtURL:v5 error:&v21];
    v11 = v21;

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ClarityUIWallpaperSelectionController saveWallpaperData:];
    }
  }

  else
  {
    v13 = CLFWallpaperDirectory();
    v20 = 0;
    [v10 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v20];
    v11 = v20;

    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = AXLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ClarityUIWallpaperSelectionController saveWallpaperData:];
    }
  }

LABEL_9:
  v22 = NSFileProtectionKey;
  v23 = NSFileProtectionNone;
  v14 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v15 = +[NSFileManager defaultManager];
  v16 = [v15 createFileAtPath:v6 contents:v4 attributes:v14];

  if (v16)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__ClarityUIWallpaperSelectionController_saveWallpaperData___block_invoke;
    block[3] = &unk_255538;
    block[4] = self;
    v19 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v17 = AXLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ClarityUIWallpaperSelectionController saveWallpaperData:];
    }
  }
}

id __59__ClarityUIWallpaperSelectionController_saveWallpaperData___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

@end
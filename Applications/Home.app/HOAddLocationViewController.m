@interface HOAddLocationViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)textFieldShouldReturn:(id)a3;
- (HOAddLocationViewController)init;
- (HOAddLocationViewController)initWithCoder:(id)a3;
- (HOAddLocationViewController)initWithName:(id)a3 delegate:(id)a4;
- (HOAddLocationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HOAddLocationViewController)initWithStyle:(int64_t)a3;
- (HOAddLocationViewControllerDelegate)delegate;
- (HUEditableTextCell)nameCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 rowIdentifier:(id)a5;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)cancelButtonPressed:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)nameCellTextChanged:(id)a3;
- (void)presentWallpaperEditingViewControllerWithImage:(id)a3 wallpaper:(id)a4;
- (void)saveButtonPressed:(id)a3;
- (void)setNavigationBarVisibility;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidChange:(id)a3;
- (void)updateCell:(id)a3 forIndexPath:(id)a4 animated:(BOOL)a5;
- (void)updateWallpaper:(id)a3 image:(id)a4;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4;
- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5;
- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3;
- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4;
@end

@implementation HOAddLocationViewController

- (HOAddLocationViewController)initWithName:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HOAddLocationViewController;
  v8 = [(HOAddLocationViewController *)&v15 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:0];
    homeBuilder = v9->_homeBuilder;
    v9->_homeBuilder = v10;

    v12 = [v6 copy];
    editedName = v9->_editedName;
    v9->_editedName = v12;

    v9->_shouldShowFullWallpaperSection = 1;
  }

  return v9;
}

- (HOAddLocationViewController)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("init");
  [v4 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController init]", v5}];

  return 0;
}

- (HOAddLocationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  v7 = NSStringFromSelector("init");
  [v6 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:77 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOAddLocationViewController)initWithCoder:(id)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:82 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController initWithCoder:]", v6}];

  return 0;
}

- (HOAddLocationViewController)initWithStyle:(int64_t)a3
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:87 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController initWithStyle:]", v6}];

  return 0;
}

- (void)viewDidLoad
{
  v31.receiver = self;
  v31.super_class = HOAddLocationViewController;
  [(HOAddLocationViewController *)&v31 viewDidLoad];
  [(HOAddLocationViewController *)self setNavigationBarVisibility];
  v3 = [(HOAddLocationViewController *)self tableView];
  [v3 setRowHeight:UITableViewAutomaticDimension];

  v4 = [(HOAddLocationViewController *)self tableView];
  [v4 setEstimatedRowHeight:44.0];

  v5 = [(HOAddLocationViewController *)self tableView];
  [v5 _setSectionContentInsetFollowsLayoutMargins:1];

  v6 = sub_100003520(@"HOAddLocationTitle");
  [(HOAddLocationViewController *)self setTitle:v6];

  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v32[2] = objc_opt_class();
  v32[3] = objc_opt_class();
  v32[4] = objc_opt_class();
  v32[5] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v32 count:6];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100003708;
  v30[3] = &unk_1000C1C50;
  v30[4] = self;
  [v7 na_each:v30];
  v8 = [(HOAddLocationViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v8 registerClass:v9 forHeaderFooterViewReuseIdentifier:v11];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v12 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    [(HOAddLocationViewController *)self setWallpaperPickerViewController:v12];
  }

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonPressed:"];
  v14 = [(HOAddLocationViewController *)self navigationItem];
  [v14 setRightBarButtonItem:v13];

  v15 = [(HOAddLocationViewController *)self navigationItem];
  v16 = [v15 rightBarButtonItem];
  [v16 setStyle:2];

  v17 = [(HOAddLocationViewController *)self navigationItem];
  v18 = [v17 rightBarButtonItem];
  [v18 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.Save"];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonPressed:"];
  v20 = [(HOAddLocationViewController *)self navigationItem];
  [v20 setLeftBarButtonItem:v19];

  v21 = [(HOAddLocationViewController *)self navigationItem];
  v22 = [v21 leftBarButtonItem];
  [v22 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.Cancel"];

  v23 = [(HOAddLocationViewController *)self navigationItem];
  v24 = [v23 rightBarButtonItem];
  [v24 setEnabled:0];

  v25 = [HUTableViewDiffableDataSource alloc];
  v26 = [(HOAddLocationViewController *)self tableView];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100003778;
  v29[3] = &unk_1000C1C78;
  v29[4] = self;
  v27 = [v25 initWithTableView:v26 cellProvider:v29 delegate:self];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v27;

  [(HOAddLocationViewController *)self applySnapshotWithAnimation:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HOAddLocationViewController;
  [(HOAddLocationViewController *)&v5 viewWillDisappear:1];
  v4 = [(HOAddLocationViewController *)self view];
  [v4 endEditing:1];
}

- (void)saveButtonPressed:(id)a3
{
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = objc_opt_class();
    v35 = 2080;
    v36 = "[HOAddLocationViewController saveButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Save button pressed.", buf, 0x16u);
  }

  v6 = [(HOAddLocationViewController *)self editedName];
  v7 = [HFUtilities sanitizeUserEnteredHomeKitName:v6];

  v8 = [(HOAddLocationViewController *)self nameCell];
  v9 = [v8 textField];
  [v9 setText:v7];

  v10 = [(HOAddLocationViewController *)self homeBuilder];
  [v10 setName:v7];

  v11 = [(HOAddLocationViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [(HOAddLocationViewController *)self setSavedButtonBarItem:v12];

  v13 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v14 = [[UIBarButtonItem alloc] initWithCustomView:v13];
  v15 = [(HOAddLocationViewController *)self navigationItem];
  [v15 setRightBarButtonItem:v14];

  [v13 startAnimating];
  v16 = [(HOAddLocationViewController *)self nameCell];
  v17 = [v16 textField];
  [v17 resignFirstResponder];

  v18 = [[UIBarButtonItem alloc] initWithCustomView:v13];
  v19 = [(HOAddLocationViewController *)self navigationItem];
  [v19 setRightBarButtonItem:v18];

  v20 = [(HOAddLocationViewController *)self nameCell];
  v21 = [v20 textField];
  [v21 resignFirstResponder];

  v22 = [(HOAddLocationViewController *)self homeBuilder];
  v23 = [v22 commitItem];

  objc_initWeak(buf, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100003D58;
  v32[3] = &unk_1000C1CA0;
  v32[4] = self;
  v24 = [v23 addCompletionBlock:v32];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003DC8;
  v31[3] = &unk_1000C1CC8;
  v31[4] = self;
  v25 = [v23 addSuccessBlock:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003E5C;
  v28[3] = &unk_1000C1D18;
  objc_copyWeak(&v30, buf);
  v26 = v7;
  v29 = v26;
  v27 = [v23 addFailureBlock:v28];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = [(HOAddLocationViewController *)self delegate];
  [v4 addLocationViewController:self didFinishWithHome:0];
}

- (void)nameCellTextChanged:(id)a3
{
  v9 = a3;
  v4 = [v9 text];
  if (v4)
  {
    v5 = [v9 text];
    v6 = [v5 isEqualToString:&stru_1000C7DF8] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HOAddLocationViewController *)self navigationItem];
  v8 = [v7 rightBarButtonItem];
  [v8 setEnabled:v6];

  [(HOAddLocationViewController *)self setModalInPresentation:v6];
}

- (void)updateCell:(id)a3 forIndexPath:(id)a4 animated:(BOOL)a5
{
  v7 = a4;
  v8 = [(HOAddLocationViewController *)self diffableDataSource];
  v9 = [v8 itemIdentifierForIndexPath:v7];

  LODWORD(v7) = [v9 isEqualToString:off_1000D81E0];
  if (v7)
  {
    v10 = [(HOAddLocationViewController *)self homeBuilder];
    v11 = [v10 wallpaperBuilder];
    v12 = [v11 wallpaperEditCollectionFuture];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004398;
    v14[3] = &unk_1000C1D40;
    v14[4] = self;
    v15 = a5;
    v13 = [v12 addSuccessBlock:v14];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 rowIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 isEqualToString:off_1000D81C0])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v8 dequeueReusableCellWithIdentifier:v12 forIndexPath:v9];

    v14 = [v13 textField];
    [v14 setAutocapitalizationType:1];

    v15 = [v13 textField];
    [v15 setClearButtonMode:3];

    v16 = [v13 textField];
    [v16 setDelegate:self];

    v17 = [(HOAddLocationViewController *)self editedName];
    v18 = [v13 textField];
    [v18 setText:v17];

    [(HOAddLocationViewController *)self setNameCell:v13];
    v19 = [(HOAddLocationViewController *)self nameCell];
    v20 = [v19 textField];
    [v20 addTarget:self action:"nameCellTextChanged:" forControlEvents:917504];

LABEL_5:
    goto LABEL_6;
  }

  if ([v10 isEqualToString:off_1000D81E0])
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v13 = [v8 dequeueReusableCellWithIdentifier:v22 forIndexPath:v9];

    v23 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v13 setViewController:v23];

    v24 = +[HFWallpaperManager sharedInstance];
    v25 = [v24 allNamedWallpapersForWallpaperCollectionType:0];
    v26 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v26 setNamedWallpapers:v25];

    v27 = +[HFWallpaperManager sharedInstance];
    v28 = [v27 allNamedWallpaperThumbnailsForWallpaperCollectionType:0];
    v29 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v29 setNamedWallpaperThumbnails:v28];

    v30 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v8 frame];
    [v30 setImageSizeToFitWidth:3 forNumberOfWallpapers:v31];

    v19 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v19 setDelegate:self];
    goto LABEL_5;
  }

  if ([v10 isEqualToString:off_1000D81C8])
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v13 = [v8 dequeueReusableCellWithIdentifier:v34 forIndexPath:v9];

    v35 = sub_100003520(@"HOAddLocationTakePhotoTitle");
    v36 = [v13 textLabel];
    [v36 setText:v35];

    [v13 setDisabled:{+[UIImagePickerController isSourceTypeAvailable:](UIImagePickerController, "isSourceTypeAvailable:", 1) ^ 1}];
    v37 = @"Home.HomeSettings.AddHome.TakePhoto";
LABEL_13:
    [v13 setAccessibilityIdentifier:v37];
    goto LABEL_6;
  }

  if ([v10 isEqualToString:off_1000D81D0])
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v13 = [v8 dequeueReusableCellWithIdentifier:v39 forIndexPath:v9];

    [v13 setAccessoryType:1];
    [v13 setHideIcon:1];
    v40 = sub_100003520(@"HOAddLocationChooseWallpaperTitle");
    [v13 setTitleText:v40];

    v37 = @"Home.HomeSettings.AddHome.ChooseFromExisting";
    goto LABEL_13;
  }

  if ([v10 isEqualToString:off_1000D81D8])
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = [v8 dequeueReusableCellWithIdentifier:v42 forIndexPath:v9];

    [v43 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.WallpaperThumbnail"];
    [v43 setDelegate:self];
    v44 = +[UIScreen mainScreen];
    [v44 bounds];
    v46 = v45;
    v47 = +[UIScreen mainScreen];
    [v47 bounds];
    v49 = v46 / v48;

    [v43 setImageSize:round(v49 * 244.0)];
    v50 = [(HOAddLocationViewController *)self homeBuilder];
    v51 = [v50 wallpaperBuilder];
    v52 = [v51 wallpaperEditCollectionFuture];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100004A14;
    v54[3] = &unk_1000C1D68;
    v13 = v43;
    v55 = v13;
    v53 = [v52 addSuccessBlock:v54];
  }

  else
  {
    v13 = 0;
  }

LABEL_6:
  [(HOAddLocationViewController *)self updateCell:v13 forIndexPath:v9 animated:0];

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(HOAddLocationViewController *)self diffableDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v6];

  if ([v8 isEqualToString:off_1000D81C8])
  {
    v9 = objc_alloc_init(UIImagePickerController);
    [v9 setDelegate:self];
    [v9 setSourceType:1];
    [(HOAddLocationViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    if ([v8 isEqualToString:off_1000D81D0])
    {
      v10 = [(HOAddLocationViewController *)self navigationController];
      v11 = HULocalizedString();
      [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:v10 collectionType:0 withTitle:v11 delegate:self];

      goto LABEL_8;
    }

    if (![v8 isEqualToString:off_1000D81D8])
    {
      goto LABEL_8;
    }

    v9 = [(HOAddLocationViewController *)self homeBuilder];
    v12 = [v9 wallpaperBuilder];
    v13 = [v12 wallpaperEditCollectionFuture];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004C84;
    v15[3] = &unk_1000C1D68;
    v15[4] = self;
    v14 = [v13 addSuccessBlock:v15];
  }

LABEL_8:
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HOAddLocationViewController *)self diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = ([v7 isEqualToString:off_1000D81E0] & 1) == 0 && (+[UIImagePickerController isSourceTypeAvailable:](UIImagePickerController, "isSourceTypeAvailable:", 1) || (objc_msgSend(v7, "isEqualToString:", off_1000D81C8) & 1) == 0);
  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = +[UIListContentConfiguration groupedHeaderConfiguration];
  v8 = [(HOAddLocationViewController *)self diffableDataSource];
  v9 = [v8 sectionIdentifierForIndex:a4];

  if ([v9 isEqualToString:off_1000D81B0])
  {
    v10 = @"HOAddLocationNameSection";
LABEL_5:
    v11 = sub_100003520(v10);
    [v7 setText:v11];
    goto LABEL_7;
  }

  if ([v9 isEqualToString:off_1000D81B8])
  {
    v10 = @"HOAddLocationWallpaperSectionTitle";
    goto LABEL_5;
  }

  v11 = v7;
  v7 = 0;
LABEL_7:

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v13];

  [v14 setContentConfiguration:v7];

  return v14;
}

- (void)textFieldDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 text];
  [(HOAddLocationViewController *)self setEditedName:v4];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  v6 = [HFUtilities sanitizeUserEnteredHomeKitName:v5];
  [(HOAddLocationViewController *)self setEditedName:v6];

  [v4 resignFirstResponder];
  return 1;
}

- (void)wallpaperPickerDidFinish:(id)a3 wallpaper:(id)a4 image:(id)a5
{
  [(HOAddLocationViewController *)self updateWallpaper:a4 image:a5];
  v7 = [(HOAddLocationViewController *)self navigationController];
  v6 = [v7 popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)a3 didReceiveDroppedImage:(id)a4
{
  v5 = a4;
  v8 = +[NSUUID UUID];
  v6 = [v8 UUIDString];
  v7 = [HFWallpaper customWallpaperWithAssetIdentifier:v6];
  [(HOAddLocationViewController *)self updateWallpaper:v7 image:v5];
}

- (void)wallpaperPicker:(id)a3 didReceiveDroppedImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v16 = [HFWallpaper customWallpaperWithAssetIdentifier:v9];

  [v7 setOriginalCustomImage:v6];
  v10 = [(HOAddLocationViewController *)self homeBuilder];
  v11 = [v10 wallpaperBuilder];
  [v11 setWallpaper:v16 image:v6];

  v12 = [(HOAddLocationViewController *)self diffableDataSource];
  v13 = [v12 indexPathForItemIdentifier:off_1000D81E0];

  v14 = [(HOAddLocationViewController *)self tableView];
  v15 = [v14 cellForRowAtIndexPath:v13];
  [(HOAddLocationViewController *)self updateCell:v15 forIndexPath:v13 animated:1];
}

- (void)wallpaperPicker:(id)a3 didSelectWallpaper:(id)a4 withImage:(id)a5
{
  v7 = a5;
  v8 = a4;
  v10 = [(HOAddLocationViewController *)self homeBuilder];
  v9 = [v10 wallpaperBuilder];
  [v9 setWallpaper:v8 image:v7];
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)a3
{
  v4 = [(HOAddLocationViewController *)self homeBuilder];
  v5 = [v4 wallpaperBuilder];
  v6 = [v5 wallpaperEditCollectionFuture];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000053D0;
  v8[3] = &unk_1000C1D68;
  v8[4] = self;
  v7 = [v6 addSuccessBlock:v8];
}

- (void)wallpaperEditing:(id)a3 didFinishWithWallpaper:(id)a4 image:(id)a5
{
  [(HOAddLocationViewController *)self updateWallpaper:a4 image:a5];

  [(HOAddLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  v5 = a4;
  [(HOAddLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [v5 objectForKeyedSubscript:UIImagePickerControllerOriginalImage];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = [HFWallpaper alloc];
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:v9 cropInfo:0];

  v11 = +[HFWallpaperManager sharedInstance];
  v12 = [v11 processOriginalImageFromWallpaper:v10 originalImage:v6];

  [(HOAddLocationViewController *)self presentWallpaperEditingViewControllerWithImage:v12 wallpaper:v10];
}

- (void)presentWallpaperEditingViewControllerWithImage:(id)a3 wallpaper:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:v6 image:v7 delegate:self];

  [(HOAddLocationViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)updateWallpaper:(id)a3 image:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HOAddLocationViewController *)self homeBuilder];
  v9 = [v8 wallpaperBuilder];
  [v9 setWallpaper:v7 image:v6];

  v12 = [(HOAddLocationViewController *)self diffableDataSource];
  v10 = [(HOAddLocationViewController *)self diffableDataSource];
  v11 = [v10 snapshot];
  [v12 applySnapshotUsingReloadData:v11];
}

- (void)setNavigationBarVisibility
{
  v3 = [(HOAddLocationViewController *)self navigationController];
  [v3 setNavigationBarHidden:0 animated:1];

  v4 = [(HOAddLocationViewController *)self navigationItem];
  [v4 setHidesBackButton:0];

  v5 = [(HOAddLocationViewController *)self navigationController];
  v6 = [v5 navigationBar];
  v7 = +[UIColor systemBackgroundColor];
  [v6 setBarTintColor:v7];

  v9 = [(HOAddLocationViewController *)self navigationController];
  v8 = [v9 navigationBar];
  [v8 _setHidesShadow:0];
}

- (HOAddLocationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUEditableTextCell)nameCell
{
  WeakRetained = objc_loadWeakRetained(&self->_nameCell);

  return WeakRetained;
}

@end
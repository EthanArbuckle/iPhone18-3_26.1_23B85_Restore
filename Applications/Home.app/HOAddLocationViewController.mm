@interface HOAddLocationViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)textFieldShouldReturn:(id)return;
- (HOAddLocationViewController)init;
- (HOAddLocationViewController)initWithCoder:(id)coder;
- (HOAddLocationViewController)initWithName:(id)name delegate:(id)delegate;
- (HOAddLocationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HOAddLocationViewController)initWithStyle:(int64_t)style;
- (HOAddLocationViewControllerDelegate)delegate;
- (HUEditableTextCell)nameCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path rowIdentifier:(id)identifier;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancelButtonPressed:(id)pressed;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)nameCellTextChanged:(id)changed;
- (void)presentWallpaperEditingViewControllerWithImage:(id)image wallpaper:(id)wallpaper;
- (void)saveButtonPressed:(id)pressed;
- (void)setNavigationBarVisibility;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidChange:(id)change;
- (void)updateCell:(id)cell forIndexPath:(id)path animated:(BOOL)animated;
- (void)updateWallpaper:(id)wallpaper image:(id)image;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image;
- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image;
- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image;
- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor;
- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image;
@end

@implementation HOAddLocationViewController

- (HOAddLocationViewController)initWithName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = HOAddLocationViewController;
  v8 = [(HOAddLocationViewController *)&v15 initWithStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = [[HFHomeBuilder alloc] initWithExistingObject:0 inHome:0];
    homeBuilder = v9->_homeBuilder;
    v9->_homeBuilder = v10;

    v12 = [nameCopy copy];
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

- (HOAddLocationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  v7 = NSStringFromSelector("init");
  [v6 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:77 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController initWithNibName:bundle:]", v7}];

  return 0;
}

- (HOAddLocationViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromSelector("init");
  [v5 handleFailureInMethod:a2 object:self file:@"HOAddLocationViewController.m" lineNumber:82 description:{@"%s is unavailable; use %@ instead", "-[HOAddLocationViewController initWithCoder:]", v6}];

  return 0;
}

- (HOAddLocationViewController)initWithStyle:(int64_t)style
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
  tableView = [(HOAddLocationViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(HOAddLocationViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:44.0];

  tableView3 = [(HOAddLocationViewController *)self tableView];
  [tableView3 _setSectionContentInsetFollowsLayoutMargins:1];

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
  tableView4 = [(HOAddLocationViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [tableView4 registerClass:v9 forHeaderFooterViewReuseIdentifier:v11];

  if (+[HUWallpaperPickerInlineViewController useWallpaperPickerCell])
  {
    v12 = objc_alloc_init(HUWallpaperPickerInlineViewController);
    [(HOAddLocationViewController *)self setWallpaperPickerViewController:v12];
  }

  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"saveButtonPressed:"];
  navigationItem = [(HOAddLocationViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v13];

  navigationItem2 = [(HOAddLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setStyle:2];

  navigationItem3 = [(HOAddLocationViewController *)self navigationItem];
  rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem2 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.Save"];

  v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonPressed:"];
  navigationItem4 = [(HOAddLocationViewController *)self navigationItem];
  [navigationItem4 setLeftBarButtonItem:v19];

  navigationItem5 = [(HOAddLocationViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem5 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.Cancel"];

  navigationItem6 = [(HOAddLocationViewController *)self navigationItem];
  rightBarButtonItem3 = [navigationItem6 rightBarButtonItem];
  [rightBarButtonItem3 setEnabled:0];

  v25 = [HUTableViewDiffableDataSource alloc];
  tableView5 = [(HOAddLocationViewController *)self tableView];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100003778;
  v29[3] = &unk_1000C1C78;
  v29[4] = self;
  v27 = [v25 initWithTableView:tableView5 cellProvider:v29 delegate:self];
  diffableDataSource = self->_diffableDataSource;
  self->_diffableDataSource = v27;

  [(HOAddLocationViewController *)self applySnapshotWithAnimation:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = HOAddLocationViewController;
  [(HOAddLocationViewController *)&v5 viewWillDisappear:1];
  view = [(HOAddLocationViewController *)self view];
  [view endEditing:1];
}

- (void)saveButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = objc_opt_class();
    v35 = 2080;
    v36 = "[HOAddLocationViewController saveButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(%@:%s) Save button pressed.", buf, 0x16u);
  }

  editedName = [(HOAddLocationViewController *)self editedName];
  v7 = [HFUtilities sanitizeUserEnteredHomeKitName:editedName];

  nameCell = [(HOAddLocationViewController *)self nameCell];
  textField = [nameCell textField];
  [textField setText:v7];

  homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
  [homeBuilder setName:v7];

  navigationItem = [(HOAddLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [(HOAddLocationViewController *)self setSavedButtonBarItem:rightBarButtonItem];

  v13 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  v14 = [[UIBarButtonItem alloc] initWithCustomView:v13];
  navigationItem2 = [(HOAddLocationViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v14];

  [v13 startAnimating];
  nameCell2 = [(HOAddLocationViewController *)self nameCell];
  textField2 = [nameCell2 textField];
  [textField2 resignFirstResponder];

  v18 = [[UIBarButtonItem alloc] initWithCustomView:v13];
  navigationItem3 = [(HOAddLocationViewController *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v18];

  nameCell3 = [(HOAddLocationViewController *)self nameCell];
  textField3 = [nameCell3 textField];
  [textField3 resignFirstResponder];

  homeBuilder2 = [(HOAddLocationViewController *)self homeBuilder];
  commitItem = [homeBuilder2 commitItem];

  objc_initWeak(buf, self);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100003D58;
  v32[3] = &unk_1000C1CA0;
  v32[4] = self;
  v24 = [commitItem addCompletionBlock:v32];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003DC8;
  v31[3] = &unk_1000C1CC8;
  v31[4] = self;
  v25 = [commitItem addSuccessBlock:v31];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003E5C;
  v28[3] = &unk_1000C1D18;
  objc_copyWeak(&v30, buf);
  v26 = v7;
  v29 = v26;
  v27 = [commitItem addFailureBlock:v28];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)cancelButtonPressed:(id)pressed
{
  delegate = [(HOAddLocationViewController *)self delegate];
  [delegate addLocationViewController:self didFinishWithHome:0];
}

- (void)nameCellTextChanged:(id)changed
{
  changedCopy = changed;
  text = [changedCopy text];
  if (text)
  {
    text2 = [changedCopy text];
    v6 = [text2 isEqualToString:&stru_1000C7DF8] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  navigationItem = [(HOAddLocationViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v6];

  [(HOAddLocationViewController *)self setModalInPresentation:v6];
}

- (void)updateCell:(id)cell forIndexPath:(id)path animated:(BOOL)animated
{
  pathCopy = path;
  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  v9 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  LODWORD(pathCopy) = [v9 isEqualToString:off_1000D81E0];
  if (pathCopy)
  {
    homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
    wallpaperBuilder = [homeBuilder wallpaperBuilder];
    wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004398;
    v14[3] = &unk_1000C1D40;
    v14[4] = self;
    animatedCopy = animated;
    v13 = [wallpaperEditCollectionFuture addSuccessBlock:v14];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path rowIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:off_1000D81C0])
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];

    textField = [v13 textField];
    [textField setAutocapitalizationType:1];

    textField2 = [v13 textField];
    [textField2 setClearButtonMode:3];

    textField3 = [v13 textField];
    [textField3 setDelegate:self];

    editedName = [(HOAddLocationViewController *)self editedName];
    textField4 = [v13 textField];
    [textField4 setText:editedName];

    [(HOAddLocationViewController *)self setNameCell:v13];
    nameCell = [(HOAddLocationViewController *)self nameCell];
    textField5 = [nameCell textField];
    [textField5 addTarget:self action:"nameCellTextChanged:" forControlEvents:917504];

LABEL_5:
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:off_1000D81E0])
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v22 forIndexPath:pathCopy];

    wallpaperPickerViewController = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [v13 setViewController:wallpaperPickerViewController];

    v24 = +[HFWallpaperManager sharedInstance];
    v25 = [v24 allNamedWallpapersForWallpaperCollectionType:0];
    wallpaperPickerViewController2 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [wallpaperPickerViewController2 setNamedWallpapers:v25];

    v27 = +[HFWallpaperManager sharedInstance];
    v28 = [v27 allNamedWallpaperThumbnailsForWallpaperCollectionType:0];
    wallpaperPickerViewController3 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [wallpaperPickerViewController3 setNamedWallpaperThumbnails:v28];

    wallpaperPickerViewController4 = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [viewCopy frame];
    [wallpaperPickerViewController4 setImageSizeToFitWidth:3 forNumberOfWallpapers:v31];

    nameCell = [(HOAddLocationViewController *)self wallpaperPickerViewController];
    [nameCell setDelegate:self];
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:off_1000D81C8])
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v34 forIndexPath:pathCopy];

    v35 = sub_100003520(@"HOAddLocationTakePhotoTitle");
    textLabel = [v13 textLabel];
    [textLabel setText:v35];

    [v13 setDisabled:{+[UIImagePickerController isSourceTypeAvailable:](UIImagePickerController, "isSourceTypeAvailable:", 1) ^ 1}];
    v37 = @"Home.HomeSettings.AddHome.TakePhoto";
LABEL_13:
    [v13 setAccessibilityIdentifier:v37];
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:off_1000D81D0])
  {
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v39 forIndexPath:pathCopy];

    [v13 setAccessoryType:1];
    [v13 setHideIcon:1];
    v40 = sub_100003520(@"HOAddLocationChooseWallpaperTitle");
    [v13 setTitleText:v40];

    v37 = @"Home.HomeSettings.AddHome.ChooseFromExisting";
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:off_1000D81D8])
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = [viewCopy dequeueReusableCellWithIdentifier:v42 forIndexPath:pathCopy];

    [v43 setAccessibilityIdentifier:@"Home.HomeSettings.AddHome.WallpaperThumbnail"];
    [v43 setDelegate:self];
    v44 = +[UIScreen mainScreen];
    [v44 bounds];
    v46 = v45;
    v47 = +[UIScreen mainScreen];
    [v47 bounds];
    v49 = v46 / v48;

    [v43 setImageSize:round(v49 * 244.0)];
    homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
    wallpaperBuilder = [homeBuilder wallpaperBuilder];
    wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_100004A14;
    v54[3] = &unk_1000C1D68;
    v13 = v43;
    v55 = v13;
    v53 = [wallpaperEditCollectionFuture addSuccessBlock:v54];
  }

  else
  {
    v13 = 0;
  }

LABEL_6:
  [(HOAddLocationViewController *)self updateCell:v13 forIndexPath:pathCopy animated:0];

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  v8 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if ([v8 isEqualToString:off_1000D81C8])
  {
    homeBuilder = objc_alloc_init(UIImagePickerController);
    [homeBuilder setDelegate:self];
    [homeBuilder setSourceType:1];
    [(HOAddLocationViewController *)self presentViewController:homeBuilder animated:1 completion:0];
  }

  else
  {
    if ([v8 isEqualToString:off_1000D81D0])
    {
      navigationController = [(HOAddLocationViewController *)self navigationController];
      v11 = HULocalizedString();
      [HUWallpaperPickerViewController presentSecurePickerFromNavigationController:navigationController collectionType:0 withTitle:v11 delegate:self];

      goto LABEL_8;
    }

    if (![v8 isEqualToString:off_1000D81D8])
    {
      goto LABEL_8;
    }

    homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
    wallpaperBuilder = [homeBuilder wallpaperBuilder];
    wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004C84;
    v15[3] = &unk_1000C1D68;
    v15[4] = self;
    v14 = [wallpaperEditCollectionFuture addSuccessBlock:v15];
  }

LABEL_8:
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  v7 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  v8 = ([v7 isEqualToString:off_1000D81E0] & 1) == 0 && (+[UIImagePickerController isSourceTypeAvailable:](UIImagePickerController, "isSourceTypeAvailable:", 1) || (objc_msgSend(v7, "isEqualToString:", off_1000D81C8) & 1) == 0);
  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v7 = +[UIListContentConfiguration groupedHeaderConfiguration];
  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  v9 = [diffableDataSource sectionIdentifierForIndex:section];

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
  v14 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v13];

  [v14 setContentConfiguration:v7];

  return v14;
}

- (void)textFieldDidChange:(id)change
{
  object = [change object];
  text = [object text];
  [(HOAddLocationViewController *)self setEditedName:text];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  text = [returnCopy text];
  v6 = [HFUtilities sanitizeUserEnteredHomeKitName:text];
  [(HOAddLocationViewController *)self setEditedName:v6];

  [returnCopy resignFirstResponder];
  return 1;
}

- (void)wallpaperPickerDidFinish:(id)finish wallpaper:(id)wallpaper image:(id)image
{
  [(HOAddLocationViewController *)self updateWallpaper:wallpaper image:image];
  navigationController = [(HOAddLocationViewController *)self navigationController];
  v6 = [navigationController popToViewController:self animated:1];
}

- (void)wallpaperThumbnailCell:(id)cell didReceiveDroppedImage:(id)image
{
  imageCopy = image;
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v7 = [HFWallpaper customWallpaperWithAssetIdentifier:uUIDString];
  [(HOAddLocationViewController *)self updateWallpaper:v7 image:imageCopy];
}

- (void)wallpaperPicker:(id)picker didReceiveDroppedImage:(id)image
{
  imageCopy = image;
  pickerCopy = picker;
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v16 = [HFWallpaper customWallpaperWithAssetIdentifier:uUIDString];

  [pickerCopy setOriginalCustomImage:imageCopy];
  homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:v16 image:imageCopy];

  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  v13 = [diffableDataSource indexPathForItemIdentifier:off_1000D81E0];

  tableView = [(HOAddLocationViewController *)self tableView];
  v15 = [tableView cellForRowAtIndexPath:v13];
  [(HOAddLocationViewController *)self updateCell:v15 forIndexPath:v13 animated:1];
}

- (void)wallpaperPicker:(id)picker didSelectWallpaper:(id)wallpaper withImage:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];
}

- (void)wallpaperPickerRequestOpenWallpaperEditor:(id)editor
{
  homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  wallpaperEditCollectionFuture = [wallpaperBuilder wallpaperEditCollectionFuture];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000053D0;
  v8[3] = &unk_1000C1D68;
  v8[4] = self;
  v7 = [wallpaperEditCollectionFuture addSuccessBlock:v8];
}

- (void)wallpaperEditing:(id)editing didFinishWithWallpaper:(id)wallpaper image:(id)image
{
  [(HOAddLocationViewController *)self updateWallpaper:wallpaper image:image];

  [(HOAddLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  infoCopy = info;
  [(HOAddLocationViewController *)self dismissViewControllerAnimated:1 completion:0];
  v6 = [infoCopy objectForKeyedSubscript:UIImagePickerControllerOriginalImage];

  UIImageWriteToSavedPhotosAlbum(v6, 0, 0, 0);
  v7 = [HFWallpaper alloc];
  v8 = +[NSUUID UUID];
  uUIDString = [v8 UUIDString];
  v10 = [v7 initWithType:1 assetIdentifier:uUIDString cropInfo:0];

  v11 = +[HFWallpaperManager sharedInstance];
  v12 = [v11 processOriginalImageFromWallpaper:v10 originalImage:v6];

  [(HOAddLocationViewController *)self presentWallpaperEditingViewControllerWithImage:v12 wallpaper:v10];
}

- (void)presentWallpaperEditingViewControllerWithImage:(id)image wallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  imageCopy = image;
  v8 = [[HUWallpaperEditingViewController alloc] initWithWallpaper:wallpaperCopy image:imageCopy delegate:self];

  [(HOAddLocationViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)updateWallpaper:(id)wallpaper image:(id)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  homeBuilder = [(HOAddLocationViewController *)self homeBuilder];
  wallpaperBuilder = [homeBuilder wallpaperBuilder];
  [wallpaperBuilder setWallpaper:wallpaperCopy image:imageCopy];

  diffableDataSource = [(HOAddLocationViewController *)self diffableDataSource];
  diffableDataSource2 = [(HOAddLocationViewController *)self diffableDataSource];
  snapshot = [diffableDataSource2 snapshot];
  [diffableDataSource applySnapshotUsingReloadData:snapshot];
}

- (void)setNavigationBarVisibility
{
  navigationController = [(HOAddLocationViewController *)self navigationController];
  [navigationController setNavigationBarHidden:0 animated:1];

  navigationItem = [(HOAddLocationViewController *)self navigationItem];
  [navigationItem setHidesBackButton:0];

  navigationController2 = [(HOAddLocationViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  v7 = +[UIColor systemBackgroundColor];
  [navigationBar setBarTintColor:v7];

  navigationController3 = [(HOAddLocationViewController *)self navigationController];
  navigationBar2 = [navigationController3 navigationBar];
  [navigationBar2 _setHidesShadow:0];
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
@interface iFBAPreferencesViewController
- (BOOL)isWarningsOn;
- (UILabel)allowCellUploadsLabel;
- (UILabel)myBetaDevicesLabel;
- (UILabel)requireTouchIDCellLabel;
- (UILabel)resetWarningsLabel;
- (UILabel)showOnHomeScreenLabel;
- (UILabel)touchIDTimeoutLabel;
- (UILabel)useTouchIDSwitchCellLabel;
- (UISwitch)allowCellUploads;
- (UISwitch)touchIDSwitch;
- (UITableViewCell)resetWarningsCell;
- (UITableViewCell)touchIDCell;
- (UITableViewCell)usernameCell;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)userImage;
- (id)versionFooter;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureUserCell;
- (void)dealloc;
- (void)didResetWarnings:(id)warnings;
- (void)didSwitchCellularAccess:(id)access;
- (void)didTapSignOut:(id)out;
- (void)didToggleTouchID:(id)d;
- (void)resetWarnings;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation iFBAPreferencesViewController

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = iFBAPreferencesViewController;
  [(iFBAPreferencesViewController *)&v55 viewDidLoad];
  v3 = +[UIColor labelColor];
  useTouchIDSwitchCellLabel = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
  [useTouchIDSwitchCellLabel setTextColor:v3];

  v5 = +[UIColor labelColor];
  requireTouchIDCellLabel = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
  [requireTouchIDCellLabel setTextColor:v5];

  v7 = +[UIColor secondaryLabelColor];
  touchIDTimeoutLabel = [(iFBAPreferencesViewController *)self touchIDTimeoutLabel];
  [touchIDTimeoutLabel setTextColor:v7];

  v9 = +[UIColor labelColor];
  allowCellUploadsLabel = [(iFBAPreferencesViewController *)self allowCellUploadsLabel];
  [allowCellUploadsLabel setTextColor:v9];

  v11 = +[UIColor labelColor];
  myBetaDevicesLabel = [(iFBAPreferencesViewController *)self myBetaDevicesLabel];
  [myBetaDevicesLabel setTextColor:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [(iFBAPreferencesViewController *)self setDevicesId:v14];

  tableView = [(iFBAPreferencesViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:0.0];

  tableView2 = [(iFBAPreferencesViewController *)self tableView];
  [tableView2 setEstimatedSectionFooterHeight:0.0];

  tableView3 = [(iFBAPreferencesViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(iFBAPreferencesViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:44.0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"TOUCH_ID_PREFERENCE" value:&stru_1000E2210 table:0];
  useTouchIDSwitchCellLabel2 = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
  [useTouchIDSwitchCellLabel2 setText:v20];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"TOUCH_ID_REQUIRE" value:&stru_1000E2210 table:0];
  requireTouchIDCellLabel2 = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
  [requireTouchIDCellLabel2 setText:v23];

  if (+[iFBKUtils deviceSupportsFaceID])
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"FACE_ID_PREFERENCE" value:&stru_1000E2210 table:0];
    useTouchIDSwitchCellLabel3 = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
    [useTouchIDSwitchCellLabel3 setText:v26];

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"FACE_ID_REQUIRE" value:&stru_1000E2210 table:0];
    requireTouchIDCellLabel3 = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
    [requireTouchIDCellLabel3 setText:v29];
  }

  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"PREFERENCES" value:&stru_1000E2210 table:0];
  navigationItem = [(iFBAPreferencesViewController *)self navigationItem];
  [navigationItem setTitle:v32];

  v34 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone:"];
  navigationItem2 = [(iFBAPreferencesViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v34];

  v36 = +[NSNotificationCenter defaultCenter];
  tableView5 = [(iFBAPreferencesViewController *)self tableView];
  [v36 addObserver:tableView5 selector:"reloadData" name:UIContentSizeCategoryDidChangeNotification object:0];

  tableView6 = [(iFBAPreferencesViewController *)self tableView];
  [tableView6 setDelegate:self];

  tableView7 = [(iFBAPreferencesViewController *)self tableView];
  [tableView7 setDataSource:self];

  if ([(iFBAPreferencesViewController *)self isWarningsOn])
  {
    +[iFBAConstants tintColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v40 = ;
  resetWarningsCell = [(iFBAPreferencesViewController *)self resetWarningsCell];
  textLabel = [resetWarningsCell textLabel];
  [textLabel setTextColor:v40];

  resetWarningsCell2 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  [resetWarningsCell2 setSelectionStyle:0];

  resetWarningsCell3 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  accessibilityTraits = [resetWarningsCell3 accessibilityTraits];
  [resetWarningsCell3 setAccessibilityTraits:UIAccessibilityTraitButton | accessibilityTraits];

  v46 = objc_opt_new();
  v54 = 0;
  v47 = [v46 canEvaluatePolicy:1 error:&v54];
  v48 = v54;

  if (+[iFBAConstants supportsBiometricsLock]&& (v47 & 1) == 0)
  {
    [v48 code];
  }

  [(iFBAPreferencesViewController *)self setHideTouchID:?];
  if (v48 && [v48 code] == -7)
  {
    touchIDSwitch = [(iFBAPreferencesViewController *)self touchIDSwitch];
    [touchIDSwitch setOn:0];
  }

  else
  {
    touchIDSwitch = +[NSUserDefaults standardUserDefaults];
    v50 = [touchIDSwitch BOOLForKey:@"UseTouchIDLogin"];
    touchIDSwitch2 = [(iFBAPreferencesViewController *)self touchIDSwitch];
    [touchIDSwitch2 setOn:v50];
  }

  [(iFBAPreferencesViewController *)self configureUserCell];
  v52 = +[UIColor tintColor];
  resetWarningsLabel = [(iFBAPreferencesViewController *)self resetWarningsLabel];
  [resetWarningsLabel setTextColor:v52];
}

- (void)configureUserCell
{
  v18 = +[UIListContentConfiguration subtitleCellConfiguration];
  v3 = +[FBKData sharedInstance];
  currentUser = [v3 currentUser];

  fullName = [currentUser fullName];
  [v18 setText:fullName];

  v6 = +[UIColor labelColor];
  textProperties = [v18 textProperties];
  [textProperties setColor:v6];

  username = [currentUser username];
  [v18 setSecondaryText:username];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  secondaryTextProperties = [v18 secondaryTextProperties];
  [secondaryTextProperties setFont:v9];

  v11 = +[UIColor secondaryLabelColor];
  secondaryTextProperties2 = [v18 secondaryTextProperties];
  [secondaryTextProperties2 setColor:v11];

  [v18 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  userImage = [(iFBAPreferencesViewController *)self userImage];
  [v18 setImage:userImage];

  imageProperties = [v18 imageProperties];
  [imageProperties setCornerRadius:22.0];

  imageProperties2 = [v18 imageProperties];
  [imageProperties2 setMaximumSize:{44.0, 44.0}];

  usernameCell = [(iFBAPreferencesViewController *)self usernameCell];
  [usernameCell setUserInteractionEnabled:0];

  usernameCell2 = [(iFBAPreferencesViewController *)self usernameCell];
  [usernameCell2 setContentConfiguration:v18];
}

- (id)userImage
{
  v2 = +[FBKData sharedInstance];
  currentUser = [v2 currentUser];

  username = [currentUser username];
  v5 = [_TtC18Feedback_Assistant15FBAAvatarHelper contactImageForEmailAddress:username];

  if (!v5)
  {
    givenName = [currentUser givenName];
    familyName = [currentUser familyName];
    v5 = [_TtC18Feedback_Assistant15FBAAvatarHelper monogramAvatarImageForPreferredName:givenName familyName:familyName];
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v10.receiver = self;
  v10.super_class = iFBAPreferencesViewController;
  v6 = [(iFBAPreferencesViewController *)&v10 tableView:view numberOfRowsInSection:?];
  if (section == 2)
  {
    if ([(iFBAPreferencesViewController *)self hideTouchID])
    {
      return v6 - 2;
    }

    else
    {
      touchIDSwitch = [(iFBAPreferencesViewController *)self touchIDSwitch];
      isOn = [touchIDSwitch isOn];

      return v6 - (isOn ^ 1);
    }
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = iFBAPreferencesViewController;
  [(iFBAPreferencesViewController *)&v4 dealloc];
}

- (void)didTapSignOut:(id)out
{
  outCopy = out;
  v6 = +[FBKData sharedInstance];
  loginManager = [v6 loginManager];
  [loginManager logOut];

  +[FBKFileManager deleteAllDraftDirectories];
  [(iFBAPreferencesViewController *)self didTapDone:outCopy];
}

- (void)didSwitchCellularAccess:(id)access
{
  accessCopy = access;
  v4 = +[NSUserDefaults standardUserDefaults];
  isOn = [accessCopy isOn];

  [v4 setBool:isOn forKey:FBKAllowCellularFileUploads];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];
}

- (void)didResetWarnings:(id)warnings
{
  warningsCopy = warnings;
  if ([(iFBAPreferencesViewController *)self isWarningsOn])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"RESET_WARNINGS" value:&stru_1000E2210 table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"RESET_WARNINGS_MESSAGE" value:&stru_1000E2210 table:0];
    v9 = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"YES" value:&stru_1000E2210 table:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002A194;
    v17[3] = &unk_1000DE458;
    v17[4] = self;
    v12 = [UIAlertAction actionWithTitle:v11 style:2 handler:v17];
    [v9 addAction:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"NO" value:&stru_1000E2210 table:0];
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:0];
    [v9 addAction:v15];

    popoverPresentationController = [v9 popoverPresentationController];
    [popoverPresentationController setSourceItem:warningsCopy];

    [(iFBAPreferencesViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)didToggleTouchID:(id)d
{
  dCopy = d;
  v5 = objc_opt_new();
  v26 = 0;
  v6 = [v5 canEvaluatePolicy:1 error:&v26];
  v7 = v26;

  if ((v6 & 1) != 0 || [v7 code] != -7)
  {
    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 setBool:objc_msgSend(dCopy forKey:{"isOn"), @"UseTouchIDLogin"}];

    tableView = [(iFBAPreferencesViewController *)self tableView];
    [tableView reloadData];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    tableView = [v8 localizedStringForKey:@"TOUCH_ID_NOT_ENROLLED" value:&stru_1000E2210 table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"TOUCH_ID_NOT_ENROLLED_MESSAGE" value:&stru_1000E2210 table:0];

    if (+[iFBKUtils deviceSupportsFaceID])
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"FACE_ID_NOT_ENROLLED" value:&stru_1000E2210 table:0];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"FACE_ID_NOT_ENROLLED_MESSAGE" value:&stru_1000E2210 table:0];

      tableView = v13;
      v11 = v15;
    }

    v16 = [UIAlertController alertControllerWithTitle:tableView message:v11 preferredStyle:1];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10002A480;
    v24 = &unk_1000DE458;
    v25 = dCopy;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v21];
    [v16 addAction:{v19, v21, v22, v23, v24}];

    [(iFBAPreferencesViewController *)self presentViewController:v16 animated:1 completion:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  reuseIdentifier = [v7 reuseIdentifier];
  v9 = [reuseIdentifier isEqualToString:@"FBAResetWarningsCell"];

  if (v9)
  {
    [(iFBAPreferencesViewController *)self didResetWarnings:v7];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  reuseIdentifier2 = [v7 reuseIdentifier];
  devicesId = [(iFBAPreferencesViewController *)self devicesId];
  v12 = [reuseIdentifier2 isEqualToString:devicesId];

  if (v12)
  {
    storyboard = [(iFBAPreferencesViewController *)self storyboard];
    devicesId2 = [(iFBAPreferencesViewController *)self devicesId];
    v15 = [storyboard instantiateViewControllerWithIdentifier:devicesId2];

    [v15 setContext:1];
    navigationController = [(iFBAPreferencesViewController *)self navigationController];
    [navigationController pushViewController:v15 animated:1];
  }

  reuseIdentifier3 = [v7 reuseIdentifier];
  v18 = [reuseIdentifier3 isEqualToString:@"SignoutCell"];

  if (v18)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [(iFBAPreferencesViewController *)self didTapSignOut:v7];
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 4)
  {
    versionFooter = [(iFBAPreferencesViewController *)self versionFooter];
  }

  else if (section == 1)
  {
    v7 = +[NSBundle mainBundle];
    versionFooter = [v7 localizedStringForKey:@"CELLULAR_DATA_INFO_FOOTER" value:@"When enabled table:{supported devices will use cellular data to upload files.", 0}];
  }

  else
  {
    versionFooter = 0;
  }

  return versionFooter;
}

- (id)versionFooter
{
  if (FBKIsInternalInstall())
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 objectForInfoDictionaryKey:kCFBundleVersionKey];

    v4 = +[NSBundle mainBundle];
    v5 = [v4 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 objectForInfoDictionaryKey:kCFBundleNameKey];

    if (v3 && [v3 length])
    {
      [NSString stringWithFormat:@"\n%@ %@ (%@)", v7, v5, v3];
    }

    else
    {
      [NSString stringWithFormat:@"\n%@ %@", v7, v5, v10];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A8D8;
  v9[3] = &unk_1000DE8F0;
  v9[4] = self;
  coordinatorCopy = coordinator;
  [coordinatorCopy animateAlongsideTransition:v9 completion:&stru_1000DF4C8];
  v8.receiver = self;
  v8.super_class = iFBAPreferencesViewController;
  [(iFBAPreferencesViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (BOOL)isWarningsOn
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([v2 BOOLForKey:FBKSuppressPrivacyNoticePreferencesKey])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 objectForKey:FBKSuppressPrivacyNoticePreferencesUserKey];
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 integerForKey:FBKAgreedLegalVersionKey] != 0;
    }
  }

  return v3;
}

- (void)resetWarnings
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = FBKSuppressPrivacyNoticePreferencesKey;
  [v3 removeObjectForKey:FBKSuppressPrivacyNoticePreferencesKey];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = FBKSuppressPrivacyNoticePreferencesUserKey;
  [v5 removeObjectForKey:FBKSuppressPrivacyNoticePreferencesUserKey];

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = FBKAgreedLegalVersionKey;
  [v7 removeObjectForKey:FBKAgreedLegalVersionKey];

  v9 = +[NSUserDefaults standardUserDefaults];
  v10 = FBKSuppressMakeVisibleQuestion;
  [v9 removeObjectForKey:FBKSuppressMakeVisibleQuestion];

  v11 = +[iFBAConstants sharedUserDefaults];
  [v11 removeObjectForKey:v4];

  v12 = +[iFBAConstants sharedUserDefaults];
  [v12 removeObjectForKey:v6];

  v13 = +[iFBAConstants sharedUserDefaults];
  [v13 removeObjectForKey:v8];

  v14 = +[iFBAConstants sharedUserDefaults];
  [v14 removeObjectForKey:v10];

  v15 = +[iFBAConstants sharedUserDefaults];
  [v15 removeObjectForKey:v4];

  v16 = +[NSUserDefaults standardUserDefaults];
  [v16 synchronize];

  v19 = +[UIColor labelColor];
  resetWarningsCell = [(iFBAPreferencesViewController *)self resetWarningsCell];
  textLabel = [resetWarningsCell textLabel];
  [textLabel setTextColor:v19];
}

- (UISwitch)allowCellUploads
{
  WeakRetained = objc_loadWeakRetained(&self->_allowCellUploads);

  return WeakRetained;
}

- (UILabel)allowCellUploadsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_allowCellUploadsLabel);

  return WeakRetained;
}

- (UITableViewCell)resetWarningsCell
{
  WeakRetained = objc_loadWeakRetained(&self->_resetWarningsCell);

  return WeakRetained;
}

- (UITableViewCell)usernameCell
{
  WeakRetained = objc_loadWeakRetained(&self->_usernameCell);

  return WeakRetained;
}

- (UITableViewCell)touchIDCell
{
  WeakRetained = objc_loadWeakRetained(&self->_touchIDCell);

  return WeakRetained;
}

- (UILabel)touchIDTimeoutLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_touchIDTimeoutLabel);

  return WeakRetained;
}

- (UISwitch)touchIDSwitch
{
  WeakRetained = objc_loadWeakRetained(&self->_touchIDSwitch);

  return WeakRetained;
}

- (UILabel)useTouchIDSwitchCellLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_useTouchIDSwitchCellLabel);

  return WeakRetained;
}

- (UILabel)requireTouchIDCellLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_requireTouchIDCellLabel);

  return WeakRetained;
}

- (UILabel)myBetaDevicesLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_myBetaDevicesLabel);

  return WeakRetained;
}

- (UILabel)showOnHomeScreenLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_showOnHomeScreenLabel);

  return WeakRetained;
}

- (UILabel)resetWarningsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_resetWarningsLabel);

  return WeakRetained;
}

@end
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
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)userImage;
- (id)versionFooter;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureUserCell;
- (void)dealloc;
- (void)didResetWarnings:(id)a3;
- (void)didSwitchCellularAccess:(id)a3;
- (void)didTapSignOut:(id)a3;
- (void)didToggleTouchID:(id)a3;
- (void)resetWarnings;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation iFBAPreferencesViewController

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = iFBAPreferencesViewController;
  [(iFBAPreferencesViewController *)&v55 viewDidLoad];
  v3 = +[UIColor labelColor];
  v4 = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
  [v4 setTextColor:v3];

  v5 = +[UIColor labelColor];
  v6 = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
  [v6 setTextColor:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(iFBAPreferencesViewController *)self touchIDTimeoutLabel];
  [v8 setTextColor:v7];

  v9 = +[UIColor labelColor];
  v10 = [(iFBAPreferencesViewController *)self allowCellUploadsLabel];
  [v10 setTextColor:v9];

  v11 = +[UIColor labelColor];
  v12 = [(iFBAPreferencesViewController *)self myBetaDevicesLabel];
  [v12 setTextColor:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [(iFBAPreferencesViewController *)self setDevicesId:v14];

  v15 = [(iFBAPreferencesViewController *)self tableView];
  [v15 setEstimatedSectionHeaderHeight:0.0];

  v16 = [(iFBAPreferencesViewController *)self tableView];
  [v16 setEstimatedSectionFooterHeight:0.0];

  v17 = [(iFBAPreferencesViewController *)self tableView];
  [v17 setRowHeight:UITableViewAutomaticDimension];

  v18 = [(iFBAPreferencesViewController *)self tableView];
  [v18 setEstimatedRowHeight:44.0];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"TOUCH_ID_PREFERENCE" value:&stru_1000E2210 table:0];
  v21 = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
  [v21 setText:v20];

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"TOUCH_ID_REQUIRE" value:&stru_1000E2210 table:0];
  v24 = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
  [v24 setText:v23];

  if (+[iFBKUtils deviceSupportsFaceID])
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"FACE_ID_PREFERENCE" value:&stru_1000E2210 table:0];
    v27 = [(iFBAPreferencesViewController *)self useTouchIDSwitchCellLabel];
    [v27 setText:v26];

    v28 = +[NSBundle mainBundle];
    v29 = [v28 localizedStringForKey:@"FACE_ID_REQUIRE" value:&stru_1000E2210 table:0];
    v30 = [(iFBAPreferencesViewController *)self requireTouchIDCellLabel];
    [v30 setText:v29];
  }

  v31 = +[NSBundle mainBundle];
  v32 = [v31 localizedStringForKey:@"PREFERENCES" value:&stru_1000E2210 table:0];
  v33 = [(iFBAPreferencesViewController *)self navigationItem];
  [v33 setTitle:v32];

  v34 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"didTapDone:"];
  v35 = [(iFBAPreferencesViewController *)self navigationItem];
  [v35 setRightBarButtonItem:v34];

  v36 = +[NSNotificationCenter defaultCenter];
  v37 = [(iFBAPreferencesViewController *)self tableView];
  [v36 addObserver:v37 selector:"reloadData" name:UIContentSizeCategoryDidChangeNotification object:0];

  v38 = [(iFBAPreferencesViewController *)self tableView];
  [v38 setDelegate:self];

  v39 = [(iFBAPreferencesViewController *)self tableView];
  [v39 setDataSource:self];

  if ([(iFBAPreferencesViewController *)self isWarningsOn])
  {
    +[iFBAConstants tintColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v40 = ;
  v41 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  v42 = [v41 textLabel];
  [v42 setTextColor:v40];

  v43 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  [v43 setSelectionStyle:0];

  v44 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  v45 = [v44 accessibilityTraits];
  [v44 setAccessibilityTraits:UIAccessibilityTraitButton | v45];

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
    v49 = [(iFBAPreferencesViewController *)self touchIDSwitch];
    [v49 setOn:0];
  }

  else
  {
    v49 = +[NSUserDefaults standardUserDefaults];
    v50 = [v49 BOOLForKey:@"UseTouchIDLogin"];
    v51 = [(iFBAPreferencesViewController *)self touchIDSwitch];
    [v51 setOn:v50];
  }

  [(iFBAPreferencesViewController *)self configureUserCell];
  v52 = +[UIColor tintColor];
  v53 = [(iFBAPreferencesViewController *)self resetWarningsLabel];
  [v53 setTextColor:v52];
}

- (void)configureUserCell
{
  v18 = +[UIListContentConfiguration subtitleCellConfiguration];
  v3 = +[FBKData sharedInstance];
  v4 = [v3 currentUser];

  v5 = [v4 fullName];
  [v18 setText:v5];

  v6 = +[UIColor labelColor];
  v7 = [v18 textProperties];
  [v7 setColor:v6];

  v8 = [v4 username];
  [v18 setSecondaryText:v8];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v10 = [v18 secondaryTextProperties];
  [v10 setFont:v9];

  v11 = +[UIColor secondaryLabelColor];
  v12 = [v18 secondaryTextProperties];
  [v12 setColor:v11];

  [v18 setDirectionalLayoutMargins:{10.0, 0.0, 10.0, 0.0}];
  v13 = [(iFBAPreferencesViewController *)self userImage];
  [v18 setImage:v13];

  v14 = [v18 imageProperties];
  [v14 setCornerRadius:22.0];

  v15 = [v18 imageProperties];
  [v15 setMaximumSize:{44.0, 44.0}];

  v16 = [(iFBAPreferencesViewController *)self usernameCell];
  [v16 setUserInteractionEnabled:0];

  v17 = [(iFBAPreferencesViewController *)self usernameCell];
  [v17 setContentConfiguration:v18];
}

- (id)userImage
{
  v2 = +[FBKData sharedInstance];
  v3 = [v2 currentUser];

  v4 = [v3 username];
  v5 = [_TtC18Feedback_Assistant15FBAAvatarHelper contactImageForEmailAddress:v4];

  if (!v5)
  {
    v6 = [v3 givenName];
    v7 = [v3 familyName];
    v5 = [_TtC18Feedback_Assistant15FBAAvatarHelper monogramAvatarImageForPreferredName:v6 familyName:v7];
  }

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = iFBAPreferencesViewController;
  v6 = [(iFBAPreferencesViewController *)&v10 tableView:a3 numberOfRowsInSection:?];
  if (a4 == 2)
  {
    if ([(iFBAPreferencesViewController *)self hideTouchID])
    {
      return v6 - 2;
    }

    else
    {
      v7 = [(iFBAPreferencesViewController *)self touchIDSwitch];
      v8 = [v7 isOn];

      return v6 - (v8 ^ 1);
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

- (void)didTapSignOut:(id)a3
{
  v4 = a3;
  v6 = +[FBKData sharedInstance];
  v5 = [v6 loginManager];
  [v5 logOut];

  +[FBKFileManager deleteAllDraftDirectories];
  [(iFBAPreferencesViewController *)self didTapDone:v4];
}

- (void)didSwitchCellularAccess:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v3 isOn];

  [v4 setBool:v5 forKey:FBKAllowCellularFileUploads];
  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 synchronize];
}

- (void)didResetWarnings:(id)a3
{
  v4 = a3;
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

    v16 = [v9 popoverPresentationController];
    [v16 setSourceItem:v4];

    [(iFBAPreferencesViewController *)self presentViewController:v9 animated:1 completion:0];
  }
}

- (void)didToggleTouchID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v26 = 0;
  v6 = [v5 canEvaluatePolicy:1 error:&v26];
  v7 = v26;

  if ((v6 & 1) != 0 || [v7 code] != -7)
  {
    v20 = +[NSUserDefaults standardUserDefaults];
    [v20 setBool:objc_msgSend(v4 forKey:{"isOn"), @"UseTouchIDLogin"}];

    v9 = [(iFBAPreferencesViewController *)self tableView];
    [v9 reloadData];
  }

  else
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"TOUCH_ID_NOT_ENROLLED" value:&stru_1000E2210 table:0];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"TOUCH_ID_NOT_ENROLLED_MESSAGE" value:&stru_1000E2210 table:0];

    if (+[iFBKUtils deviceSupportsFaceID])
    {
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"FACE_ID_NOT_ENROLLED" value:&stru_1000E2210 table:0];

      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"FACE_ID_NOT_ENROLLED_MESSAGE" value:&stru_1000E2210 table:0];

      v9 = v13;
      v11 = v15;
    }

    v16 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"OK" value:&stru_1000E2210 table:0];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10002A480;
    v24 = &unk_1000DE458;
    v25 = v4;
    v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:&v21];
    [v16 addAction:{v19, v21, v22, v23, v24}];

    [(iFBAPreferencesViewController *)self presentViewController:v16 animated:1 completion:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 cellForRowAtIndexPath:v6];
  v8 = [v7 reuseIdentifier];
  v9 = [v8 isEqualToString:@"FBAResetWarningsCell"];

  if (v9)
  {
    [(iFBAPreferencesViewController *)self didResetWarnings:v7];
    [v19 deselectRowAtIndexPath:v6 animated:1];
  }

  v10 = [v7 reuseIdentifier];
  v11 = [(iFBAPreferencesViewController *)self devicesId];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [(iFBAPreferencesViewController *)self storyboard];
    v14 = [(iFBAPreferencesViewController *)self devicesId];
    v15 = [v13 instantiateViewControllerWithIdentifier:v14];

    [v15 setContext:1];
    v16 = [(iFBAPreferencesViewController *)self navigationController];
    [v16 pushViewController:v15 animated:1];
  }

  v17 = [v7 reuseIdentifier];
  v18 = [v17 isEqualToString:@"SignoutCell"];

  if (v18)
  {
    [v19 deselectRowAtIndexPath:v6 animated:1];
    [(iFBAPreferencesViewController *)self didTapSignOut:v7];
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 4)
  {
    v8 = [(iFBAPreferencesViewController *)self versionFooter];
  }

  else if (a4 == 1)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"CELLULAR_DATA_INFO_FOOTER" value:@"When enabled table:{supported devices will use cellular data to upload files.", 0}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A8D8;
  v9[3] = &unk_1000DE8F0;
  v9[4] = self;
  v7 = a4;
  [v7 animateAlongsideTransition:v9 completion:&stru_1000DF4C8];
  v8.receiver = self;
  v8.super_class = iFBAPreferencesViewController;
  [(iFBAPreferencesViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
  v17 = [(iFBAPreferencesViewController *)self resetWarningsCell];
  v18 = [v17 textLabel];
  [v18 setTextColor:v19];
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
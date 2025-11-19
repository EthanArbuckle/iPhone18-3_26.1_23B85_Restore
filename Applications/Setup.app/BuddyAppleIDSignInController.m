@interface BuddyAppleIDSignInController
+ (id)federatedAuthSignInControllerInNavigationController:(id)a3 mode:(int)a4 passcodeCacheManager:(id)a5 featureFlags:(id)a6;
+ (id)newAppleAccountPasswordCellWithPlaceholder:(id)a3 delegate:(id)a4;
+ (id)newAppleAccountTableView;
+ (id)newAppleAccountUsernameCellWithPlaceholder:(id)a3 delegate:(id)a4;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)isFooterObscuredByButtonTray;
- (BOOL)textFieldShouldReturn:(id)a3;
- (BuddyAppleIDSignInController)initWithMode:(int)a3 featureFlags:(id)a4;
- (NSString)username;
- (double)headerViewBottomToTableViewTopPadding;
- (double)rowHeight;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_serverFriendlyDisplayNameForCurrentUserName:(id)a3;
- (id)_subTitleText;
- (id)_subtitleTextForMode:(int)a3;
- (id)_titleTextForAuthMode:(int)a3;
- (id)_userFriendlyDisplayNameForCurrentUserName:(id)a3;
- (id)passwordCell;
- (id)stringWithUsernameFormattedIntoString:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)topSectionFooterView;
- (id)usernameCell;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_continueButtonTapped;
- (void)_loginOptionsTapped:(id)a3;
- (void)_setContinueButtonEnabledOrDisabled;
- (void)_signInToAccount;
- (void)_textChanged:(id)a3;
- (void)addFooterLinkWithTitle:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)ensureUsernameTextFieldIsVisible;
- (void)loadView;
- (void)setDetailText:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFooterText:(id)a3;
- (void)setIsUsernameEditable:(BOOL)a3;
- (void)setKeyboardFrame:(CGRect)a3;
- (void)setShowsPasswordAsField:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsername:(id)a3;
- (void)setiForgotText:(id)a3 handler:(id)a4;
- (void)viewControllerSpinnerManagerDidStopAnimatingSpinner:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BuddyAppleIDSignInController

+ (id)federatedAuthSignInControllerInNavigationController:(id)a3 mode:(int)a4 passcodeCacheManager:(id)a5 featureFlags:(id)a6
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = a4;
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  v9 = [BuddyAppleIDSignInController alloc];
  val = [(BuddyAppleIDSignInController *)v9 initWithMode:v26 featureFlags:v24];
  objc_initWeak(&from, val);
  v10 = val;
  v13 = _NSConcreteStackBlock;
  v14 = -1073741824;
  v15 = 0;
  v16 = sub_100171784;
  v17 = &unk_10032DD80;
  objc_copyWeak(&v20, &from);
  v18 = location[0];
  v19 = v25;
  v21 = v26;
  [v10 setAuthModeHandler:&v13];
  v11 = val;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v18, 0);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_storeStrong(&val, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (BuddyAppleIDSignInController)initWithMode:(int)a3 featureFlags:(id)a4
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v21;
  v5 = [v21 _titleTextForAuthMode:v19];
  v6 = [v21 _subtitleTextForMode:v19];
  v21 = 0;
  v17.receiver = v4;
  v17.super_class = BuddyAppleIDSignInController;
  v21 = [(BuddyAppleIDSignInController *)&v17 initWithTitle:v5 detailText:v6 icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&v21, v21);

  if (v21)
  {
    *(v21 + 10) = v19;
    *(v21 + 49) = 1;
    *(v21 + 45) = 1;
    *(v21 + 46) = 0;
    *(v21 + 47) = 1;
    objc_storeStrong(v21 + 10, location);
    v7 = dispatch_get_global_queue(25, 0);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100171C28;
    v14 = &unk_10032D458;
    v16 = v19;
    v15 = v21;
    dispatch_async(v7, &v10);

    objc_storeStrong(&v15, 0);
  }

  v8 = v21;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v21, 0);
  return v8;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:v5];

  v3.receiver = v5;
  v3.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v3 dealloc];
}

- (id)_titleTextForAuthMode:(int)a3
{
  if (a3)
  {
    switch(a3)
    {
      case 1:
        goto LABEL_11;
      case 2:
        v5 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v5 localizedStringForKey:@"TWO_ACCOUNTS_ICLOUD_SIGN_IN_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
      case 3:
        v6 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v6 localizedStringForKey:@"TWO_ACCOUNTS_ITUNES_SIGN_IN_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
      case 4:
LABEL_11:
        v3 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v3 localizedStringForKey:@"APPLE_ID_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
      case 5:
        v4 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v4 localizedStringForKey:@"ICLOUD_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
      case 6:
        v10 = 0;
        break;
      case 7:
        v7 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v7 localizedStringForKey:@"SOFTWARE_UPDATE_SIGN_IN_TITLE" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
      case 8:
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v10 = [(NSBundle *)v8 localizedStringForKey:@"SIGN_IN_WORK_ACCOUNT" value:&stru_10032F900 table:@"AppleIDAuth"];

        break;
    }
  }

  return v10;
}

- (id)stringWithUsernameFormattedIntoString:(id)a3
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  if ([location[0] length])
  {
    v35 = objc_alloc_init(NSMutableParagraphStyle);
    [v35 setAlignment:1];
    [v35 setLineBreakMode:0];
    v34 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout];
    v33 = 0;
    v3 = location[0];
    obj = 0;
    v4 = [(BuddyAppleIDSignInController *)v38 username];
    v5 = [NSString stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:&obj, v4];
    objc_storeStrong(&v33, obj);
    v32 = v5;

    if (!v32)
    {
      oslog = _BYLoggingFacility();
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v27 = 0;
        v25 = 0;
        if (_BYIsInternalInstall())
        {
          v6 = v33;
        }

        else if (v33)
        {
          v28 = [v33 domain];
          v27 = 1;
          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v28, [v33 code]);
          v26 = v6;
          v25 = 1;
        }

        else
        {
          v6 = 0;
        }

        sub_100071CBC(buf, v6);
        _os_log_error_impl(&_mh_execute_header, oslog, v29, "Failed to format username into string: %{public}@", buf, 0xCu);
        if (v25)
        {
        }

        if (v27)
        {
        }
      }

      objc_storeStrong(&oslog, 0);
    }

    v7 = [NSMutableAttributedString alloc];
    v8 = v32;
    v39[0] = NSParagraphStyleAttributeName;
    v40[0] = v35;
    v39[1] = NSFontAttributeName;
    v9 = [UIFont fontWithDescriptor:v34 size:0.0];
    v40[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    v11 = [v7 initWithString:v8 attributes:v10];
    v12 = v36;
    v36 = v11;

    v13 = [v36 string];
    v14 = [(BuddyAppleIDSignInController *)v38 username];
    v15 = [v13 rangeOfString:v14];
    v24 = v16;
    v23 = v15;

    if (v24)
    {
      v17 = [v34 fontDescriptorWithSymbolicTraits:2];
      v22 = [UIFont fontWithDescriptor:v17 size:0.0];

      [v36 addAttribute:NSFontAttributeName value:v22 range:{v23, v24}];
      v18 = [(BuddyAppleIDSignInController *)v38 username];
      v21 = [AKUsernameFormatter formattedUsernameFromUsername:v18];

      [v36 replaceCharactersInRange:v23 withString:{v24, v21}];
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v19 = v36;
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  return v19;
}

- (id)_subtitleTextForMode:(int)a3
{
  v43 = self;
  v42 = a2;
  v41 = a3;
  v40 = 0;
  if (a3 == 1)
  {
    v3 = +[UIDevice currentDevice];
    v4 = [(UIDevice *)v3 sf_isChinaRegionCellularDevice];

    v5 = [NSAttributedString alloc];
    if (v4)
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"APPLEID_SIGN_IN_CELLULAR_NOTICE" value:&stru_10032F900 table:@"AppleIDAuth"];
    }

    else
    {
      v6 = [NSBundle bundleForClass:objc_opt_class()];
      v7 = [(NSBundle *)v6 localizedStringForKey:@"APPLEID_SIGN_IN_TEXT" value:&stru_10032F900 table:@"AppleIDAuth"];
    }

    v8 = [v5 initWithString:v7];
    v9 = v40;
    v40 = v8;
  }

  else if (v41 >= 2)
  {
    switch(v41)
    {
      case 2u:
        v33 = [NSAttributedString alloc];
        v34 = [NSBundle bundleForClass:objc_opt_class()];
        v35 = [(NSBundle *)v34 localizedStringForKey:0x100336000 value:&stru_10032F900 table:@"AppleIDAuth"];
        v36 = [v33 initWithString:v35];
        v37 = v40;
        v40 = v36;

        break;
      case 3u:
        v28 = [NSAttributedString alloc];
        v29 = [NSBundle bundleForClass:objc_opt_class()];
        v30 = [(NSBundle *)v29 localizedStringForKey:@"TWO_ACCOUNTS_ITUNES_SIGN_IN_TEXT" value:&stru_10032F900 table:@"AppleIDAuth"];
        v31 = [v28 initWithString:v30];
        v32 = v40;
        v40 = v31;

        break;
      case 4u:
        v10 = [(BuddyAppleIDSignInController *)v43 username];
        v11 = [(NSString *)v10 length];

        if (v11)
        {
          v12 = [NSBundle bundleForClass:objc_opt_class()];
          v13 = [(NSBundle *)v12 localizedStringForKey:@"ICLOUD_UPGRADE_TEXT_%@" value:&stru_10032F900 table:@"AppleIDAuth"];
          v14 = [(BuddyAppleIDSignInController *)v43 stringWithUsernameFormattedIntoString:v13];
          v15 = v40;
          v40 = v14;
        }

        break;
      case 5u:
        v23 = [NSAttributedString alloc];
        v24 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [(NSBundle *)v24 localizedStringForKey:@"APPLE_ACCOUNT_SIGN_IN_TEXT" value:&stru_10032F900 table:@"AppleIDAuth"];
        v26 = [v23 initWithString:v25];
        v27 = v40;
        v40 = v26;

        break;
      case 7u:
        v16 = [(BuddyAppleIDSignInController *)v43 username];
        v17 = [(NSString *)v16 length];

        if (v17)
        {
          v18 = [NSAttributedString alloc];
          v19 = [NSBundle bundleForClass:objc_opt_class()];
          v20 = [(NSBundle *)v19 localizedStringForKey:@"SOFTWARE_UPDATE_SUBTITLE_TEXT" value:&stru_10032F900 table:@"AppleIDAuth"];
          v21 = [v18 initWithString:v20];
          v22 = v40;
          v40 = v21;
        }

        break;
    }
  }

  v38 = [v40 string];
  objc_storeStrong(&v40, 0);

  return v38;
}

- (id)_subTitleText
{
  v2 = [(BuddyAppleIDSignInController *)self detailText];

  if (v2)
  {
    v5 = [(BuddyAppleIDSignInController *)self detailText];
  }

  else
  {
    v5 = [(BuddyAppleIDSignInController *)self _subtitleTextForMode:self->_mode];
  }

  return v5;
}

- (void)setiForgotText:(id)a3 handler:(id)a4
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  [(BFFLinkLabelFooterView *)v26->_topSectionFooterView removeAllLinks];
  if ([location[0] length] && v24)
  {
    v22 = UIFontTextStyleBody;
    v21 = objc_opt_new();
    v5 = [UIFont preferredFontForTextStyle:v22];
    v20 = [UIImageSymbolConfiguration configurationWithFont:v5];

    v6 = [UIImage systemImageNamed:@"info.circle.fill"];
    v19 = [(UIImage *)v6 imageByApplyingSymbolConfiguration:v20];

    v7 = [v19 imageWithRenderingMode:2];
    v8 = v19;
    v19 = v7;

    v18 = objc_opt_new();
    [v18 setImage:v19];
    v9 = [NSAttributedString attributedStringWithAttachment:v18];
    [v21 setAttributedString:v9];

    v10 = [[NSAttributedString alloc] initWithString:@" "];
    [v21 appendAttributedString:v10];

    v11 = [NSAttributedString alloc];
    v12 = location[0];
    v27 = NSFontAttributeName;
    v13 = [UIFont preferredFontForTextStyle:v22];
    v28 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v15 = [v11 initWithString:v12 attributes:v14];
    [v21 appendAttributedString:v15];

    v16 = [(BuddyAppleIDSignInController *)v26 topSectionFooterView];
    v17 = [v21 copy];
    [v16 addFooterLinkWithAttributedTitle:v17 handler:v24];

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)addFooterLinkWithTitle:(id)a3 handler:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyAppleIDSignInController *)v8 topSectionFooterView];
  [v5 addLinkWithTitle:location[0] handler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setFooterText:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDSignInController *)v5 topSectionFooterView];
  [v3 setLabelText:location[0]];

  objc_storeStrong(location, 0);
}

- (id)topSectionFooterView
{
  if (!self->_topSectionFooterView)
  {
    v2 = [[BFFLinkLabelFooterView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, a2}];
    topSectionFooterView = self->_topSectionFooterView;
    self->_topSectionFooterView = v2;
  }

  v4 = self->_topSectionFooterView;

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  if (a3 != self->_enabled)
  {
    self->_enabled = a3;
    v3 = [(UITableViewCell *)self->_usernameCell editableTextField];
    [v3 setEnabled:a3];

    v4 = [(UITableViewCell *)self->_passwordCell editableTextField];
    [v4 setEnabled:a3];

    [(BFFLinkLabelFooterView *)self->_topSectionFooterView setEnabled:a3];
    if (a3)
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BUDDY_APPLEID_SIGN_IN_PAGE"];
    }

    else
    {
      v5 = [(BuddyAppleIDSignInController *)self navigationController];
      v6 = [v5 topViewController];
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v6 identifier:@"BUDDY_APPLEID_SIGN_IN_PAGE"];
    }
  }
}

- (double)rowHeight
{
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 bounds];
  v4 = v3 <= 568.01;

  v11 = 0;
  v9 = 0;
  v5 = 0;
  if (!v4)
  {
    v12 = +[UIApplication sharedApplication];
    v11 = 1;
    v10 = [(UIApplication *)v12 preferredContentSizeCategory];
    v9 = 1;
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(v10);
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  if (!v5)
  {
    return -1.0;
  }

  v6 = +[BFFStyle sharedStyle];
  [v6 tallRowHeight];
  v13 = v7;

  return v13;
}

+ (id)newAppleAccountTableView
{
  location[2] = a1;
  location[1] = a2;
  location[0] = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [location[0] setRowHeight:UITableViewAutomaticDimension];
  [location[0] setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, *&UIEdgeInsetsZero.top, *&UIEdgeInsetsZero.left, *&UIEdgeInsetsZero.bottom, *&UIEdgeInsetsZero.right, *&UIEdgeInsetsZero.top, *&UIEdgeInsetsZero.left, *&UIEdgeInsetsZero.bottom, *&UIEdgeInsetsZero.right}];
  [location[0] setAllowsSelectionDuringEditing:1];
  [location[0] setEstimatedSectionHeaderHeight:0.0];
  [location[0] setEstimatedSectionFooterHeight:0.0];
  [location[0] setSectionHeaderHeight:0.0];
  [location[0] setSectionFooterHeight:0.0];
  v2 = location[0];
  objc_storeStrong(location, 0);
  return v2;
}

- (void)loadView
{
  v37 = self;
  v36 = a2;
  v35.receiver = self;
  v35.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v35 loadView];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyAppleIDSignInController *)v37 setTableView:v2];

  v3 = v37;
  v4 = [(BuddyAppleIDSignInController *)v37 tableView];
  [v4 setDelegate:v3];

  v5 = v37;
  v6 = [(BuddyAppleIDSignInController *)v37 tableView];
  [v6 setDataSource:v5];

  v7 = [(BuddyAppleIDSignInController *)v37 tableView];
  [(BuddyAppleIDSignInController *)v37 rowHeight];
  [v7 setRowHeight:?];

  v8 = [(BuddyAppleIDSignInController *)v37 featureFlags];
  LOBYTE(v6) = [(BuddyFeatureFlags *)v8 isSolariumEnabled]^ 1;

  if (v6)
  {
    v9 = [(BuddyAppleIDSignInController *)v37 tableView];
    [v9 setContentInsetAdjustmentBehavior:2];
  }

  v10 = 0;
  if (v37->_mode != 4)
  {
    v10 = v37->_mode != 6;
  }

  [(BuddyAppleIDSignInController *)v37 setShowsUsernameAsField:v10];
  v37->_showsPasswordAsField = !v37->_showsUsernameAsField;
  v11 = 1;
  if (v37->_mode != 1)
  {
    v11 = 1;
    if (v37->_mode != 5)
    {
      v11 = v37->_mode == 4;
    }
  }

  [(BuddyAppleIDSignInController *)v37 setShowsInfoSection:v11];
  objc_initWeak(&location, v37);
  if (v37->_mode == 6 || v37->_mode == 4)
  {
    v33 = v37->_mode == 4;
    v12 = v37;
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"SKIP_LINK" value:&stru_10032F900 table:@"AppleIDAuth"];
    v26 = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = sub_100173DA0;
    v30 = &unk_10032DDA8;
    v32 = v33;
    objc_copyWeak(&v31, &location);
    [(BuddyAppleIDSignInController *)v12 addFooterLinkWithTitle:v14 handler:&v26];

    if (!v33)
    {
      v15 = [(BuddyAppleIDSignInController *)v37 topSectionFooterView];
      [v15 setWantsSideBySideLayout:1];
    }

    objc_destroyWeak(&v31);
  }

  else if (v37->_mode == 3)
  {
    v16 = v37;
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [(NSBundle *)v17 localizedStringForKey:@"SKIP_LINK" value:&stru_10032F900 table:@"AppleIDAuth"];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1001741A0;
    v24 = &unk_10032AF58;
    objc_copyWeak(&v25, &location);
    [(BuddyAppleIDSignInController *)v16 addFooterLinkWithTitle:v18 handler:&v21];

    objc_destroyWeak(&v25);
  }

  if (v37->_mode == 5)
  {
    v19 = [(BuddyAppleIDSignInController *)v37 topSectionFooterView];
    [v19 setFlexibleHeight:10.0];
  }

  v20 = [NSNotificationCenter defaultCenter:v21];
  [(NSNotificationCenter *)v20 addObserver:v37 selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v40 = self;
  v39 = a2;
  v38.receiver = self;
  v38.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v38 viewDidLoad];
  if (v40->_mode != 8)
  {
    v2 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
    v42[0] = v2;
    v3 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.7];
    v42[1] = v3;
    location = [NSArray arrayWithObjects:v42 count:2];

    v4 = [(BuddyAppleIDSignInController *)v40 buddy_animationController:@"AppleID" animatedStates:location startAtFirstState:1];
    [(BuddyAppleIDSignInController *)v40 setAnimationController:v4];

    v5 = [(BuddyAppleIDSignInController *)v40 headerView];
    v6 = [v5 animationView];
    [v6 defaultScale];
    v8 = v7 + 0.0299999993;
    v9 = [(BuddyAppleIDSignInController *)v40 headerView];
    v10 = [v9 animationView];
    [v10 setScale:v8];

    objc_storeStrong(&location, 0);
  }

  v11 = +[OBBoldTrayButton boldButton];
  [(BuddyAppleIDSignInController *)v40 setContinueButton:v11];

  v12 = [(BuddyAppleIDSignInController *)v40 continueButton];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"AppleIDAuth"];
  [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

  v15 = [(BuddyAppleIDSignInController *)v40 continueButton];
  [(OBBoldTrayButton *)v15 addTarget:v40 action:"_continueButtonTapped" forEvents:64];

  [(BuddyAppleIDSignInController *)v40 _setContinueButtonEnabledOrDisabled];
  if (v40->_mode == 2 || v40->_mode == 3)
  {
    [(BuddyAppleIDSignInController *)v40 setShouldAdjustScrollViewInsetForKeyboard:1];
  }

  else
  {
    v16 = [(BuddyAppleIDSignInController *)v40 buttonTray];
    v41 = BYPrivacyAppleIDIdentifier;
    v17 = [NSArray arrayWithObjects:&v41 count:1];
    [v16 setPrivacyLinkForBundles:v17];

    [(BuddyAppleIDSignInController *)v40 setShouldAdjustScrollViewInsetForKeyboard:1];
    v18 = [(BuddyAppleIDSignInController *)v40 buttonTray];
    v19 = [(BuddyAppleIDSignInController *)v40 continueButton];
    [v18 addButton:v19];
  }

  v20 = [(BuddyAppleIDSignInController *)v40 loginOptionsConstructor];

  if (v20)
  {
    v36 = +[OBLinkTrayButton linkButton];
    v35 = 0;
    v21 = [(BuddyAppleIDSignInController *)v40 loginOptionsConstructor];
    obj = 0;
    v22 = v21[2](v21, v36, &obj);
    objc_storeStrong(&v35, obj);
    [(BuddyAppleIDSignInController *)v40 setLoginOptionsAction:v22];

    [v36 setTitle:v35 forState:0];
    [v36 addTarget:v40 action:"_loginOptionsTapped:" forEvents:64];
    v23 = [(BuddyAppleIDSignInController *)v40 buttonTray];
    [v23 addButton:v36];

    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  v24 = [(BuddyAppleIDSignInController *)v40 _titleText];
  v25 = [(BuddyAppleIDSignInController *)v40 navigationItem];
  [v25 setBackButtonTitle:v24];

  v26 = dispatch_time(0, 1500000000);
  v27 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100174BD4;
  v32 = &unk_10032B0D0;
  v33 = v40;
  dispatch_after(v26, v27, &block);

  objc_storeStrong(&v33, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, v11->_mode);
    _os_log_impl(&_mh_execute_header, oslog, v7, "SignInController showing mode %i", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v6.receiver = v11;
  v6.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v6 viewWillAppear:v9];
  v3 = [(BuddyAppleIDSignInController *)v11 view];
  [v3 setNeedsLayout];

  v4 = [(BuddyAppleIDSignInController *)v11 view];
  [v4 layoutIfNeeded];

  v5 = [(BuddyAppleIDSignInController *)v11 animationController];
  [(OBAnimationController *)v5 startAnimation];
}

- (void)viewDidAppear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v12 viewDidAppear:a3];
  if (v15->_mode != 1 && v15->_mode != 5 && v15->_mode != 4)
  {
    v3 = [(UITableViewCell *)v15->_usernameCell editableTextField];
    v4 = [v3 text];
    v5 = 1;
    if (![v4 length])
    {
      v5 = v15->_usernameCell == 0;
    }

    if (v5)
    {
      v6 = [(UITableViewCell *)v15->_passwordCell editableTextField];
    }

    else
    {
      v6 = [(UITableViewCell *)v15->_usernameCell editableTextField];
    }

    [v6 becomeFirstResponder];
  }

  v10 = 0;
  v7 = 0;
  if (sub_100175024())
  {
    v11 = +[UIScreen mainScreen];
    v10 = 1;
    [(UIScreen *)v11 bounds];
    v7 = v8 <= 480.01;
  }

  if (v10)
  {
  }

  if (v7)
  {
    v9 = [(BuddyAppleIDSignInController *)v15 tableView];
    [v9 flashScrollIndicators];
  }

  if (v15->_appearanceHandler)
  {
    (*(v15->_appearanceHandler + 2))();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  [(BuddyAppleIDSignInController *)self setEnabled:1];
  v3.receiver = v6;
  v3.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v3 viewDidDisappear:v4];
}

- (void)_loginOptionsTapped:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDSignInController *)v5 loginOptionsAction];
  v3[2](v3);

  objc_storeStrong(location, 0);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 2;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v5 = [(BuddyAppleIDSignInController *)v10 showsUsernameAsField];
    v6 = 0;
    if (v5)
    {
      v6 = [(BuddyAppleIDSignInController *)v10 showsPasswordAsField];
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v11 = v7;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  if (a4)
  {
    if (v9 == 1)
    {
      v7 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v12 = v7;
      v8 = 1;
      objc_storeStrong(&v7, 0);
    }

    else
    {
      v12 = 0;
      v8 = 1;
    }
  }

  else
  {
    v12 = v11->_topSectionFooterView;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v55 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v53 = a4;
  if (a4)
  {
    [(BuddyAppleIDSignInController *)v55 keyboardFrame];
    v58.size.height = CGRectZero.size.height;
    v58.size.width = CGRectZero.size.width;
    v58.origin.y = CGRectZero.origin.y;
    v58.origin.x = CGRectZero.origin.x;
    if (CGRectEqualToRect(v57, v58))
    {
      v56 = 0.0;
    }

    else
    {
      v17 = [location[0] tableFooterView];
      v18 = [(BuddyAppleIDSignInController *)v55 buttonTray];
      v19 = [v18 superview];
      v20 = v17 == v19;

      if (v53 != 1 || v20 || (sub_100175ABC() & 1) == 0)
      {
        goto LABEL_23;
      }

      v21 = [(BuddyAppleIDSignInController *)v55 view];
      [v21 layoutMargins];

      v22 = [(BuddyAppleIDSignInController *)v55 navigationController];
      v23 = [v22 navigationBar];
      [v23 bounds];
      v49 = v24;

      v48 = 0.0;
      v25 = [location[0] tableFooterView];
      [v25 bounds];
      v27 = v26;

      if (v27 == 0.0)
      {
        v28 = [(BuddyAppleIDSignInController *)v55 buttonTray];
        [v28 bounds];
        v48 = v29;
      }

      v30 = [location[0] tableHeaderView];
      [v30 bounds];
      v32 = v31;

      v47 = v32;
      v33 = [(BuddyAppleIDSignInController *)v55 usernameCell];
      [v33 bounds];
      v35 = v34;

      v46 = 0.0;
      if (v55->_showsPasswordAsField)
      {
        v36 = [(BuddyAppleIDSignInController *)v55 passwordCell];
        [v36 bounds];
        v46 = v37;
      }

      [(BFFLinkLabelFooterView *)v55->_topSectionFooterView bounds];
      v45 = v49 + v47 + v35 + v46 + v38 + v48;
      v39 = [(BuddyAppleIDSignInController *)v55 view];
      [v39 bounds];
      v41 = v40;

      if (v41 > v45)
      {
        v42 = [(BuddyAppleIDSignInController *)v55 view];
        [v42 bounds];
        v56 = v43 - v45;
      }

      else
      {
LABEL_23:
        v56 = 0.0;
      }
    }
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    [(BFFLinkLabelFooterView *)v55->_topSectionFooterView margins];
    __b[0] = v5;
    __b[1] = v6;
    __b[2] = v7;
    __b[3] = v8;
    [location[0] _backgroundInset];
    __b[1] = v9;
    [location[0] _backgroundInset];
    __b[3] = v10;
    v50 = 0;
    v11 = 0;
    if (sub_100175024())
    {
      v51 = +[UIScreen mainScreen];
      v50 = 1;
      [(UIScreen *)v51 bounds];
      v11 = v12 <= 480.01;
    }

    if (v50)
    {
    }

    if (v11)
    {
      __b[0] = 4.0;
    }

    else if (sub_100175ABC())
    {
      __b[0] = 10.0;
    }

    else
    {
      __b[0] = 16.0;
    }

    [(BFFLinkLabelFooterView *)v55->_topSectionFooterView setMargins:__b[0], __b[1], __b[2], __b[3]];
    [location[0] bounds];
    [location[0] separatorInset];
    [location[0] layoutMargins];
    [location[0] layoutMargins];
    topSectionFooterView = v55->_topSectionFooterView;
    [location[0] bounds];
    sub_100175B40();
    [(BFFLinkLabelFooterView *)topSectionFooterView sizeThatFits:v14, v15];
    v56 = v16;
  }

  objc_storeStrong(location, 0);
  return v56;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  if (![(BuddyAppleIDSignInController *)v15 showsUsernameAsField])
  {
    goto LABEL_5;
  }

  if ([v13 row])
  {
    if ([v13 row] != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    v7 = [(BuddyAppleIDSignInController *)v15 passwordCell];
    v8 = v12;
    v12 = v7;

    goto LABEL_6;
  }

  v5 = [(BuddyAppleIDSignInController *)v15 usernameCell];
  v6 = v12;
  v12 = v5;

LABEL_6:
  v9 = +[UIColor secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v9];

  v10 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v10;
}

+ (id)newAppleAccountUsernameCellWithPlaceholder:(id)a3 delegate:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [[BuddyAppleIDSignInTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v10 setSelectionStyle:0];
  v9 = [v10 editableTextField];
  [v9 setPlaceholder:location[0]];
  [v9 setAutocorrectionType:1];
  [v9 setAutocapitalizationType:0];
  [v9 setDelegate:v11];
  [v9 setKeyboardType:7];
  [v9 setReturnKeyType:11];
  [v9 setTextContentType:UITextContentTypeUsername];
  [v9 setEnablesReturnKeyAutomatically:1];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v5];

  v6 = +[UIColor _labelColor];
  [v9 setTextColor:v6];

  v7 = v10;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)usernameCell
{
  v10 = self;
  location[1] = a2;
  if (!self->_usernameCell)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    if (v10->_phoneNumberSupported)
    {
      v4 = @"SIGN_IN_EMAIL_OR_PHONE";
    }

    else
    {
      v4 = @"SIGN_IN_EMAIL";
    }

    location[0] = [(NSBundle *)v2 localizedStringForKey:v4 value:&stru_10032F900 table:@"AppleIDAuth"];

    v5 = [BuddyAppleIDSignInController newAppleAccountUsernameCellWithPlaceholder:location[0] delegate:v10];
    usernameCell = v10->_usernameCell;
    v10->_usernameCell = v5;

    objc_storeStrong(location, 0);
  }

  v7 = v10->_usernameCell;

  return v7;
}

- (void)setUsername:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAppleIDSignInController *)v8 usernameCell];
  v4 = [v3 editableTextField];
  [v4 setText:location[0]];

  [(BuddyAppleIDSignInController *)v8 _setContinueButtonEnabledOrDisabled];
  v5 = [(BuddyAppleIDSignInController *)v8 headerView];
  v6 = [(BuddyAppleIDSignInController *)v8 _subTitleText];
  [v5 setDetailText:v6];

  objc_storeStrong(location, 0);
}

- (NSString)username
{
  v2 = [(BuddyAppleIDSignInController *)self usernameCell:a2];
  v3 = [v2 editableTextField];
  v4 = [v3 text];

  return v4;
}

- (void)setIsUsernameEditable:(BOOL)a3
{
  if (self->_isUsernameEditable != a3)
  {
    self->_isUsernameEditable = a3;
    v3 = [(BuddyAppleIDSignInController *)self usernameCell];
    v4 = [v3 editableTextField];
    [v4 setUserInteractionEnabled:a3];
  }
}

+ (id)newAppleAccountPasswordCellWithPlaceholder:(id)a3 delegate:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [[BuddyAppleIDSignInTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v10 setSelectionStyle:0];
  v9 = [v10 editableTextField];
  [v9 setPlaceholder:location[0]];
  [v9 setSecureTextEntry:1];
  [v9 setAutocorrectionType:1];
  [v9 setAutocapitalizationType:0];
  [v9 setDelegate:v11];
  [v9 setReturnKeyType:11];
  [v9 setEnablesReturnKeyAutomatically:1];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v5];

  v6 = +[UIColor _labelColor];
  [v9 setTextColor:v6];

  v7 = v10;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)passwordCell
{
  if (!self->_passwordCell)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class(), a2];
    v3 = [(NSBundle *)v2 localizedStringForKey:@"THIS_FIELD_REQUIRED" value:&stru_10032F900 table:@"AppleIDAuth"];
    v4 = [BuddyAppleIDSignInController newAppleAccountPasswordCellWithPlaceholder:v3 delegate:self];
    passwordCell = self->_passwordCell;
    self->_passwordCell = v4;
  }

  v6 = self->_passwordCell;

  return v6;
}

- (void)_continueButtonTapped
{
  if (self->_showsPasswordAsField)
  {
    [(BuddyAppleIDSignInController *)self _signInToAccount];
  }

  else
  {
    v2 = [(BuddyAppleIDSignInController *)self username];
    v3 = [(BuddyAppleIDSignInController *)self _userFriendlyDisplayNameForCurrentUserName:v2];
    [(BuddyAppleIDSignInController *)self setUsername:v3];

    v4 = [(BuddyAppleIDSignInController *)self authModeHandler];
    v5 = [(BuddyAppleIDSignInController *)self username];
    v6 = [(BuddyAppleIDSignInController *)self _serverFriendlyDisplayNameForCurrentUserName:v5];
    v4[2](v4, v6);
  }
}

- (id)_serverFriendlyDisplayNameForCurrentUserName:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v9->_phoneNumberSupported || ([location[0] containsString:@"@"] & 1) != 0)
  {
    v10 = location[0];
  }

  else
  {
    v7 = objc_alloc_init(AAFPhoneNumberFormatter);
    v6 = [v7 displayFormatFor:location[0]];
    v5 = [v7 normalizedFormatFor:v6];
    v10 = v5;
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (id)_userFriendlyDisplayNameForCurrentUserName:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v9->_phoneNumberSupported || ([location[0] containsString:@"@"] & 1) != 0 || ((v7 = objc_alloc_init(AAFPhoneNumberFormatter), v6 = objc_msgSend(v7, "displayFormatFor:", location[0]), (objc_msgSend(v6, "isEqualToString:", location[0]) & 1) != 0) ? (v5 = 0) : (v10 = v6, v5 = 1), objc_storeStrong(&v6, 0), objc_storeStrong(&v7, 0), !v5))
  {
    v10 = location[0];
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (void)_signInToAccount
{
  v9 = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001768BC;
  v7 = &unk_10032B0D0;
  v8[0] = v9;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(UITableViewCell *)v29->_usernameCell editableTextField];

  if (v3 == v4)
  {
    v5 = [(UITableViewCell *)v29->_usernameCell editableTextField];
    v6 = [v5 text];
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];
    lastEnteredUsername = v29->_lastEnteredUsername;
    v29->_lastEnteredUsername = v8;

    if (!v29->_showsPasswordAsField)
    {
      v10 = v29;
      v11 = v29;
      v12 = [(BuddyAppleIDSignInController *)v29 username];
      v13 = [(BuddyAppleIDSignInController *)v11 _userFriendlyDisplayNameForCurrentUserName:v12];
      [(BuddyAppleIDSignInController *)v10 setUsername:v13];

      v14 = [(BuddyAppleIDSignInController *)v29 authModeHandler];
      v15 = v29;
      v16 = [(BuddyAppleIDSignInController *)v29 username];
      v17 = [(BuddyAppleIDSignInController *)v15 _serverFriendlyDisplayNameForCurrentUserName:v16];
      v14[2](v14, v17);
    }

    goto LABEL_11;
  }

  v18 = location[0];
  v19 = [(UITableViewCell *)v29->_passwordCell editableTextField];

  if (v18 != v19)
  {
LABEL_11:
    v30 = 1;
    goto LABEL_12;
  }

  v20 = [(UITableViewCell *)v29->_passwordCell editableTextField];
  v21 = [v20 text];
  v22 = [v21 length];

  if (v22)
  {
    v23 = [(UITableViewCell *)v29->_usernameCell editableTextField];
    v24 = [v23 text];
    v25 = [v24 length];

    if (v25)
    {
      [(BuddyAppleIDSignInController *)v29 _signInToAccount];
    }

    else
    {
      v26 = [(UITableViewCell *)v29->_usernameCell editableTextField];
      [v26 becomeFirstResponder];
    }

    goto LABEL_11;
  }

  v30 = 0;
LABEL_12:
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (void)setDetailText:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_detailText, location[0]);
  v3 = [(BuddyAppleIDSignInController *)v6 headerView];
  v4 = [(BuddyAppleIDSignInController *)v6 _subTitleText];
  [v3 setDetailText:v4];

  objc_storeStrong(location, 0);
}

- (void)ensureUsernameTextFieldIsVisible
{
  v16 = self;
  location[7] = a2;
  v2 = [(BuddyAppleIDSignInController *)self animationController];
  v3 = v2 == 0;

  if (!v3 && [(BuddyAppleIDSignInController *)v16 isFooterObscuredByButtonTray])
  {
    v4 = [(BuddyAppleIDSignInController *)v16 tableView];
    [v4 contentOffset];
    location[5] = v5;
    location[6] = v6;
    v7 = *&v6;
    v8 = [(BuddyAppleIDSignInController *)v16 tableView];
    [v8 adjustedContentInset];
    location[1] = v9;
    location[2] = v10;
    location[3] = v11;
    location[4] = v12;
    v13 = v7 + *&v9;

    if (v13 <= 0.0)
    {
      location[0] = [NSIndexPath indexPathForRow:0 inSection:0];
      v14 = [(BuddyAppleIDSignInController *)v16 tableView];
      [v14 scrollToRowAtIndexPath:location[0] atScrollPosition:3 animated:1];

      objc_storeStrong(location, 0);
    }
  }
}

- (BOOL)isFooterObscuredByButtonTray
{
  v2 = [(BuddyAppleIDSignInController *)self tableView];
  [v2 rectForFooterInSection:0];
  v27 = v3;
  v26 = v4;
  v29 = v5;
  v28 = v6;

  v7 = [(BuddyAppleIDSignInController *)self tableView];
  [v7 convertRect:0 toView:{v26, v27, v28, v29}];
  rect.origin.y = v8;
  rect.origin.x = v9;
  rect.size.height = v10;
  rect.size.width = v11;

  v12 = [(BuddyAppleIDSignInController *)self buttonTray];
  v13 = [(BuddyAppleIDSignInController *)self buttonTray];
  [v13 bounds];
  [v12 convertRect:0 toView:{v14, v15, v16, v17, *&v14, *&v15, *&v16, *&v17}];
  v24.origin.y = v18;
  v24.origin.x = v19;
  v24.size.height = v20;
  v24.size.width = v21;

  MaxY = CGRectGetMaxY(rect);
  return MaxY > CGRectGetMinY(v24);
}

- (void)viewControllerSpinnerManagerDidStopAnimatingSpinner:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAppleIDSignInController *)v4 _setContinueButtonEnabledOrDisabled];
  objc_storeStrong(location, 0);
}

- (void)_textChanged:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [location[0] object];
  v7 = [(UITableViewCell *)v10->_passwordCell editableTextField];
  v6 = [(UITableViewCell *)v10->_usernameCell editableTextField];
  if (v8 == v6 && v10->_showsPasswordAsField)
  {
    v3 = [v6 text];
    v4 = +[NSCharacterSet whitespaceCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];

    if (([v5 isEqualToString:v10->_lastEnteredUsername] & 1) == 0)
    {
      [(BuddyAppleIDSignInController *)v10 setShowsPasswordAsField:0 animated:1];
    }

    objc_storeStrong(&v5, 0);
  }

  if (v8 == v7 || v8 == v6)
  {
    [(BuddyAppleIDSignInController *)v10 _setContinueButtonEnabledOrDisabled];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)_setContinueButtonEnabledOrDisabled
{
  v15 = self;
  v14[1] = a2;
  v14[0] = [(UITableViewCell *)self->_passwordCell editableTextField];
  location = [(UITableViewCell *)v15->_usernameCell editableTextField];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (v15->_showsPasswordAsField || (v12 = [location text], v11 = 1, v2 = 1, !objc_msgSend(v12, "length")))
  {
    if (v15->_showsUsernameAsField || (v10 = [v14[0] text], v9 = 1, v2 = 1, !objc_msgSend(v10, "length")))
    {
      v8 = [location text];
      v7 = 1;
      v2 = 0;
      if ([v8 length])
      {
        v6 = [v14[0] text];
        v5 = 1;
        v2 = [v6 length] != 0;
      }
    }
  }

  if (v5)
  {
  }

  if (v7)
  {
  }

  if (v9)
  {
  }

  if (v11)
  {
  }

  v3 = v2;
  v4 = [(BuddyAppleIDSignInController *)v15 continueButton];
  [(OBBoldTrayButton *)v4 setEnabled:v3];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
}

- (void)setShowsPasswordAsField:(BOOL)a3 animated:(BOOL)a4
{
  v31 = self;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  if (a3 != self->_showsPasswordAsField)
  {
    v31->_showsPasswordAsField = v29;
    v4 = [NSIndexPath indexPathForRow:v31->_showsUsernameAsField inSection:0];
    v32 = v4;
    location = [NSArray arrayWithObjects:&v32 count:1];

    if (v28)
    {
      v5 = 100;
    }

    else
    {
      v5 = 5;
    }

    v26 = v5;
    if (v29 && v31->_showsUsernameAsField)
    {
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_1001778C8;
      v23 = &unk_10032B838;
      v24 = v31;
      v25 = location;
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_10017795C;
      v17 = &unk_10032B2E0;
      v18 = v31;
      [UIView animateWithDuration:&v19 animations:&v13 completion:0.2];
      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
    }

    else
    {
      v6 = _NSConcreteStackBlock;
      v7 = -1073741824;
      v8 = 0;
      v9 = sub_1001779B4;
      v10 = &unk_10032DDD0;
      v11 = v31;
      v12[0] = location;
      v12[1] = v26;
      [UIView animateWithDuration:&v6 animations:&stru_10032DDF0 completion:0.2];
      objc_storeStrong(v12, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&location, 0);
  }
}

- (double)headerViewBottomToTableViewTopPadding
{
  v16 = 0.0;
  v2 = +[BYDevice currentDevice];
  v3 = [v2 type];

  if (v3 == 1)
  {
    return 15.0;
  }

  v4 = +[BYDevice currentDevice];
  v5 = [v4 size];

  if (v5 < 2)
  {
    return 26.0;
  }

  if (v5 == 2)
  {
    return 20.0;
  }

  if (v5 == 3)
  {
    return 26.0;
  }

  if (v5 == 4)
  {
    return 37.0;
  }

  if (v5 == 5)
  {
    return 26.0;
  }

  if (v5 == 6)
  {
    v6 = +[UIScreen mainScreen];
    [(UIScreen *)v6 bounds];
    v14 = 0;
    v12 = 0;
    v8 = 0;
    if (v7 == 414.0)
    {
      v15 = +[UIScreen mainScreen];
      v14 = 1;
      [(UIScreen *)v15 bounds];
      v8 = 0;
      if (v9 == 896.0)
      {
        v13 = +[UIScreen mainScreen];
        v12 = 1;
        [(UIScreen *)v13 scale];
        v8 = v10 == 3.0;
      }
    }

    if (v12)
    {
    }

    if (v14)
    {
    }

    if (v8)
    {
      return 37.0;
    }

    else
    {
      return 26.0;
    }
  }

  return v16;
}

- (void)setKeyboardFrame:(CGRect)a3
{
  v8 = a3;
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v5 setKeyboardFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v3 = [(BuddyAppleIDSignInController *)v7 tableView];
  v4 = [NSIndexSet indexSetWithIndex:1];
  [v3 _reloadSectionHeaderFooters:v4 withRowAnimation:5];
}

- (BOOL)_scrollViewContentIsUnderTray
{
  v2 = [(BuddyAppleIDSignInController *)self tableView];
  v3 = [v2 tableFooterView];
  v4 = [(BuddyAppleIDSignInController *)self buttonTray];
  v5 = [v4 superview];
  v6 = v3 == v5;

  v25 = v6;
  if (sub_100175ABC())
  {
    v7 = 17;
  }

  else
  {
    v7 = 12;
  }

  v24 = v7;
  v8 = [(BuddyAppleIDSignInController *)self view];
  [(BFFLinkLabelFooterView *)self->_topSectionFooterView frame];
  v20 = v9;
  v19 = v10;
  v22 = v11;
  v21 = v12;
  v13 = [(BuddyAppleIDSignInController *)self tableView];
  [v8 convertRect:v13 fromView:{v19, v20, v21, v22}];
  v14 = CGRectGetMaxY(v27) - v24;
  v15 = [(BuddyAppleIDSignInController *)self buttonTray];
  [v15 frame];
  v17 = v14 > v16;

  v23 = v17;
  if (v25)
  {
    return 0;
  }

  return v23;
}

@end
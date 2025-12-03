@interface BuddyAppleIDSignInController
+ (id)federatedAuthSignInControllerInNavigationController:(id)controller mode:(int)mode passcodeCacheManager:(id)manager featureFlags:(id)flags;
+ (id)newAppleAccountPasswordCellWithPlaceholder:(id)placeholder delegate:(id)delegate;
+ (id)newAppleAccountTableView;
+ (id)newAppleAccountUsernameCellWithPlaceholder:(id)placeholder delegate:(id)delegate;
- (BOOL)_scrollViewContentIsUnderTray;
- (BOOL)isFooterObscuredByButtonTray;
- (BOOL)textFieldShouldReturn:(id)return;
- (BuddyAppleIDSignInController)initWithMode:(int)mode featureFlags:(id)flags;
- (NSString)username;
- (double)headerViewBottomToTableViewTopPadding;
- (double)rowHeight;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_serverFriendlyDisplayNameForCurrentUserName:(id)name;
- (id)_subTitleText;
- (id)_subtitleTextForMode:(int)mode;
- (id)_titleTextForAuthMode:(int)mode;
- (id)_userFriendlyDisplayNameForCurrentUserName:(id)name;
- (id)passwordCell;
- (id)stringWithUsernameFormattedIntoString:(id)string;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)topSectionFooterView;
- (id)usernameCell;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_continueButtonTapped;
- (void)_loginOptionsTapped:(id)tapped;
- (void)_setContinueButtonEnabledOrDisabled;
- (void)_signInToAccount;
- (void)_textChanged:(id)changed;
- (void)addFooterLinkWithTitle:(id)title handler:(id)handler;
- (void)dealloc;
- (void)ensureUsernameTextFieldIsVisible;
- (void)loadView;
- (void)setDetailText:(id)text;
- (void)setEnabled:(BOOL)enabled;
- (void)setFooterText:(id)text;
- (void)setIsUsernameEditable:(BOOL)editable;
- (void)setKeyboardFrame:(CGRect)frame;
- (void)setShowsPasswordAsField:(BOOL)field animated:(BOOL)animated;
- (void)setUsername:(id)username;
- (void)setiForgotText:(id)text handler:(id)handler;
- (void)viewControllerSpinnerManagerDidStopAnimatingSpinner:(id)spinner;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyAppleIDSignInController

+ (id)federatedAuthSignInControllerInNavigationController:(id)controller mode:(int)mode passcodeCacheManager:(id)manager featureFlags:(id)flags
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  modeCopy = mode;
  v25 = 0;
  objc_storeStrong(&v25, manager);
  v24 = 0;
  objc_storeStrong(&v24, flags);
  v9 = [BuddyAppleIDSignInController alloc];
  val = [(BuddyAppleIDSignInController *)v9 initWithMode:modeCopy featureFlags:v24];
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
  v21 = modeCopy;
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

- (BuddyAppleIDSignInController)initWithMode:(int)mode featureFlags:(id)flags
{
  selfCopy = self;
  v20 = a2;
  modeCopy = mode;
  location = 0;
  objc_storeStrong(&location, flags);
  v4 = selfCopy;
  v5 = [selfCopy _titleTextForAuthMode:modeCopy];
  v6 = [selfCopy _subtitleTextForMode:modeCopy];
  selfCopy = 0;
  v17.receiver = v4;
  v17.super_class = BuddyAppleIDSignInController;
  selfCopy = [(BuddyAppleIDSignInController *)&v17 initWithTitle:v5 detailText:v6 icon:0 adoptTableViewScrollView:1];
  objc_storeStrong(&selfCopy, selfCopy);

  if (selfCopy)
  {
    *(selfCopy + 10) = modeCopy;
    *(selfCopy + 49) = 1;
    *(selfCopy + 45) = 1;
    *(selfCopy + 46) = 0;
    *(selfCopy + 47) = 1;
    objc_storeStrong(selfCopy + 10, location);
    v7 = dispatch_get_global_queue(25, 0);
    v10 = _NSConcreteStackBlock;
    v11 = -1073741824;
    v12 = 0;
    v13 = sub_100171C28;
    v14 = &unk_10032D458;
    v16 = modeCopy;
    v15 = selfCopy;
    dispatch_async(v7, &v10);

    objc_storeStrong(&v15, 0);
  }

  v8 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v2 removeObserver:selfCopy];

  v3.receiver = selfCopy;
  v3.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v3 dealloc];
}

- (id)_titleTextForAuthMode:(int)mode
{
  if (mode)
  {
    switch(mode)
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

- (id)stringWithUsernameFormattedIntoString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
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
    username = [(BuddyAppleIDSignInController *)selfCopy username];
    v5 = [NSString stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:&obj, username];
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
          domain = [v33 domain];
          v27 = 1;
          v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", domain, [v33 code]);
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

    string = [v36 string];
    username2 = [(BuddyAppleIDSignInController *)selfCopy username];
    v15 = [string rangeOfString:username2];
    v24 = v16;
    v23 = v15;

    if (v24)
    {
      v17 = [v34 fontDescriptorWithSymbolicTraits:2];
      v22 = [UIFont fontWithDescriptor:v17 size:0.0];

      [v36 addAttribute:NSFontAttributeName value:v22 range:{v23, v24}];
      username3 = [(BuddyAppleIDSignInController *)selfCopy username];
      v21 = [AKUsernameFormatter formattedUsernameFromUsername:username3];

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

- (id)_subtitleTextForMode:(int)mode
{
  selfCopy = self;
  v42 = a2;
  modeCopy = mode;
  v40 = 0;
  if (mode == 1)
  {
    v3 = +[UIDevice currentDevice];
    sf_isChinaRegionCellularDevice = [(UIDevice *)v3 sf_isChinaRegionCellularDevice];

    v5 = [NSAttributedString alloc];
    if (sf_isChinaRegionCellularDevice)
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

  else if (modeCopy >= 2)
  {
    switch(modeCopy)
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
        username = [(BuddyAppleIDSignInController *)selfCopy username];
        v11 = [(NSString *)username length];

        if (v11)
        {
          v12 = [NSBundle bundleForClass:objc_opt_class()];
          v13 = [(NSBundle *)v12 localizedStringForKey:@"ICLOUD_UPGRADE_TEXT_%@" value:&stru_10032F900 table:@"AppleIDAuth"];
          v14 = [(BuddyAppleIDSignInController *)selfCopy stringWithUsernameFormattedIntoString:v13];
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
        username2 = [(BuddyAppleIDSignInController *)selfCopy username];
        v17 = [(NSString *)username2 length];

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

  string = [v40 string];
  objc_storeStrong(&v40, 0);

  return string;
}

- (id)_subTitleText
{
  detailText = [(BuddyAppleIDSignInController *)self detailText];

  if (detailText)
  {
    detailText2 = [(BuddyAppleIDSignInController *)self detailText];
  }

  else
  {
    detailText2 = [(BuddyAppleIDSignInController *)self _subtitleTextForMode:self->_mode];
  }

  return detailText2;
}

- (void)setiForgotText:(id)text handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v24 = 0;
  objc_storeStrong(&v24, handler);
  [(BFFLinkLabelFooterView *)selfCopy->_topSectionFooterView removeAllLinks];
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

    topSectionFooterView = [(BuddyAppleIDSignInController *)selfCopy topSectionFooterView];
    v17 = [v21 copy];
    [topSectionFooterView addFooterLinkWithAttributedTitle:v17 handler:v24];

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

- (void)addFooterLinkWithTitle:(id)title handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v6 = 0;
  objc_storeStrong(&v6, handler);
  topSectionFooterView = [(BuddyAppleIDSignInController *)selfCopy topSectionFooterView];
  [topSectionFooterView addLinkWithTitle:location[0] handler:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setFooterText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  topSectionFooterView = [(BuddyAppleIDSignInController *)selfCopy topSectionFooterView];
  [topSectionFooterView setLabelText:location[0]];

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

- (void)setEnabled:(BOOL)enabled
{
  if (enabled != self->_enabled)
  {
    self->_enabled = enabled;
    editableTextField = [(UITableViewCell *)self->_usernameCell editableTextField];
    [editableTextField setEnabled:enabled];

    editableTextField2 = [(UITableViewCell *)self->_passwordCell editableTextField];
    [editableTextField2 setEnabled:enabled];

    [(BFFLinkLabelFooterView *)self->_topSectionFooterView setEnabled:enabled];
    if (enabled)
    {
      [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"BUDDY_APPLEID_SIGN_IN_PAGE"];
    }

    else
    {
      navigationController = [(BuddyAppleIDSignInController *)self navigationController];
      topViewController = [navigationController topViewController];
      [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:topViewController identifier:@"BUDDY_APPLEID_SIGN_IN_PAGE"];
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
    preferredContentSizeCategory = [(UIApplication *)v12 preferredContentSizeCategory];
    v9 = 1;
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
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
  location[2] = self;
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
  selfCopy = self;
  v36 = a2;
  v35.receiver = self;
  v35.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v35 loadView];
  v2 = +[BuddyAppleIDSignInController newAppleAccountTableView];
  [(BuddyAppleIDSignInController *)selfCopy setTableView:v2];

  v3 = selfCopy;
  tableView = [(BuddyAppleIDSignInController *)selfCopy tableView];
  [tableView setDelegate:v3];

  v5 = selfCopy;
  tableView2 = [(BuddyAppleIDSignInController *)selfCopy tableView];
  [tableView2 setDataSource:v5];

  tableView3 = [(BuddyAppleIDSignInController *)selfCopy tableView];
  [(BuddyAppleIDSignInController *)selfCopy rowHeight];
  [tableView3 setRowHeight:?];

  featureFlags = [(BuddyAppleIDSignInController *)selfCopy featureFlags];
  LOBYTE(tableView2) = [(BuddyFeatureFlags *)featureFlags isSolariumEnabled]^ 1;

  if (tableView2)
  {
    tableView4 = [(BuddyAppleIDSignInController *)selfCopy tableView];
    [tableView4 setContentInsetAdjustmentBehavior:2];
  }

  v10 = 0;
  if (selfCopy->_mode != 4)
  {
    v10 = selfCopy->_mode != 6;
  }

  [(BuddyAppleIDSignInController *)selfCopy setShowsUsernameAsField:v10];
  selfCopy->_showsPasswordAsField = !selfCopy->_showsUsernameAsField;
  v11 = 1;
  if (selfCopy->_mode != 1)
  {
    v11 = 1;
    if (selfCopy->_mode != 5)
    {
      v11 = selfCopy->_mode == 4;
    }
  }

  [(BuddyAppleIDSignInController *)selfCopy setShowsInfoSection:v11];
  objc_initWeak(&location, selfCopy);
  if (selfCopy->_mode == 6 || selfCopy->_mode == 4)
  {
    v33 = selfCopy->_mode == 4;
    v12 = selfCopy;
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
      topSectionFooterView = [(BuddyAppleIDSignInController *)selfCopy topSectionFooterView];
      [topSectionFooterView setWantsSideBySideLayout:1];
    }

    objc_destroyWeak(&v31);
  }

  else if (selfCopy->_mode == 3)
  {
    v16 = selfCopy;
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

  if (selfCopy->_mode == 5)
  {
    topSectionFooterView2 = [(BuddyAppleIDSignInController *)selfCopy topSectionFooterView];
    [topSectionFooterView2 setFlexibleHeight:10.0];
  }

  v20 = [NSNotificationCenter defaultCenter:v21];
  [(NSNotificationCenter *)v20 addObserver:selfCopy selector:"_textChanged:" name:UITextFieldTextDidChangeNotification object:0];

  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v39 = a2;
  v38.receiver = self;
  v38.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v38 viewDidLoad];
  if (selfCopy->_mode != 8)
  {
    v2 = [[OBAnimationState alloc] initWithStateName:@"State 1" darkStateName:@"Dark 1" transitionDuration:0.01 transitionSpeed:1.0];
    v42[0] = v2;
    v3 = [[OBAnimationState alloc] initWithStateName:@"State 2" darkStateName:@"Dark 2" transitionDuration:1.0 transitionSpeed:0.7];
    v42[1] = v3;
    location = [NSArray arrayWithObjects:v42 count:2];

    v4 = [(BuddyAppleIDSignInController *)selfCopy buddy_animationController:@"AppleID" animatedStates:location startAtFirstState:1];
    [(BuddyAppleIDSignInController *)selfCopy setAnimationController:v4];

    headerView = [(BuddyAppleIDSignInController *)selfCopy headerView];
    animationView = [headerView animationView];
    [animationView defaultScale];
    v8 = v7 + 0.0299999993;
    headerView2 = [(BuddyAppleIDSignInController *)selfCopy headerView];
    animationView2 = [headerView2 animationView];
    [animationView2 setScale:v8];

    objc_storeStrong(&location, 0);
  }

  v11 = +[OBBoldTrayButton boldButton];
  [(BuddyAppleIDSignInController *)selfCopy setContinueButton:v11];

  continueButton = [(BuddyAppleIDSignInController *)selfCopy continueButton];
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [(NSBundle *)v13 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"AppleIDAuth"];
  [(OBBoldTrayButton *)continueButton setTitle:v14 forState:0];

  continueButton2 = [(BuddyAppleIDSignInController *)selfCopy continueButton];
  [(OBBoldTrayButton *)continueButton2 addTarget:selfCopy action:"_continueButtonTapped" forEvents:64];

  [(BuddyAppleIDSignInController *)selfCopy _setContinueButtonEnabledOrDisabled];
  if (selfCopy->_mode == 2 || selfCopy->_mode == 3)
  {
    [(BuddyAppleIDSignInController *)selfCopy setShouldAdjustScrollViewInsetForKeyboard:1];
  }

  else
  {
    buttonTray = [(BuddyAppleIDSignInController *)selfCopy buttonTray];
    v41 = BYPrivacyAppleIDIdentifier;
    v17 = [NSArray arrayWithObjects:&v41 count:1];
    [buttonTray setPrivacyLinkForBundles:v17];

    [(BuddyAppleIDSignInController *)selfCopy setShouldAdjustScrollViewInsetForKeyboard:1];
    buttonTray2 = [(BuddyAppleIDSignInController *)selfCopy buttonTray];
    continueButton3 = [(BuddyAppleIDSignInController *)selfCopy continueButton];
    [buttonTray2 addButton:continueButton3];
  }

  loginOptionsConstructor = [(BuddyAppleIDSignInController *)selfCopy loginOptionsConstructor];

  if (loginOptionsConstructor)
  {
    v36 = +[OBLinkTrayButton linkButton];
    v35 = 0;
    loginOptionsConstructor2 = [(BuddyAppleIDSignInController *)selfCopy loginOptionsConstructor];
    obj = 0;
    v22 = loginOptionsConstructor2[2](loginOptionsConstructor2, v36, &obj);
    objc_storeStrong(&v35, obj);
    [(BuddyAppleIDSignInController *)selfCopy setLoginOptionsAction:v22];

    [v36 setTitle:v35 forState:0];
    [v36 addTarget:selfCopy action:"_loginOptionsTapped:" forEvents:64];
    buttonTray3 = [(BuddyAppleIDSignInController *)selfCopy buttonTray];
    [buttonTray3 addButton:v36];

    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  _titleText = [(BuddyAppleIDSignInController *)selfCopy _titleText];
  navigationItem = [(BuddyAppleIDSignInController *)selfCopy navigationItem];
  [navigationItem setBackButtonTitle:_titleText];

  v26 = dispatch_time(0, 1500000000);
  v27 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v29 = -1073741824;
  v30 = 0;
  v31 = sub_100174BD4;
  v32 = &unk_10032B0D0;
  v33 = selfCopy;
  dispatch_after(v26, v27, &block);

  objc_storeStrong(&v33, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v10 = a2;
  appearCopy = appear;
  oslog = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    sub_100082D54(buf, selfCopy->_mode);
    _os_log_impl(&_mh_execute_header, oslog, v7, "SignInController showing mode %i", buf, 8u);
  }

  objc_storeStrong(&oslog, 0);
  v6.receiver = selfCopy;
  v6.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v6 viewWillAppear:appearCopy];
  view = [(BuddyAppleIDSignInController *)selfCopy view];
  [view setNeedsLayout];

  view2 = [(BuddyAppleIDSignInController *)selfCopy view];
  [view2 layoutIfNeeded];

  animationController = [(BuddyAppleIDSignInController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v14 = a2;
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v12 viewDidAppear:appear];
  if (selfCopy->_mode != 1 && selfCopy->_mode != 5 && selfCopy->_mode != 4)
  {
    editableTextField = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
    text = [editableTextField text];
    v5 = 1;
    if (![text length])
    {
      v5 = selfCopy->_usernameCell == 0;
    }

    if (v5)
    {
      editableTextField2 = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];
    }

    else
    {
      editableTextField2 = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
    }

    [editableTextField2 becomeFirstResponder];
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
    tableView = [(BuddyAppleIDSignInController *)selfCopy tableView];
    [tableView flashScrollIndicators];
  }

  if (selfCopy->_appearanceHandler)
  {
    (*(selfCopy->_appearanceHandler + 2))();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v5 = a2;
  disappearCopy = disappear;
  [(BuddyAppleIDSignInController *)self setEnabled:1];
  v3.receiver = selfCopy;
  v3.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v3 viewDidDisappear:disappearCopy];
}

- (void)_loginOptionsTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  loginOptionsAction = [(BuddyAppleIDSignInController *)selfCopy loginOptionsAction];
  loginOptionsAction[2](loginOptionsAction);

  objc_storeStrong(location, 0);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return UITableViewAutomaticDimension;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 2;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    v11 = 0;
  }

  else
  {
    showsUsernameAsField = [(BuddyAppleIDSignInController *)selfCopy showsUsernameAsField];
    showsPasswordAsField = 0;
    if (showsUsernameAsField)
    {
      showsPasswordAsField = [(BuddyAppleIDSignInController *)selfCopy showsPasswordAsField];
    }

    if (showsPasswordAsField)
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  if (section)
  {
    if (sectionCopy == 1)
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
    v12 = selfCopy->_topSectionFooterView;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v12;

  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0.0;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  if (section)
  {
    [(BuddyAppleIDSignInController *)selfCopy keyboardFrame];
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
      tableFooterView = [location[0] tableFooterView];
      buttonTray = [(BuddyAppleIDSignInController *)selfCopy buttonTray];
      superview = [buttonTray superview];
      v20 = tableFooterView == superview;

      if (sectionCopy != 1 || v20 || (sub_100175ABC() & 1) == 0)
      {
        goto LABEL_23;
      }

      view = [(BuddyAppleIDSignInController *)selfCopy view];
      [view layoutMargins];

      navigationController = [(BuddyAppleIDSignInController *)selfCopy navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar bounds];
      v49 = v24;

      v48 = 0.0;
      tableFooterView2 = [location[0] tableFooterView];
      [tableFooterView2 bounds];
      v27 = v26;

      if (v27 == 0.0)
      {
        buttonTray2 = [(BuddyAppleIDSignInController *)selfCopy buttonTray];
        [buttonTray2 bounds];
        v48 = v29;
      }

      tableHeaderView = [location[0] tableHeaderView];
      [tableHeaderView bounds];
      v32 = v31;

      v47 = v32;
      usernameCell = [(BuddyAppleIDSignInController *)selfCopy usernameCell];
      [usernameCell bounds];
      v35 = v34;

      v46 = 0.0;
      if (selfCopy->_showsPasswordAsField)
      {
        passwordCell = [(BuddyAppleIDSignInController *)selfCopy passwordCell];
        [passwordCell bounds];
        v46 = v37;
      }

      [(BFFLinkLabelFooterView *)selfCopy->_topSectionFooterView bounds];
      v45 = v49 + v47 + v35 + v46 + v38 + v48;
      view2 = [(BuddyAppleIDSignInController *)selfCopy view];
      [view2 bounds];
      v41 = v40;

      if (v41 > v45)
      {
        view3 = [(BuddyAppleIDSignInController *)selfCopy view];
        [view3 bounds];
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
    [(BFFLinkLabelFooterView *)selfCopy->_topSectionFooterView margins];
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

    [(BFFLinkLabelFooterView *)selfCopy->_topSectionFooterView setMargins:__b[0], __b[1], __b[2], __b[3]];
    [location[0] bounds];
    [location[0] separatorInset];
    [location[0] layoutMargins];
    [location[0] layoutMargins];
    topSectionFooterView = selfCopy->_topSectionFooterView;
    [location[0] bounds];
    sub_100175B40();
    [(BFFLinkLabelFooterView *)topSectionFooterView sizeThatFits:v14, v15];
    v56 = v16;
  }

  objc_storeStrong(location, 0);
  return v56;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, path);
  v12 = 0;
  if (![(BuddyAppleIDSignInController *)selfCopy showsUsernameAsField])
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
    passwordCell = [(BuddyAppleIDSignInController *)selfCopy passwordCell];
    v8 = v12;
    v12 = passwordCell;

    goto LABEL_6;
  }

  usernameCell = [(BuddyAppleIDSignInController *)selfCopy usernameCell];
  v6 = v12;
  v12 = usernameCell;

LABEL_6:
  v9 = +[UIColor secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v9];

  v10 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v10;
}

+ (id)newAppleAccountUsernameCellWithPlaceholder:(id)placeholder delegate:(id)delegate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, placeholder);
  v11 = 0;
  objc_storeStrong(&v11, delegate);
  v10 = [[BuddyAppleIDSignInTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v10 setSelectionStyle:0];
  editableTextField = [v10 editableTextField];
  [editableTextField setPlaceholder:location[0]];
  [editableTextField setAutocorrectionType:1];
  [editableTextField setAutocapitalizationType:0];
  [editableTextField setDelegate:v11];
  [editableTextField setKeyboardType:7];
  [editableTextField setReturnKeyType:11];
  [editableTextField setTextContentType:UITextContentTypeUsername];
  [editableTextField setEnablesReturnKeyAutomatically:1];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [editableTextField setFont:v5];

  v6 = +[UIColor _labelColor];
  [editableTextField setTextColor:v6];

  v7 = v10;
  objc_storeStrong(&editableTextField, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)usernameCell
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_usernameCell)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = v2;
    if (selfCopy->_phoneNumberSupported)
    {
      v4 = @"SIGN_IN_EMAIL_OR_PHONE";
    }

    else
    {
      v4 = @"SIGN_IN_EMAIL";
    }

    location[0] = [(NSBundle *)v2 localizedStringForKey:v4 value:&stru_10032F900 table:@"AppleIDAuth"];

    v5 = [BuddyAppleIDSignInController newAppleAccountUsernameCellWithPlaceholder:location[0] delegate:selfCopy];
    usernameCell = selfCopy->_usernameCell;
    selfCopy->_usernameCell = v5;

    objc_storeStrong(location, 0);
  }

  v7 = selfCopy->_usernameCell;

  return v7;
}

- (void)setUsername:(id)username
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, username);
  usernameCell = [(BuddyAppleIDSignInController *)selfCopy usernameCell];
  editableTextField = [usernameCell editableTextField];
  [editableTextField setText:location[0]];

  [(BuddyAppleIDSignInController *)selfCopy _setContinueButtonEnabledOrDisabled];
  headerView = [(BuddyAppleIDSignInController *)selfCopy headerView];
  _subTitleText = [(BuddyAppleIDSignInController *)selfCopy _subTitleText];
  [headerView setDetailText:_subTitleText];

  objc_storeStrong(location, 0);
}

- (NSString)username
{
  v2 = [(BuddyAppleIDSignInController *)self usernameCell:a2];
  editableTextField = [v2 editableTextField];
  text = [editableTextField text];

  return text;
}

- (void)setIsUsernameEditable:(BOOL)editable
{
  if (self->_isUsernameEditable != editable)
  {
    self->_isUsernameEditable = editable;
    usernameCell = [(BuddyAppleIDSignInController *)self usernameCell];
    editableTextField = [usernameCell editableTextField];
    [editableTextField setUserInteractionEnabled:editable];
  }
}

+ (id)newAppleAccountPasswordCellWithPlaceholder:(id)placeholder delegate:(id)delegate
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, placeholder);
  v11 = 0;
  objc_storeStrong(&v11, delegate);
  v10 = [[BuddyAppleIDSignInTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
  [v10 setSelectionStyle:0];
  editableTextField = [v10 editableTextField];
  [editableTextField setPlaceholder:location[0]];
  [editableTextField setSecureTextEntry:1];
  [editableTextField setAutocorrectionType:1];
  [editableTextField setAutocapitalizationType:0];
  [editableTextField setDelegate:v11];
  [editableTextField setReturnKeyType:11];
  [editableTextField setEnablesReturnKeyAutomatically:1];
  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [editableTextField setFont:v5];

  v6 = +[UIColor _labelColor];
  [editableTextField setTextColor:v6];

  v7 = v10;
  objc_storeStrong(&editableTextField, 0);
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
    username = [(BuddyAppleIDSignInController *)self username];
    v3 = [(BuddyAppleIDSignInController *)self _userFriendlyDisplayNameForCurrentUserName:username];
    [(BuddyAppleIDSignInController *)self setUsername:v3];

    authModeHandler = [(BuddyAppleIDSignInController *)self authModeHandler];
    username2 = [(BuddyAppleIDSignInController *)self username];
    v6 = [(BuddyAppleIDSignInController *)self _serverFriendlyDisplayNameForCurrentUserName:username2];
    authModeHandler[2](authModeHandler, v6);
  }
}

- (id)_serverFriendlyDisplayNameForCurrentUserName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if (!selfCopy->_phoneNumberSupported || ([location[0] containsString:@"@"] & 1) != 0)
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

- (id)_userFriendlyDisplayNameForCurrentUserName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if (!selfCopy->_phoneNumberSupported || ([location[0] containsString:@"@"] & 1) != 0 || ((v7 = objc_alloc_init(AAFPhoneNumberFormatter), v6 = objc_msgSend(v7, "displayFormatFor:", location[0]), (objc_msgSend(v6, "isEqualToString:", location[0]) & 1) != 0) ? (v5 = 0) : (v10 = v6, v5 = 1), objc_storeStrong(&v6, 0), objc_storeStrong(&v7, 0), !v5))
  {
    v10 = location[0];
  }

  objc_storeStrong(location, 0);
  v3 = v10;

  return v3;
}

- (void)_signInToAccount
{
  selfCopy = self;
  v8[1] = a2;
  v2 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_1001768BC;
  v7 = &unk_10032B0D0;
  v8[0] = selfCopy;
  dispatch_async(v2, &block);

  objc_storeStrong(v8, 0);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v3 = location[0];
  editableTextField = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];

  if (v3 == editableTextField)
  {
    editableTextField2 = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
    text = [editableTextField2 text];
    v7 = +[NSCharacterSet whitespaceCharacterSet];
    v8 = [text stringByTrimmingCharactersInSet:v7];
    lastEnteredUsername = selfCopy->_lastEnteredUsername;
    selfCopy->_lastEnteredUsername = v8;

    if (!selfCopy->_showsPasswordAsField)
    {
      v10 = selfCopy;
      v11 = selfCopy;
      username = [(BuddyAppleIDSignInController *)selfCopy username];
      v13 = [(BuddyAppleIDSignInController *)v11 _userFriendlyDisplayNameForCurrentUserName:username];
      [(BuddyAppleIDSignInController *)v10 setUsername:v13];

      authModeHandler = [(BuddyAppleIDSignInController *)selfCopy authModeHandler];
      v15 = selfCopy;
      username2 = [(BuddyAppleIDSignInController *)selfCopy username];
      v17 = [(BuddyAppleIDSignInController *)v15 _serverFriendlyDisplayNameForCurrentUserName:username2];
      authModeHandler[2](authModeHandler, v17);
    }

    goto LABEL_11;
  }

  v18 = location[0];
  editableTextField3 = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];

  if (v18 != editableTextField3)
  {
LABEL_11:
    v30 = 1;
    goto LABEL_12;
  }

  editableTextField4 = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];
  text2 = [editableTextField4 text];
  v22 = [text2 length];

  if (v22)
  {
    editableTextField5 = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
    text3 = [editableTextField5 text];
    v25 = [text3 length];

    if (v25)
    {
      [(BuddyAppleIDSignInController *)selfCopy _signInToAccount];
    }

    else
    {
      editableTextField6 = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
      [editableTextField6 becomeFirstResponder];
    }

    goto LABEL_11;
  }

  v30 = 0;
LABEL_12:
  objc_storeStrong(location, 0);
  return v30 & 1;
}

- (void)setDetailText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  objc_storeStrong(&selfCopy->_detailText, location[0]);
  headerView = [(BuddyAppleIDSignInController *)selfCopy headerView];
  _subTitleText = [(BuddyAppleIDSignInController *)selfCopy _subTitleText];
  [headerView setDetailText:_subTitleText];

  objc_storeStrong(location, 0);
}

- (void)ensureUsernameTextFieldIsVisible
{
  selfCopy = self;
  location[7] = a2;
  animationController = [(BuddyAppleIDSignInController *)self animationController];
  v3 = animationController == 0;

  if (!v3 && [(BuddyAppleIDSignInController *)selfCopy isFooterObscuredByButtonTray])
  {
    tableView = [(BuddyAppleIDSignInController *)selfCopy tableView];
    [tableView contentOffset];
    location[5] = v5;
    location[6] = v6;
    v7 = *&v6;
    tableView2 = [(BuddyAppleIDSignInController *)selfCopy tableView];
    [tableView2 adjustedContentInset];
    location[1] = v9;
    location[2] = v10;
    location[3] = v11;
    location[4] = v12;
    v13 = v7 + *&v9;

    if (v13 <= 0.0)
    {
      location[0] = [NSIndexPath indexPathForRow:0 inSection:0];
      tableView3 = [(BuddyAppleIDSignInController *)selfCopy tableView];
      [tableView3 scrollToRowAtIndexPath:location[0] atScrollPosition:3 animated:1];

      objc_storeStrong(location, 0);
    }
  }
}

- (BOOL)isFooterObscuredByButtonTray
{
  tableView = [(BuddyAppleIDSignInController *)self tableView];
  [tableView rectForFooterInSection:0];
  v27 = v3;
  v26 = v4;
  v29 = v5;
  v28 = v6;

  tableView2 = [(BuddyAppleIDSignInController *)self tableView];
  [tableView2 convertRect:0 toView:{v26, v27, v28, v29}];
  rect.origin.y = v8;
  rect.origin.x = v9;
  rect.size.height = v10;
  rect.size.width = v11;

  buttonTray = [(BuddyAppleIDSignInController *)self buttonTray];
  buttonTray2 = [(BuddyAppleIDSignInController *)self buttonTray];
  [buttonTray2 bounds];
  [buttonTray convertRect:0 toView:{v14, v15, v16, v17, *&v14, *&v15, *&v16, *&v17}];
  v24.origin.y = v18;
  v24.origin.x = v19;
  v24.size.height = v20;
  v24.size.width = v21;

  MaxY = CGRectGetMaxY(rect);
  return MaxY > CGRectGetMinY(v24);
}

- (void)viewControllerSpinnerManagerDidStopAnimatingSpinner:(id)spinner
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, spinner);
  [(BuddyAppleIDSignInController *)selfCopy _setContinueButtonEnabledOrDisabled];
  objc_storeStrong(location, 0);
}

- (void)_textChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  object = [location[0] object];
  editableTextField = [(UITableViewCell *)selfCopy->_passwordCell editableTextField];
  editableTextField2 = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
  if (object == editableTextField2 && selfCopy->_showsPasswordAsField)
  {
    text = [editableTextField2 text];
    v4 = +[NSCharacterSet whitespaceCharacterSet];
    v5 = [text stringByTrimmingCharactersInSet:v4];

    if (([v5 isEqualToString:selfCopy->_lastEnteredUsername] & 1) == 0)
    {
      [(BuddyAppleIDSignInController *)selfCopy setShowsPasswordAsField:0 animated:1];
    }

    objc_storeStrong(&v5, 0);
  }

  if (object == editableTextField || object == editableTextField2)
  {
    [(BuddyAppleIDSignInController *)selfCopy _setContinueButtonEnabledOrDisabled];
  }

  objc_storeStrong(&editableTextField2, 0);
  objc_storeStrong(&editableTextField, 0);
  objc_storeStrong(&object, 0);
  objc_storeStrong(location, 0);
}

- (void)_setContinueButtonEnabledOrDisabled
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(UITableViewCell *)self->_passwordCell editableTextField];
  location = [(UITableViewCell *)selfCopy->_usernameCell editableTextField];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0;
  if (selfCopy->_showsPasswordAsField || (v12 = [location text], v11 = 1, v2 = 1, !objc_msgSend(v12, "length")))
  {
    if (selfCopy->_showsUsernameAsField || (v10 = [v14[0] text], v9 = 1, v2 = 1, !objc_msgSend(v10, "length")))
    {
      text = [location text];
      v7 = 1;
      v2 = 0;
      if ([text length])
      {
        text2 = [v14[0] text];
        v5 = 1;
        v2 = [text2 length] != 0;
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
  continueButton = [(BuddyAppleIDSignInController *)selfCopy continueButton];
  [(OBBoldTrayButton *)continueButton setEnabled:v3];

  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
}

- (void)setShowsPasswordAsField:(BOOL)field animated:(BOOL)animated
{
  selfCopy = self;
  v30 = a2;
  fieldCopy = field;
  animatedCopy = animated;
  if (field != self->_showsPasswordAsField)
  {
    selfCopy->_showsPasswordAsField = fieldCopy;
    v4 = [NSIndexPath indexPathForRow:selfCopy->_showsUsernameAsField inSection:0];
    v32 = v4;
    location = [NSArray arrayWithObjects:&v32 count:1];

    if (animatedCopy)
    {
      v5 = 100;
    }

    else
    {
      v5 = 5;
    }

    v26 = v5;
    if (fieldCopy && selfCopy->_showsUsernameAsField)
    {
      v19 = _NSConcreteStackBlock;
      v20 = -1073741824;
      v21 = 0;
      v22 = sub_1001778C8;
      v23 = &unk_10032B838;
      v24 = selfCopy;
      v25 = location;
      v13 = _NSConcreteStackBlock;
      v14 = -1073741824;
      v15 = 0;
      v16 = sub_10017795C;
      v17 = &unk_10032B2E0;
      v18 = selfCopy;
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
      v11 = selfCopy;
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
  type = [v2 type];

  if (type == 1)
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

- (void)setKeyboardFrame:(CGRect)frame
{
  frameCopy = frame;
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyAppleIDSignInController;
  [(BuddyAppleIDSignInController *)&v5 setKeyboardFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  tableView = [(BuddyAppleIDSignInController *)selfCopy tableView];
  v4 = [NSIndexSet indexSetWithIndex:1];
  [tableView _reloadSectionHeaderFooters:v4 withRowAnimation:5];
}

- (BOOL)_scrollViewContentIsUnderTray
{
  tableView = [(BuddyAppleIDSignInController *)self tableView];
  tableFooterView = [tableView tableFooterView];
  buttonTray = [(BuddyAppleIDSignInController *)self buttonTray];
  superview = [buttonTray superview];
  v6 = tableFooterView == superview;

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
  view = [(BuddyAppleIDSignInController *)self view];
  [(BFFLinkLabelFooterView *)self->_topSectionFooterView frame];
  v20 = v9;
  v19 = v10;
  v22 = v11;
  v21 = v12;
  tableView2 = [(BuddyAppleIDSignInController *)self tableView];
  [view convertRect:tableView2 fromView:{v19, v20, v21, v22}];
  v14 = CGRectGetMaxY(v27) - v24;
  buttonTray2 = [(BuddyAppleIDSignInController *)self buttonTray];
  [buttonTray2 frame];
  v17 = v14 > v16;

  v23 = v17;
  if (v25)
  {
    return 0;
  }

  return v23;
}

@end
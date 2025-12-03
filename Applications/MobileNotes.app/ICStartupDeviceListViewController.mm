@interface ICStartupDeviceListViewController
- (double)standardFontSize;
- (id)attributedStringWithString:(id)string font:(id)font color:(id)color;
- (id)choiceLabels;
- (id)disclaimerStringForCurrentDevice;
- (id)redAsteriskAttributedString;
- (void)applyAccessibilityInfo;
- (void)choiceSelected:(unint64_t)selected;
- (void)didCompleteAction;
- (void)startIndicatorAnimation;
- (void)stopIndicatorAnimation;
- (void)updateDeviceList;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICStartupDeviceListViewController

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = ICStartupDeviceListViewController;
  [(ICStartupBaseViewController *)&v20 viewDidLoad];
  [(ICStartupDeviceListViewController *)self applyAccessibilityInfo];
  [(ICStartupDeviceListViewController *)self updateDeviceList];
  v3 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [(ICStartupDeviceListViewController *)self setActivityIndicatorView:v3];

  activityIndicatorView = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  [activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(ICStartupDeviceListViewController *)self view];
  activityIndicatorView2 = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  [view addSubview:activityIndicatorView2];

  v7 = +[NSMutableArray array];
  activityIndicatorView3 = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  centerYAnchor = [activityIndicatorView3 centerYAnchor];
  view2 = [(ICStartupDeviceListViewController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v7 addObject:v13];

  activityIndicatorView4 = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  centerXAnchor = [activityIndicatorView4 centerXAnchor];
  view3 = [(ICStartupDeviceListViewController *)self view];
  layoutMarginsGuide2 = [view3 layoutMarginsGuide];
  centerXAnchor2 = [layoutMarginsGuide2 centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 addObject:v19];

  [NSLayoutConstraint activateConstraints:v7];
}

- (double)standardFontSize
{
  traitCollection = [(ICStartupDeviceListViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v3 = 17.0;
  }

  else
  {
    v3 = 20.0;
  }

  return v3;
}

- (id)disclaimerStringForCurrentDevice
{
  if (+[UIDevice ic_isiPhone])
  {
    v2 = +[NSBundle mainBundle];
    v3 = v2;
    v4 = @"Upgraded notes may look different. Notes on this iPhone will also be upgraded.";
  }

  else if (+[UIDevice ic_isiPad])
  {
    v2 = +[NSBundle mainBundle];
    v3 = v2;
    v4 = @"Upgraded notes may look different. Notes on this iPad will also be upgraded.";
  }

  else
  {
    v5 = +[UIDevice ic_isVision];
    v2 = +[NSBundle mainBundle];
    v3 = v2;
    if (v5)
    {
      v4 = @"Upgraded notes may look different. Notes on this Vision Pro will also be upgraded.";
    }

    else
    {
      v4 = @"Upgraded notes may look different. Notes on this device will also be upgraded.";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:&stru_100661CF0 table:0];

  return v6;
}

- (void)updateDeviceList
{
  startupNavigationController = [(ICStartupBaseViewController *)self startupNavigationController];
  primaryAccountDevices = [startupNavigationController primaryAccountDevices];

  v28 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableAttributedString);
  v5 = +[ICStartupController importantDisclaimerAttributedString];
  [v4 appendAttributedString:v5];

  [v4 ic_appendString:@"\n"];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = primaryAccountDevices;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v27 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        name = [v11 name];
        if ([name length] && (objc_msgSend(v11, "notesVersion") & 0x8000000000000000) != 0)
        {
          [v28 addObject:v11];
          name2 = [v11 name];
          v14 = [(ICStartupDeviceListViewController *)self attributedStringWithString:name2 font:0 color:0];
          v15 = [v14 mutableCopy];

          if (([v11 maximumNotesVersion] & 0x8000000000000000) != 0)
          {
            v16 = [[NSAttributedString alloc] initWithString:@" "];
            [v15 appendAttributedString:v16];
            redAsteriskAttributedString = [(ICStartupDeviceListViewController *)self redAsteriskAttributedString];
            [v15 appendAttributedString:redAsteriskAttributedString];

            v27 = 1;
          }

          if ([v4 length])
          {
            v18 = [[NSAttributedString alloc] initWithString:@"\n"];
            [v4 appendAttributedString:v18];
          }

          [v4 appendAttributedString:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  else
  {
    v27 = 0;
  }

  v19 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "All Devices Received: %@", buf, 0xCu);
  }

  v20 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Non-Upgraded Devices: %@", buf, 0xCu);
  }

  [v4 ic_appendString:@"\n"];
  if (v27)
  {
    redAsteriskAttributedString2 = [(ICStartupDeviceListViewController *)self redAsteriskAttributedString];
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@" Device can’t be upgraded." value:&stru_100661CF0 table:0];
    v24 = [(ICStartupDeviceListViewController *)self attributedStringWithString:v23 font:0 color:0];

    [redAsteriskAttributedString2 appendAttributedString:v24];
    [v4 ic_appendString:@"\n"];
    [v4 appendAttributedString:redAsteriskAttributedString2];
  }

  headerView = [(ICStartupDeviceListViewController *)self headerView];
  string = [v4 string];
  [headerView setDetailText:string];
}

- (id)attributedStringWithString:(id)string font:(id)font color:(id)color
{
  stringCopy = string;
  fontCopy = font;
  colorCopy = color;
  v11 = colorCopy;
  if (fontCopy)
  {
    if (colorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(ICStartupDeviceListViewController *)self standardFontSize];
    v16 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    fontCopy = [v16 ic_fontWithSingleLineA];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v11 = +[UIColor labelColor];
LABEL_3:
  v12 = [NSAttributedString alloc];
  v17[0] = NSFontAttributeName;
  v17[1] = NSForegroundColorAttributeName;
  v18[0] = fontCopy;
  v18[1] = v11;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v14 = [v12 initWithString:stringCopy attributes:v13];

  return v14;
}

- (id)redAsteriskAttributedString
{
  redColor = [(ICStartupDeviceListViewController *)self redColor];
  v4 = [(ICStartupDeviceListViewController *)self attributedStringWithString:@"*" font:0 color:redColor];
  v5 = [v4 mutableCopy];

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ICStartupDeviceListViewController;
  [(ICStartupDeviceListViewController *)&v6 viewWillAppear:appear];
  navigationItem = [(ICStartupDeviceListViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  navigationItem2 = [(ICStartupDeviceListViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:0];
}

- (void)didCompleteAction
{
  startupNavigationController = [(ICStartupBaseViewController *)self startupNavigationController];
  [startupNavigationController dismiss];
}

- (void)startIndicatorAnimation
{
  activityIndicatorView = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  [activityIndicatorView startAnimating];
}

- (void)stopIndicatorAnimation
{
  [(ICStartupDeviceListViewController *)self updateDeviceList];
  activityIndicatorView = [(ICStartupDeviceListViewController *)self activityIndicatorView];
  [activityIndicatorView stopAnimating];
}

- (void)applyAccessibilityInfo
{
  view = [(ICStartupDeviceListViewController *)self view];
  [view setAccessibilityViewIsModal:1];
}

- (id)choiceLabels
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Upgrade Now" value:&stru_100661CF0 table:0];
  v8[0] = v3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Upgrade Later" value:&stru_100661CF0 table:0];
  v8[1] = v5;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)choiceSelected:(unint64_t)selected
{
  startupNavigationController = [(ICStartupBaseViewController *)self startupNavigationController];
  v6 = startupNavigationController;
  if (selected)
  {
    [startupNavigationController noUpgradeAction];

    startupNavigationController2 = [(ICStartupBaseViewController *)self startupNavigationController];
    [startupNavigationController2 dismiss];
  }

  else
  {
    [startupNavigationController upgradeAction];

    [(ICStartupDeviceListViewController *)self didCompleteAction];
  }
}

@end
@interface FontInstallMissingViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dismissViewWithMissingFonts:(id)fonts;
- (void)doInstall:(id)install;
- (void)doNotInstall:(id)install;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)unwindSegue:(id)segue;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FontInstallMissingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v6 viewDidLoad];
  v2 = objc_opt_new();
  installable = selfCopy->installable;
  selfCopy->installable = v2;

  v4 = objc_opt_new();
  notInstallable = selfCopy->notInstallable;
  selfCopy->notInstallable = v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v54 = a2;
  appearCopy = appear;
  v52.receiver = self;
  v52.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v52 viewWillAppear:appear];
  v40 = selfCopy;
  tableView = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView setDataSource:v40];

  v42 = selfCopy;
  tableView2 = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView2 setDelegate:v42];

  tableView3 = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:headerReuseIdentifier];

  tableView4 = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView4 setEstimatedSectionHeaderHeight:100.0];

  tableView5 = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView5 setSectionHeaderHeight:UITableViewAutomaticDimension];

  navigationController = [(FontInstallMissingViewController *)selfCopy navigationController];
  remoteController = [navigationController remoteController];
  objc_storeWeak(&selfCopy->remoteController, remoteController);

  objc_storeStrong(&selfCopy->output, &__NSArray0__struct);
  if (![(NSMutableArray *)selfCopy->installable count]&& ![(NSMutableArray *)selfCopy->notInstallable count])
  {
    memset(__b, 0, sizeof(__b));
    WeakRetained = objc_loadWeakRetained(&selfCopy->remoteController);
    obj = [WeakRetained input];

    v39 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
    if (v39)
    {
      v34 = *__b[2];
      v35 = 0;
      v36 = v39;
      while (1)
      {
        v33 = v35;
        if (*__b[2] != v34)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(__b[1] + 8 * v35);
        location = [v51 objectForKeyedSubscript:@"providers"];
        if ([location count])
        {
          installable = selfCopy->installable;
          v32 = [v51 mutableCopy];
          [(NSMutableArray *)installable addObject:?];
        }

        else
        {
          [(NSMutableArray *)selfCopy->notInstallable addObject:v51];
        }

        objc_storeStrong(&location, 0);
        ++v35;
        if (v33 + 1 >= v36)
        {
          v35 = 0;
          v36 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
          if (!v36)
          {
            break;
          }
        }
      }
    }
  }

  if ([(NSMutableArray *)selfCopy->installable count])
  {
    v8 = +[NSBundle mainBundle];
    v7 = [NSBundle localizedStringForKey:v8 value:"localizedStringForKey:value:table:" table:@"DONT_INSTALL_TITLE"];
    navigationItem = [(FontInstallMissingViewController *)selfCopy navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setTitle:v7];

    navigationItem2 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    leftBarButtonItem2 = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem2 setEnabled:1];

    v14 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v14 localizedStringForKey:@"DO_INSTALL_TITLE" value:&stru_10001CD88 table:0];
    navigationItem3 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    rightBarButtonItem = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem setTitle:v13];

    v18 = +[NSBundle mainBundle];
    if ([(NSMutableArray *)selfCopy->installable count]== 1)
    {
      v4 = @"INSTALLABLE_DETAIL_TITLE_SINGULAR";
    }

    else
    {
      v4 = @"INSTALLABLE_DETAIL_TITLE_PLURAL";
    }

    v17 = [(NSBundle *)v18 localizedStringForKey:v4 value:&stru_10001CD88 table:0];
    v16 = [NSString localizedStringWithFormat:?];
    navigationItem4 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    [navigationItem4 setTitle:v16];
  }

  else
  {
    navigationItem5 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    leftBarButtonItem3 = [navigationItem5 leftBarButtonItem];
    [leftBarButtonItem3 setTitle:?];

    navigationItem6 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    leftBarButtonItem4 = [navigationItem6 leftBarButtonItem];
    [leftBarButtonItem4 setEnabled:0];

    v26 = +[NSBundle mainBundle];
    v25 = [(NSBundle *)v26 localizedStringForKey:@"DONE_TITLE" value:&stru_10001CD88 table:?];
    navigationItem7 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    rightBarButtonItem2 = [navigationItem7 rightBarButtonItem];
    [rightBarButtonItem2 setTitle:v25];

    v30 = +[NSBundle mainBundle];
    if ([(NSMutableArray *)selfCopy->notInstallable count]== 1)
    {
      v3 = @"CANT_INSTALL_DETAIL_TITLE_SINGULAR";
    }

    else
    {
      v3 = @"CANT_INSTALL_DETAIL_TITLE_PLURAL";
    }

    v29 = [(NSBundle *)v30 localizedStringForKey:v3 value:&stru_10001CD88 table:0];
    v28 = [NSString localizedStringWithFormat:?];
    navigationItem8 = [(FontInstallMissingViewController *)selfCopy navigationItem];
    [navigationItem8 setTitle:v28];
  }
}

- (void)dismissViewWithMissingFonts:(id)fonts
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fonts);
  objc_storeStrong(&selfCopy->output, location[0]);
  [(FontInstallMissingViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v8 = a2;
  disappearCopy = disappear;
  navigationController = [(FontInstallMissingViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == selfCopy)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->remoteController);
    [WeakRetained doneWithMissingFonts:selfCopy->output withDismissAnimated:0];
  }

  v6.receiver = selfCopy;
  v6.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v6 viewDidDisappear:disappearCopy];
}

- (void)doInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v16 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = selfCopy->installable;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v10);
      v3 = v16;
      v19[0] = @"uniqueID";
      v7 = [v15 objectForKeyedSubscript:?];
      v20[0] = v7;
      v19[1] = @"installProvider";
      v6 = [v15 objectForKeyedSubscript:@"providers"];
      v5 = [v6 objectAtIndexedSubscript:0];
      v20[1] = v5;
      v4 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
      [v3 addObject:?];

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [(NSMutableArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  [(FontInstallMissingViewController *)selfCopy dismissViewWithMissingFonts:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)doNotInstall:(id)install
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v7 = &_os_log_default;
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&_mh_execute_header, log, type, "MissingFonts doNotInstall", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  [(FontInstallMissingViewController *)selfCopy dismissViewWithMissingFonts:&__NSArray0__struct];
  objc_storeStrong(location, 0);
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, segue);
  v10 = 0;
  objc_storeStrong(&v10, sender);
  v9 = v10;
  destinationViewController = [location[0] destinationViewController];
  font = [v9 font];
  [destinationViewController setFont:?];

  font2 = [v9 font];
  v6 = [font2 objectForKeyedSubscript:@"displayName"];
  [destinationViewController setTitle:?];

  objc_storeStrong(&destinationViewController, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)unwindSegue:(id)segue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, segue);
  tableView = [(FontInstallMissingViewController *)selfCopy tableView];
  [tableView reloadData];

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = [(NSMutableArray *)selfCopy->installable count]!= 0;
  v4 = [(NSMutableArray *)selfCopy->notInstallable count]!= 0;
  objc_storeStrong(location, 0);
  return v5 + v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  v6 = 0;
  if (![(NSMutableArray *)selfCopy->installable count])
  {
    sectionCopy = section + 1;
  }

  if (sectionCopy)
  {
    if (sectionCopy == 1)
    {
      v6 = [(NSMutableArray *)selfCopy->notInstallable count];
    }
  }

  else
  {
    v6 = [(NSMutableArray *)selfCopy->installable count];
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  v18 = &stru_10001CD88;
  if (![(NSMutableArray *)selfCopy->installable count])
  {
    ++sectionCopy;
  }

  if (sectionCopy)
  {
    if (sectionCopy == 1)
    {
      v14 = +[NSBundle mainBundle];
      v6 = [(NSBundle *)v14 localizedStringForKey:@"NOT_INSTALLABLE_HEADER" value:&stru_10001CD88 table:0];
      v7 = v18;
      v18 = v6;
    }
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v4 = [(NSBundle *)v15 localizedStringForKey:@"INSTALLABLE_HEADER" value:&stru_10001CD88 table:0];
    v5 = v18;
    v18 = v4;
  }

  v17 = [location[0] dequeueReusableHeaderFooterViewWithIdentifier:headerReuseIdentifier];
  textLabel = [v17 textLabel];
  [textLabel setLineBreakMode:?];

  textLabel2 = [v17 textLabel];
  [textLabel2 setNumberOfLines:0];

  v11 = v18;
  textLabel3 = [v17 textLabel];
  [textLabel3 setText:v11];

  v13 = v17;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v32 = 0;
  objc_storeStrong(&v32, path);
  v31 = 0;
  section = [v32 section];
  if (![(NSMutableArray *)selfCopy->installable count])
  {
    ++section;
  }

  if (section)
  {
    if (section == 1)
    {
      v4 = [location[0] dequeueReusableCellWithIdentifier:@"CannotInstall"];
      v5 = v31;
      v31 = v4;

      v10 = -[NSMutableArray objectAtIndexedSubscript:](selfCopy->notInstallable, "objectAtIndexedSubscript:", [v32 item]);
      v9 = [v10 objectForKeyedSubscript:@"displayName"];
      textLabel = [v31 textLabel];
      [textLabel setText:v9];
    }
  }

  else
  {
    v29 = -[NSMutableArray objectAtIndexedSubscript:](selfCopy->installable, "objectAtIndexedSubscript:", [v32 item]);
    v28 = [location[0] dequeueReusableCellWithIdentifier:@"Installable"];
    [v28 setFont:v29];
    v17 = [v29 objectForKeyedSubscript:@"displayName"];
    fontName = [v28 fontName];
    [fontName setText:v17];

    v27 = [v29 objectForKeyedSubscript:@"providers"];
    v26 = [v27 objectAtIndexedSubscript:?];
    v20 = +[UIScreen mainScreen];
    [(UIScreen *)v20 scale];
    v19 = [UIImage _applicationIconImageForBundleIdentifier:"_applicationIconImageForBundleIdentifier:format:scale:" format:v26 scale:?];
    providerIcon = [v28 providerIcon];
    [providerIcon setImage:v19];

    v23 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v26 allowPlaceholder:0 error:0];
    localizedName = [v23 localizedName];
    providerName = [v28 providerName];
    [providerName setText:localizedName];

    v25 = [v27 count] > 1;
    [v28 setAccessoryType:v25];
    if (v25)
    {
      v15 = +[NSBundle mainBundle];
      v14 = [(NSBundle *)v15 localizedStringForKey:@"PROVIDER_COUNT" value:&stru_10001CD88 table:0];
      v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [v27 count] - 1);
      providerCount = [v28 providerCount];
      [providerCount setText:v13];
    }

    else
    {
      providerCount2 = [v28 providerCount];
      [providerCount2 setText:&stru_10001CD88];
    }

    objc_storeStrong(&v31, v28);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
  }

  v7 = v31;
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);

  return v7;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v10 = 0;
  objc_storeStrong(&v10, path);
  section = [v10 section];
  if (![(NSMutableArray *)selfCopy->installable count])
  {
    ++section;
  }

  if (section)
  {
    v13 = 0;
  }

  else
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](selfCopy->installable, "objectAtIndexedSubscript:", [v10 item]);
    v7 = [v8 objectForKeyedSubscript:@"providers"];
    if ([v7 count] >= 2)
    {
      v6 = 0;
    }

    else
    {
      v13 = 0;
      v6 = 1;
    }

    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    if (!v6)
    {
      v13 = 1;
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v13 & 1;
}

@end
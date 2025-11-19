@interface FontInstallMissingViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dismissViewWithMissingFonts:(id)a3;
- (void)doInstall:(id)a3;
- (void)doNotInstall:(id)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)unwindSegue:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FontInstallMissingViewController

- (void)viewDidLoad
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v6 viewDidLoad];
  v2 = objc_opt_new();
  installable = v8->installable;
  v8->installable = v2;

  v4 = objc_opt_new();
  notInstallable = v8->notInstallable;
  v8->notInstallable = v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v55 = self;
  v54 = a2;
  v53 = a3;
  v52.receiver = self;
  v52.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v52 viewWillAppear:a3];
  v40 = v55;
  v41 = [(FontInstallMissingViewController *)v55 tableView];
  [v41 setDataSource:v40];

  v42 = v55;
  v43 = [(FontInstallMissingViewController *)v55 tableView];
  [v43 setDelegate:v42];

  v44 = [(FontInstallMissingViewController *)v55 tableView];
  [v44 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:headerReuseIdentifier];

  v45 = [(FontInstallMissingViewController *)v55 tableView];
  [v45 setEstimatedSectionHeaderHeight:100.0];

  v46 = [(FontInstallMissingViewController *)v55 tableView];
  [v46 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v48 = [(FontInstallMissingViewController *)v55 navigationController];
  v47 = [v48 remoteController];
  objc_storeWeak(&v55->remoteController, v47);

  objc_storeStrong(&v55->output, &__NSArray0__struct);
  if (![(NSMutableArray *)v55->installable count]&& ![(NSMutableArray *)v55->notInstallable count])
  {
    memset(__b, 0, sizeof(__b));
    WeakRetained = objc_loadWeakRetained(&v55->remoteController);
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
          installable = v55->installable;
          v32 = [v51 mutableCopy];
          [(NSMutableArray *)installable addObject:?];
        }

        else
        {
          [(NSMutableArray *)v55->notInstallable addObject:v51];
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

  if ([(NSMutableArray *)v55->installable count])
  {
    v8 = +[NSBundle mainBundle];
    v7 = [NSBundle localizedStringForKey:v8 value:"localizedStringForKey:value:table:" table:@"DONT_INSTALL_TITLE"];
    v6 = [(FontInstallMissingViewController *)v55 navigationItem];
    v5 = [v6 leftBarButtonItem];
    [v5 setTitle:v7];

    v10 = [(FontInstallMissingViewController *)v55 navigationItem];
    v9 = [v10 leftBarButtonItem];
    [v9 setEnabled:1];

    v14 = +[NSBundle mainBundle];
    v13 = [(NSBundle *)v14 localizedStringForKey:@"DO_INSTALL_TITLE" value:&stru_10001CD88 table:0];
    v12 = [(FontInstallMissingViewController *)v55 navigationItem];
    v11 = [v12 rightBarButtonItem];
    [v11 setTitle:v13];

    v18 = +[NSBundle mainBundle];
    if ([(NSMutableArray *)v55->installable count]== 1)
    {
      v4 = @"INSTALLABLE_DETAIL_TITLE_SINGULAR";
    }

    else
    {
      v4 = @"INSTALLABLE_DETAIL_TITLE_PLURAL";
    }

    v17 = [(NSBundle *)v18 localizedStringForKey:v4 value:&stru_10001CD88 table:0];
    v16 = [NSString localizedStringWithFormat:?];
    v15 = [(FontInstallMissingViewController *)v55 navigationItem];
    [v15 setTitle:v16];
  }

  else
  {
    v20 = [(FontInstallMissingViewController *)v55 navigationItem];
    v19 = [v20 leftBarButtonItem];
    [v19 setTitle:?];

    v22 = [(FontInstallMissingViewController *)v55 navigationItem];
    v21 = [v22 leftBarButtonItem];
    [v21 setEnabled:0];

    v26 = +[NSBundle mainBundle];
    v25 = [(NSBundle *)v26 localizedStringForKey:@"DONE_TITLE" value:&stru_10001CD88 table:?];
    v24 = [(FontInstallMissingViewController *)v55 navigationItem];
    v23 = [v24 rightBarButtonItem];
    [v23 setTitle:v25];

    v30 = +[NSBundle mainBundle];
    if ([(NSMutableArray *)v55->notInstallable count]== 1)
    {
      v3 = @"CANT_INSTALL_DETAIL_TITLE_SINGULAR";
    }

    else
    {
      v3 = @"CANT_INSTALL_DETAIL_TITLE_PLURAL";
    }

    v29 = [(NSBundle *)v30 localizedStringForKey:v3 value:&stru_10001CD88 table:0];
    v28 = [NSString localizedStringWithFormat:?];
    v27 = [(FontInstallMissingViewController *)v55 navigationItem];
    [v27 setTitle:v28];
  }
}

- (void)dismissViewWithMissingFonts:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->output, location[0]);
  [(FontInstallMissingViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v4 = [(FontInstallMissingViewController *)self navigationController];
  v5 = [v4 topViewController];

  if (v5 == v9)
  {
    WeakRetained = objc_loadWeakRetained(&v9->remoteController);
    [WeakRetained doneWithMissingFonts:v9->output withDismissAnimated:0];
  }

  v6.receiver = v9;
  v6.super_class = FontInstallMissingViewController;
  [(FontInstallMissingViewController *)&v6 viewDidDisappear:v7];
}

- (void)doInstall:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  obj = v18->installable;
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

  [(FontInstallMissingViewController *)v18 dismissViewWithMissingFonts:v16];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)doNotInstall:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  [(FontInstallMissingViewController *)v9 dismissViewWithMissingFonts:&__NSArray0__struct];
  objc_storeStrong(location, 0);
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = v10;
  v8 = [location[0] destinationViewController];
  v5 = [v9 font];
  [v8 setFont:?];

  v7 = [v9 font];
  v6 = [v7 objectForKeyedSubscript:@"displayName"];
  [v8 setTitle:?];

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)unwindSegue:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(FontInstallMissingViewController *)v5 tableView];
  [v3 reloadData];

  objc_storeStrong(location, 0);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSMutableArray *)v7->installable count]!= 0;
  v4 = [(NSMutableArray *)v7->notInstallable count]!= 0;
  objc_storeStrong(location, 0);
  return v5 + v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6 = 0;
  if (![(NSMutableArray *)v9->installable count])
  {
    v7 = a4 + 1;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v6 = [(NSMutableArray *)v9->notInstallable count];
    }
  }

  else
  {
    v6 = [(NSMutableArray *)v9->installable count];
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = a4;
  v18 = &stru_10001CD88;
  if (![(NSMutableArray *)v21->installable count])
  {
    ++v19;
  }

  if (v19)
  {
    if (v19 == 1)
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
  v9 = [v17 textLabel];
  [v9 setLineBreakMode:?];

  v10 = [v17 textLabel];
  [v10 setNumberOfLines:0];

  v11 = v18;
  v12 = [v17 textLabel];
  [v12 setText:v11];

  v13 = v17;
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = 0;
  v30 = [v32 section];
  if (![(NSMutableArray *)v34->installable count])
  {
    ++v30;
  }

  if (v30)
  {
    if (v30 == 1)
    {
      v4 = [location[0] dequeueReusableCellWithIdentifier:@"CannotInstall"];
      v5 = v31;
      v31 = v4;

      v10 = -[NSMutableArray objectAtIndexedSubscript:](v34->notInstallable, "objectAtIndexedSubscript:", [v32 item]);
      v9 = [v10 objectForKeyedSubscript:@"displayName"];
      v8 = [v31 textLabel];
      [v8 setText:v9];
    }
  }

  else
  {
    v29 = -[NSMutableArray objectAtIndexedSubscript:](v34->installable, "objectAtIndexedSubscript:", [v32 item]);
    v28 = [location[0] dequeueReusableCellWithIdentifier:@"Installable"];
    [v28 setFont:v29];
    v17 = [v29 objectForKeyedSubscript:@"displayName"];
    v16 = [v28 fontName];
    [v16 setText:v17];

    v27 = [v29 objectForKeyedSubscript:@"providers"];
    v26 = [v27 objectAtIndexedSubscript:?];
    v20 = +[UIScreen mainScreen];
    [(UIScreen *)v20 scale];
    v19 = [UIImage _applicationIconImageForBundleIdentifier:"_applicationIconImageForBundleIdentifier:format:scale:" format:v26 scale:?];
    v18 = [v28 providerIcon];
    [v18 setImage:v19];

    v23 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v26 allowPlaceholder:0 error:0];
    v22 = [v23 localizedName];
    v21 = [v28 providerName];
    [v21 setText:v22];

    v25 = [v27 count] > 1;
    [v28 setAccessoryType:v25];
    if (v25)
    {
      v15 = +[NSBundle mainBundle];
      v14 = [(NSBundle *)v15 localizedStringForKey:@"PROVIDER_COUNT" value:&stru_10001CD88 table:0];
      v13 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v14, [v27 count] - 1);
      v12 = [v28 providerCount];
      [v12 setText:v13];
    }

    else
    {
      v11 = [v28 providerCount];
      [v11 setText:&stru_10001CD88];
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = [v10 section];
  if (![(NSMutableArray *)v12->installable count])
  {
    ++v9;
  }

  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v8 = -[NSMutableArray objectAtIndexedSubscript:](v12->installable, "objectAtIndexedSubscript:", [v10 item]);
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
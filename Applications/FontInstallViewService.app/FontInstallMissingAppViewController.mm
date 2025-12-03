@interface FontInstallMissingAppViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FontInstallMissingAppViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v15 = a2;
  appearCopy = appear;
  v13.receiver = self;
  v13.super_class = FontInstallMissingAppViewController;
  [(FontInstallMissingAppViewController *)&v13 viewWillAppear:appear];
  v5 = selfCopy;
  tableView = [(FontInstallMissingAppViewController *)selfCopy tableView];
  [tableView setDataSource:v5];

  v7 = selfCopy;
  tableView2 = [(FontInstallMissingAppViewController *)selfCopy tableView];
  [tableView2 setDelegate:v7];

  tableView3 = [(FontInstallMissingAppViewController *)selfCopy tableView];
  [tableView3 setEstimatedSectionHeaderHeight:100.0];

  tableView4 = [(FontInstallMissingAppViewController *)selfCopy tableView];
  [tableView4 setSectionHeaderHeight:UITableViewAutomaticDimension];

  tableView5 = [(FontInstallMissingAppViewController *)selfCopy tableView];
  [tableView5 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:providerHeaderReuseIdentifier];

  v12 = [(NSMutableDictionary *)selfCopy->font objectForKeyedSubscript:@"providers"];
  v3 = [v12 mutableCopy];
  providers = selfCopy->providers;
  selfCopy->providers = v3;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  item = [v11 item];
  v9 = [(NSMutableArray *)selfCopy->providers objectAtIndexedSubscript:item];
  [(NSMutableArray *)selfCopy->providers removeObjectAtIndex:item];
  [(NSMutableArray *)selfCopy->providers insertObject:v9 atIndex:0];
  font = selfCopy->font;
  v7 = [NSArray arrayWithArray:selfCopy->providers];
  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

  v8 = v11;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = [(NSMutableArray *)selfCopy->providers count];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13[1] = section;
  v6 = +[NSBundle mainBundle];
  v13[0] = [(NSBundle *)v6 localizedStringForKey:@"PROVIDER_INSTRUCTIONS" value:&stru_10001CD88 table:0];

  v12 = [location[0] dequeueReusableHeaderFooterViewWithIdentifier:providerHeaderReuseIdentifier];
  textLabel = [v12 textLabel];
  [textLabel setLineBreakMode:?];

  textLabel2 = [v12 textLabel];
  [textLabel2 setNumberOfLines:0];

  v9 = v13[0];
  textLabel3 = [v12 textLabel];
  [textLabel3 setText:v9];

  v11 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v16 = 0;
  objc_storeStrong(&v16, path);
  v15 = [location[0] dequeueReusableCellWithIdentifier:@"ProviderCell"];
  v14 = -[NSMutableArray objectAtIndexedSubscript:](selfCopy->providers, "objectAtIndexedSubscript:", [v16 item]);
  [v15 setProviderBundle:v14];
  v9 = +[UIScreen mainScreen];
  [(UIScreen *)v9 scale];
  v8 = [UIImage _applicationIconImageForBundleIdentifier:"_applicationIconImageForBundleIdentifier:format:scale:" format:v14 scale:?];
  imageView = [v15 imageView];
  [imageView setImage:v8];

  v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v14 allowPlaceholder:0 error:0];
  localizedName = [v12 localizedName];
  textLabel = [v15 textLabel];
  [textLabel setText:localizedName];

  if ([v16 item])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  [v15 setAccessoryType:{v4, path}];
  v13 = v15;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v13;
}

@end
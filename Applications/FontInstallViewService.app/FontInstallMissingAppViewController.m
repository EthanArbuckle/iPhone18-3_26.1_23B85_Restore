@interface FontInstallMissingAppViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FontInstallMissingAppViewController

- (void)viewWillAppear:(BOOL)a3
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13.receiver = self;
  v13.super_class = FontInstallMissingAppViewController;
  [(FontInstallMissingAppViewController *)&v13 viewWillAppear:a3];
  v5 = v16;
  v6 = [(FontInstallMissingAppViewController *)v16 tableView];
  [v6 setDataSource:v5];

  v7 = v16;
  v8 = [(FontInstallMissingAppViewController *)v16 tableView];
  [v8 setDelegate:v7];

  v9 = [(FontInstallMissingAppViewController *)v16 tableView];
  [v9 setEstimatedSectionHeaderHeight:100.0];

  v10 = [(FontInstallMissingAppViewController *)v16 tableView];
  [v10 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v11 = [(FontInstallMissingAppViewController *)v16 tableView];
  [v11 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:providerHeaderReuseIdentifier];

  v12 = [(NSMutableDictionary *)v16->font objectForKeyedSubscript:@"providers"];
  v3 = [v12 mutableCopy];
  providers = v16->providers;
  v16->providers = v3;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = [v11 item];
  v9 = [(NSMutableArray *)v13->providers objectAtIndexedSubscript:v10];
  [(NSMutableArray *)v13->providers removeObjectAtIndex:v10];
  [(NSMutableArray *)v13->providers insertObject:v9 atIndex:0];
  font = v13->font;
  v7 = [NSArray arrayWithArray:v13->providers];
  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

  v8 = v11;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(NSMutableArray *)v7->providers count];
  objc_storeStrong(location, 0);
  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13[1] = a4;
  v6 = +[NSBundle mainBundle];
  v13[0] = [(NSBundle *)v6 localizedStringForKey:@"PROVIDER_INSTRUCTIONS" value:&stru_10001CD88 table:0];

  v12 = [location[0] dequeueReusableHeaderFooterViewWithIdentifier:providerHeaderReuseIdentifier];
  v7 = [v12 textLabel];
  [v7 setLineBreakMode:?];

  v8 = [v12 textLabel];
  [v8 setNumberOfLines:0];

  v9 = v13[0];
  v10 = [v12 textLabel];
  [v10 setText:v9];

  v11 = v12;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = [location[0] dequeueReusableCellWithIdentifier:@"ProviderCell"];
  v14 = -[NSMutableArray objectAtIndexedSubscript:](v18->providers, "objectAtIndexedSubscript:", [v16 item]);
  [v15 setProviderBundle:v14];
  v9 = +[UIScreen mainScreen];
  [(UIScreen *)v9 scale];
  v8 = [UIImage _applicationIconImageForBundleIdentifier:"_applicationIconImageForBundleIdentifier:format:scale:" format:v14 scale:?];
  v7 = [v15 imageView];
  [v7 setImage:v8];

  v12 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v14 allowPlaceholder:0 error:0];
  v11 = [v12 localizedName];
  v10 = [v15 textLabel];
  [v10 setText:v11];

  if ([v16 item])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  [v15 setAccessoryType:{v4, a4}];
  v13 = v15;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v13;
}

@end
@interface GCSettingsAppCustomizations
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation GCSettingsAppCustomizations

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = GCSettingsAppCustomizations;
  [(GCSettingsAppCustomizations *)&v17 viewDidLoad];
  [(GCSettingsAppCustomizations *)self setFilteredApps:0];
  v3 = [[UISearchController alloc] initWithSearchResultsController:0];
  [(GCSettingsAppCustomizations *)self setSearchController:v3];

  searchController = [(GCSettingsAppCustomizations *)self searchController];
  [searchController setSearchResultsUpdater:self];

  searchController2 = [(GCSettingsAppCustomizations *)self searchController];
  searchBar = [searchController2 searchBar];
  [searchBar setKeyboardType:0];

  v7 = sub_9E38(@"SEARCH_APPS_PLACEHOLDER");
  searchController3 = [(GCSettingsAppCustomizations *)self searchController];
  searchBar2 = [searchController3 searchBar];
  [searchBar2 setPlaceholder:v7];

  searchController4 = [(GCSettingsAppCustomizations *)self searchController];
  searchBar3 = [searchController4 searchBar];
  [searchBar3 setAutocorrectionType:1];

  searchController5 = [(GCSettingsAppCustomizations *)self searchController];
  navigationItem = [(GCSettingsAppCustomizations *)self navigationItem];
  [navigationItem setSearchController:searchController5];

  navigationItem2 = [(GCSettingsAppCustomizations *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  [(GCSettingsAppCustomizations *)self setDefinesPresentationContext:1];
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissView:"];
  navigationItem3 = [(GCSettingsAppCustomizations *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:v15];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(GCSettingsAppCustomizations *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  filteredApps = [(GCSettingsAppCustomizations *)self filteredApps];
  if (filteredApps)
  {
    [(GCSettingsAppCustomizations *)self filteredApps];
  }

  else
  {
    [(GCSettingsAppCustomizations *)self apps];
  }
  v5 = ;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v10);
        localizedName = [v12 localizedName];
        v8 = [PSSpecifier preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:3 edit:0];

        [v8 setProperty:v12 forKey:@"ApplicationRecord"];
        [v3 addObject:v8];
        v10 = v10 + 1;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  filteredApps = [(GCSettingsAppCustomizations *)self filteredApps];
  if (filteredApps)
  {
    [(GCSettingsAppCustomizations *)self filteredApps];
  }

  else
  {
    [(GCSettingsAppCustomizations *)self apps];
  }
  v6 = ;

  [viewCopy setBackgroundView:0];
  if ([v6 count])
  {
    v7 = 1;
  }

  else
  {
    apps = [(GCSettingsAppCustomizations *)self apps];

    if (v6 == apps)
    {
      v9 = objc_alloc_init(UILabel);
      v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
      [v9 setFont:v10];

      [v9 setNumberOfLines:0];
      v11 = sub_9E38(@"NO_INSTALLED_APPS_DESC");
      [v9 setText:v11];

      v12 = +[UIColor systemGrayColor];
      [v9 setTextColor:v12];

      [v9 setTextAlignment:1];
      [v9 sizeToFit];
      [viewCopy setBackgroundView:v9];
      [viewCopy setSeparatorStyle:0];
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(GCSettingsAppCustomizations *)self filteredApps:view];
  if (v5)
  {
    [(GCSettingsAppCustomizations *)self filteredApps];
  }

  else
  {
    [(GCSettingsAppCustomizations *)self apps];
  }
  v6 = ;
  v7 = [v6 count];

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v17.receiver = self;
  v17.super_class = GCSettingsAppCustomizations;
  pathCopy = path;
  v7 = [(GCSettingsAppCustomizations *)&v17 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(GCSettingsAppCustomizations *)self specifierAtIndexPath:pathCopy, v17.receiver, v17.super_class];

  v9 = [v8 propertyForKey:@"ApplicationRecord"];
  titleLabel = [v7 titleLabel];
  localizedName = [v9 localizedName];
  [titleLabel setText:localizedName];

  bundleIdentifier = [v9 bundleIdentifier];
  v13 = [GCSettingsAppIcon appIconImageForBundleIdentifier:bundleIdentifier];
  uIImage = [v13 UIImage];

  [v8 setProperty:uIImage forKey:PSIconImageKey];
  iconImageView = [v7 iconImageView];
  [iconImageView setImage:uIImage];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  v5 = [(__CFString *)text length];
  v6 = &stru_10B508;
  if (v5)
  {
    v6 = text;
  }

  v7 = v6;
  [(GCSettingsAppCustomizations *)self setFilteredApps:0];
  if ([(__CFString *)v7 length])
  {
    apps = [(GCSettingsAppCustomizations *)self apps];
    v9 = [NSPredicate predicateWithFormat:@"localizedName CONTAINS[c] %@", v7];
    v10 = [apps filteredArrayUsingPredicate:v9];
    [(GCSettingsAppCustomizations *)self setFilteredApps:v10];
  }

  [(GCSettingsAppCustomizations *)self reloadSpecifiers];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10 = -[NSArray objectAtIndex:](self->_apps, "objectAtIndex:", [path row]);
  parentController = [(GCSettingsAppCustomizations *)self parentController];
  v6 = [GCControllerSettings alloc];
  bundleIdentifier = [v10 bundleIdentifier];
  device = [parentController device];
  v9 = [v6 initWithBundleIdentifier:bundleIdentifier forController:device];

  [v9 setCustomizationsEnabled:1];
  [parentController reloadSpecifiers];
  [(GCSettingsAppCustomizations *)self dismissViewControllerAnimated:1 completion:0];
}

@end
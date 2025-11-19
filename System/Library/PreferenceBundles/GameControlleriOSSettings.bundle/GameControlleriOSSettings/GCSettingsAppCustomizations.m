@interface GCSettingsAppCustomizations
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
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

  v4 = [(GCSettingsAppCustomizations *)self searchController];
  [v4 setSearchResultsUpdater:self];

  v5 = [(GCSettingsAppCustomizations *)self searchController];
  v6 = [v5 searchBar];
  [v6 setKeyboardType:0];

  v7 = sub_9E38(@"SEARCH_APPS_PLACEHOLDER");
  v8 = [(GCSettingsAppCustomizations *)self searchController];
  v9 = [v8 searchBar];
  [v9 setPlaceholder:v7];

  v10 = [(GCSettingsAppCustomizations *)self searchController];
  v11 = [v10 searchBar];
  [v11 setAutocorrectionType:1];

  v12 = [(GCSettingsAppCustomizations *)self searchController];
  v13 = [(GCSettingsAppCustomizations *)self navigationItem];
  [v13 setSearchController:v12];

  v14 = [(GCSettingsAppCustomizations *)self navigationItem];
  [v14 setHidesSearchBarWhenScrolling:0];

  [(GCSettingsAppCustomizations *)self setDefinesPresentationContext:1];
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissView:"];
  v16 = [(GCSettingsAppCustomizations *)self navigationItem];
  [v16 setRightBarButtonItem:v15];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GCSettingsAppCustomizations *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(GCSettingsAppCustomizations *)self filteredApps];
  if (v4)
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
        v13 = [v12 localizedName];
        v8 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = [(GCSettingsAppCustomizations *)self filteredApps];
  if (v5)
  {
    [(GCSettingsAppCustomizations *)self filteredApps];
  }

  else
  {
    [(GCSettingsAppCustomizations *)self apps];
  }
  v6 = ;

  [v4 setBackgroundView:0];
  if ([v6 count])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(GCSettingsAppCustomizations *)self apps];

    if (v6 == v8)
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
      [v4 setBackgroundView:v9];
      [v4 setSeparatorStyle:0];
    }

    v7 = 0;
  }

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(GCSettingsAppCustomizations *)self filteredApps:a3];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v17.receiver = self;
  v17.super_class = GCSettingsAppCustomizations;
  v6 = a4;
  v7 = [(GCSettingsAppCustomizations *)&v17 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(GCSettingsAppCustomizations *)self specifierAtIndexPath:v6, v17.receiver, v17.super_class];

  v9 = [v8 propertyForKey:@"ApplicationRecord"];
  v10 = [v7 titleLabel];
  v11 = [v9 localizedName];
  [v10 setText:v11];

  v12 = [v9 bundleIdentifier];
  v13 = [GCSettingsAppIcon appIconImageForBundleIdentifier:v12];
  v14 = [v13 UIImage];

  [v8 setProperty:v14 forKey:PSIconImageKey];
  v15 = [v7 iconImageView];
  [v15 setImage:v14];

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v11 = [v4 text];

  v5 = [(__CFString *)v11 length];
  v6 = &stru_10B508;
  if (v5)
  {
    v6 = v11;
  }

  v7 = v6;
  [(GCSettingsAppCustomizations *)self setFilteredApps:0];
  if ([(__CFString *)v7 length])
  {
    v8 = [(GCSettingsAppCustomizations *)self apps];
    v9 = [NSPredicate predicateWithFormat:@"localizedName CONTAINS[c] %@", v7];
    v10 = [v8 filteredArrayUsingPredicate:v9];
    [(GCSettingsAppCustomizations *)self setFilteredApps:v10];
  }

  [(GCSettingsAppCustomizations *)self reloadSpecifiers];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = -[NSArray objectAtIndex:](self->_apps, "objectAtIndex:", [a4 row]);
  v5 = [(GCSettingsAppCustomizations *)self parentController];
  v6 = [GCControllerSettings alloc];
  v7 = [v10 bundleIdentifier];
  v8 = [v5 device];
  v9 = [v6 initWithBundleIdentifier:v7 forController:v8];

  [v9 setCustomizationsEnabled:1];
  [v5 reloadSpecifiers];
  [(GCSettingsAppCustomizations *)self dismissViewControllerAnimated:1 completion:0];
}

@end
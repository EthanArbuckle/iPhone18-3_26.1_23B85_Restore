@interface SafariStorageSettingsProfileFilterViewController
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SafariStorageSettingsProfileFilterViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = SafariStorageSettingsProfileFilterViewController;
  [(SafariStorageSettingsProfileFilterViewController *)&v19 viewDidLoad];
  v3 = SafariSettingsLocalizedString(@"Filter Title", @"Storage");
  [(SafariStorageSettingsProfileFilterViewController *)self setTitle:v3];

  v4 = +[UIColor systemGroupedBackgroundColor];
  v5 = [(SafariStorageSettingsProfileFilterViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = +[SafariSettingsController tabGroupManager];
  v7 = [v6 profiles];
  profiles = self->_profiles;
  self->_profiles = v7;

  v9 = [(SafariStorageSettingsProfileFilterViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"ProfileFilterCell"];

  v10 = [SafariSettingsUITableViewDiffableDataSource alloc];
  v11 = [(SafariStorageSettingsProfileFilterViewController *)self tableView];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __63__SafariStorageSettingsProfileFilterViewController_viewDidLoad__block_invoke;
  v18[3] = &unk_89870;
  v18[4] = self;
  v12 = [(SafariSettingsUITableViewDiffableDataSource *)v10 initWithTableView:v11 cellProvider:v18];
  dataSource = self->_dataSource;
  self->_dataSource = v12;

  v14 = SafariSettingsLocalizedString(@"Profiles Title", @"Profiles");
  v21 = v14;
  v15 = [NSArray arrayWithObjects:&v21 count:1];
  [(SafariSettingsUITableViewDiffableDataSource *)self->_dataSource setSectionTitles:v15];

  v16 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v20 = @"ProfileFilterSection";
  v17 = [NSArray arrayWithObjects:&v20 count:1];
  [v16 appendSectionsWithIdentifiers:v17];

  [v16 appendItemsWithIdentifiers:self->_profiles intoSectionWithIdentifier:@"ProfileFilterSection"];
  [(SafariSettingsUITableViewDiffableDataSource *)self->_dataSource applySnapshot:v16 animatingDifferences:0];
}

id __63__SafariStorageSettingsProfileFilterViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [a2 dequeueReusableCellWithIdentifier:@"ProfileFilterCell"];
  [v7 setSelectionStyle:0];
  v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = [v6 title];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  v11 = [v6 identifier];

  v12 = [*(*(a1 + 32) + 8) identifier];
  if ([v11 isEqualToString:v12])
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v8 = [NSIndexPath indexPathForRow:[(NSArray *)self->_profiles indexOfObject:self->_selectedProfile] inSection:0];
  v9 = [v7 cellForRowAtIndexPath:v8];
  [v9 setAccessoryType:0];

  v10 = [v7 cellForRowAtIndexPath:v6];

  [v10 setAccessoryType:3];
  profiles = self->_profiles;
  v12 = [v6 row];

  v13 = [(NSArray *)profiles objectAtIndexedSubscript:v12];
  selectedProfile = self->_selectedProfile;
  self->_selectedProfile = v13;

  _objc_release_x1();
}

@end
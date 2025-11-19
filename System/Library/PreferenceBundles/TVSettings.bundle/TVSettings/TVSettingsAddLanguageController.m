@interface TVSettingsAddLanguageController
- (TVSettingsAddLanguageController)initWithTopLevelController:(id)a3;
- (void)_cancelButtonTapped;
- (void)_preferredLanguagesDidChange:(id)a3;
- (void)_setupNavigationBar;
- (void)dealloc;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TVSettingsAddLanguageController

- (TVSettingsAddLanguageController)initWithTopLevelController:(id)a3
{
  v5 = a3;
  if (qword_27FF8 != -1)
  {
    sub_12490();
  }

  v10.receiver = self;
  v10.super_class = TVSettingsAddLanguageController;
  v6 = [(TVSettingsAddLanguageController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_topLevelController, a3);
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVSettingsAddLanguageController;
  [(TVSettingsAddLanguageController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3 = [(TVSettingsAddLanguageController *)self selectedLanguages];
  v4 = [v3 mutableCopy];
  stagedLanguages = self->_stagedLanguages;
  self->_stagedLanguages = v4;

  if (!self->_stagedLanguages)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stagedLanguages;
    self->_stagedLanguages = v6;
  }

  v8 = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = v8;

  v10 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v10] setEstimatedSectionFooterHeight:0.0];
  [(TVSettingsAddLanguageController *)self _setupNavigationBar];
  v11.receiver = self;
  v11.super_class = TVSettingsAddLanguageController;
  [(TVSettingsAddLanguageController *)&v11 viewDidLoad];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = TVSettingsAddLanguageController;
  v7 = a3;
  [(TVSettingsAddLanguageController *)&v14 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:{v6, v14.receiver, v14.super_class}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(TVSettingsAddLanguageController *)self specifierAtIndex:[(TVSettingsAddLanguageController *)self indexForIndexPath:v6]];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 propertyForKey:PSIDKey];
      v12 = qword_27FF0;
      if (os_log_type_enabled(qword_27FF0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Adding language %@ to preferred languages", buf, 0xCu);
      }

      [(NSMutableArray *)self->_stagedLanguages addObject:v11];
      [(TVSettingsAddLanguageController *)self setSelectedLanguages:self->_stagedLanguages];
      v13 = [(TVSettingsAddLanguageController *)self parentController];
      [v13 dismiss];
    }
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v6 = [v5 length];
  v7 = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  v8 = v7;
  if (v6)
  {
    v9 = [(NSArray *)v7 mutableCopy];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_27CC;
    v14[3] = &unk_208E8;
    v15 = v5;
    v10 = [NSPredicate predicateWithBlock:v14];
    [(NSArray *)v9 filterUsingPredicate:v10];

    filteredLanguages = self->_filteredLanguages;
    self->_filteredLanguages = v9;
    v12 = v9;

    [(TVSettingsAddLanguageController *)self reloadSpecifiers];
  }

  else
  {
    v13 = self->_filteredLanguages;
    self->_filteredLanguages = v7;

    [(TVSettingsAddLanguageController *)self reloadSpecifiers];
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = v4;

  [(TVSettingsAddLanguageController *)self reloadSpecifiers];
}

- (void)_setupNavigationBar
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped"];
  v4 = [(TVSettingsAddLanguageController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = objc_alloc_init(UISearchController);
  searchController = self->_searchController;
  self->_searchController = v5;

  v7 = [(UISearchController *)self->_searchController searchBar];
  [v7 setDelegate:self];

  v8 = self->_searchController;
  v9 = [(TVSettingsAddLanguageController *)self navigationItem];
  [v9 setSearchController:v8];

  v10 = [(TVSettingsAddLanguageController *)self navigationItem];
  [v10 setHidesSearchBarWhenScrolling:0];

  v12 = [(TVSettingsAddLanguageController *)self navigationItem];
  v11 = [v12 searchController];
  [v11 setObscuresBackgroundDuringPresentation:0];
}

- (void)_cancelButtonTapped
{
  v3 = qword_27FF0;
  if (os_log_type_enabled(qword_27FF0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Dismissing AddLanguages view.", v5, 2u);
  }

  v4 = [(TVSettingsAddLanguageController *)self parentController];
  [v4 dismiss];
}

- (void)_preferredLanguagesDidChange:(id)a3
{
  v4 = [(TVSettingsAddLanguageController *)self selectedLanguages];
  v5 = [v4 mutableCopy];
  stagedLanguages = self->_stagedLanguages;
  self->_stagedLanguages = v5;

  if (!self->_stagedLanguages)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = self->_stagedLanguages;
    self->_stagedLanguages = v7;
  }

  unselectedLanguages = self->_unselectedLanguages;
  self->_unselectedLanguages = 0;

  v10 = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = v10;

  v12 = [(UISearchController *)self->_searchController searchBar];
  v14 = [v12 text];

  v13 = [(UISearchController *)self->_searchController searchBar];
  [(TVSettingsAddLanguageController *)self searchBar:v13 textDidChange:v14];
}

@end
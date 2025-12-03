@interface TVSettingsAddLanguageController
- (TVSettingsAddLanguageController)initWithTopLevelController:(id)controller;
- (void)_cancelButtonTapped;
- (void)_preferredLanguagesDidChange:(id)change;
- (void)_setupNavigationBar;
- (void)dealloc;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TVSettingsAddLanguageController

- (TVSettingsAddLanguageController)initWithTopLevelController:(id)controller
{
  controllerCopy = controller;
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
    objc_storeStrong(&v6->_topLevelController, controller);
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
  selectedLanguages = [(TVSettingsAddLanguageController *)self selectedLanguages];
  v4 = [selectedLanguages mutableCopy];
  stagedLanguages = self->_stagedLanguages;
  self->_stagedLanguages = v4;

  if (!self->_stagedLanguages)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_stagedLanguages;
    self->_stagedLanguages = v6;
  }

  unselectedLanguages = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = unselectedLanguages;

  v10 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v10] setEstimatedSectionFooterHeight:0.0];
  [(TVSettingsAddLanguageController *)self _setupNavigationBar];
  v11.receiver = self;
  v11.super_class = TVSettingsAddLanguageController;
  [(TVSettingsAddLanguageController *)&v11 viewDidLoad];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = TVSettingsAddLanguageController;
  viewCopy = view;
  [(TVSettingsAddLanguageController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v14.receiver, v14.super_class}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(TVSettingsAddLanguageController *)self specifierAtIndex:[(TVSettingsAddLanguageController *)self indexForIndexPath:pathCopy]];
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
      parentController = [(TVSettingsAddLanguageController *)self parentController];
      [parentController dismiss];
    }
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  v6 = [changeCopy length];
  unselectedLanguages = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  v8 = unselectedLanguages;
  if (v6)
  {
    v9 = [(NSArray *)unselectedLanguages mutableCopy];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_27CC;
    v14[3] = &unk_208E8;
    v15 = changeCopy;
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
    self->_filteredLanguages = unselectedLanguages;

    [(TVSettingsAddLanguageController *)self reloadSpecifiers];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  unselectedLanguages = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = unselectedLanguages;

  [(TVSettingsAddLanguageController *)self reloadSpecifiers];
}

- (void)_setupNavigationBar
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelButtonTapped"];
  navigationItem = [(TVSettingsAddLanguageController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v5 = objc_alloc_init(UISearchController);
  searchController = self->_searchController;
  self->_searchController = v5;

  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:self];

  v8 = self->_searchController;
  navigationItem2 = [(TVSettingsAddLanguageController *)self navigationItem];
  [navigationItem2 setSearchController:v8];

  navigationItem3 = [(TVSettingsAddLanguageController *)self navigationItem];
  [navigationItem3 setHidesSearchBarWhenScrolling:0];

  navigationItem4 = [(TVSettingsAddLanguageController *)self navigationItem];
  searchController = [navigationItem4 searchController];
  [searchController setObscuresBackgroundDuringPresentation:0];
}

- (void)_cancelButtonTapped
{
  v3 = qword_27FF0;
  if (os_log_type_enabled(qword_27FF0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Dismissing AddLanguages view.", v5, 2u);
  }

  parentController = [(TVSettingsAddLanguageController *)self parentController];
  [parentController dismiss];
}

- (void)_preferredLanguagesDidChange:(id)change
{
  selectedLanguages = [(TVSettingsAddLanguageController *)self selectedLanguages];
  v5 = [selectedLanguages mutableCopy];
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

  unselectedLanguages = [(TVSettingsAddLanguageController *)self unselectedLanguages];
  filteredLanguages = self->_filteredLanguages;
  self->_filteredLanguages = unselectedLanguages;

  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [searchBar text];

  searchBar2 = [(UISearchController *)self->_searchController searchBar];
  [(TVSettingsAddLanguageController *)self searchBar:searchBar2 textDidChange:text];
}

@end
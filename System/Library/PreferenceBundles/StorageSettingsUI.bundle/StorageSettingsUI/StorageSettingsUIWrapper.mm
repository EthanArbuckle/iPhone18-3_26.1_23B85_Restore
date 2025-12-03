@interface StorageSettingsUIWrapper
- (STStorageUIViewControllerDelegate)delegate;
- (void)didMoveToParentViewController:(id)controller;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation StorageSettingsUIWrapper

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = StorageSettingsUIWrapper;
  [(StorageSettingsUIWrapper *)&v42 viewDidLoad];
  v3 = [_TtC17StorageSettingsUI7Wrapper hostingControllerWithParentController:self];
  view = [(StorageSettingsUIWrapper *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [v3 view];
  [view2 setFrame:{v6, v8, v10, v12}];

  view3 = [v3 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(StorageSettingsUIWrapper *)self addChildViewController:v3];
  view4 = [(StorageSettingsUIWrapper *)self view];
  view5 = [v3 view];
  [view4 addSubview:view5];

  [v3 didMoveToParentViewController:self];
  v17 = STLocalizedString(@"%@ Storage");
  v18 = localizedDeviceName();
  v19 = [NSString stringWithFormat:v17, v18];
  [(StorageSettingsUIWrapper *)self setTitle:v19];

  view6 = [v3 view];
  view7 = [(StorageSettingsUIWrapper *)self view];
  v22 = [NSLayoutConstraint constraintWithItem:view6 attribute:3 relatedBy:0 toItem:view7 attribute:3 multiplier:1.0 constant:0.0];

  view8 = [v3 view];
  view9 = [(StorageSettingsUIWrapper *)self view];
  v25 = [NSLayoutConstraint constraintWithItem:view8 attribute:2 relatedBy:0 toItem:view9 attribute:2 multiplier:1.0 constant:0.0];

  view10 = [v3 view];
  view11 = [(StorageSettingsUIWrapper *)self view];
  v28 = [NSLayoutConstraint constraintWithItem:view10 attribute:4 relatedBy:0 toItem:view11 attribute:4 multiplier:1.0 constant:0.0];

  view12 = [v3 view];
  view13 = [(StorageSettingsUIWrapper *)self view];
  v31 = [NSLayoutConstraint constraintWithItem:view12 attribute:1 relatedBy:0 toItem:view13 attribute:1 multiplier:1.0 constant:0.0];

  v43[0] = v22;
  v43[1] = v25;
  v43[2] = v28;
  v43[3] = v31;
  v32 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v32];

  v33 = [[UISearchController alloc] initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v33;

  [(UISearchController *)self->_searchController setDelegate:self];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:self];

  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  v36 = self->_searchController;
  navigationItem = [(StorageSettingsUIWrapper *)self navigationItem];
  [navigationItem setSearchController:v36];

  navigationItem2 = [(StorageSettingsUIWrapper *)self navigationItem];
  [navigationItem2 setPreferredSearchBarPlacement:2];

  searchBar2 = [(UISearchController *)self->_searchController searchBar];
  [searchBar2 setHidden:1];

  searchBar3 = [(UISearchController *)self->_searchController searchBar];
  [searchBar3 setAccessibilityIdentifier:@"StorageSearchBar"];

  navigationItem3 = [(StorageSettingsUIWrapper *)self navigationItem];
  [navigationItem3 setStyle:0];
}

- (void)didMoveToParentViewController:(id)controller
{
  if (!controller)
  {
    lastSearchedText = self->_lastSearchedText;
    self->_lastSearchedText = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidClose];
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  if (l)
  {
    completionCopy = completion;
    lCopy = l;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained handleDeepLinkWithResourceDictionary:lCopy];

    completionCopy[2]();
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  if (self->_lastSearchedText)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidUpdate:self->_lastSearchedText];
  }

  else
  {
    self->_lastSearchedText = &stru_AD3C8;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidOpen];
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  if (self->_lastSearchedText)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidUpdate:self->_lastSearchedText];
  }

  else
  {
    self->_lastSearchedText = &stru_AD3C8;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidOpen];
  }
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  lastSearchedText = self->_lastSearchedText;
  self->_lastSearchedText = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDidClose];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  changeCopy = change;
  if (self->_lastSearchedText)
  {
    v8 = changeCopy;
    objc_storeStrong(&self->_lastSearchedText, change);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidUpdate:v8];

    changeCopy = v8;
  }
}

- (STStorageUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
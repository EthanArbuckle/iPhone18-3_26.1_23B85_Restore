@interface StorageSettingsUIWrapper
- (STStorageUIViewControllerDelegate)delegate;
- (void)didMoveToParentViewController:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation StorageSettingsUIWrapper

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = StorageSettingsUIWrapper;
  [(StorageSettingsUIWrapper *)&v42 viewDidLoad];
  v3 = [_TtC17StorageSettingsUI7Wrapper hostingControllerWithParentController:self];
  v4 = [(StorageSettingsUIWrapper *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v3 view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [v3 view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(StorageSettingsUIWrapper *)self addChildViewController:v3];
  v15 = [(StorageSettingsUIWrapper *)self view];
  v16 = [v3 view];
  [v15 addSubview:v16];

  [v3 didMoveToParentViewController:self];
  v17 = STLocalizedString(@"%@ Storage");
  v18 = localizedDeviceName();
  v19 = [NSString stringWithFormat:v17, v18];
  [(StorageSettingsUIWrapper *)self setTitle:v19];

  v20 = [v3 view];
  v21 = [(StorageSettingsUIWrapper *)self view];
  v22 = [NSLayoutConstraint constraintWithItem:v20 attribute:3 relatedBy:0 toItem:v21 attribute:3 multiplier:1.0 constant:0.0];

  v23 = [v3 view];
  v24 = [(StorageSettingsUIWrapper *)self view];
  v25 = [NSLayoutConstraint constraintWithItem:v23 attribute:2 relatedBy:0 toItem:v24 attribute:2 multiplier:1.0 constant:0.0];

  v26 = [v3 view];
  v27 = [(StorageSettingsUIWrapper *)self view];
  v28 = [NSLayoutConstraint constraintWithItem:v26 attribute:4 relatedBy:0 toItem:v27 attribute:4 multiplier:1.0 constant:0.0];

  v29 = [v3 view];
  v30 = [(StorageSettingsUIWrapper *)self view];
  v31 = [NSLayoutConstraint constraintWithItem:v29 attribute:1 relatedBy:0 toItem:v30 attribute:1 multiplier:1.0 constant:0.0];

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
  v35 = [(UISearchController *)self->_searchController searchBar];
  [v35 setDelegate:self];

  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  v36 = self->_searchController;
  v37 = [(StorageSettingsUIWrapper *)self navigationItem];
  [v37 setSearchController:v36];

  v38 = [(StorageSettingsUIWrapper *)self navigationItem];
  [v38 setPreferredSearchBarPlacement:2];

  v39 = [(UISearchController *)self->_searchController searchBar];
  [v39 setHidden:1];

  v40 = [(UISearchController *)self->_searchController searchBar];
  [v40 setAccessibilityIdentifier:@"StorageSearchBar"];

  v41 = [(StorageSettingsUIWrapper *)self navigationItem];
  [v41 setStyle:0];
}

- (void)didMoveToParentViewController:(id)a3
{
  if (!a3)
  {
    lastSearchedText = self->_lastSearchedText;
    self->_lastSearchedText = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidClose];
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  if (a3)
  {
    v8 = a4;
    v6 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained handleDeepLinkWithResourceDictionary:v6];

    v8[2]();
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
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

- (void)searchBarSearchButtonClicked:(id)a3
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

- (void)searchBarCancelButtonClicked:(id)a3
{
  lastSearchedText = self->_lastSearchedText;
  self->_lastSearchedText = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchDidClose];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = a4;
  if (self->_lastSearchedText)
  {
    v8 = v6;
    objc_storeStrong(&self->_lastSearchedText, a4);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained searchDidUpdate:v8];

    v6 = v8;
  }
}

- (STStorageUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
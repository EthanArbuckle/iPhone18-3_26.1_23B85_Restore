@interface _SFReportFeedbackCollectionViewController
- (_SFReportFeedbackCollectionViewController)initWithBrowserContentController:(id)controller;
- (id)_createCollectionViewLayout;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionViewListCellButtonPressed:(id)pressed;
- (void)presentLearnMoreViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation _SFReportFeedbackCollectionViewController

- (_SFReportFeedbackCollectionViewController)initWithBrowserContentController:(id)controller
{
  controllerCopy = controller;
  _createCollectionViewLayout = [(_SFReportFeedbackCollectionViewController *)self _createCollectionViewLayout];
  v23.receiver = self;
  v23.super_class = _SFReportFeedbackCollectionViewController;
  v6 = [(_SFReportFeedbackCollectionViewController *)&v23 initWithCollectionViewLayout:_createCollectionViewLayout];

  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = MEMORY[0x1E69DC628];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78___SFReportFeedbackCollectionViewController_initWithBrowserContentController___block_invoke;
    v20 = &unk_1E848FC70;
    objc_copyWeak(&v21, &location);
    v9 = [v8 actionWithTitle:&stru_1F4FE9E38 image:0 identifier:0 handler:&v17];
    v10 = [v7 initWithBarButtonSystemItem:24 primaryAction:{v9, v17, v18, v19, v20}];

    navigationItem = [(_SFReportFeedbackCollectionViewController *)v6 navigationItem];
    [navigationItem setRightBarButtonItem:v10];

    objc_storeWeak(&v6->_browserContentController, controllerCopy);
    view = [(_SFReportFeedbackCollectionViewController *)v6 view];
    [view setAccessibilityIdentifier:@"ReportIssueView"];

    collectionView = [(_SFReportFeedbackCollectionViewController *)v6 collectionView];
    [collectionView setDelegate:v6];

    collectionView2 = [(_SFReportFeedbackCollectionViewController *)v6 collectionView];
    [collectionView2 setDataSource:v6];

    v15 = v6;
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (id)_createCollectionViewLayout
{
  v3 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  [v3 setFooterMode:0];
  [v3 setHeaderMode:0];
  v4 = objc_alloc(MEMORY[0x1E69DC808]);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72___SFReportFeedbackCollectionViewController__createCollectionViewLayout__block_invoke;
  v8[3] = &unk_1E8493698;
  v9 = v3;
  selfCopy = self;
  v5 = v3;
  v6 = [v4 initWithSectionProvider:v8];

  return v6;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = _SFReportFeedbackCollectionViewController;
  [(_SFReportFeedbackCollectionViewController *)&v17 viewDidLoad];
  collectionView = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  collectionView2 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = *MEMORY[0x1E69DDC00];
  v9 = +[_SFReportIssueFooter reuseIdentifier];
  [collectionView2 registerClass:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v9];

  collectionView3 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = *MEMORY[0x1E69DDC08];
  v13 = +[_SFReportFeedbackIssueHeader reuseIdentifier];
  [collectionView3 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

  collectionView4 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v15 = objc_opt_class();
  v16 = +[_SFButtonCollectionViewListCell reuseIdentifier];
  [collectionView4 registerClass:v15 forCellWithReuseIdentifier:v16];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    if ([(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories])
    {
      _numberOfIssueSubCategories = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (section)
  {
    goto LABEL_7;
  }

  _numberOfIssueSubCategories = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueCategories];
LABEL_6:
  v8 = _numberOfIssueSubCategories;
LABEL_8:

  return v8;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if ([(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [(objc_class *)pathCopy section];
  if (section >= [(_SFReportFeedbackCollectionViewController *)self numberOfSectionsInCollectionView:viewCopy]- 1)
  {
    v13 = +[_SFButtonCollectionViewListCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];

    [v10 setDelegate:self];
    v14 = _WBSLocalizedString();
    [v10 setTitle:v14];

    _numberOfIssueSubCategories = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories];
    isIssueChecked = self->_isIssueChecked;
    if (_numberOfIssueSubCategories >= 1 && self->_isIssueChecked)
    {
      isIssueChecked = self->_isSubCategoryChecked;
    }

    [v10 setEnabled:isIssueChecked];
  }

  else
  {
    v9 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    if (section)
    {
      v11 = [(_SFReportFeedbackCollectionViewController *)self _subCategoryStringForRowAtIndexPath:pathCopy];
      v12 = &OBJC_IVAR____SFReportFeedbackCollectionViewController__checkedSubCategoryIndexPath;
    }

    else
    {
      v11 = [(_SFReportFeedbackCollectionViewController *)self _issueStringForRowAtIndexPath:pathCopy];
      v12 = &OBJC_IVAR____SFReportFeedbackCollectionViewController__checkedIssueIndexPath;
    }

    [v10 setText:v11];

    [v10 setChecked:*(&self->super.super.super.super.isa + *v12) == pathCopy];
  }

  return v10;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v8 = *MEMORY[0x1E69DDC08];
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  if ([kindCopy isEqualToString:v8])
  {
    v12 = +[_SFReportFeedbackIssueHeader reuseIdentifier];
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v12 forIndexPath:pathCopy];

    _headerText = [(_SFReportFeedbackCollectionViewController *)self _headerText];
    [v13 setText:_headerText];
  }

  else
  {
    v15 = +[_SFReportIssueFooter reuseIdentifier];
    v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v15 forIndexPath:pathCopy];

    _footerText = [(_SFReportFeedbackCollectionViewController *)self _footerText];
    [v13 setFooterText:_footerText];

    [v13 setDelegate:self];
  }

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [(NSIndexPath *)pathCopy section];
  if (section == [(_SFReportFeedbackCollectionViewController *)self numberOfSectionsInCollectionView:viewCopy]- 1)
  {
    goto LABEL_27;
  }

  v8 = [viewCopy cellForItemAtIndexPath:pathCopy];
  [v8 setChecked:{objc_msgSend(v8, "isChecked") ^ 1}];
  isChecked = [v8 isChecked];
  if (section == 1)
  {
    self->_isSubCategoryChecked = isChecked;
    if (isChecked)
    {
      v13 = pathCopy;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    checkedSubCategoryIndexPath = self->_checkedSubCategoryIndexPath;
    self->_checkedSubCategoryIndexPath = v14;
  }

  else
  {
    if (section)
    {
      goto LABEL_14;
    }

    self->_isIssueChecked = isChecked;
    if (isChecked)
    {
      v10 = pathCopy;
    }

    else
    {
      v10 = 0;
    }

    checkedSubCategoryIndexPath = v10;
    if (checkedSubCategoryIndexPath != self->_checkedIssueIndexPath)
    {
      objc_storeStrong(&self->_checkedIssueIndexPath, v10);
      self->_isSubCategoryChecked = 0;
      v12 = self->_checkedSubCategoryIndexPath;
      self->_checkedSubCategoryIndexPath = 0;
    }
  }

LABEL_14:
  checkedIssueIndexPath = self->_checkedIssueIndexPath;
  if (checkedIssueIndexPath)
  {
    v16 = checkedIssueIndexPath == pathCopy;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
LABEL_20:
    if (!checkedIssueIndexPath)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!self->_isSubCategoryChecked)
  {
    [(_SFReportFeedbackCollectionViewController *)self collectionView:viewCopy didDeselectItemAtIndexPath:?];
    checkedIssueIndexPath = self->_checkedIssueIndexPath;
    goto LABEL_20;
  }

LABEL_21:
  [(_SFReportFeedbackCollectionViewController *)self _issueSelectedAtIndexPath:checkedIssueIndexPath];
LABEL_22:
  v17 = self->_checkedSubCategoryIndexPath;
  if (v17 && v17 != pathCopy && !self->_isIssueChecked)
  {
    [(_SFReportFeedbackCollectionViewController *)self collectionView:viewCopy didDeselectItemAtIndexPath:?];
  }

  collectionView = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v19 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[_SFReportFeedbackCollectionViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", viewCopy) - 1}];
  v20 = [collectionView cellForItemAtIndexPath:v19];

  [v20 setEnabled:self->_isIssueChecked];
LABEL_27:
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  checkedIssueIndexPath = self->_checkedIssueIndexPath;
  if (checkedIssueIndexPath == pathCopy)
  {
    self->_checkedIssueIndexPath = 0;
  }

  checkedSubCategoryIndexPath = self->_checkedSubCategoryIndexPath;
  if (checkedSubCategoryIndexPath == pathCopy)
  {
    self->_checkedSubCategoryIndexPath = 0;
  }

  v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
  [v9 setChecked:0];
}

- (void)collectionViewListCellButtonPressed:(id)pressed
{
  v4 = MEMORY[0x1E696AC88];
  collectionView = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v7 = [v4 indexPathForRow:0 inSection:{-[_SFReportFeedbackCollectionViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", collectionView) - 1}];

  collectionView2 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  [collectionView2 deselectItemAtIndexPath:v7 animated:1];

  [(_SFReportFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(_SFReportFeedbackCollectionViewController *)self _reportFeedbackForSelectedRowIndex:[(NSIndexPath *)self->_checkedIssueIndexPath row] selectedSubCategoryRowIndex:[(NSIndexPath *)self->_checkedSubCategoryIndexPath row]];
}

- (void)presentLearnMoreViewController:(id)controller
{
  controllerCopy = controller;
  [(_SFReportFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained presentModalViewController:controllerCopy completion:0];
}

@end
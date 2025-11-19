@interface _SFReportFeedbackCollectionViewController
- (_SFReportFeedbackCollectionViewController)initWithBrowserContentController:(id)a3;
- (id)_createCollectionViewLayout;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionViewListCellButtonPressed:(id)a3;
- (void)presentLearnMoreViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation _SFReportFeedbackCollectionViewController

- (_SFReportFeedbackCollectionViewController)initWithBrowserContentController:(id)a3
{
  v4 = a3;
  v5 = [(_SFReportFeedbackCollectionViewController *)self _createCollectionViewLayout];
  v23.receiver = self;
  v23.super_class = _SFReportFeedbackCollectionViewController;
  v6 = [(_SFReportFeedbackCollectionViewController *)&v23 initWithCollectionViewLayout:v5];

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

    v11 = [(_SFReportFeedbackCollectionViewController *)v6 navigationItem];
    [v11 setRightBarButtonItem:v10];

    objc_storeWeak(&v6->_browserContentController, v4);
    v12 = [(_SFReportFeedbackCollectionViewController *)v6 view];
    [v12 setAccessibilityIdentifier:@"ReportIssueView"];

    v13 = [(_SFReportFeedbackCollectionViewController *)v6 collectionView];
    [v13 setDelegate:v6];

    v14 = [(_SFReportFeedbackCollectionViewController *)v6 collectionView];
    [v14 setDataSource:v6];

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
  v10 = self;
  v5 = v3;
  v6 = [v4 initWithSectionProvider:v8];

  return v6;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = _SFReportFeedbackCollectionViewController;
  [(_SFReportFeedbackCollectionViewController *)&v17 viewDidLoad];
  v3 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = *MEMORY[0x1E69DDC00];
  v9 = +[_SFReportIssueFooter reuseIdentifier];
  [v6 registerClass:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v9];

  v10 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v11 = objc_opt_class();
  v12 = *MEMORY[0x1E69DDC08];
  v13 = +[_SFReportFeedbackIssueHeader reuseIdentifier];
  [v10 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

  v14 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v15 = objc_opt_class();
  v16 = +[_SFButtonCollectionViewListCell reuseIdentifier];
  [v14 registerClass:v15 forCellWithReuseIdentifier:v16];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    if ([(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories])
    {
      v7 = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  if (a4)
  {
    goto LABEL_7;
  }

  v7 = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueCategories];
LABEL_6:
  v8 = v7;
LABEL_8:

  return v8;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(objc_class *)v7 section];
  if (v8 >= [(_SFReportFeedbackCollectionViewController *)self numberOfSectionsInCollectionView:v6]- 1)
  {
    v13 = +[_SFButtonCollectionViewListCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v7];

    [v10 setDelegate:self];
    v14 = _WBSLocalizedString();
    [v10 setTitle:v14];

    v15 = [(_SFReportFeedbackCollectionViewController *)self _numberOfIssueSubCategories];
    isIssueChecked = self->_isIssueChecked;
    if (v15 >= 1 && self->_isIssueChecked)
    {
      isIssueChecked = self->_isSubCategoryChecked;
    }

    [v10 setEnabled:isIssueChecked];
  }

  else
  {
    v9 = +[_SFCheckableItemCollectionViewListCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

    if (v8)
    {
      v11 = [(_SFReportFeedbackCollectionViewController *)self _subCategoryStringForRowAtIndexPath:v7];
      v12 = &OBJC_IVAR____SFReportFeedbackCollectionViewController__checkedSubCategoryIndexPath;
    }

    else
    {
      v11 = [(_SFReportFeedbackCollectionViewController *)self _issueStringForRowAtIndexPath:v7];
      v12 = &OBJC_IVAR____SFReportFeedbackCollectionViewController__checkedIssueIndexPath;
    }

    [v10 setText:v11];

    [v10 setChecked:*(&self->super.super.super.super.isa + *v12) == v7];
  }

  return v10;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = *MEMORY[0x1E69DDC08];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  if ([v10 isEqualToString:v8])
  {
    v12 = +[_SFReportFeedbackIssueHeader reuseIdentifier];
    v13 = [v11 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v12 forIndexPath:v9];

    v14 = [(_SFReportFeedbackCollectionViewController *)self _headerText];
    [v13 setText:v14];
  }

  else
  {
    v15 = +[_SFReportIssueFooter reuseIdentifier];
    v13 = [v11 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v15 forIndexPath:v9];

    v16 = [(_SFReportFeedbackCollectionViewController *)self _footerText];
    [v13 setFooterText:v16];

    [v13 setDelegate:self];
  }

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(NSIndexPath *)v6 section];
  if (v7 == [(_SFReportFeedbackCollectionViewController *)self numberOfSectionsInCollectionView:v21]- 1)
  {
    goto LABEL_27;
  }

  v8 = [v21 cellForItemAtIndexPath:v6];
  [v8 setChecked:{objc_msgSend(v8, "isChecked") ^ 1}];
  v9 = [v8 isChecked];
  if (v7 == 1)
  {
    self->_isSubCategoryChecked = v9;
    if (v9)
    {
      v13 = v6;
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
    if (v7)
    {
      goto LABEL_14;
    }

    self->_isIssueChecked = v9;
    if (v9)
    {
      v10 = v6;
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
    v16 = checkedIssueIndexPath == v6;
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
    [(_SFReportFeedbackCollectionViewController *)self collectionView:v21 didDeselectItemAtIndexPath:?];
    checkedIssueIndexPath = self->_checkedIssueIndexPath;
    goto LABEL_20;
  }

LABEL_21:
  [(_SFReportFeedbackCollectionViewController *)self _issueSelectedAtIndexPath:checkedIssueIndexPath];
LABEL_22:
  v17 = self->_checkedSubCategoryIndexPath;
  if (v17 && v17 != v6 && !self->_isIssueChecked)
  {
    [(_SFReportFeedbackCollectionViewController *)self collectionView:v21 didDeselectItemAtIndexPath:?];
  }

  v18 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v19 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{-[_SFReportFeedbackCollectionViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", v21) - 1}];
  v20 = [v18 cellForItemAtIndexPath:v19];

  [v20 setEnabled:self->_isIssueChecked];
LABEL_27:
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  checkedIssueIndexPath = self->_checkedIssueIndexPath;
  if (checkedIssueIndexPath == v6)
  {
    self->_checkedIssueIndexPath = 0;
  }

  checkedSubCategoryIndexPath = self->_checkedSubCategoryIndexPath;
  if (checkedSubCategoryIndexPath == v6)
  {
    self->_checkedSubCategoryIndexPath = 0;
  }

  v9 = [v10 cellForItemAtIndexPath:v6];
  [v9 setChecked:0];
}

- (void)collectionViewListCellButtonPressed:(id)a3
{
  v4 = MEMORY[0x1E696AC88];
  v5 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  v7 = [v4 indexPathForRow:0 inSection:{-[_SFReportFeedbackCollectionViewController numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", v5) - 1}];

  v6 = [(_SFReportFeedbackCollectionViewController *)self collectionView];
  [v6 deselectItemAtIndexPath:v7 animated:1];

  [(_SFReportFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  [(_SFReportFeedbackCollectionViewController *)self _reportFeedbackForSelectedRowIndex:[(NSIndexPath *)self->_checkedIssueIndexPath row] selectedSubCategoryRowIndex:[(NSIndexPath *)self->_checkedSubCategoryIndexPath row]];
}

- (void)presentLearnMoreViewController:(id)a3
{
  v4 = a3;
  [(_SFReportFeedbackCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained(&self->_browserContentController);
  [WeakRetained presentModalViewController:v4 completion:0];
}

@end
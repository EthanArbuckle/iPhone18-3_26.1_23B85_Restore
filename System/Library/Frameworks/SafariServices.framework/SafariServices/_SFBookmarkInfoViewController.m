@interface _SFBookmarkInfoViewController
- (BOOL)_bookmarkIsInFavoritesFolder:(id)a3;
- (BOOL)_isIndexPathForNewFolderRow:(id)a3;
- (BOOL)_showBookmarkAppearanceSwitch;
- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)a3;
- (BOOL)bookmarkInfoViewControllerShouldUseTranslucentAppearance:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canSaveChanges;
- (BOOL)hasTranslucentAppearance;
- (BOOL)titleCellHasText;
- (CGPoint)_centerForIconView;
- (UIEdgeInsets)_cellInset;
- (_SFBookmarkInfoViewController)initWithBookmark:(id)a3 childBookmarks:(id)a4 inCollection:(id)a5 addingBookmark:(BOOL)a6 toFavorites:(BOOL)a7 willBeDisplayedModally:(BOOL)a8;
- (_SFBookmarkInfoViewControllerDelegate)delegate;
- (id)_cellForExpandedFolderAtIndex:(int64_t)a3 withTableView:(id)a4;
- (id)_cellForNewFolderRowWithTableView:(id)a3;
- (id)_cellForParentBookmarkWithTableView:(id)a3;
- (id)_cellForShowTitleSwitch:(id)a3;
- (id)_dequeueFolderPickerCellFromTableView:(id)a3;
- (id)_iconForViewCellGivenBookmark:(id)a3 syntheticFolder:(id)a4;
- (id)_titleCell;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addActionsForTextFields;
- (void)_bookmarksDidReload:(id)a3;
- (void)_createCellsIfNeeded;
- (void)_createNewFolder;
- (void)_didChangeEditingTextField:(id)a3;
- (void)_editField:(unint64_t)a3;
- (void)_reloadFolderInfoForced:(BOOL)a3;
- (void)_removeActionsForTextFields;
- (void)_returnWasPressedInTextField:(id)a3;
- (void)_saveButtonPressed;
- (void)_setFolderPickerExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)_showTitleSwitchPressed:(id)a3;
- (void)_updateCellValues;
- (void)_updateIconViewFrame;
- (void)_updateLastSelectedFolder;
- (void)_updateNavigationTitle;
- (void)_updateSaveButton;
- (void)_valuesChanged;
- (void)bookmarkInfoViewController:(id)a3 didFinishWithResult:(BOOL)a4;
- (void)bookmarkTextEntryTableViewController:(id)a3 dismissedWithText:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)loadView;
- (void)reloadData;
- (void)saveChanges;
- (void)setBookmark:(id)a3;
- (void)setParent:(id)a3 syntheticParentFolder:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateLastSelectedSyntheticFolder;
- (void)updateTranslucentAppearance;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation _SFBookmarkInfoViewController

- (_SFBookmarkInfoViewController)initWithBookmark:(id)a3 childBookmarks:(id)a4 inCollection:(id)a5 addingBookmark:(BOOL)a6 toFavorites:(BOOL)a7 willBeDisplayedModally:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v35.receiver = self;
  v35.super_class = _SFBookmarkInfoViewController;
  v17 = [(_SFBookmarkInfoViewController *)&v35 initWithStyle:2];
  if (v17)
  {
    v18 = [v14 copy];
    bookmark = v17->_bookmark;
    v17->_bookmark = v18;

    objc_storeStrong(&v17->_childBookmarks, a4);
    v17->_addingBookmark = a6;
    v17->_addingToFavorites = a7;
    v17->_enableAddFolder = [v14 isFolder] ^ 1;
    v20 = v17->_bookmark;
    if (v20)
    {
      v21 = [v16 bookmarkWithID:{-[WebBookmark parentID](v20, "parentID")}];
      parentBookmark = v17->_parentBookmark;
      v17->_parentBookmark = v21;

      v20 = v17->_bookmark;
    }

    if ([(WebBookmark *)v20 subtype]== 1)
    {
      v17->_lastSelectedSyntheticFolderID = [(WebBookmark *)v17->_bookmark parentID];
    }

    objc_storeStrong(&v17->_collection, a5);
    v23 = [(_SFBookmarkInfoViewController *)v17 navigationItem];
    [(_SFBookmarkInfoViewController *)v17 _updateNavigationTitle];
    if (v8)
    {
      v24 = objc_alloc(MEMORY[0x1E69DC708]);
      v25 = [v24 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverCancelButtonItem") action:{v17, sel_cancel}];
      [v25 setAccessibilityIdentifier:@"BookmarkInfoCancelButton"];
      [v23 setLeftBarButtonItem:v25];
      v26 = objc_alloc(MEMORY[0x1E69DC708]);
      v27 = _WBSLocalizedString();
      v28 = [v26 initWithTitle:v27 style:2 target:v17 action:sel__saveButtonPressed];
      saveButton = v17->_saveButton;
      v17->_saveButton = v28;

      [(UIBarButtonItem *)v17->_saveButton setAccessibilityIdentifier:@"BookmarkInfoSaveButton"];
      [v23 setRightBarButtonItem:v17->_saveButton];
    }

    v30 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    showTitleSwitch = v17->_showTitleSwitch;
    v17->_showTitleSwitch = v30;

    [(UISwitch *)v17->_showTitleSwitch setOn:[(WebBookmark *)v17->_bookmark showIconOnly]^ 1];
    [(UISwitch *)v17->_showTitleSwitch addTarget:v17 action:sel__showTitleSwitchPressed_ forControlEvents:64];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v17 selector:sel__bookmarksDidReload_ name:*MEMORY[0x1E69E2118] object:0];

    v17->_editingField = -1;
    v33 = v17;
  }

  return v17;
}

- (void)_updateNavigationTitle
{
  v10 = [(_SFBookmarkInfoViewController *)self navigationItem];
  if (self->_addingToFavorites)
  {
    v3 = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder title];
    if ([v3 length])
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = _WBSLocalizedString();
      v6 = [v4 stringWithFormat:v5, v3];
      [v10 setTitle:v6];
    }

    else
    {
      v5 = _WBSLocalizedString();
      [v10 setTitle:v5];
    }
  }

  else
  {
    addingBookmark = self->_addingBookmark;
    [(WebBookmark *)self->_bookmark isFolder];
    if (!addingBookmark)
    {
      v8 = _WBSLocalizedString();
      [v10 setTitle:v8];

      v9 = v10;
      self->_saveWhenDismissed = 1;
      goto LABEL_10;
    }

    v3 = _WBSLocalizedString();
    [v10 setTitle:v3];
  }

  v9 = v10;
LABEL_10:
}

- (void)_saveButtonPressed
{
  [(_SFBookmarkInfoViewController *)self saveChanges];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarkInfoViewController:self didFinishWithResult:1];
  }
}

- (void)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bookmarkInfoViewController:self didFinishWithResult:0];
  }
}

- (void)_returnWasPressedInTextField:(id)a3
{
  if ([(_SFBookmarkInfoViewController *)self _sf_canEditFields])
  {
    [(_SFBookmarkInfoViewController *)self _saveButtonPressed];
    v4 = *MEMORY[0x1E69DDA98];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62___SFBookmarkInfoViewController__returnWasPressedInTextField___block_invoke;
    v5[3] = &unk_1E848F810;
    v5[4] = self;
    [v4 _performBlockAfterCATransactionCommits:v5];
  }
}

- (void)_showTitleSwitchPressed:(id)a3
{
  v4 = [(WebBookmark *)self->_bookmark showIconOnly]^ 1;
  bookmark = self->_bookmark;

  [(WebBookmark *)bookmark setShowIconOnly:v4];
}

- (UIEdgeInsets)_cellInset
{
  v2 = [(_SFBookmarkInfoViewController *)self tableView];
  [v2 separatorInset];
  v4 = v3 + 15.0 + 60.0;
  v5 = *MEMORY[0x1E69DE3D0];

  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  v9 = v5;
  result.right = v9;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

- (void)_createCellsIfNeeded
{
  if (!self->_titleCell)
  {
    v3 = [[_SFBookmarkTextEntryTableViewCell alloc] initWithText:0 autocapitalizationType:2 autocorrectionType:0];
    titleCell = self->_titleCell;
    self->_titleCell = v3;

    v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    v6 = _WBSLocalizedString();
    [v5 setPlaceholder:v6];

    [v5 setAccessibilityIdentifier:@"BookmarkInfoTitleTextField"];
    v7 = [v5 textInputTraits];
    [v7 setEnablesReturnKeyOnNonWhiteSpaceContent:1];

    [v5 addTarget:self action:sel__didBeginEditingTextField_ forControlEvents:0x10000];
    [v5 addTarget:self action:sel__didChangeEditingTextField_ forControlEvents:0x20000];
  }

  if (!self->_addressCell)
  {
    v8 = [[_SFBookmarkTextEntryTableViewCell alloc] initWithText:0 autocapitalizationType:0 autocorrectionType:1];
    addressCell = self->_addressCell;
    self->_addressCell = v8;

    v11 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    [v11 setKeyboardType:3];
    v10 = _WBSLocalizedString();
    [v11 setPlaceholder:v10];

    [v11 setAccessibilityIdentifier:@"BookmarkInfoAddressTextField"];
    [v11 addTarget:self action:sel__didBeginEditingTextField_ forControlEvents:0x10000];
    [v11 addTarget:self action:sel__didChangeEditingTextField_ forControlEvents:0x20000];
  }
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v8 loadView];
  v3 = [(_SFBookmarkInfoViewController *)self tableView];
  [v3 setAccessibilityIdentifier:@"BookmarkInfoTableView"];
  [v3 setRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setEstimatedRowHeight:44.0];
  [v3 setEstimatedSectionHeaderHeight:0.0];
  [v3 setEstimatedSectionFooterHeight:0.0];
  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x1E69B1C60]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 60.0, 60.0}];
    iconImageView = self->_iconImageView;
    self->_iconImageView = v5;

    v7 = [(_SFSiteIconView *)self->_iconImageView layer];
    [v7 setZPosition:1.0];

    [v3 addSubview:self->_iconImageView];
    [(_SFSiteIconView *)self->_iconImageView setBookmark:self->_bookmark];
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
}

- (id)_titleCell
{
  v2 = [(_SFBookmarkInfoViewController *)self tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v4 = [v2 cellForRowAtIndexPath:v3];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v6 viewWillAppear:a3];
  v4 = [(_SFBookmarkInfoViewController *)self tableView];
  [v4 reloadData];

  v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [v5 setEnabled:!self->_addingBookmark];

  if (self->_folderPickerExpanded)
  {
    [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:0 animated:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v5 viewWillDisappear:a3];
  [(_SFBookmarkInfoViewController *)self _removeActionsForTextFields];
  if (self->_saveWhenDismissed && (([(_SFBookmarkInfoViewController *)self isBeingDismissed]& 1) != 0 || [(_SFBookmarkInfoViewController *)self isMovingFromParentViewController]))
  {
    [(_SFBookmarkInfoViewController *)self saveChanges];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained bookmarkInfoViewController:self didFinishWithResult:1];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(_SFBookmarkInfoViewController *)self _addActionsForTextFields];
  if (([(_SFBookmarkInfoViewController *)self _isInPopoverPresentation]& 1) != 0 || [(_SFBookmarkInfoViewController *)self _sf_canEditFields])
  {
    v5 = [(_SFBookmarkInfoViewController *)self _titleCell];
    v6 = [v5 editableTextField];
    [v6 becomeFirstResponder];
  }

  v7.receiver = self;
  v7.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v7 viewDidAppear:v3];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v5 viewDidLayoutSubviews];
  textFieldToRestoreFirstResponder = self->_textFieldToRestoreFirstResponder;
  if (textFieldToRestoreFirstResponder)
  {
    [(UITextField *)textFieldToRestoreFirstResponder becomeFirstResponder];
    v4 = self->_textFieldToRestoreFirstResponder;
    self->_textFieldToRestoreFirstResponder = 0;
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  if (([(_SFBookmarkInfoViewController *)self _sf_canEditFields]& 1) != 0)
  {
    v5 = [(_SFBookmarkInfoViewController *)self _titleCell];
    v4 = [v5 editableTextField];
    [v4 becomeFirstResponder];
  }

  else
  {
    v5 = [(_SFBookmarkInfoViewController *)self firstResponder];
    [v5 resignFirstResponder];
  }
}

- (void)_bookmarksDidReload:(id)a3
{
  v4 = self->_parentBookmark;
  collection = self->_collection;
  v11 = v4;
  v6 = [(WebBookmark *)v4 UUID];
  v7 = [(WebBookmarkCollection *)collection bookmarkWithUUID:v6];
  parentBookmark = self->_parentBookmark;
  self->_parentBookmark = v7;

  if (!self->_parentBookmark)
  {
    v9 = [(WebBookmarkCollection *)self->_collection rootBookmark];
    v10 = self->_parentBookmark;
    self->_parentBookmark = v9;
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
}

- (BOOL)titleCellHasText
{
  v2 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)reloadData
{
  [(_SFBookmarkInfoViewController *)self _createCellsIfNeeded];
  v3 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  v4 = [(WebBookmark *)self->_bookmark localizedTitle];
  [v3 setText:v4];

  v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [(WebBookmark *)self->_bookmark address];
  v8 = [v6 safari_URLWithDataAsString:v7];
  v9 = [v8 safari_userVisibleString];
  [v5 setText:v9];

  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    [(_SFBookmarkInfoViewController *)self updateBookmarkIcon];
  }

  [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:1];
  [(_SFBookmarkInfoViewController *)self _updateCellValues];
  v10 = [(_SFBookmarkInfoViewController *)self tableView];
  [v10 reloadData];
}

- (void)updateLastSelectedSyntheticFolder
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 stringForKey:*MEMORY[0x1E69B1F98]];
  v5 = [v4 integerValue];

  if (v5)
  {
    self->_lastSelectedSyntheticFolderID = v5;

    [(_SFBookmarkInfoViewController *)self reloadData];
  }
}

- (CGPoint)_centerForIconView
{
  v3 = [(_SFBookmarkInfoViewController *)self tableView];
  [v3 rectForSection:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 rectForHeaderInSection:0];
  v13 = v12;
  [v3 rectForFooterInSection:0];
  v15 = v14;
  v16 = [(_SFBookmarkInfoViewController *)self view];
  v17 = [v16 _sf_usesLeftToRightLayout];

  if (v17)
  {
    [v3 _sectionContentInset];
    [v3 separatorInset];
  }

  else
  {
    [v3 separatorInset];
    [v3 _sectionContentInset];
  }

  v25.size.height = v11 - v13 - v15;
  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  CGRectGetMidY(v25);
  _SFRoundPointToPixels();
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)_updateIconViewFrame
{
  iconImageView = self->_iconImageView;
  [(_SFBookmarkInfoViewController *)self _centerForIconView];

  [(_SFSiteIconView *)iconImageView setCenter:?];
}

- (void)_updateCellValues
{
  v15 = self->_titleCell;
  v3 = [(_SFBookmarkTextEntryTableViewCell *)v15 editableTextField];
  v4 = self->_addressCell;
  v5 = [(_SFBookmarkTextEntryTableViewCell *)v4 editableTextField];
  if (([(_SFBookmarkInfoViewController *)self _sf_canEditFields]& 1) != 0)
  {
    [v3 setUserInteractionEnabled:1];
    [v5 setUserInteractionEnabled:1];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setAccessoryType:0];
    [(_SFBookmarkTextEntryTableViewCell *)v4 setAccessoryType:0];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setSelectionStyle:0];
    v6 = 0;
  }

  else
  {
    [v3 setUserInteractionEnabled:0];
    [v5 setUserInteractionEnabled:0];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setAccessoryType:1];
    [(_SFBookmarkTextEntryTableViewCell *)v4 setAccessoryType:!self->_addingBookmark];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setSelectionStyle:2];
    if (self->_addingBookmark)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  [(_SFBookmarkTextEntryTableViewCell *)v4 setSelectionStyle:v6];
  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    [(_SFBookmarkInfoViewController *)self _cellInset];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(_SFBookmarkTextEntryTableViewCell *)v15 setSeparatorInset:?];
    [(_SFBookmarkTextEntryTableViewCell *)v4 setSeparatorInset:v8, v10, v12, v14];
  }

  [(_SFBookmarkInfoViewController *)self _updateSaveButton];
}

- (void)setBookmark:(id)a3
{
  v4 = a3;
  if (self->_bookmark != v4)
  {
    v8 = v4;
    v5 = [(WebBookmark *)v4 copy];
    bookmark = self->_bookmark;
    self->_bookmark = v5;

    v7 = [(WebBookmarkCollection *)self->_collection bookmarkWithID:[(WebBookmark *)self->_bookmark parentID]];
    [(_SFBookmarkInfoViewController *)self setParent:v7 syntheticParentFolder:self->_syntheticParentBookmarkFolder];

    if ([(WebBookmark *)self->_bookmark subtype]== 1)
    {
      self->_lastSelectedSyntheticFolderID = [(WebBookmark *)self->_bookmark parentID];
      [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:1];
    }

    [(_SFSiteIconView *)self->_iconImageView setBookmark:v8];
    [(_SFBookmarkInfoViewController *)self reloadData];
    v4 = v8;
  }
}

- (void)setParent:(id)a3 syntheticParentFolder:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = [(WebBookmark *)self->_parentBookmark UUID];
  v9 = [v11 UUID];
  if (![v8 isEqual:v9])
  {

    goto LABEL_5;
  }

  v10 = WBSIsEqual();

  if ((v10 & 1) == 0)
  {
LABEL_5:
    objc_storeStrong(&self->_parentBookmark, a3);
    objc_storeStrong(&self->_syntheticParentBookmarkFolder, a4);
    self->_didSelectFolder = 1;
    [(_SFBookmarkInfoViewController *)self _updateNavigationTitle];
  }
}

- (void)saveChanges
{
  self->_saveWhenDismissed = 0;
  if ([(_SFBookmarkInfoViewController *)self canSaveChanges])
  {
    v3 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    [v3 resignFirstResponder];

    v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    v5 = [v4 text];
    v19 = [v5 _web_stringByTrimmingWhitespace];

    [(WebBookmark *)self->_bookmark setTitle:v19];
    v6 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    v7 = [v6 text];

    [(WebBookmark *)self->_bookmark setAddress:v7];
    v8 = [SFBookmarkUtility alloc];
    collection = self->_collection;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained syntheticBookmarkProviderForBookmarkInfoViewController:self];
    v12 = [(SFBookmarkUtility *)v8 initWithCollection:collection syntheticBookmarkProvider:v11];

    v13 = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder bookmarkList];

    if (v13)
    {
      v14 = [(SFBookmarkUtility *)v12 saveBookmark:self->_bookmark inSyntheticFolder:self->_syntheticParentBookmarkFolder];
    }

    else
    {
      v15 = [(WebBookmark *)self->_bookmark isFolder];
      bookmark = self->_bookmark;
      if (v15)
      {
        if (self->_childBookmarks)
        {
          childBookmarks = self->_childBookmarks;
        }

        else
        {
          childBookmarks = MEMORY[0x1E695E0F0];
        }

        v14 = [(SFBookmarkUtility *)v12 saveFolder:bookmark children:childBookmarks inFolder:self->_parentBookmark];
      }

      else
      {
        v14 = [(SFBookmarkUtility *)v12 saveBookmark:bookmark inFolder:self->_parentBookmark];
      }
    }

    v18 = self->_bookmark;
    self->_bookmark = v14;

    [(_SFBookmarkInfoViewController *)self _updateLastSelectedFolder];
  }
}

- (void)_updateLastSelectedFolder
{
  if (self->_didSelectFolder)
  {
    v11 = [(WebBookmark *)self->_parentBookmark UUID];
    if ([(WebBookmarkCollection *)self->_collection bookmarkIsFavoritesFolder:self->_parentBookmark])
    {
      v4 = *MEMORY[0x1E69B1FA0];

      v11 = v4;
    }

    v5 = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder bookmarkList];
    v6 = v5;
    if (v5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v5, "folderID")];

      v11 = v7;
    }

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v8 setObject:v11 forKey:*MEMORY[0x1E69B1F98]];

    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [MEMORY[0x1E695DF00] now];
    [v9 setObject:v10 forKey:*MEMORY[0x1E69B1DE0]];
  }
}

- (void)_updateSaveButton
{
  v3 = [(_SFBookmarkInfoViewController *)self canSaveChanges];
  saveButton = self->_saveButton;

  [(UIBarButtonItem *)saveButton setEnabled:v3];
}

- (BOOL)canSaveChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained bookmarkInfoViewControllerCanSaveBookmarkChanges:self])
  {
    v10 = 0;
  }

  else
  {
    v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    v5 = [v4 text];
    v6 = [v5 _web_stringByTrimmingWhitespace];

    v7 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    v8 = [v7 text];
    v9 = [v8 _web_stringByTrimmingWhitespace];

    if ([v6 length])
    {
      v10 = (-[WebBookmark isFolder](self->_bookmark, "isFolder") & 1) != 0 || [v9 length] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_editField:(unint64_t)a3
{
  self->_editingField = a3;
  if (a3 == 1)
  {
    v14 = [_SFBookmarkTextEntryTableViewController alloc];
    v8 = [(WebBookmark *)self->_bookmark address];
    v9 = v14;
    v10 = 1;
    v11 = v8;
    v12 = 0;
    v13 = 1;
    goto LABEL_5;
  }

  if (!a3)
  {
    bookmark = self->_bookmark;
    v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    v6 = [v5 text];
    [(WebBookmark *)bookmark setTitle:v6];

    v7 = [_SFBookmarkTextEntryTableViewController alloc];
    v8 = [(WebBookmark *)self->_bookmark localizedTitle];
    v9 = v7;
    v10 = 0;
    v11 = v8;
    v12 = 2;
    v13 = 0;
LABEL_5:
    v16 = [(_SFBookmarkTextEntryTableViewController *)v9 initWithBookmarkInfoViewField:v10 text:v11 autocapitalizationType:v12 autocorrectionType:v13 delegate:self];

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
  v15 = [(_SFBookmarkInfoViewController *)self navigationController];
  [v15 pushViewController:v16 animated:1];
}

- (void)_createNewFolder
{
  v3 = objc_alloc(MEMORY[0x1E69E20F0]);
  v4 = [(WebBookmark *)self->_bookmark parentID];
  v5 = [(WebBookmarkCollection *)self->_collection configuration];
  v8 = [v3 initFolderWithParentID:v4 collectionType:{objc_msgSend(v5, "collectionType")}];

  v6 = [[_SFBookmarkInfoViewController alloc] initWithBookmark:v8 inCollection:self->_collection addingBookmark:1];
  [(_SFBookmarkInfoViewController *)v6 setDelegate:self];
  v7 = [(_SFBookmarkInfoViewController *)self navigationController];
  [v7 pushViewController:v6 animated:1];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] != 1 && ((-[_SFBookmarkInfoViewController _sf_canEditFields](self, "_sf_canEditFields") & 1) != 0 || objc_msgSend(v5, "row") && self->_addingBookmark))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v6 section];
  v8 = [v6 row];
  v9 = v8;
  if (v7 == 1)
  {
    if ([(_SFBookmarkInfoViewController *)self _isIndexPathForNewFolderRow:v6])
    {
      [(_SFBookmarkInfoViewController *)self _createNewFolder];
    }

    else
    {
      if (self->_folderPickerExpanded)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedFolderIndex inSection:1];
        v13 = [v20 cellForRowAtIndexPath:v12];
        [v13 setAccessoryType:0];

        v14 = [v20 cellForRowAtIndexPath:v6];
        [v14 setAccessoryType:3];

        v15 = [(NSArray *)self->_folders objectAtIndexedSubscript:v9];
        v16 = [v15 bookmark];
        v17 = [v15 syntheticFolder];
        [(_SFBookmarkInfoViewController *)self setParent:v16 syntheticParentFolder:v17];
      }

      v18 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
      [v18 resignFirstResponder];

      v19 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
      [v19 resignFirstResponder];

      [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:!self->_folderPickerExpanded animated:1];
    }
  }

  else
  {
    if (v8 == 1)
    {
      v10 = self;
      v11 = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_12;
      }

      v10 = self;
      v11 = 0;
    }

    [(_SFBookmarkInfoViewController *)v10 _editField:v11];
  }

LABEL_12:
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (self->_addingToFavorites)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  return v3 - ([(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch]^ 1);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch];
  }

  else if (a4 == 1)
  {
    if (self->_folderPickerExpanded)
    {
      v7 = [(_SFBookmarkInfoViewController *)self _numberOfExpandedFolderPickerRows];
    }

    else
    {
      v7 = 1;
    }
  }

  else if (a4)
  {
    v7 = 0;
  }

  else if ([(WebBookmark *)self->_bookmark isFolder])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (BOOL)_isIndexPathForNewFolderRow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_folderPickerExpanded && [v4 section] == 1)
  {
    v6 = [v5 row];
    v7 = v6 == [(NSArray *)self->_folders count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    if ([v7 section] == 2)
    {
      v8 = [(_SFBookmarkInfoViewController *)self _cellForShowTitleSwitch:v6];
    }

    else if ([(_SFBookmarkInfoViewController *)self _isIndexPathForNewFolderRow:v7])
    {
      v8 = [(_SFBookmarkInfoViewController *)self _cellForNewFolderRowWithTableView:v6];
    }

    else
    {
      if (self->_folderPickerExpanded)
      {
        -[_SFBookmarkInfoViewController _cellForExpandedFolderAtIndex:withTableView:](self, "_cellForExpandedFolderAtIndex:withTableView:", [v7 row], v6);
      }

      else
      {
        [(_SFBookmarkInfoViewController *)self _cellForParentBookmarkWithTableView:v6];
      }
      v8 = ;
    }
  }

  else
  {
    v9 = [v7 row];
    v10 = &OBJC_IVAR____SFBookmarkInfoViewController__addressCell;
    if (!v9)
    {
      v10 = &OBJC_IVAR____SFBookmarkInfoViewController__titleCell;
    }

    v8 = *(&self->super.super.super.super.super.isa + *v10);
  }

  v11 = v8;

  return v11;
}

- (id)_dequeueFolderPickerCellFromTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"BookmarkFolderItemTableViewCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"BookmarkFolderItemTableViewCell"];
    +[_SFFolderPickerTableViewCellLayoutManager indentationWidth];
    [v3 setIndentationWidth:?];
    v4 = objc_alloc_init(_SFFolderPickerTableViewCellLayoutManager);
    [v3 setLayoutManager:v4];

    v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    v6 = [v3 imageView];
    [v6 setPreferredSymbolConfiguration:v5];
  }

  return v3;
}

- (id)_cellForShowTitleSwitch:(id)a3
{
  v4 = [a3 dequeueReusableCellWithIdentifier:@"BookmarkShowTitleSwitch"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"BookmarkShowTitleSwitch"];
  }

  v5 = _WBSLocalizedString();
  v6 = [v4 textLabel];
  [v6 setText:v5];

  [v4 setAccessoryView:self->_showTitleSwitch];
  [(UISwitch *)self->_showTitleSwitch setAccessibilityIdentifier:@"BookmarkShowTitleSwitch"];

  return v4;
}

- (id)_cellForNewFolderRowWithTableView:(id)a3
{
  v3 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:a3];
  v4 = _WBSLocalizedString();
  v5 = [v3 textLabel];
  [v5 setText:v4];

  v6 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  v7 = [v3 textLabel];
  [v7 setTextColor:v6];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  v9 = [v3 imageView];
  [v9 setImage:v8];

  [v3 setIndentationLevel:0];
  [v3 setAccessoryType:1];
  [v3 setTintAdjustmentMode:0];
  [v3 setAccessibilityIdentifier:@"BookmarkInfoLocationNewFolder"];
  [v3 setUserInteractionEnabled:1];

  return v3;
}

- (id)_cellForExpandedFolderAtIndex:(int64_t)a3 withTableView:(id)a4
{
  v6 = a4;
  v7 = [(NSArray *)self->_folders objectAtIndexedSubscript:a3];
  v8 = [v7 syntheticFolder];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 bookmarkList];
    if (v10)
    {
      v11 = [(WebBookmark *)self->_bookmark isFolder]^ 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:v6];
  v13 = [v7 title];
  v14 = [v12 textLabel];
  [v14 setText:v13];

  if (v11)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v15 = ;
  v16 = [v12 textLabel];
  [v16 setTextColor:v15];

  v17 = [v7 bookmark];
  v18 = [(_SFBookmarkInfoViewController *)self _iconForViewCellGivenBookmark:v17 syntheticFolder:v9];
  v19 = [v12 imageView];
  [v19 setImage:v18];

  [v12 setIndentationLevel:{objc_msgSend(v7, "depth")}];
  selectedFolderIndex = self->_selectedFolderIndex;
  v21 = selectedFolderIndex == a3;
  v22 = selectedFolderIndex != a3;
  if (v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  [v12 setAccessoryType:v23];
  [v12 setTintAdjustmentMode:2 * v22];
  [v12 setAccessibilityIdentifier:@"BookmarkInfoLocationFolderChoice"];
  [v12 setUserInteractionEnabled:v11];

  return v12;
}

- (id)_cellForParentBookmarkWithTableView:(id)a3
{
  v5 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:a3];
  syntheticParentBookmarkFolder = self->_syntheticParentBookmarkFolder;
  if (syntheticParentBookmarkFolder)
  {
    goto LABEL_4;
  }

  if (self->_parentBookmark)
  {
    syntheticParentBookmarkFolder = 0;
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v7 = [(NSArray *)self->_folders objectAtIndexedSubscript:0];
  syntheticParentBookmarkFolder = self->_syntheticParentBookmarkFolder;
LABEL_5:
  v8 = [(SFSyntheticBookmarkFolder *)syntheticParentBookmarkFolder title];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v12 = [(WebBookmark *)self->_parentBookmark localizedTitle];
    v3 = v12;
    if (v12)
    {
      v10 = 0;
      v11 = v12;
    }

    else
    {
      v11 = [v7 title];
      v10 = 1;
    }
  }

  v13 = [v5 textLabel];
  [v13 setText:v11];

  if (v10)
  {
  }

  if (!v9)
  {
  }

  parentBookmark = self->_parentBookmark;
  v15 = parentBookmark;
  if (!parentBookmark)
  {
    v15 = [v7 bookmark];
  }

  v16 = [(_SFBookmarkInfoViewController *)self _iconForViewCellGivenBookmark:v15 syntheticFolder:self->_syntheticParentBookmarkFolder];
  v17 = [v5 imageView];
  [v17 setImage:v16];

  if (!parentBookmark)
  {
  }

  [v5 setIndentationLevel:0];
  [v5 setAccessoryType:0];
  [v5 setTintAdjustmentMode:0];
  [v5 setAccessibilityIdentifier:@"BookmarkInfoLocationFolderPicker"];
  [v5 setUserInteractionEnabled:1];

  return v5;
}

- (id)_iconForViewCellGivenBookmark:(id)a3 syntheticFolder:(id)a4
{
  v6 = a3;
  v7 = *MEMORY[0x1E69DDC50];
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v7, v9);

  if (v10 == NSOrderedAscending)
  {
    v13 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69DCAB8];
    if (a4)
    {
      v12 = @"star.square.on.square";
    }

    else if ([(_SFBookmarkInfoViewController *)self _bookmarkIsInFavoritesFolder:v6])
    {
      v12 = @"star";
    }

    else
    {
      v12 = @"folder";
    }

    v13 = [v11 systemImageNamed:v12];
  }

  return v13;
}

- (BOOL)_bookmarkIsInFavoritesFolder:(id)a3
{
  collection = self->_collection;
  v4 = a3;
  v5 = [(WebBookmarkCollection *)collection bookmarksBarBookmark];
  v6 = [v5 isEqual:v4];

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (a4 == 2)
    {
      if ([(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch])
      {
LABEL_6:
        a4 = _WBSLocalizedString();
        goto LABEL_9;
      }

      a4 = 0;
    }

    else
    {
      if (a4 == 1)
      {
        goto LABEL_6;
      }

      a4 = &stru_1F4FE9E38;
    }
  }

LABEL_9:

  return a4;
}

- (BOOL)_showBookmarkAppearanceSwitch
{
  if (!_SFDeviceIsPad() || self->_addingBookmark)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v4 integerForKey:*MEMORY[0x1E69B1C98]])
  {
    v3 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695E000] safari_browserDefaults];
    if ([v5 BOOLForKey:*MEMORY[0x1E69B1C88]])
    {
      v6 = [(NSArray *)self->_folders objectAtIndexedSubscript:self->_selectedFolderIndex];
      v7 = [v6 bookmark];
      if ([(_SFBookmarkInfoViewController *)self _bookmarkIsInFavoritesFolder:v7])
      {
        if ([(WebBookmark *)self->_bookmark isFolder])
        {
          v8 = [(WebBookmark *)self->_bookmark title];
          v9 = MEMORY[0x1E69DD250];
          v10 = [(_SFBookmarkInfoViewController *)self view];
          v3 = [v8 safari_hasLeadingEmojiSafariIsRightToLeft:{objc_msgSend(v9, "_sf_usesLeftToRightLayoutOnView:", v10) ^ 1}];
        }

        else
        {
          v3 = 1;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_didChangeEditingTextField:(id)a3
{
  v9 = a3;
  v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];

  if (v4 == v9)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];

    if (v5 != v9)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v7 = 1;
  }

  v6 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
LABEL_7:
  [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:0 animated:1];
  v8 = [(_SFBookmarkInfoViewController *)self tableView];
  [v8 scrollToRowAtIndexPath:v6 atScrollPosition:0 animated:1];
}

- (void)_setFolderPickerExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_folderPickerExpanded != a3)
  {
    v4 = a4;
    self->_folderPickerExpanded = a3;
    [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:0];
    v6 = [(_SFBookmarkInfoViewController *)self tableView];
    v7 = v6;
    if (v4)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
      v23[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

      v10 = [MEMORY[0x1E695DF70] array];
      v11 = [(_SFBookmarkInfoViewController *)self _numberOfExpandedFolderPickerRows];
      if (v11)
      {
        v12 = v11;
        for (i = 0; i != v12; ++i)
        {
          v14 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:1];
          [v10 addObject:v14];
        }
      }

      [v7 beginUpdates];
      if (self->_folderPickerExpanded)
      {
        v15 = v9;
      }

      else
      {
        v15 = v10;
      }

      [v7 deleteRowsAtIndexPaths:v15 withRowAnimation:0];
      if (self->_folderPickerExpanded)
      {
        v16 = v10;
      }

      else
      {
        v16 = v9;
      }

      [v7 insertRowsAtIndexPaths:v16 withRowAnimation:0];
      v17 = [v7 numberOfSections];
      if ((((v17 < 3) ^ [(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch]) & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AC90] indexSetWithIndex:2];
        if ([(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch])
        {
          [v7 insertSections:v18 withRowAnimation:0];
        }

        else
        {
          [v7 deleteSections:v18 withRowAnimation:0];
        }
      }

      [v7 endUpdates];
    }

    else
    {
      [v6 reloadData];
    }

    if (self->_folderPickerExpanded)
    {
      v19 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedFolderIndex inSection:1];
      [v7 scrollToRowAtIndexPath:v19 atScrollPosition:0 animated:1];
    }

    v20 = [(_SFBookmarkInfoViewController *)self sheetPresentationController];
    v21 = v20;
    if (v4 && v20)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __67___SFBookmarkInfoViewController__setFolderPickerExpanded_animated___block_invoke;
      v22[3] = &unk_1E848F810;
      v22[4] = self;
      [v20 animateChanges:v22];
    }

    else
    {
      [(SFPopoverSizingTableViewController *)self updatePreferredContentSize];
    }
  }
}

- (void)_reloadFolderInfoForced:(BOOL)a3
{
  if (a3 || self->_folderPickerExpanded && !self->_folders)
  {
    if ([(WebBookmark *)self->_bookmark isFolder])
    {
      v4 = MEMORY[0x1E695DFD8];
      v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[WebBookmark identifier](self->_bookmark, "identifier")}];
      v6 = [v4 setWithObject:v5];
    }

    else
    {
      v6 = 0;
    }

    v7 = [objc_alloc(MEMORY[0x1E69B1B20]) initWithBookmarkCollection:self->_collection style:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained syntheticBookmarkProviderForBookmarkInfoViewController:self];
    [v7 setSyntheticBookmarkProvider:v9];

    v10 = [v7 folderListItemsIgnoringIdentifiers:v6];
    folders = self->_folders;
    self->_folders = v10;
  }

  v12 = self->_folders;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57___SFBookmarkInfoViewController__reloadFolderInfoForced___block_invoke;
  v16[3] = &unk_1E8493710;
  v16[4] = self;
  v13 = [(NSArray *)v12 indexOfObjectPassingTest:v16];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = self->_folders;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57___SFBookmarkInfoViewController__reloadFolderInfoForced___block_invoke_2;
    v15[3] = &unk_1E8493710;
    v15[4] = self;
    v13 = [(NSArray *)v14 indexOfObjectPassingTest:v15];
  }

  self->_selectedFolderIndex = v13;
}

- (void)_valuesChanged
{
  if (![(_SFBookmarkInfoViewController *)self isEditingField])
  {

    [(_SFBookmarkInfoViewController *)self _updateSaveButton];
  }
}

- (void)_addActionsForTextFields
{
  v3 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [v3 addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [v4 addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  v5 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [v5 addTarget:self action:sel__valuesChanged forControlEvents:0x20000];

  v6 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [v6 addTarget:self action:sel__valuesChanged forControlEvents:0x20000];
}

- (void)_removeActionsForTextFields
{
  v3 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [v3 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [v4 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)bookmarkTextEntryTableViewController:(id)a3 dismissedWithText:(id)a4
{
  v8 = a3;
  v6 = a4;
  editingField = self->_editingField;
  if (editingField == 1)
  {
    [(WebBookmark *)self->_bookmark setAddress:v6];
  }

  else if (!editingField)
  {
    [(WebBookmark *)self->_bookmark setTitle:v6];
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
  self->_editingField = -1;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v4 dealloc];
}

- (void)viewWillLayoutSubviews
{
  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    [(_SFBookmarkInfoViewController *)self _updateIconViewFrame];
  }

  [(_SFBookmarkInfoViewController *)self _updateCellValues];
}

- (BOOL)hasTranslucentAppearance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained bookmarkInfoViewControllerShouldUseTranslucentAppearance:self])
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SFBookmarkInfoViewController;
    v4 = [(SFPopoverSizingTableViewController *)&v6 hasTranslucentAppearance];
  }

  return v4;
}

- (void)updateTranslucentAppearance
{
  p_titleCell = &self->_titleCell;
  v4 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  v5 = [v4 isFirstResponder];

  if ((v5 & 1) != 0 || (p_titleCell = &self->_addressCell, -[_SFBookmarkTextEntryTableViewCell editableTextField](self->_addressCell, "editableTextField"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFirstResponder], v6, v7))
  {
    v8 = [(_SFBookmarkTextEntryTableViewCell *)*p_titleCell editableTextField];
    textFieldToRestoreFirstResponder = self->_textFieldToRestoreFirstResponder;
    self->_textFieldToRestoreFirstResponder = v8;
  }

  v10.receiver = self;
  v10.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v10 updateTranslucentAppearance];
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)a3
{
  if (a3)
  {
    v5.receiver = self;
    v5.super_class = _SFBookmarkInfoViewController;
    v3 = [(SFPopoverSizingTableViewController *)&v5 backgroundColorUsingTranslucentAppearance:1];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_cancelKeyPressed == a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    if (sel_saveKeyPressed == a3)
    {
      v7 = [(_SFBookmarkInfoViewController *)self canSaveChanges];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = _SFBookmarkInfoViewController;
      v7 = [(_SFBookmarkInfoViewController *)&v11 canPerformAction:a3 withSender:v6];
    }

    v9 = v7;
  }

  return v9 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v6 validateCommand:v4];
  if ([v4 action] == sel_saveKeyPressed)
  {
    v5 = _WBSLocalizedString();
    [v4 setDiscoverabilityTitle:v5];
  }
}

- (void)bookmarkInfoViewController:(id)a3 didFinishWithResult:(BOOL)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = [v5 bookmark];
    parentBookmark = self->_parentBookmark;
    self->_parentBookmark = v6;

    objc_storeStrong(&self->_syntheticParentBookmarkFolder, v5[137]);
    self->_didSelectFolder = 1;
    self->_folderPickerExpanded = 0;
    [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:1];
    v8 = [(_SFBookmarkInfoViewController *)self tableView];
    [v8 reloadData];
  }

  v10 = [(_SFBookmarkInfoViewController *)self navigationController];
  v9 = [v10 popViewControllerAnimated:1];
}

- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained bookmarkInfoViewControllerCanSaveBookmarkChanges:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)bookmarkInfoViewControllerShouldUseTranslucentAppearance:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained bookmarkInfoViewControllerShouldUseTranslucentAppearance:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained syntheticBookmarkProviderForBookmarkInfoViewController:self];

  return v5;
}

- (_SFBookmarkInfoViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
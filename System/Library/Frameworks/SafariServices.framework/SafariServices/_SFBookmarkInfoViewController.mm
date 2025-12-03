@interface _SFBookmarkInfoViewController
- (BOOL)_bookmarkIsInFavoritesFolder:(id)folder;
- (BOOL)_isIndexPathForNewFolderRow:(id)row;
- (BOOL)_showBookmarkAppearanceSwitch;
- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)changes;
- (BOOL)bookmarkInfoViewControllerShouldUseTranslucentAppearance:(id)appearance;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canSaveChanges;
- (BOOL)hasTranslucentAppearance;
- (BOOL)titleCellHasText;
- (CGPoint)_centerForIconView;
- (UIEdgeInsets)_cellInset;
- (_SFBookmarkInfoViewController)initWithBookmark:(id)bookmark childBookmarks:(id)bookmarks inCollection:(id)collection addingBookmark:(BOOL)addingBookmark toFavorites:(BOOL)favorites willBeDisplayedModally:(BOOL)modally;
- (_SFBookmarkInfoViewControllerDelegate)delegate;
- (id)_cellForExpandedFolderAtIndex:(int64_t)index withTableView:(id)view;
- (id)_cellForNewFolderRowWithTableView:(id)view;
- (id)_cellForParentBookmarkWithTableView:(id)view;
- (id)_cellForShowTitleSwitch:(id)switch;
- (id)_dequeueFolderPickerCellFromTableView:(id)view;
- (id)_iconForViewCellGivenBookmark:(id)bookmark syntheticFolder:(id)folder;
- (id)_titleCell;
- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance;
- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addActionsForTextFields;
- (void)_bookmarksDidReload:(id)reload;
- (void)_createCellsIfNeeded;
- (void)_createNewFolder;
- (void)_didChangeEditingTextField:(id)field;
- (void)_editField:(unint64_t)field;
- (void)_reloadFolderInfoForced:(BOOL)forced;
- (void)_removeActionsForTextFields;
- (void)_returnWasPressedInTextField:(id)field;
- (void)_saveButtonPressed;
- (void)_setFolderPickerExpanded:(BOOL)expanded animated:(BOOL)animated;
- (void)_showTitleSwitchPressed:(id)pressed;
- (void)_updateCellValues;
- (void)_updateIconViewFrame;
- (void)_updateLastSelectedFolder;
- (void)_updateNavigationTitle;
- (void)_updateSaveButton;
- (void)_valuesChanged;
- (void)bookmarkInfoViewController:(id)controller didFinishWithResult:(BOOL)result;
- (void)bookmarkTextEntryTableViewController:(id)controller dismissedWithText:(id)text;
- (void)cancel;
- (void)dealloc;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)loadView;
- (void)reloadData;
- (void)saveChanges;
- (void)setBookmark:(id)bookmark;
- (void)setParent:(id)parent syntheticParentFolder:(id)folder;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateLastSelectedSyntheticFolder;
- (void)updateTranslucentAppearance;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation _SFBookmarkInfoViewController

- (_SFBookmarkInfoViewController)initWithBookmark:(id)bookmark childBookmarks:(id)bookmarks inCollection:(id)collection addingBookmark:(BOOL)addingBookmark toFavorites:(BOOL)favorites willBeDisplayedModally:(BOOL)modally
{
  modallyCopy = modally;
  bookmarkCopy = bookmark;
  bookmarksCopy = bookmarks;
  collectionCopy = collection;
  v35.receiver = self;
  v35.super_class = _SFBookmarkInfoViewController;
  v17 = [(_SFBookmarkInfoViewController *)&v35 initWithStyle:2];
  if (v17)
  {
    v18 = [bookmarkCopy copy];
    bookmark = v17->_bookmark;
    v17->_bookmark = v18;

    objc_storeStrong(&v17->_childBookmarks, bookmarks);
    v17->_addingBookmark = addingBookmark;
    v17->_addingToFavorites = favorites;
    v17->_enableAddFolder = [bookmarkCopy isFolder] ^ 1;
    v20 = v17->_bookmark;
    if (v20)
    {
      v21 = [collectionCopy bookmarkWithID:{-[WebBookmark parentID](v20, "parentID")}];
      parentBookmark = v17->_parentBookmark;
      v17->_parentBookmark = v21;

      v20 = v17->_bookmark;
    }

    if ([(WebBookmark *)v20 subtype]== 1)
    {
      v17->_lastSelectedSyntheticFolderID = [(WebBookmark *)v17->_bookmark parentID];
    }

    objc_storeStrong(&v17->_collection, collection);
    navigationItem = [(_SFBookmarkInfoViewController *)v17 navigationItem];
    [(_SFBookmarkInfoViewController *)v17 _updateNavigationTitle];
    if (modallyCopy)
    {
      v24 = objc_alloc(MEMORY[0x1E69DC708]);
      v25 = [v24 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverCancelButtonItem") action:{v17, sel_cancel}];
      [v25 setAccessibilityIdentifier:@"BookmarkInfoCancelButton"];
      [navigationItem setLeftBarButtonItem:v25];
      v26 = objc_alloc(MEMORY[0x1E69DC708]);
      v27 = _WBSLocalizedString();
      v28 = [v26 initWithTitle:v27 style:2 target:v17 action:sel__saveButtonPressed];
      saveButton = v17->_saveButton;
      v17->_saveButton = v28;

      [(UIBarButtonItem *)v17->_saveButton setAccessibilityIdentifier:@"BookmarkInfoSaveButton"];
      [navigationItem setRightBarButtonItem:v17->_saveButton];
    }

    v30 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    showTitleSwitch = v17->_showTitleSwitch;
    v17->_showTitleSwitch = v30;

    [(UISwitch *)v17->_showTitleSwitch setOn:[(WebBookmark *)v17->_bookmark showIconOnly]^ 1];
    [(UISwitch *)v17->_showTitleSwitch addTarget:v17 action:sel__showTitleSwitchPressed_ forControlEvents:64];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v17 selector:sel__bookmarksDidReload_ name:*MEMORY[0x1E69E2118] object:0];

    v17->_editingField = -1;
    v33 = v17;
  }

  return v17;
}

- (void)_updateNavigationTitle
{
  navigationItem = [(_SFBookmarkInfoViewController *)self navigationItem];
  if (self->_addingToFavorites)
  {
    title = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder title];
    if ([title length])
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = _WBSLocalizedString();
      v6 = [v4 stringWithFormat:v5, title];
      [navigationItem setTitle:v6];
    }

    else
    {
      v5 = _WBSLocalizedString();
      [navigationItem setTitle:v5];
    }
  }

  else
  {
    addingBookmark = self->_addingBookmark;
    [(WebBookmark *)self->_bookmark isFolder];
    if (!addingBookmark)
    {
      v8 = _WBSLocalizedString();
      [navigationItem setTitle:v8];

      v9 = navigationItem;
      self->_saveWhenDismissed = 1;
      goto LABEL_10;
    }

    title = _WBSLocalizedString();
    [navigationItem setTitle:title];
  }

  v9 = navigationItem;
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

- (void)_returnWasPressedInTextField:(id)field
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

- (void)_showTitleSwitchPressed:(id)pressed
{
  v4 = [(WebBookmark *)self->_bookmark showIconOnly]^ 1;
  bookmark = self->_bookmark;

  [(WebBookmark *)bookmark setShowIconOnly:v4];
}

- (UIEdgeInsets)_cellInset
{
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView separatorInset];
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

    editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    v6 = _WBSLocalizedString();
    [editableTextField setPlaceholder:v6];

    [editableTextField setAccessibilityIdentifier:@"BookmarkInfoTitleTextField"];
    textInputTraits = [editableTextField textInputTraits];
    [textInputTraits setEnablesReturnKeyOnNonWhiteSpaceContent:1];

    [editableTextField addTarget:self action:sel__didBeginEditingTextField_ forControlEvents:0x10000];
    [editableTextField addTarget:self action:sel__didChangeEditingTextField_ forControlEvents:0x20000];
  }

  if (!self->_addressCell)
  {
    v8 = [[_SFBookmarkTextEntryTableViewCell alloc] initWithText:0 autocapitalizationType:0 autocorrectionType:1];
    addressCell = self->_addressCell;
    self->_addressCell = v8;

    editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    [editableTextField2 setKeyboardType:3];
    v10 = _WBSLocalizedString();
    [editableTextField2 setPlaceholder:v10];

    [editableTextField2 setAccessibilityIdentifier:@"BookmarkInfoAddressTextField"];
    [editableTextField2 addTarget:self action:sel__didBeginEditingTextField_ forControlEvents:0x10000];
    [editableTextField2 addTarget:self action:sel__didChangeEditingTextField_ forControlEvents:0x20000];
  }
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v8 loadView];
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView setAccessibilityIdentifier:@"BookmarkInfoTableView"];
  [tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedRowHeight:44.0];
  [tableView setEstimatedSectionHeaderHeight:0.0];
  [tableView setEstimatedSectionFooterHeight:0.0];
  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    v4 = objc_alloc(MEMORY[0x1E69B1C60]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 60.0, 60.0}];
    iconImageView = self->_iconImageView;
    self->_iconImageView = v5;

    layer = [(_SFSiteIconView *)self->_iconImageView layer];
    [layer setZPosition:1.0];

    [tableView addSubview:self->_iconImageView];
    [(_SFSiteIconView *)self->_iconImageView setBookmark:self->_bookmark];
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
}

- (id)_titleCell
{
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v4 = [tableView cellForRowAtIndexPath:v3];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v6 viewWillAppear:appear];
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView reloadData];

  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [editableTextField setEnabled:!self->_addingBookmark];

  if (self->_folderPickerExpanded)
  {
    [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:0 animated:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v5 viewWillDisappear:disappear];
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

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(_SFBookmarkInfoViewController *)self _addActionsForTextFields];
  if (([(_SFBookmarkInfoViewController *)self _isInPopoverPresentation]& 1) != 0 || [(_SFBookmarkInfoViewController *)self _sf_canEditFields])
  {
    _titleCell = [(_SFBookmarkInfoViewController *)self _titleCell];
    editableTextField = [_titleCell editableTextField];
    [editableTextField becomeFirstResponder];
  }

  v7.receiver = self;
  v7.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v7 viewDidAppear:appearCopy];
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

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (([(_SFBookmarkInfoViewController *)self _sf_canEditFields]& 1) != 0)
  {
    _titleCell = [(_SFBookmarkInfoViewController *)self _titleCell];
    editableTextField = [_titleCell editableTextField];
    [editableTextField becomeFirstResponder];
  }

  else
  {
    _titleCell = [(_SFBookmarkInfoViewController *)self firstResponder];
    [_titleCell resignFirstResponder];
  }
}

- (void)_bookmarksDidReload:(id)reload
{
  v4 = self->_parentBookmark;
  collection = self->_collection;
  v11 = v4;
  uUID = [(WebBookmark *)v4 UUID];
  v7 = [(WebBookmarkCollection *)collection bookmarkWithUUID:uUID];
  parentBookmark = self->_parentBookmark;
  self->_parentBookmark = v7;

  if (!self->_parentBookmark)
  {
    rootBookmark = [(WebBookmarkCollection *)self->_collection rootBookmark];
    v10 = self->_parentBookmark;
    self->_parentBookmark = rootBookmark;
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
}

- (BOOL)titleCellHasText
{
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  text = [editableTextField text];
  v4 = [text length] != 0;

  return v4;
}

- (void)reloadData
{
  [(_SFBookmarkInfoViewController *)self _createCellsIfNeeded];
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  localizedTitle = [(WebBookmark *)self->_bookmark localizedTitle];
  [editableTextField setText:localizedTitle];

  editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  v6 = MEMORY[0x1E695DFF8];
  address = [(WebBookmark *)self->_bookmark address];
  v8 = [v6 safari_URLWithDataAsString:address];
  safari_userVisibleString = [v8 safari_userVisibleString];
  [editableTextField2 setText:safari_userVisibleString];

  if (([(WebBookmark *)self->_bookmark isFolder]& 1) == 0)
  {
    [(_SFBookmarkInfoViewController *)self updateBookmarkIcon];
  }

  [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:1];
  [(_SFBookmarkInfoViewController *)self _updateCellValues];
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateLastSelectedSyntheticFolder
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults stringForKey:*MEMORY[0x1E69B1F98]];
  integerValue = [v4 integerValue];

  if (integerValue)
  {
    self->_lastSelectedSyntheticFolderID = integerValue;

    [(_SFBookmarkInfoViewController *)self reloadData];
  }
}

- (CGPoint)_centerForIconView
{
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView rectForSection:0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [tableView rectForHeaderInSection:0];
  v13 = v12;
  [tableView rectForFooterInSection:0];
  v15 = v14;
  view = [(_SFBookmarkInfoViewController *)self view];
  _sf_usesLeftToRightLayout = [view _sf_usesLeftToRightLayout];

  if (_sf_usesLeftToRightLayout)
  {
    [tableView _sectionContentInset];
    [tableView separatorInset];
  }

  else
  {
    [tableView separatorInset];
    [tableView _sectionContentInset];
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
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)v15 editableTextField];
  v4 = self->_addressCell;
  editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)v4 editableTextField];
  if (([(_SFBookmarkInfoViewController *)self _sf_canEditFields]& 1) != 0)
  {
    [editableTextField setUserInteractionEnabled:1];
    [editableTextField2 setUserInteractionEnabled:1];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setAccessoryType:0];
    [(_SFBookmarkTextEntryTableViewCell *)v4 setAccessoryType:0];
    [(_SFBookmarkTextEntryTableViewCell *)v15 setSelectionStyle:0];
    v6 = 0;
  }

  else
  {
    [editableTextField setUserInteractionEnabled:0];
    [editableTextField2 setUserInteractionEnabled:0];
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

- (void)setBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if (self->_bookmark != bookmarkCopy)
  {
    v8 = bookmarkCopy;
    v5 = [(WebBookmark *)bookmarkCopy copy];
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
    bookmarkCopy = v8;
  }
}

- (void)setParent:(id)parent syntheticParentFolder:(id)folder
{
  parentCopy = parent;
  folderCopy = folder;
  uUID = [(WebBookmark *)self->_parentBookmark UUID];
  uUID2 = [parentCopy UUID];
  if (![uUID isEqual:uUID2])
  {

    goto LABEL_5;
  }

  v10 = WBSIsEqual();

  if ((v10 & 1) == 0)
  {
LABEL_5:
    objc_storeStrong(&self->_parentBookmark, parent);
    objc_storeStrong(&self->_syntheticParentBookmarkFolder, folder);
    self->_didSelectFolder = 1;
    [(_SFBookmarkInfoViewController *)self _updateNavigationTitle];
  }
}

- (void)saveChanges
{
  self->_saveWhenDismissed = 0;
  if ([(_SFBookmarkInfoViewController *)self canSaveChanges])
  {
    editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    [editableTextField resignFirstResponder];

    editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    text = [editableTextField2 text];
    _web_stringByTrimmingWhitespace = [text _web_stringByTrimmingWhitespace];

    [(WebBookmark *)self->_bookmark setTitle:_web_stringByTrimmingWhitespace];
    editableTextField3 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    text2 = [editableTextField3 text];

    [(WebBookmark *)self->_bookmark setAddress:text2];
    v8 = [SFBookmarkUtility alloc];
    collection = self->_collection;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained syntheticBookmarkProviderForBookmarkInfoViewController:self];
    v12 = [(SFBookmarkUtility *)v8 initWithCollection:collection syntheticBookmarkProvider:v11];

    bookmarkList = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder bookmarkList];

    if (bookmarkList)
    {
      v14 = [(SFBookmarkUtility *)v12 saveBookmark:self->_bookmark inSyntheticFolder:self->_syntheticParentBookmarkFolder];
    }

    else
    {
      isFolder = [(WebBookmark *)self->_bookmark isFolder];
      bookmark = self->_bookmark;
      if (isFolder)
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
    uUID = [(WebBookmark *)self->_parentBookmark UUID];
    if ([(WebBookmarkCollection *)self->_collection bookmarkIsFavoritesFolder:self->_parentBookmark])
    {
      v4 = *MEMORY[0x1E69B1FA0];

      uUID = v4;
    }

    bookmarkList = [(SFSyntheticBookmarkFolder *)self->_syntheticParentBookmarkFolder bookmarkList];
    v6 = bookmarkList;
    if (bookmarkList)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(bookmarkList, "folderID")];

      uUID = v7;
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:uUID forKey:*MEMORY[0x1E69B1F98]];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v10 = [MEMORY[0x1E695DF00] now];
    [standardUserDefaults2 setObject:v10 forKey:*MEMORY[0x1E69B1DE0]];
  }
}

- (void)_updateSaveButton
{
  canSaveChanges = [(_SFBookmarkInfoViewController *)self canSaveChanges];
  saveButton = self->_saveButton;

  [(UIBarButtonItem *)saveButton setEnabled:canSaveChanges];
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
    editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    text = [editableTextField text];
    _web_stringByTrimmingWhitespace = [text _web_stringByTrimmingWhitespace];

    editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
    text2 = [editableTextField2 text];
    _web_stringByTrimmingWhitespace2 = [text2 _web_stringByTrimmingWhitespace];

    if ([_web_stringByTrimmingWhitespace length])
    {
      v10 = (-[WebBookmark isFolder](self->_bookmark, "isFolder") & 1) != 0 || [_web_stringByTrimmingWhitespace2 length] != 0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)_editField:(unint64_t)field
{
  self->_editingField = field;
  if (field == 1)
  {
    v14 = [_SFBookmarkTextEntryTableViewController alloc];
    address = [(WebBookmark *)self->_bookmark address];
    v9 = v14;
    v10 = 1;
    v11 = address;
    v12 = 0;
    v13 = 1;
    goto LABEL_5;
  }

  if (!field)
  {
    bookmark = self->_bookmark;
    editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
    text = [editableTextField text];
    [(WebBookmark *)bookmark setTitle:text];

    v7 = [_SFBookmarkTextEntryTableViewController alloc];
    address = [(WebBookmark *)self->_bookmark localizedTitle];
    v9 = v7;
    v10 = 0;
    v11 = address;
    v12 = 2;
    v13 = 0;
LABEL_5:
    v16 = [(_SFBookmarkTextEntryTableViewController *)v9 initWithBookmarkInfoViewField:v10 text:v11 autocapitalizationType:v12 autocorrectionType:v13 delegate:self];

    goto LABEL_7;
  }

  v16 = 0;
LABEL_7:
  navigationController = [(_SFBookmarkInfoViewController *)self navigationController];
  [navigationController pushViewController:v16 animated:1];
}

- (void)_createNewFolder
{
  v3 = objc_alloc(MEMORY[0x1E69E20F0]);
  parentID = [(WebBookmark *)self->_bookmark parentID];
  configuration = [(WebBookmarkCollection *)self->_collection configuration];
  v8 = [v3 initFolderWithParentID:parentID collectionType:{objc_msgSend(configuration, "collectionType")}];

  v6 = [[_SFBookmarkInfoViewController alloc] initWithBookmark:v8 inCollection:self->_collection addingBookmark:1];
  [(_SFBookmarkInfoViewController *)v6 setDelegate:self];
  navigationController = [(_SFBookmarkInfoViewController *)self navigationController];
  [navigationController pushViewController:v6 animated:1];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] != 1 && ((-[_SFBookmarkInfoViewController _sf_canEditFields](self, "_sf_canEditFields") & 1) != 0 || objc_msgSend(pathCopy, "row") && self->_addingBookmark))
  {
    v6 = 0;
  }

  else
  {
    v6 = pathCopy;
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  v8 = [pathCopy row];
  v9 = v8;
  if (section == 1)
  {
    if ([(_SFBookmarkInfoViewController *)self _isIndexPathForNewFolderRow:pathCopy])
    {
      [(_SFBookmarkInfoViewController *)self _createNewFolder];
    }

    else
    {
      if (self->_folderPickerExpanded)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedFolderIndex inSection:1];
        v13 = [viewCopy cellForRowAtIndexPath:v12];
        [v13 setAccessoryType:0];

        v14 = [viewCopy cellForRowAtIndexPath:pathCopy];
        [v14 setAccessoryType:3];

        v15 = [(NSArray *)self->_folders objectAtIndexedSubscript:v9];
        bookmark = [v15 bookmark];
        syntheticFolder = [v15 syntheticFolder];
        [(_SFBookmarkInfoViewController *)self setParent:bookmark syntheticParentFolder:syntheticFolder];
      }

      editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
      [editableTextField resignFirstResponder];

      editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
      [editableTextField2 resignFirstResponder];

      [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:!self->_folderPickerExpanded animated:1];
    }
  }

  else
  {
    if (v8 == 1)
    {
      selfCopy2 = self;
      v11 = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_12;
      }

      selfCopy2 = self;
      v11 = 0;
    }

    [(_SFBookmarkInfoViewController *)selfCopy2 _editField:v11];
  }

LABEL_12:
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 2)
  {
    _showBookmarkAppearanceSwitch = [(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch];
  }

  else if (section == 1)
  {
    if (self->_folderPickerExpanded)
    {
      _showBookmarkAppearanceSwitch = [(_SFBookmarkInfoViewController *)self _numberOfExpandedFolderPickerRows];
    }

    else
    {
      _showBookmarkAppearanceSwitch = 1;
    }
  }

  else if (section)
  {
    _showBookmarkAppearanceSwitch = 0;
  }

  else if ([(WebBookmark *)self->_bookmark isFolder])
  {
    _showBookmarkAppearanceSwitch = 1;
  }

  else
  {
    _showBookmarkAppearanceSwitch = 2;
  }

  return _showBookmarkAppearanceSwitch;
}

- (BOOL)_isIndexPathForNewFolderRow:(id)row
{
  rowCopy = row;
  v5 = rowCopy;
  if (self->_folderPickerExpanded && [rowCopy section] == 1)
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 2)
    {
      v8 = [(_SFBookmarkInfoViewController *)self _cellForShowTitleSwitch:viewCopy];
    }

    else if ([(_SFBookmarkInfoViewController *)self _isIndexPathForNewFolderRow:pathCopy])
    {
      v8 = [(_SFBookmarkInfoViewController *)self _cellForNewFolderRowWithTableView:viewCopy];
    }

    else
    {
      if (self->_folderPickerExpanded)
      {
        -[_SFBookmarkInfoViewController _cellForExpandedFolderAtIndex:withTableView:](self, "_cellForExpandedFolderAtIndex:withTableView:", [pathCopy row], viewCopy);
      }

      else
      {
        [(_SFBookmarkInfoViewController *)self _cellForParentBookmarkWithTableView:viewCopy];
      }
      v8 = ;
    }
  }

  else
  {
    v9 = [pathCopy row];
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

- (id)_dequeueFolderPickerCellFromTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"BookmarkFolderItemTableViewCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"BookmarkFolderItemTableViewCell"];
    +[_SFFolderPickerTableViewCellLayoutManager indentationWidth];
    [v3 setIndentationWidth:?];
    v4 = objc_alloc_init(_SFFolderPickerTableViewCellLayoutManager);
    [v3 setLayoutManager:v4];

    v5 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    imageView = [v3 imageView];
    [imageView setPreferredSymbolConfiguration:v5];
  }

  return v3;
}

- (id)_cellForShowTitleSwitch:(id)switch
{
  v4 = [switch dequeueReusableCellWithIdentifier:@"BookmarkShowTitleSwitch"];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"BookmarkShowTitleSwitch"];
  }

  v5 = _WBSLocalizedString();
  textLabel = [v4 textLabel];
  [textLabel setText:v5];

  [v4 setAccessoryView:self->_showTitleSwitch];
  [(UISwitch *)self->_showTitleSwitch setAccessibilityIdentifier:@"BookmarkShowTitleSwitch"];

  return v4;
}

- (id)_cellForNewFolderRowWithTableView:(id)view
{
  v3 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:view];
  v4 = _WBSLocalizedString();
  textLabel = [v3 textLabel];
  [textLabel setText:v4];

  sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  textLabel2 = [v3 textLabel];
  [textLabel2 setTextColor:sf_safariAccentColor];

  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus"];
  imageView = [v3 imageView];
  [imageView setImage:v8];

  [v3 setIndentationLevel:0];
  [v3 setAccessoryType:1];
  [v3 setTintAdjustmentMode:0];
  [v3 setAccessibilityIdentifier:@"BookmarkInfoLocationNewFolder"];
  [v3 setUserInteractionEnabled:1];

  return v3;
}

- (id)_cellForExpandedFolderAtIndex:(int64_t)index withTableView:(id)view
{
  viewCopy = view;
  v7 = [(NSArray *)self->_folders objectAtIndexedSubscript:index];
  syntheticFolder = [v7 syntheticFolder];
  v9 = syntheticFolder;
  if (syntheticFolder)
  {
    bookmarkList = [syntheticFolder bookmarkList];
    if (bookmarkList)
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

  v12 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:viewCopy];
  title = [v7 title];
  textLabel = [v12 textLabel];
  [textLabel setText:title];

  if (v11)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v15 = ;
  textLabel2 = [v12 textLabel];
  [textLabel2 setTextColor:v15];

  bookmark = [v7 bookmark];
  v18 = [(_SFBookmarkInfoViewController *)self _iconForViewCellGivenBookmark:bookmark syntheticFolder:v9];
  imageView = [v12 imageView];
  [imageView setImage:v18];

  [v12 setIndentationLevel:{objc_msgSend(v7, "depth")}];
  selectedFolderIndex = self->_selectedFolderIndex;
  v21 = selectedFolderIndex == index;
  v22 = selectedFolderIndex != index;
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

- (id)_cellForParentBookmarkWithTableView:(id)view
{
  v5 = [(_SFBookmarkInfoViewController *)self _dequeueFolderPickerCellFromTableView:view];
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
  title = [(SFSyntheticBookmarkFolder *)syntheticParentBookmarkFolder title];
  v9 = title;
  if (title)
  {
    v10 = 0;
    title2 = title;
  }

  else
  {
    localizedTitle = [(WebBookmark *)self->_parentBookmark localizedTitle];
    v3 = localizedTitle;
    if (localizedTitle)
    {
      v10 = 0;
      title2 = localizedTitle;
    }

    else
    {
      title2 = [v7 title];
      v10 = 1;
    }
  }

  textLabel = [v5 textLabel];
  [textLabel setText:title2];

  if (v10)
  {
  }

  if (!v9)
  {
  }

  parentBookmark = self->_parentBookmark;
  bookmark = parentBookmark;
  if (!parentBookmark)
  {
    bookmark = [v7 bookmark];
  }

  v16 = [(_SFBookmarkInfoViewController *)self _iconForViewCellGivenBookmark:bookmark syntheticFolder:self->_syntheticParentBookmarkFolder];
  imageView = [v5 imageView];
  [imageView setImage:v16];

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

- (id)_iconForViewCellGivenBookmark:(id)bookmark syntheticFolder:(id)folder
{
  bookmarkCopy = bookmark;
  v7 = *MEMORY[0x1E69DDC50];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v7, preferredContentSizeCategory);

  if (v10 == NSOrderedAscending)
  {
    v13 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69DCAB8];
    if (folder)
    {
      v12 = @"star.square.on.square";
    }

    else if ([(_SFBookmarkInfoViewController *)self _bookmarkIsInFavoritesFolder:bookmarkCopy])
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

- (BOOL)_bookmarkIsInFavoritesFolder:(id)folder
{
  collection = self->_collection;
  folderCopy = folder;
  bookmarksBarBookmark = [(WebBookmarkCollection *)collection bookmarksBarBookmark];
  v6 = [bookmarksBarBookmark isEqual:folderCopy];

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    if (section == 2)
    {
      if ([(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch])
      {
LABEL_6:
        section = _WBSLocalizedString();
        goto LABEL_9;
      }

      section = 0;
    }

    else
    {
      if (section == 1)
      {
        goto LABEL_6;
      }

      section = &stru_1F4FE9E38;
    }
  }

LABEL_9:

  return section;
}

- (BOOL)_showBookmarkAppearanceSwitch
{
  if (!_SFDeviceIsPad() || self->_addingBookmark)
  {
    return 0;
  }

  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([safari_browserDefaults integerForKey:*MEMORY[0x1E69B1C98]])
  {
    v3 = 0;
  }

  else
  {
    safari_browserDefaults2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    if ([safari_browserDefaults2 BOOLForKey:*MEMORY[0x1E69B1C88]])
    {
      v6 = [(NSArray *)self->_folders objectAtIndexedSubscript:self->_selectedFolderIndex];
      bookmark = [v6 bookmark];
      if ([(_SFBookmarkInfoViewController *)self _bookmarkIsInFavoritesFolder:bookmark])
      {
        if ([(WebBookmark *)self->_bookmark isFolder])
        {
          title = [(WebBookmark *)self->_bookmark title];
          v9 = MEMORY[0x1E69DD250];
          view = [(_SFBookmarkInfoViewController *)self view];
          v3 = [title safari_hasLeadingEmojiSafariIsRightToLeft:{objc_msgSend(v9, "_sf_usesLeftToRightLayoutOnView:", view) ^ 1}];
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

- (void)_didChangeEditingTextField:(id)field
{
  fieldCopy = field;
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];

  if (editableTextField == fieldCopy)
  {
    v7 = 0;
  }

  else
  {
    editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];

    if (editableTextField2 != fieldCopy)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v7 = 1;
  }

  v6 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
LABEL_7:
  [(_SFBookmarkInfoViewController *)self _setFolderPickerExpanded:0 animated:1];
  tableView = [(_SFBookmarkInfoViewController *)self tableView];
  [tableView scrollToRowAtIndexPath:v6 atScrollPosition:0 animated:1];
}

- (void)_setFolderPickerExpanded:(BOOL)expanded animated:(BOOL)animated
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_folderPickerExpanded != expanded)
  {
    animatedCopy = animated;
    self->_folderPickerExpanded = expanded;
    [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:0];
    tableView = [(_SFBookmarkInfoViewController *)self tableView];
    v7 = tableView;
    if (animatedCopy)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
      v23[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];

      array = [MEMORY[0x1E695DF70] array];
      _numberOfExpandedFolderPickerRows = [(_SFBookmarkInfoViewController *)self _numberOfExpandedFolderPickerRows];
      if (_numberOfExpandedFolderPickerRows)
      {
        v12 = _numberOfExpandedFolderPickerRows;
        for (i = 0; i != v12; ++i)
        {
          v14 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:1];
          [array addObject:v14];
        }
      }

      [v7 beginUpdates];
      if (self->_folderPickerExpanded)
      {
        v15 = v9;
      }

      else
      {
        v15 = array;
      }

      [v7 deleteRowsAtIndexPaths:v15 withRowAnimation:0];
      if (self->_folderPickerExpanded)
      {
        v16 = array;
      }

      else
      {
        v16 = v9;
      }

      [v7 insertRowsAtIndexPaths:v16 withRowAnimation:0];
      numberOfSections = [v7 numberOfSections];
      if ((((numberOfSections < 3) ^ [(_SFBookmarkInfoViewController *)self _showBookmarkAppearanceSwitch]) & 1) == 0)
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
      [tableView reloadData];
    }

    if (self->_folderPickerExpanded)
    {
      v19 = [MEMORY[0x1E696AC88] indexPathForRow:self->_selectedFolderIndex inSection:1];
      [v7 scrollToRowAtIndexPath:v19 atScrollPosition:0 animated:1];
    }

    sheetPresentationController = [(_SFBookmarkInfoViewController *)self sheetPresentationController];
    v21 = sheetPresentationController;
    if (animatedCopy && sheetPresentationController)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __67___SFBookmarkInfoViewController__setFolderPickerExpanded_animated___block_invoke;
      v22[3] = &unk_1E848F810;
      v22[4] = self;
      [sheetPresentationController animateChanges:v22];
    }

    else
    {
      [(SFPopoverSizingTableViewController *)self updatePreferredContentSize];
    }
  }
}

- (void)_reloadFolderInfoForced:(BOOL)forced
{
  if (forced || self->_folderPickerExpanded && !self->_folders)
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
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [editableTextField addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [editableTextField2 addTarget:self action:sel__returnWasPressedInTextField_ forControlEvents:0x80000];

  editableTextField3 = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [editableTextField3 addTarget:self action:sel__valuesChanged forControlEvents:0x20000];

  editableTextField4 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [editableTextField4 addTarget:self action:sel__valuesChanged forControlEvents:0x20000];
}

- (void)_removeActionsForTextFields
{
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  [editableTextField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)self->_addressCell editableTextField];
  [editableTextField2 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
}

- (void)bookmarkTextEntryTableViewController:(id)controller dismissedWithText:(id)text
{
  controllerCopy = controller;
  textCopy = text;
  editingField = self->_editingField;
  if (editingField == 1)
  {
    [(WebBookmark *)self->_bookmark setAddress:textCopy];
  }

  else if (!editingField)
  {
    [(WebBookmark *)self->_bookmark setTitle:textCopy];
  }

  [(_SFBookmarkInfoViewController *)self reloadData];
  self->_editingField = -1;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

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
    hasTranslucentAppearance = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _SFBookmarkInfoViewController;
    hasTranslucentAppearance = [(SFPopoverSizingTableViewController *)&v6 hasTranslucentAppearance];
  }

  return hasTranslucentAppearance;
}

- (void)updateTranslucentAppearance
{
  p_titleCell = &self->_titleCell;
  editableTextField = [(_SFBookmarkTextEntryTableViewCell *)self->_titleCell editableTextField];
  isFirstResponder = [editableTextField isFirstResponder];

  if ((isFirstResponder & 1) != 0 || (p_titleCell = &self->_addressCell, -[_SFBookmarkTextEntryTableViewCell editableTextField](self->_addressCell, "editableTextField"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isFirstResponder], v6, v7))
  {
    editableTextField2 = [(_SFBookmarkTextEntryTableViewCell *)*p_titleCell editableTextField];
    textFieldToRestoreFirstResponder = self->_textFieldToRestoreFirstResponder;
    self->_textFieldToRestoreFirstResponder = editableTextField2;
  }

  v10.receiver = self;
  v10.super_class = _SFBookmarkInfoViewController;
  [(SFPopoverSizingTableViewController *)&v10 updateTranslucentAppearance];
}

- (id)backgroundColorUsingTranslucentAppearance:(BOOL)appearance
{
  if (appearance)
  {
    v5.receiver = self;
    v5.super_class = _SFBookmarkInfoViewController;
    systemGroupedBackgroundColor = [(SFPopoverSizingTableViewController *)&v5 backgroundColorUsingTranslucentAppearance:1];
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return systemGroupedBackgroundColor;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_cancelKeyPressed == action)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();
  }

  else
  {
    if (sel_saveKeyPressed == action)
    {
      canSaveChanges = [(_SFBookmarkInfoViewController *)self canSaveChanges];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = _SFBookmarkInfoViewController;
      canSaveChanges = [(_SFBookmarkInfoViewController *)&v11 canPerformAction:action withSender:senderCopy];
    }

    v9 = canSaveChanges;
  }

  return v9 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  v6.receiver = self;
  v6.super_class = _SFBookmarkInfoViewController;
  [(_SFBookmarkInfoViewController *)&v6 validateCommand:commandCopy];
  if ([commandCopy action] == sel_saveKeyPressed)
  {
    v5 = _WBSLocalizedString();
    [commandCopy setDiscoverabilityTitle:v5];
  }
}

- (void)bookmarkInfoViewController:(id)controller didFinishWithResult:(BOOL)result
{
  if (result)
  {
    controllerCopy = controller;
    bookmark = [controllerCopy bookmark];
    parentBookmark = self->_parentBookmark;
    self->_parentBookmark = bookmark;

    objc_storeStrong(&self->_syntheticParentBookmarkFolder, controllerCopy[137]);
    self->_didSelectFolder = 1;
    self->_folderPickerExpanded = 0;
    [(_SFBookmarkInfoViewController *)self _reloadFolderInfoForced:1];
    tableView = [(_SFBookmarkInfoViewController *)self tableView];
    [tableView reloadData];
  }

  navigationController = [(_SFBookmarkInfoViewController *)self navigationController];
  v9 = [navigationController popViewControllerAnimated:1];
}

- (BOOL)bookmarkInfoViewControllerCanSaveBookmarkChanges:(id)changes
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

- (BOOL)bookmarkInfoViewControllerShouldUseTranslucentAppearance:(id)appearance
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

- (id)syntheticBookmarkProviderForBookmarkInfoViewController:(id)controller
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
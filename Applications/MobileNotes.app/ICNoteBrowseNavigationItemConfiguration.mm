@interface ICNoteBrowseNavigationItemConfiguration
- (BOOL)isEditing;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateAnimated:(BOOL)animated;
- (ICNoteBrowseNavigationItemConfiguration)initWithDataSource:(id)source delegate:(id)delegate;
- (ICNoteBrowseNavigationItemConfigurationDataSource)dataSource;
- (ICNoteBrowseNavigationItemConfigurationDelegate)delegate;
- (ICToolbarSummaryView)summaryView;
- (NSString)navigationTitle;
- (UIBarButtonItem)actionBarButtonItem;
- (UIBarButtonItem)addNoteBarButtonItem;
- (UIBarButtonItem)calculatorModeItem;
- (UIBarButtonItem)collaborationBarButtonItem;
- (UIBarButtonItem)customBackBarButtonItem;
- (UIBarButtonItem)debugBarButtonItem;
- (UIBarButtonItem)deleteBarButtonItem;
- (UIBarButtonItem)editBarButtonItem;
- (UIBarButtonItem)lockBarButtonItem;
- (UIBarButtonItem)moveBarButtonItem;
- (UIBarButtonItem)shareBarButtonItem;
- (UIBarButtonItem)summaryBarButtonItem;
- (UIBarButtonItem)tagsBarButtonItem;
- (UINavigationController)navigationController;
- (UINavigationItem)navigationItem;
- (UIViewController)presentingViewController;
- (unint64_t)hash;
- (void)addNoteAction:(id)action event:(id)event;
- (void)backAction:(id)action;
- (void)cancelSearchAction:(id)action;
- (void)debugAction:(id)action;
- (void)deleteAction:(id)action;
- (void)lockAction:(id)action;
- (void)moveAction:(id)action;
- (void)reset;
- (void)shareAction:(id)action;
- (void)tagsAction:(id)action;
- (void)updateEnabled;
- (void)updateMenus;
- (void)updateNavigationBarAnimated:(BOOL)animated;
- (void)updateTitles;
- (void)updateToolbarAnimated:(BOOL)animated;
@end

@implementation ICNoteBrowseNavigationItemConfiguration

- (ICNoteBrowseNavigationItemConfiguration)initWithDataSource:(id)source delegate:(id)delegate
{
  sourceCopy = source;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = ICNoteBrowseNavigationItemConfiguration;
  v8 = [(ICNoteBrowseNavigationItemConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, sourceCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v9->_noteContainerViewMode = -1;
    v9->_collectionType = 0;
  }

  return v9;
}

- (UINavigationItem)navigationItem
{
  presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  navigationItem = [presentingViewController navigationItem];

  return navigationItem;
}

- (ICToolbarSummaryView)summaryView
{
  dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteBrowseNavigationitemConfigurationNavigationToolbarSummaryView:self];

  return v4;
}

- (UIBarButtonItem)actionBarButtonItem
{
  actionBarButtonItem = self->_actionBarButtonItem;
  if (actionBarButtonItem)
  {
    v3 = actionBarButtonItem;
  }

  else
  {
    v5 = @"ellipsis";
    if (![(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems]&& !_UISolariumEnabled())
    {
      v5 = @"ellipsis.circle";
    }

    v6 = [UIImage systemImageNamed:v5];
    v7 = [[UIBarButtonItem alloc] initWithImage:v6 menu:0];
    v8 = self->_actionBarButtonItem;
    self->_actionBarButtonItem = v7;

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Manage notes and views" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_actionBarButtonItem setTitle:v10];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Folder Actions" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_actionBarButtonItem setAccessibilityLabel:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Double tap to show the notes list action menu" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_actionBarButtonItem setAccessibilityHint:v14];

    v3 = self->_actionBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)calculatorModeItem
{
  calculatorModeItem = self->_calculatorModeItem;
  if (calculatorModeItem)
  {
    v3 = calculatorModeItem;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000881B4;
    v31[3] = &unk_1006473A0;
    v31[4] = self;
    v5 = objc_retainBlock(v31);
    v29 = +[NSBundle mainBundle];
    v28 = [v29 localizedStringForKey:@"Basic" value:&stru_100661CF0 table:0];
    v6 = (v5 + 16);
    v27 = (*(v5 + 2))(v5, v28, @"math.operators", 0);
    v32[0] = v27;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Scientific" value:&stru_100661CF0 table:0];
    v9 = v5;
    v30 = v5;
    v10 = (*(v5 + 2))(v5, v8, @"function", 1);
    v32[1] = v10;
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Math Notes" value:&stru_100661CF0 table:0];
    v13 = (*v6)(v9, v12, @"apple.math.notes", 2);
    v32[2] = v13;
    v14 = [NSArray arrayWithObjects:v32 count:3];
    v26 = [UIMenu menuWithChildren:v14];

    v15 = [UIBarButtonItem alloc];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Calculator Mode" value:&stru_100661CF0 table:0];
    v18 = [UIImage ic_systemImageNamed:@"calculator.fill"];
    v19 = [v15 initWithTitle:v17 image:v18 target:0 action:0 menu:v26];
    v20 = self->_calculatorModeItem;
    self->_calculatorModeItem = v19;

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"Calculator Mode" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_calculatorModeItem setAccessibilityLabel:v22];

    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Double tap to pick a calculator mode" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_calculatorModeItem setAccessibilityHint:v24];

    v3 = self->_calculatorModeItem;
  }

  return v3;
}

- (UIBarButtonItem)addNoteBarButtonItem
{
  addNoteBarButtonItem = self->_addNoteBarButtonItem;
  if (addNoteBarButtonItem)
  {
    v3 = addNoteBarButtonItem;
  }

  else
  {
    v5 = [UIImage systemImageNamed:@"square.and.pencil"];
    v6 = [[UIBarButtonItem alloc] initWithImage:v5 style:0 target:self action:"addNoteAction:event:"];
    v7 = self->_addNoteBarButtonItem;
    self->_addNoteBarButtonItem = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"New note" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setTitle:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"New note" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setAccessibilityLabel:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Double tap to compose a new note" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_addNoteBarButtonItem setAccessibilityHint:v13];

    v3 = self->_addNoteBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)collaborationBarButtonItem
{
  dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:self];

  return v4;
}

- (UIBarButtonItem)customBackBarButtonItem
{
  if ([(ICNoteBrowseNavigationItemConfiguration *)self usesCustomBackButton])
  {
    customBackBarButtonItem = self->_customBackBarButtonItem;
    if (!customBackBarButtonItem)
    {
      v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:101 target:self action:"backAction:"];
      v5 = self->_customBackBarButtonItem;
      self->_customBackBarButtonItem = v4;

      customBackBarButtonItem = self->_customBackBarButtonItem;
    }

    v6 = customBackBarButtonItem;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIBarButtonItem)debugBarButtonItem
{
  debugBarButtonItem = self->_debugBarButtonItem;
  if (!debugBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [UIImage systemImageNamed:@"gear"];
    v6 = [v4 initWithImage:v5 style:0 target:self action:"debugAction:"];
    v7 = self->_debugBarButtonItem;
    self->_debugBarButtonItem = v6;

    debugBarButtonItem = self->_debugBarButtonItem;
  }

  v8 = debugBarButtonItem;

  return v8;
}

- (UIBarButtonItem)deleteBarButtonItem
{
  deleteBarButtonItem = self->_deleteBarButtonItem;
  if (!deleteBarButtonItem)
  {
    usesPlainBarButtonItems = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = v5;
    if (usesPlainBarButtonItems)
    {
      v7 = [UIImage ic_systemImageNamed:@"trash"];
      v8 = [v6 initWithImage:v7 style:0 target:self action:"deleteAction:"];
      v9 = self->_deleteBarButtonItem;
      self->_deleteBarButtonItem = v8;
    }

    else
    {
      v10 = [v5 initWithTitle:0 style:0 target:self action:"deleteAction:"];
      v7 = self->_deleteBarButtonItem;
      self->_deleteBarButtonItem = v10;
    }

    deleteBarButtonItem = self->_deleteBarButtonItem;
  }

  v11 = deleteBarButtonItem;

  return v11;
}

- (UIBarButtonItem)editBarButtonItem
{
  presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  editButtonItem = [presentingViewController editButtonItem];

  return editButtonItem;
}

- (UIBarButtonItem)lockBarButtonItem
{
  lockBarButtonItem = self->_lockBarButtonItem;
  if (lockBarButtonItem)
  {
    v3 = lockBarButtonItem;
  }

  else
  {
    v5 = [UIImage systemImageNamed:@"lock.open"];
    v6 = [[UIBarButtonItem alloc] initWithImage:v5 style:0 target:self action:"lockAction:"];
    v7 = self->_lockBarButtonItem;
    self->_lockBarButtonItem = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Lock notes" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityLabel:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Double tap to lock notes" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_lockBarButtonItem setAccessibilityHint:v11];

    v3 = self->_lockBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)moveBarButtonItem
{
  moveBarButtonItem = self->_moveBarButtonItem;
  if (!moveBarButtonItem)
  {
    usesPlainBarButtonItems = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = v5;
    if (usesPlainBarButtonItems)
    {
      v7 = [UIImage ic_systemImageNamed:@"folder"];
      v8 = [v6 initWithImage:v7 style:0 target:self action:"moveAction:"];
      v9 = self->_moveBarButtonItem;
      self->_moveBarButtonItem = v8;
    }

    else
    {
      v10 = [v5 initWithTitle:0 style:0 target:self action:"moveAction:"];
      v7 = self->_moveBarButtonItem;
      self->_moveBarButtonItem = v10;
    }

    moveBarButtonItem = self->_moveBarButtonItem;
  }

  v11 = moveBarButtonItem;

  return v11;
}

- (UIBarButtonItem)shareBarButtonItem
{
  shareBarButtonItem = self->_shareBarButtonItem;
  if (shareBarButtonItem)
  {
    v3 = shareBarButtonItem;
  }

  else
  {
    v5 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v6 = [[UIBarButtonItem alloc] initWithImage:v5 style:0 target:self action:"shareAction:"];
    v7 = self->_shareBarButtonItem;
    self->_shareBarButtonItem = v6;

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Share" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_shareBarButtonItem setAccessibilityLabel:v9];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Double tap to show folder sharing options" value:&stru_100661CF0 table:0];
    [(UIBarButtonItem *)self->_shareBarButtonItem setAccessibilityHint:v11];

    v3 = self->_shareBarButtonItem;
  }

  return v3;
}

- (UIBarButtonItem)summaryBarButtonItem
{
  if (self->_summaryBarButtonItem)
  {
    summaryView = [(ICNoteBrowseNavigationItemConfiguration *)self summaryView];
    [(UIBarButtonItem *)self->_summaryBarButtonItem setCustomView:summaryView];
  }

  else
  {
    v4 = [UIBarButtonItem alloc];
    summaryView = [(ICNoteBrowseNavigationItemConfiguration *)self summaryView];
    v5 = [v4 initWithCustomView:summaryView];
    summaryBarButtonItem = self->_summaryBarButtonItem;
    self->_summaryBarButtonItem = v5;
  }

  v7 = self->_summaryBarButtonItem;

  return v7;
}

- (UIBarButtonItem)tagsBarButtonItem
{
  tagsBarButtonItem = self->_tagsBarButtonItem;
  if (!tagsBarButtonItem)
  {
    usesPlainBarButtonItems = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Tags" value:&stru_100661CF0 table:0];
    if (usesPlainBarButtonItems)
    {
      v8 = [UIImage ic_systemImageNamed:@"number"];
      v9 = [v5 initWithTitle:v7 image:v8 target:self action:"tagsAction:" menu:0];
      v10 = self->_tagsBarButtonItem;
      self->_tagsBarButtonItem = v9;
    }

    else
    {
      v11 = [v5 initWithTitle:v7 style:0 target:self action:"tagsAction:"];
      v8 = self->_tagsBarButtonItem;
      self->_tagsBarButtonItem = v11;
    }

    tagsBarButtonItem = self->_tagsBarButtonItem;
  }

  v12 = tagsBarButtonItem;

  return v12;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = ICNoteBrowseNavigationItemConfiguration;
  [(ICNoteBrowseNavigationItemConfiguration *)&v4 reset];
  addNoteBarButtonItem = self->_addNoteBarButtonItem;
  self->_addNoteBarButtonItem = 0;
}

- (BOOL)updateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  needsUpdate = [(ICNoteBrowseNavigationItemConfiguration *)self needsUpdate];
  if (needsUpdate)
  {
    [(ICNoteBrowseNavigationItemConfiguration *)self updateNavigationBarAnimated:animatedCopy];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateToolbarAnimated:animatedCopy];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateTitles];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateMenus];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateEnabled];
    v7.receiver = self;
    v7.super_class = ICNoteBrowseNavigationItemConfiguration;
    LOBYTE(needsUpdate) = [(ICNoteBrowseNavigationItemConfiguration *)&v7 updateAnimated:animatedCopy];
  }

  return needsUpdate;
}

- (BOOL)isEditing
{
  presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  isEditing = [presentingViewController isEditing];

  return isEditing;
}

- (UINavigationController)navigationController
{
  presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  navigationController = [presentingViewController navigationController];

  return navigationController;
}

- (NSString)navigationTitle
{
  dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteBrowseNavigationItemConfigurationNavigationTitle:self];

  return v4;
}

- (void)updateNavigationBarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItem = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  searchController = [navigationItem searchController];
  if (![searchController isActive])
  {

LABEL_7:
    isEditing = [(ICNoteBrowseNavigationItemConfiguration *)self isEditing];
    navigationItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v10 = navigationItem2;
    if (isEditing)
    {
      [navigationItem2 setHidesBackButton:1 animated:animatedCopy];

      navigationItem3 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      editBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
      v48 = editBarButtonItem;
      v13 = [NSArray arrayWithObjects:&v48 count:1];
      [navigationItem3 setRightBarButtonItems:v13 animated:animatedCopy];

LABEL_44:
      return;
    }

    [navigationItem2 setHidesBackButton:-[ICNoteBrowseNavigationItemConfiguration usesCustomBackButton](self animated:{"usesCustomBackButton"), animatedCopy}];

    if (-[ICNoteBrowseNavigationItemConfiguration usesCustomBackButton](self, "usesCustomBackButton") && (-[ICNoteBrowseNavigationItemConfiguration navigationController](self, "navigationController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 viewControllers], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16 >= 2))
    {
      v17 = [UIBarButtonItemGroup alloc];
      customBackBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self customBackBarButtonItem];
      v47 = customBackBarButtonItem;
      v19 = [NSArray arrayWithObjects:&v47 count:1];
      navigationItem5 = [v17 initWithBarButtonItems:v19 representativeItem:0];

      v46 = navigationItem5;
      v21 = [NSArray arrayWithObjects:&v46 count:1];
      navigationItem4 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      [navigationItem4 setLeadingItemGroups:v21];
    }

    else
    {
      navigationItem5 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      [navigationItem5 setLeadingItemGroups:&__NSArray0__struct];
    }

    navigationItem3 = +[NSMutableArray array];
    collectionType = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
    if (collectionType - 3 < 2)
    {
      actionBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      [navigationItem3 addObject:actionBarButtonItem];

      if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && ![(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth])
      {
        addNoteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [navigationItem3 insertObject:addNoteBarButtonItem atIndex:0];
      }

      if (![(ICNoteBrowseNavigationItemConfiguration *)self showsCalculatorModeButton])
      {
        goto LABEL_37;
      }

      v26 = +[UIBarButtonItem flexibleSpaceItem];
      [navigationItem3 ic_addNonNilObject:v26];
      calculatorModeItem = [(ICNoteBrowseNavigationItemConfiguration *)self calculatorModeItem];
      [navigationItem3 ic_addNonNilObject:calculatorModeItem];
    }

    else
    {
      if (collectionType == 2)
      {
        editBarButtonItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
      }

      else
      {
        if (collectionType != 1)
        {
          goto LABEL_37;
        }

        if ([(ICNoteBrowseNavigationItemConfiguration *)self isTrashFolder])
        {
          [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
        }

        else
        {
          [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
        }
        v29 = ;
        [navigationItem3 ic_addNonNilObject:v29];

        if (![(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth])
        {
          if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && ![(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight])
          {
            addNoteBarButtonItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
            [navigationItem3 ic_insertNonNilObject:addNoteBarButtonItem2 atIndex:0];

            if ([(ICNoteBrowseNavigationItemConfiguration *)self isAuthenticated])
            {
              lockBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self lockBarButtonItem];
              [navigationItem3 ic_addNonNilObject:lockBarButtonItem];
            }
          }

          if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]!= 1)
          {
            goto LABEL_37;
          }
        }

        if ([(ICNoteBrowseNavigationItemConfiguration *)self canBeShared])
        {
          shareBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self shareBarButtonItem];
          [navigationItem3 ic_addNonNilObject:shareBarButtonItem];
        }

        if (![(ICNoteBrowseNavigationItemConfiguration *)self isShared])
        {
          goto LABEL_37;
        }

        editBarButtonItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self collaborationBarButtonItem];
      }

      v26 = editBarButtonItem2;
      [navigationItem3 ic_addNonNilObject:editBarButtonItem2];
    }

LABEL_37:
    if (_UISolariumEnabled())
    {
      addNoteBarButtonItem3 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
      v34 = [navigationItem3 containsObject:addNoteBarButtonItem3];

      if (v34)
      {
        addNoteBarButtonItem4 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [navigationItem3 removeObject:addNoteBarButtonItem4];

        v36 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
        [navigationItem3 addObject:v36];

        addNoteBarButtonItem5 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [navigationItem3 addObject:addNoteBarButtonItem5];
      }
    }

    navigationItem6 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    [navigationItem6 _setSupportsTwoLineLargeTitles:1];

    navigationItem7 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v40 = [navigationItem3 copy];
    [navigationItem7 setRightBarButtonItems:v40 animated:animatedCopy];

    LODWORD(v40) = [(ICNoteBrowseNavigationItemConfiguration *)self showsDebugItem];
    navigationItem8 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v42 = navigationItem8;
    if (v40)
    {
      debugBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self debugBarButtonItem];
      [v42 setLeftBarButtonItem:debugBarButtonItem animated:animatedCopy];

      navigationItem8 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      v42 = navigationItem8;
      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    [navigationItem8 setLeftItemsSupplementBackButton:v44];

    goto LABEL_44;
  }

  noteContainerViewMode = [(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode];

  if (noteContainerViewMode != 1)
  {
    goto LABEL_7;
  }

  navigationItem9 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [navigationItem9 setRightBarButtonItems:&__NSArray0__struct animated:animatedCopy];
}

- (void)updateEnabled
{
  canAddNote = [(ICNoteBrowseNavigationItemConfiguration *)self canAddNote];
  addNoteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
  [addNoteBarButtonItem setEnabled:canAddNote];

  canDeleteNotes = [(ICNoteBrowseNavigationItemConfiguration *)self canDeleteNotes];
  deleteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
  [deleteBarButtonItem setEnabled:canDeleteNotes];

  canMoveNotes = [(ICNoteBrowseNavigationItemConfiguration *)self canMoveNotes];
  moveBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
  [moveBarButtonItem setEnabled:canMoveNotes];

  collectionType = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
  if (collectionType > 2)
  {
    if ((collectionType - 3) > 1)
    {
      return;
    }
  }

  else if (collectionType)
  {
    if (collectionType != 1)
    {
      if (collectionType != 2)
      {
        return;
      }

      isEditing = [(ICNoteBrowseNavigationItemConfiguration *)self noteCount]!= 0;
      goto LABEL_8;
    }

    if ([(ICNoteBrowseNavigationItemConfiguration *)self isTrashFolder])
    {
      isEditing = 1;
      goto LABEL_8;
    }
  }

  isEditing = [(ICNoteBrowseNavigationItemConfiguration *)self isEditing];
LABEL_8:
  editBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
  [editBarButtonItem setEnabled:isEditing];
}

- (void)updateMenus
{
  collectionType = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
  if (collectionType <= 1)
  {
    if (collectionType)
    {
      if (collectionType != 1)
      {
        return;
      }

      dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      actionBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [dataSource noteBrowseNavigationItemConfigurationNoteContainerActionMenu:self actionBarButtonItem:actionBarButtonItem];
      goto LABEL_11;
    }
  }

  else if (collectionType != 2)
  {
    if (collectionType == 3)
    {
      dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      actionBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [dataSource noteBrowseNavigationItemConfigurationQueryActionMenu:self actionBarButtonItem:actionBarButtonItem];
    }

    else
    {
      if (collectionType != 4)
      {
        return;
      }

      dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      actionBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [dataSource noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:self actionBarButtonItem:actionBarButtonItem];
    }

LABEL_11:
    v6 = v5;
    actionBarButtonItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
    [actionBarButtonItem2 setMenu:v6];

    goto LABEL_12;
  }

  dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
  [dataSource setMenu:0];
LABEL_12:
}

- (void)updateTitles
{
  presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  splitViewControllerLayoutEnvironment = [traitCollection splitViewControllerLayoutEnvironment];

  navigationTitle = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  navigationItem = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [navigationItem setTitle:navigationTitle];

  navigationTitle2 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  v9 = [navigationTitle2 length];
  if (splitViewControllerLayoutEnvironment == 1 || v9 == 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  navigationItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:v11];

  selectedNoteCount = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v14 = +[NSBundle mainBundle];
  v15 = v14;
  if (selectedNoteCount)
  {
    v16 = @"Move";
  }

  else
  {
    v16 = @"Move All";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_100661CF0 table:0];
  moveBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
  [moveBarButtonItem setTitle:v17];

  selectedNoteCount2 = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v20 = +[NSBundle mainBundle];
  v24 = v20;
  if (selectedNoteCount2)
  {
    v21 = @"Delete";
  }

  else
  {
    v21 = @"Delete All";
  }

  v22 = [v20 localizedStringForKey:v21 value:&stru_100661CF0 table:0];
  deleteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
  [deleteBarButtonItem setTitle:v22];
}

- (void)updateToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isCompactWidth = [(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth];
  v6 = +[UIBarButtonItem flexibleSpaceItem];
  navigationController = [(ICNoteBrowseNavigationItemConfiguration *)self navigationController];
  if ([(ICNoteBrowseNavigationItemConfiguration *)self isEditing])
  {
    canAssignTags = [(ICNoteBrowseNavigationItemConfiguration *)self canAssignTags];
    presentingViewController = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
    moveBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
    v11 = moveBarButtonItem;
    if (canAssignTags)
    {
      v34[0] = moveBarButtonItem;
      v34[1] = v6;
      tagsBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self tagsBarButtonItem];
      v34[2] = tagsBarButtonItem;
      v34[3] = v6;
      deleteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
      v34[4] = deleteBarButtonItem;
      v14 = [NSArray arrayWithObjects:v34 count:5];
      [presentingViewController setToolbarItems:v14 animated:animatedCopy];
    }

    else
    {
      v33[0] = moveBarButtonItem;
      v33[1] = v6;
      tagsBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
      v33[2] = tagsBarButtonItem;
      deleteBarButtonItem = [NSArray arrayWithObjects:v33 count:3];
      [presentingViewController setToolbarItems:deleteBarButtonItem animated:animatedCopy];
    }

    [navigationController setToolbarHidden:0 animated:animatedCopy];
    goto LABEL_30;
  }

  if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 || [(ICNoteBrowseNavigationItemConfiguration *)self isShowingEmptyState])
  {
    v15 = ![(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight];
  }

  else
  {
    v15 = 0;
  }

  if (_UISolariumEnabled())
  {
    v16 = 0;
  }

  else
  {
    navigationItem = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    searchController = [navigationItem searchController];
    if ([searchController isActive])
    {
      v16 = 1;
    }

    else
    {
      v16 = (isCompactWidth ^ 1) & v15;
    }
  }

  [navigationController setToolbarHidden:v16 animated:animatedCopy];
  v19 = +[NSMutableArray array];
  if (_UISolariumEnabled() && (-[ICNoteBrowseNavigationItemConfiguration navigationController](self, "navigationController"), v20 = objc_claimAutoreleasedReturnValue(), [v20 traitCollection], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "userInterfaceIdiom"), v21, v20, !v22))
  {
    navigationItem2 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    searchController2 = [navigationItem2 searchController];

    navigationItem3 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    searchBarPlacementBarButtonItem = [navigationItem3 searchBarPlacementBarButtonItem];

    searchBar = [searchController2 searchBar];
    [searchBar setShowsCancelButton:1];

    [searchController2 setAutomaticallyShowsCancelButton:1];
    [v19 ic_addNonNilObject:searchBarPlacementBarButtonItem];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      goto LABEL_22;
    }

    searchController2 = +[UIBarButtonItem flexibleSpaceItem];
    [v19 addObject:searchController2];
  }

LABEL_22:
  if ((v16 & 1) == 0 && (_UISolariumEnabled() & 1) == 0)
  {
    summaryBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self summaryBarButtonItem];
    [v19 ic_addNonNilObject:summaryBarButtonItem];
  }

  v29 = +[UIBarButtonItem flexibleSpaceItem];
  [v19 addObject:v29];

  if ((isCompactWidth & 1) != 0 || [(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && [(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight])
  {
    addNoteBarButtonItem = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
    [v19 addObject:addNoteBarButtonItem];
  }

  presentingViewController2 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v32 = [v19 copy];
  [presentingViewController2 setToolbarItems:v32 animated:animatedCopy];

LABEL_30:
}

- (void)addNoteAction:(id)action event:(id)event
{
  eventCopy = event;
  actionCopy = action;
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [delegate noteBrowseNavigationItemConfiguration:self shouldAddNoteFromBarButtonItem:actionCopy event:eventCopy];
}

- (void)backAction:(id)action
{
  navigationController = [(ICNoteBrowseNavigationItemConfiguration *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)debugAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [delegate noteBrowseNavigationItemConfiguration:self shouldShowDebugViewControllerFromBarButtonItem:actionCopy];
}

- (void)deleteAction:(id)action
{
  actionCopy = action;
  selectedNoteCount = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  v7 = delegate;
  if (selectedNoteCount)
  {
    [delegate noteBrowseNavigationItemConfiguration:self shouldDeleteSelectedFromBarButtonItem:actionCopy];
  }

  else
  {
    [delegate noteBrowseNavigationItemConfiguration:self shouldDeleteAllFromBarButtonItem:actionCopy];
  }
}

- (void)lockAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [delegate noteBrowseNavigationItemConfiguration:self shouldLockFromBarButtonItem:actionCopy];
}

- (void)moveAction:(id)action
{
  actionCopy = action;
  selectedNoteCount = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  v7 = delegate;
  if (selectedNoteCount)
  {
    [delegate noteBrowseNavigationItemConfiguration:self shouldMoveSelectedFromBarButtonItem:actionCopy];
  }

  else
  {
    [delegate noteBrowseNavigationItemConfiguration:self shouldMoveAllFromBarButtonItem:actionCopy];
  }
}

- (void)shareAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [delegate noteBrowseNavigationItemConfiguration:self shouldShareFromBarButtonItem:actionCopy];
}

- (void)tagsAction:(id)action
{
  actionCopy = action;
  delegate = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [delegate noteBrowseNavigationItemConfiguration:self shouldAssignTagsFromBarButtonItem:actionCopy];
}

- (void)cancelSearchAction:(id)action
{
  navigationItem = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];
}

- (UIViewController)presentingViewController
{
  dataSource = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [dataSource noteBrowseNavigationItemConfigurationPresentingViewController:self];

  return v4;
}

- (unint64_t)hash
{
  v35 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self canAddNote]];
  v36[0] = v35;
  v34 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self canAssignTags]];
  v36[1] = v34;
  v33 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self canDeleteNotes]];
  v36[2] = v33;
  v32 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self canMoveNotes]];
  v36[3] = v32;
  v31 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self canBeShared]];
  v36[4] = v31;
  v30 = [NSNumber numberWithUnsignedInteger:[(ICNoteBrowseNavigationItemConfiguration *)self collectionType]];
  v36[5] = v30;
  v29 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isAuthenticated]];
  v36[6] = v29;
  v28 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth]];
  v36[7] = v28;
  v27 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight]];
  v36[8] = v27;
  v26 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isEditing]];
  v36[9] = v26;
  v25 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isShowingEmptyState]];
  v36[10] = v25;
  v24 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isShared]];
  v36[11] = v24;
  v23 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self isTrashFolder]];
  v36[12] = v23;
  v22 = [NSNumber numberWithInteger:[(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]];
  v36[13] = v22;
  v3 = [NSNumber numberWithUnsignedInteger:[(ICNoteBrowseNavigationItemConfiguration *)self noteCount]];
  v36[14] = v3;
  v4 = [NSNumber numberWithUnsignedInteger:[(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount]];
  v36[15] = v4;
  v5 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self usesCustomBackButton]];
  v36[16] = v5;
  v6 = [NSNumber numberWithBool:[(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems]];
  v36[17] = v6;
  v7 = [NSArray arrayWithObjects:v36 count:18];
  if ([v7 count])
  {
    v8 = 0;
    v9 = 0;
    v10 = 31;
    while (1)
    {
      v11 = [v7 objectAtIndexedSubscript:v8];
      if (([v11 integerValue] & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 += v10 + v10 * [v11 unsignedIntegerValue];

      ++v8;
      v10 += 31;
      if (v8 >= [v7 count])
      {
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
LABEL_8:

  navigationTitle = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  v20 = sub_10008A5D0(v9, v13, v14, v15, v16, v17, v18, v19, navigationTitle);

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(ICNoteBrowseNavigationItemConfiguration *)self hash];
    v7 = v6 == [(ICNoteBrowseNavigationItemConfiguration *)v5 hash];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ICNoteBrowseNavigationItemConfigurationDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (ICNoteBrowseNavigationItemConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
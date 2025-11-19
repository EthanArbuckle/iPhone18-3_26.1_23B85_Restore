@interface ICNoteBrowseNavigationItemConfiguration
- (BOOL)isEditing;
- (BOOL)isEqual:(id)a3;
- (BOOL)updateAnimated:(BOOL)a3;
- (ICNoteBrowseNavigationItemConfiguration)initWithDataSource:(id)a3 delegate:(id)a4;
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
- (void)addNoteAction:(id)a3 event:(id)a4;
- (void)backAction:(id)a3;
- (void)cancelSearchAction:(id)a3;
- (void)debugAction:(id)a3;
- (void)deleteAction:(id)a3;
- (void)lockAction:(id)a3;
- (void)moveAction:(id)a3;
- (void)reset;
- (void)shareAction:(id)a3;
- (void)tagsAction:(id)a3;
- (void)updateEnabled;
- (void)updateMenus;
- (void)updateNavigationBarAnimated:(BOOL)a3;
- (void)updateTitles;
- (void)updateToolbarAnimated:(BOOL)a3;
@end

@implementation ICNoteBrowseNavigationItemConfiguration

- (ICNoteBrowseNavigationItemConfiguration)initWithDataSource:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICNoteBrowseNavigationItemConfiguration;
  v8 = [(ICNoteBrowseNavigationItemConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v9->_noteContainerViewMode = -1;
    v9->_collectionType = 0;
  }

  return v9;
}

- (UINavigationItem)navigationItem
{
  v2 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 navigationItem];

  return v3;
}

- (ICToolbarSummaryView)summaryView
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteBrowseNavigationitemConfigurationNavigationToolbarSummaryView:self];

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
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteBrowseNavigationItemConfigurationCollaborationBarButtonItem:self];

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
    v4 = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = v5;
    if (v4)
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
  v2 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 editButtonItem];

  return v3;
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
    v4 = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = v5;
    if (v4)
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
    v3 = [(ICNoteBrowseNavigationItemConfiguration *)self summaryView];
    [(UIBarButtonItem *)self->_summaryBarButtonItem setCustomView:v3];
  }

  else
  {
    v4 = [UIBarButtonItem alloc];
    v3 = [(ICNoteBrowseNavigationItemConfiguration *)self summaryView];
    v5 = [v4 initWithCustomView:v3];
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
    v4 = [(ICNoteBrowseNavigationItemConfiguration *)self usesPlainBarButtonItems];
    v5 = [UIBarButtonItem alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Tags" value:&stru_100661CF0 table:0];
    if (v4)
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

- (BOOL)updateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self needsUpdate];
  if (v5)
  {
    [(ICNoteBrowseNavigationItemConfiguration *)self updateNavigationBarAnimated:v3];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateToolbarAnimated:v3];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateTitles];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateMenus];
    [(ICNoteBrowseNavigationItemConfiguration *)self updateEnabled];
    v7.receiver = self;
    v7.super_class = ICNoteBrowseNavigationItemConfiguration;
    LOBYTE(v5) = [(ICNoteBrowseNavigationItemConfiguration *)&v7 updateAnimated:v3];
  }

  return v5;
}

- (BOOL)isEditing
{
  v2 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 isEditing];

  return v3;
}

- (UINavigationController)navigationController
{
  v2 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v3 = [v2 navigationController];

  return v3;
}

- (NSString)navigationTitle
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteBrowseNavigationItemConfigurationNavigationTitle:self];

  return v4;
}

- (void)updateNavigationBarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  v6 = [v5 searchController];
  if (![v6 isActive])
  {

LABEL_7:
    v8 = [(ICNoteBrowseNavigationItemConfiguration *)self isEditing];
    v9 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v10 = v9;
    if (v8)
    {
      [v9 setHidesBackButton:1 animated:v3];

      v11 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      v12 = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
      v48 = v12;
      v13 = [NSArray arrayWithObjects:&v48 count:1];
      [v11 setRightBarButtonItems:v13 animated:v3];

LABEL_44:
      return;
    }

    [v9 setHidesBackButton:-[ICNoteBrowseNavigationItemConfiguration usesCustomBackButton](self animated:{"usesCustomBackButton"), v3}];

    if (-[ICNoteBrowseNavigationItemConfiguration usesCustomBackButton](self, "usesCustomBackButton") && (-[ICNoteBrowseNavigationItemConfiguration navigationController](self, "navigationController"), v14 = objc_claimAutoreleasedReturnValue(), [v14 viewControllers], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16 >= 2))
    {
      v17 = [UIBarButtonItemGroup alloc];
      v18 = [(ICNoteBrowseNavigationItemConfiguration *)self customBackBarButtonItem];
      v47 = v18;
      v19 = [NSArray arrayWithObjects:&v47 count:1];
      v20 = [v17 initWithBarButtonItems:v19 representativeItem:0];

      v46 = v20;
      v21 = [NSArray arrayWithObjects:&v46 count:1];
      v22 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      [v22 setLeadingItemGroups:v21];
    }

    else
    {
      v20 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      [v20 setLeadingItemGroups:&__NSArray0__struct];
    }

    v11 = +[NSMutableArray array];
    v23 = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
    if (v23 - 3 < 2)
    {
      v24 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      [v11 addObject:v24];

      if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && ![(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth])
      {
        v25 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [v11 insertObject:v25 atIndex:0];
      }

      if (![(ICNoteBrowseNavigationItemConfiguration *)self showsCalculatorModeButton])
      {
        goto LABEL_37;
      }

      v26 = +[UIBarButtonItem flexibleSpaceItem];
      [v11 ic_addNonNilObject:v26];
      v27 = [(ICNoteBrowseNavigationItemConfiguration *)self calculatorModeItem];
      [v11 ic_addNonNilObject:v27];
    }

    else
    {
      if (v23 == 2)
      {
        v28 = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
      }

      else
      {
        if (v23 != 1)
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
        [v11 ic_addNonNilObject:v29];

        if (![(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth])
        {
          if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && ![(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight])
          {
            v30 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
            [v11 ic_insertNonNilObject:v30 atIndex:0];

            if ([(ICNoteBrowseNavigationItemConfiguration *)self isAuthenticated])
            {
              v31 = [(ICNoteBrowseNavigationItemConfiguration *)self lockBarButtonItem];
              [v11 ic_addNonNilObject:v31];
            }
          }

          if ([(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]!= 1)
          {
            goto LABEL_37;
          }
        }

        if ([(ICNoteBrowseNavigationItemConfiguration *)self canBeShared])
        {
          v32 = [(ICNoteBrowseNavigationItemConfiguration *)self shareBarButtonItem];
          [v11 ic_addNonNilObject:v32];
        }

        if (![(ICNoteBrowseNavigationItemConfiguration *)self isShared])
        {
          goto LABEL_37;
        }

        v28 = [(ICNoteBrowseNavigationItemConfiguration *)self collaborationBarButtonItem];
      }

      v26 = v28;
      [v11 ic_addNonNilObject:v28];
    }

LABEL_37:
    if (_UISolariumEnabled())
    {
      v33 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
      v34 = [v11 containsObject:v33];

      if (v34)
      {
        v35 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [v11 removeObject:v35];

        v36 = [UIBarButtonItem fixedSpaceItemOfWidth:0.0];
        [v11 addObject:v36];

        v37 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
        [v11 addObject:v37];
      }
    }

    v38 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    [v38 _setSupportsTwoLineLargeTitles:1];

    v39 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v40 = [v11 copy];
    [v39 setRightBarButtonItems:v40 animated:v3];

    LODWORD(v40) = [(ICNoteBrowseNavigationItemConfiguration *)self showsDebugItem];
    v41 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v42 = v41;
    if (v40)
    {
      v43 = [(ICNoteBrowseNavigationItemConfiguration *)self debugBarButtonItem];
      [v42 setLeftBarButtonItem:v43 animated:v3];

      v41 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
      v42 = v41;
      v44 = 1;
    }

    else
    {
      v44 = 0;
    }

    [v41 setLeftItemsSupplementBackButton:v44];

    goto LABEL_44;
  }

  v7 = [(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode];

  if (v7 != 1)
  {
    goto LABEL_7;
  }

  v45 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [v45 setRightBarButtonItems:&__NSArray0__struct animated:v3];
}

- (void)updateEnabled
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self canAddNote];
  v4 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
  [v4 setEnabled:v3];

  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self canDeleteNotes];
  v6 = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
  [v6 setEnabled:v5];

  v7 = [(ICNoteBrowseNavigationItemConfiguration *)self canMoveNotes];
  v8 = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
  [v8 setEnabled:v7];

  v9 = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
  if (v9 > 2)
  {
    if ((v9 - 3) > 1)
    {
      return;
    }
  }

  else if (v9)
  {
    if (v9 != 1)
    {
      if (v9 != 2)
      {
        return;
      }

      v10 = [(ICNoteBrowseNavigationItemConfiguration *)self noteCount]!= 0;
      goto LABEL_8;
    }

    if ([(ICNoteBrowseNavigationItemConfiguration *)self isTrashFolder])
    {
      v10 = 1;
      goto LABEL_8;
    }
  }

  v10 = [(ICNoteBrowseNavigationItemConfiguration *)self isEditing];
LABEL_8:
  v11 = [(ICNoteBrowseNavigationItemConfiguration *)self editBarButtonItem];
  [v11 setEnabled:v10];
}

- (void)updateMenus
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self collectionType];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      v8 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      v4 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [v8 noteBrowseNavigationItemConfigurationNoteContainerActionMenu:self actionBarButtonItem:v4];
      goto LABEL_11;
    }
  }

  else if (v3 != 2)
  {
    if (v3 == 3)
    {
      v8 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      v4 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [v8 noteBrowseNavigationItemConfigurationQueryActionMenu:self actionBarButtonItem:v4];
    }

    else
    {
      if (v3 != 4)
      {
        return;
      }

      v8 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
      v4 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
      v5 = [v8 noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:self actionBarButtonItem:v4];
    }

LABEL_11:
    v6 = v5;
    v7 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
    [v7 setMenu:v6];

    goto LABEL_12;
  }

  v8 = [(ICNoteBrowseNavigationItemConfiguration *)self actionBarButtonItem];
  [v8 setMenu:0];
LABEL_12:
}

- (void)updateTitles
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 splitViewControllerLayoutEnvironment];

  v6 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  v7 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [v7 setTitle:v6];

  v8 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  v9 = [v8 length];
  if (v5 == 1 || v9 == 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  [v12 setLargeTitleDisplayMode:v11];

  v13 = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v14 = +[NSBundle mainBundle];
  v15 = v14;
  if (v13)
  {
    v16 = @"Move";
  }

  else
  {
    v16 = @"Move All";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_100661CF0 table:0];
  v18 = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
  [v18 setTitle:v17];

  v19 = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v20 = +[NSBundle mainBundle];
  v24 = v20;
  if (v19)
  {
    v21 = @"Delete";
  }

  else
  {
    v21 = @"Delete All";
  }

  v22 = [v20 localizedStringForKey:v21 value:&stru_100661CF0 table:0];
  v23 = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
  [v23 setTitle:v22];
}

- (void)updateToolbarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self isCompactWidth];
  v6 = +[UIBarButtonItem flexibleSpaceItem];
  v7 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationController];
  if ([(ICNoteBrowseNavigationItemConfiguration *)self isEditing])
  {
    v8 = [(ICNoteBrowseNavigationItemConfiguration *)self canAssignTags];
    v9 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
    v10 = [(ICNoteBrowseNavigationItemConfiguration *)self moveBarButtonItem];
    v11 = v10;
    if (v8)
    {
      v34[0] = v10;
      v34[1] = v6;
      v12 = [(ICNoteBrowseNavigationItemConfiguration *)self tagsBarButtonItem];
      v34[2] = v12;
      v34[3] = v6;
      v13 = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
      v34[4] = v13;
      v14 = [NSArray arrayWithObjects:v34 count:5];
      [v9 setToolbarItems:v14 animated:v3];
    }

    else
    {
      v33[0] = v10;
      v33[1] = v6;
      v12 = [(ICNoteBrowseNavigationItemConfiguration *)self deleteBarButtonItem];
      v33[2] = v12;
      v13 = [NSArray arrayWithObjects:v33 count:3];
      [v9 setToolbarItems:v13 animated:v3];
    }

    [v7 setToolbarHidden:0 animated:v3];
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
    v17 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v18 = [v17 searchController];
    if ([v18 isActive])
    {
      v16 = 1;
    }

    else
    {
      v16 = (v5 ^ 1) & v15;
    }
  }

  [v7 setToolbarHidden:v16 animated:v3];
  v19 = +[NSMutableArray array];
  if (_UISolariumEnabled() && (-[ICNoteBrowseNavigationItemConfiguration navigationController](self, "navigationController"), v20 = objc_claimAutoreleasedReturnValue(), [v20 traitCollection], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "userInterfaceIdiom"), v21, v20, !v22))
  {
    v24 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v23 = [v24 searchController];

    v25 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
    v26 = [v25 searchBarPlacementBarButtonItem];

    v27 = [v23 searchBar];
    [v27 setShowsCancelButton:1];

    [v23 setAutomaticallyShowsCancelButton:1];
    [v19 ic_addNonNilObject:v26];
  }

  else
  {
    if (_UISolariumEnabled())
    {
      goto LABEL_22;
    }

    v23 = +[UIBarButtonItem flexibleSpaceItem];
    [v19 addObject:v23];
  }

LABEL_22:
  if ((v16 & 1) == 0 && (_UISolariumEnabled() & 1) == 0)
  {
    v28 = [(ICNoteBrowseNavigationItemConfiguration *)self summaryBarButtonItem];
    [v19 ic_addNonNilObject:v28];
  }

  v29 = +[UIBarButtonItem flexibleSpaceItem];
  [v19 addObject:v29];

  if ((v5 & 1) != 0 || [(ICNoteBrowseNavigationItemConfiguration *)self noteContainerViewMode]== 1 && [(ICNoteBrowseNavigationItemConfiguration *)self isCompactHeight])
  {
    v30 = [(ICNoteBrowseNavigationItemConfiguration *)self addNoteBarButtonItem];
    [v19 addObject:v30];
  }

  v31 = [(ICNoteBrowseNavigationItemConfiguration *)self presentingViewController];
  v32 = [v19 copy];
  [v31 setToolbarItems:v32 animated:v3];

LABEL_30:
}

- (void)addNoteAction:(id)a3 event:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [v8 noteBrowseNavigationItemConfiguration:self shouldAddNoteFromBarButtonItem:v7 event:v6];
}

- (void)backAction:(id)a3
{
  v4 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)debugAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [v5 noteBrowseNavigationItemConfiguration:self shouldShowDebugViewControllerFromBarButtonItem:v4];
}

- (void)deleteAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v6 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 noteBrowseNavigationItemConfiguration:self shouldDeleteSelectedFromBarButtonItem:v4];
  }

  else
  {
    [v6 noteBrowseNavigationItemConfiguration:self shouldDeleteAllFromBarButtonItem:v4];
  }
}

- (void)lockAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [v5 noteBrowseNavigationItemConfiguration:self shouldLockFromBarButtonItem:v4];
}

- (void)moveAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self selectedNoteCount];
  v6 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  v7 = v6;
  if (v5)
  {
    [v6 noteBrowseNavigationItemConfiguration:self shouldMoveSelectedFromBarButtonItem:v4];
  }

  else
  {
    [v6 noteBrowseNavigationItemConfiguration:self shouldMoveAllFromBarButtonItem:v4];
  }
}

- (void)shareAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [v5 noteBrowseNavigationItemConfiguration:self shouldShareFromBarButtonItem:v4];
}

- (void)tagsAction:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteBrowseNavigationItemConfiguration *)self delegate];
  [v5 noteBrowseNavigationItemConfiguration:self shouldAssignTagsFromBarButtonItem:v4];
}

- (void)cancelSearchAction:(id)a3
{
  v4 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationItem];
  v3 = [v4 searchController];
  [v3 setActive:0];
}

- (UIViewController)presentingViewController
{
  v3 = [(ICNoteBrowseNavigationItemConfiguration *)self dataSource];
  v4 = [v3 noteBrowseNavigationItemConfigurationPresentingViewController:self];

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

  v12 = [(ICNoteBrowseNavigationItemConfiguration *)self navigationTitle];
  v20 = sub_10008A5D0(v9, v13, v14, v15, v16, v17, v18, v19, v12);

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
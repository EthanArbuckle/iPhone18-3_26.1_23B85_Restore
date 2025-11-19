@interface THNotesViewControllerPad
- (BOOL)p_detailsViewIsCompactWidth;
- (BOOL)p_isCollapsed;
- (BOOL)p_isEditing;
- (BOOL)p_isToolbarHidden:(BOOL)a3;
- (BOOL)p_studyButtonShouldBeEnabled;
- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5;
- (THNotesViewControllerPad)initWithNibName:(id)a3 bundle:(id)a4;
- (double)cellMargin;
- (double)colorBarHorizontalInset;
- (double)dateLabelHorizontalInset;
- (double)noteLabelHorizontalInset;
- (id)p_noteCountLabelTextForChapter:(id)a3;
- (id)p_textForSelectAllButton:(int64_t)a3;
- (id)sidebarContentViewController:(id)a3 viewControllerForSectionProvider:(id)a4;
- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4;
- (int64_t)p_interfaceOrientation;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)cleanup;
- (void)dealloc;
- (void)endEditingDidDelete:(BOOL)a3;
- (void)finishedDismissing;
- (void)handleDone:(id)a3;
- (void)handleEdit:(id)a3;
- (void)handleSelectAll:(id)a3;
- (void)handleStudy:(id)a3;
- (void)hideForEnterStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)hideWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)p_configureToolbarsForEditing:(BOOL)a3 collapsed:(BOOL)a4;
- (void)p_layoutViewsForOrientation:(int64_t)a3 duration:(double)a4;
- (void)p_returnToOriginalViewController;
- (void)p_setDeselectAllButtonText;
- (void)p_setSelectAllButtonText;
- (void)p_showCorrectView:(BOOL)a3;
- (void)p_showNoResultsView:(BOOL)a3 firstLaunch:(BOOL)a4 allowPush:(BOOL)a5;
- (void)p_updateChapterHeader;
- (void)p_updateEditButtons;
- (void)sectionProvidersDidChange;
- (void)showForExitStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)showWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5;
- (void)sidebarContentViewController:(id)a3 willSelectSectionProvider:(id)a4;
- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4;
- (void)tableViewController:(id)a3 didLoadContentNode:(id)a4;
- (void)tableViewController:(id)a3 navigateToNote:(id)a4;
- (void)tableViewController:(id)a3 searchBookForText:(id)a4;
- (void)tableViewControllerDidChangeSelection:(id)a3;
- (void)tableViewControllerDidDeleteNote:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation THNotesViewControllerPad

- (THNotesViewControllerPad)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = THNotesViewControllerPad;
  v4 = [(THNotesViewController *)&v6 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    [(THNotesViewControllerPad *)v4 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)dealloc
{
  [(THNotesViewControllerPad *)self cleanup];
  v3.receiver = self;
  v3.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v3 dealloc];
}

- (void)cleanup
{
  self->_masterNavigationController = 0;

  self->_detailNavigationController = 0;
  self->_detailParentViewController = 0;

  self->_actionButtonItem = 0;
  self->_deleteButtonItem = 0;

  self->_selectAllButtonItem = 0;
  self->_studyButtonItem = 0;

  self->_selectButtonItem = 0;
  [(UISplitViewController *)self->_notesSplitViewController setDelegate:0];

  self->_notesSplitViewController = 0;
  self->_noSearchResultsViewController = 0;

  self->_pendingBookSearchText = 0;
  v3.receiver = self;
  v3.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v3 cleanup];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v6 viewDidLoad];
  v8 = [(THNotesViewController *)self notesDetailViewController];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setViewControllers:[NSArray arrayWithObjects:&v8 count:1]];
  v3 = [(THNotesViewControllerPad *)self notesSplitViewController];
  v4 = [(UISplitViewController *)v3 view];
  [-[THNotesViewControllerPad view](self "view")];
  [v4 setFrame:?];
  [v4 setBackgroundColor:{+[UIColor bc_booksBackground](UIColor, "bc_booksBackground")}];
  [(THNotesViewControllerPad *)self addChildViewController:v3];
  [-[THNotesViewControllerPad view](self "view")];
  v7[0] = [(THNotesViewControllerPad *)self masterNavigationController];
  v7[1] = [(THNotesViewControllerPad *)self detailNavigationController];
  [(UISplitViewController *)v3 setViewControllers:[NSArray arrayWithObjects:v7 count:2]];
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setDelegate:self];
  if (!self->_noSearchResultsViewController)
  {
    self->_noSearchResultsViewController = objc_alloc_init(THNotesNoSearchResultsViewController);
    [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] addChildViewController:[(THNotesViewControllerPad *)self noSearchResultsViewController]];
    v5 = [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController view];
    [-[THNotesDetailTableViewController view](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
    [v5 setHidden:1];
  }

  -[THNotesSidebarViewController setTitle:](-[THNotesViewController notesSidebarViewController](self, "notesSidebarViewController"), "setTitle:", [THBundle() localizedStringForKey:@"Chapters" value:&stru_471858 table:0]);
  [(THNotesViewControllerPad *)self p_layoutViewsForOrientation:[(THNotesViewControllerPad *)self p_interfaceOrientation] duration:0.0];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = THNotesViewControllerPad;
  [(THNotesViewControllerPad *)&v13 viewWillLayoutSubviews];
  [-[THNotesDetailTableViewController view](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (([(THNotesViewControllerPad *)self im_isCompactWidth]& 1) != 0 || [(THNotesViewControllerPad *)self im_isCompactHeight])
  {
    [(UIToolbar *)[(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] toolbar] bounds];
    Height = CGRectGetHeight(v14);
    [-[UINavigationController view](-[THNotesViewControllerPad detailNavigationController](self "detailNavigationController")];
    v10 = v10 - (Height + v12);
  }

  [-[THNotesNoSearchResultsViewController view](-[THNotesViewControllerPad noSearchResultsViewController](self "noSearchResultsViewController")];
}

- (BOOL)p_isEditing
{
  v2 = [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView];

  return [(UITableView *)v2 isEditing];
}

- (BOOL)p_isCollapsed
{
  v2 = [(THNotesViewControllerPad *)self notesSplitViewController];

  return [(UISplitViewController *)v2 isCollapsed];
}

- (BOOL)p_isToolbarHidden:(BOOL)a3
{
  if (([(THNotesViewControllerPad *)self im_isCompactWidth]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(THNotesViewControllerPad *)self im_isCompactHeight]^ 1;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 viewWillAppear:a3];
  [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController] setPreferredDisplayMode:0];
  v4 = [(THNotesViewControllerPad *)self p_isCollapsed];
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:0 collapsed:v4];
  [(THNotesViewControllerPad *)self p_showCorrectView:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(THNotesViewControllerPad *)self isViewLoaded])
  {
    v5 = [(THNotesViewControllerPad *)self view];
    v6 = *&CGAffineTransformIdentity.c;
    v11[0] = *&CGAffineTransformIdentity.a;
    v11[1] = v6;
    v11[2] = *&CGAffineTransformIdentity.tx;
    [v5 setTransform:v11];
  }

  if ([(THNotesViewController *)self shouldDismissAfterRotate])
  {
    [(THNotesViewController *)self setShouldDismissAfterRotate:0];
    v7 = [(THNotesViewControllerPad *)self notesSplitViewController];
    [-[UISplitViewController view](v7 "view")];
    [(UISplitViewController *)v7 viewWillTransitionToSize:[(THNotesViewControllerPad *)self transitionCoordinator] withTransitionCoordinator:v8, v9];
    [(THNotesViewControllerPad *)self p_layoutViewsForOrientation:[(THNotesViewControllerPad *)self p_interfaceOrientation] duration:0.0];
  }

  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] cancelSearch];
  v10.receiver = self;
  v10.super_class = THNotesViewControllerPad;
  [(THNotesViewControllerPad *)&v10 viewDidDisappear:v3];
}

- (int64_t)p_interfaceOrientation
{
  v2 = [-[THNotesViewControllerPad bc_windowForViewController](self "bc_windowForViewController")];

  return [v2 interfaceOrientation];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(THNotesViewControllerPad *)self p_isCollapsed:a3];
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
  v6 = [(THNotesViewControllerPad *)self isEditing];

  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:v6 collapsed:v5];
}

- (void)sectionProvidersDidChange
{
  if ([(THNotesViewControllerPad *)self p_isEditing])
  {
    [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] deselectAllNotes];
    [(THNotesViewControllerPad *)self p_setSelectAllButtonText];
    [(THNotesViewControllerPad *)self p_updateEditButtons];
  }

  [(THNotesViewControllerPad *)self p_updateChapterHeader];
  [(UIBarButtonItem *)self->_studyButtonItem setEnabled:[(THNotesViewControllerPad *)self p_studyButtonShouldBeEnabled]];

  [(THNotesViewControllerPad *)self p_showCorrectView:0];
}

- (void)p_showNoResultsView:(BOOL)a3 firstLaunch:(BOOL)a4 allowPush:(BOOL)a5
{
  v5 = a5;
  if (a3)
  {
    v7 = a4;
    [(UIView *)[(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController firstLaunchView] setHidden:!a4];
    [(UIView *)[(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController noResultsView] setHidden:v7];
    v8 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
    if (!v7)
    {
      -[THNotesNoSearchResultsViewController setMessageType:](self->_noSearchResultsViewController, "setMessageType:", [-[THNotesViewController searchText](self "searchText")] == 0);
      [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setChapterIndex:v8];
      [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setResults:[(THNotesViewController *)self numberOfNotes]];
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:v8];
    }

    v11 = ![v9 hasGlossaryTerms] || !-[THNotesViewControllerPad p_studyButtonShouldBeEnabled](self, "p_studyButtonShouldBeEnabled");
    [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setFooterType:v11];
    [(UITableView *)[(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView] setHidden:1];
    v10 = [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController view];
  }

  else
  {
    if ([(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController isViewLoaded:a3])
    {
      [-[THNotesNoSearchResultsViewController view](self->_noSearchResultsViewController "view")];
    }

    v10 = [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView];
  }

  [(UITableView *)v10 setHidden:0];
  if (v5)
  {
    if ([(THNotesViewControllerPad *)self p_isCollapsed])
    {
      v12 = [(THNotesViewControllerPad *)self masterNavigationController];
      v13 = [(THNotesViewControllerPad *)self detailNavigationController];
      if ([(UINavigationController *)v12 topViewController]!= v13)
      {
        v14 = [(THNotesViewControllerPad *)self notesSplitViewController];

        [(UISplitViewController *)v14 showDetailViewController:v13 sender:0];
      }
    }
  }
}

- (void)p_configureToolbarsForEditing:(BOOL)a3 collapsed:(BOOL)a4
{
  v42 = a4;
  v4 = a3;

  self->_actionButtonItem = 0;
  self->_deleteButtonItem = 0;
  p_selectAllButtonItem = &self->_selectAllButtonItem;

  self->_selectAllButtonItem = 0;
  p_studyButtonItem = &self->_studyButtonItem;

  self->_studyButtonItem = 0;
  p_selectButtonItem = &self->_selectButtonItem;

  self->_selectButtonItem = 0;
  v44 = [(THNotesViewController *)self notesSidebarViewController];
  v9 = [(THNotesViewController *)self notesDetailViewController];
  v10 = [UIBarButtonItem alloc];
  v43 = v4;
  if (v4)
  {
    self->_actionButtonItem = [v10 initWithBarButtonSystemItem:9 target:self action:"handleAction:"];
    self->_deleteButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"handleDelete:"];
    v11 = [(THNotesDetailTableViewController *)v9 areAllNotesSelected];
    v12 = [[NSSet alloc] initWithObjects:{-[THNotesViewControllerPad p_textForSelectAllButton:](self, "p_textForSelectAllButton:", 0), -[THNotesViewControllerPad p_textForSelectAllButton:](self, "p_textForSelectAllButton:", 1), 0}];
    v13 = [UIBarButtonItem alloc];
    v14 = [(THNotesViewControllerPad *)self p_textForSelectAllButton:v11];
    v15 = v13;
    p_selectAllButtonItem = &self->_selectAllButtonItem;
    v16 = [v15 initWithTitle:v14 style:0 target:self action:"handleSelectAll:"];
    self->_selectAllButtonItem = v16;
    [(UIBarButtonItem *)v16 setPossibleTitles:v12];
    [(UIBarButtonItem *)self->_selectAllButtonItem setTag:v11];

    [(THNotesViewControllerPad *)self p_updateEditButtons];
  }

  else
  {
    *p_studyButtonItem = [v10 initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Study Cards" action:{&stru_471858, 0), 0, self, "handleStudy:"}];
    *p_selectButtonItem = [[UIBarButtonItem alloc] initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Select" action:{&stru_471858, 0), 0, self, "handleEdit:"}];
  }

  v17 = [-[THNotesDetailTableViewController navigationController](v9 "navigationController")];
  v18 = v44;
  v19 = [(THNotesSidebarViewController *)v44 navigationItem];
  if (v19)
  {
    v20 = v19;
    if (v42)
    {
      v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDone:"];
      [v20 setRightBarButtonItem:v21];
    }

    else
    {
      [v19 setRightBarButtonItem:0];
    }
  }

  v22 = [(THNotesDetailTableViewController *)v9 navigationItem];
  if (v22)
  {
    v23 = v22;
    v41 = v9;
    v24 = p_selectAllButtonItem;
    [v22 setLeftItemsSupplementBackButton:1];
    v25 = objc_alloc_init(NSMutableArray);
    v26 = objc_alloc_init(NSMutableArray);
    v27 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDone:"];
    [v26 addObject:v27];

    if (v43)
    {
      if (v17)
      {
        [v25 addObject:self->_actionButtonItem];
        v28 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
        [v28 setWidth:20.0];
        [v25 addObject:v28];

        p_deleteButtonItem = &self->_deleteButtonItem;
        v30 = v24;
LABEL_13:
        [v25 addObject:*p_deleteButtonItem];
        [v26 addObject:*v30];
      }
    }

    else
    {
      p_deleteButtonItem = &self->_studyButtonItem;
      v30 = &self->_selectButtonItem;
      if (v17)
      {
        goto LABEL_13;
      }
    }

    [v23 setLeftBarButtonItems:v25];
    [v23 setRightBarButtonItems:v26];

    v18 = v44;
    p_selectAllButtonItem = v24;
    v9 = v41;
  }

  v31 = objc_alloc_init(NSMutableArray);
  v32 = v31;
  if ((v17 & 1) == 0)
  {
    v33 = &self->_studyButtonItem;
    v34 = &self->_selectButtonItem;
    if (v43)
    {
      [v31 addObject:self->_actionButtonItem];
      v35 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:6 target:0 action:0];
      [v35 setWidth:20.0];
      [v32 addObject:v35];

      v33 = &self->_deleteButtonItem;
      v34 = p_selectAllButtonItem;
    }

    [v32 addObject:*v33];
    v36 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
    [v32 addObject:v36];

    [v32 addObject:*v34];
  }

  [(THNotesDetailTableViewController *)v9 setToolbarItems:v32];

  if (*p_studyButtonItem)
  {
    [*p_studyButtonItem setEnabled:{-[THNotesViewControllerPad p_studyButtonShouldBeEnabled](self, "p_studyButtonShouldBeEnabled")}];
  }

  if (*p_selectButtonItem)
  {
    v37 = [(THNotesSidebarViewController *)v18 providerIndex];
    v38 = v37 != 0x7FFFFFFFFFFFFFFFLL && [-[NSArray objectAtIndex:](-[THNotesViewController sectionProviders](self "sectionProviders")] != 0;
    [*p_selectButtonItem setEnabled:v38];
  }

  v39 = +[UIColor bc_booksKeyColor];
  v40 = [(THNotesViewControllerPad *)self view];

  [v40 setTintColor:v39];
}

- (void)p_layoutViewsForOrientation:(int64_t)a3 duration:(double)a4
{
  [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController:a3] setPreferredDisplayMode:0];

  [(THNotesViewControllerPad *)self p_updateEditButtons];
}

- (id)p_noteCountLabelTextForChapter:(id)a3
{
  if (![a3 needsMigration])
  {
    return +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%lu", [a3 annotationCount]);
  }

  return [NSString stringWithUTF8String:"…"];
}

- (void)p_updateChapterHeader
{
  v3 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:v3];
    if ([-[THNotesViewController searchText](self "searchText")])
    {
      v9 = [v8 annotationCount];
      if (v9 == &dword_0 + 1)
      {
        v10 = THBundle();
        v11 = @"1 Result";
        goto LABEL_13;
      }

      v5 = v9;
      if (v9)
      {
        v6 = THBundle();
        v7 = @"%lu Results";
        goto LABEL_15;
      }

LABEL_9:
      v10 = THBundle();
      v11 = @"No Results Found";
LABEL_13:
      v12 = [v10 localizedStringForKey:v11 value:&stru_471858 table:0];
      goto LABEL_16;
    }

LABEL_10:
    v10 = THBundle();
    v11 = @"My Notes";
    goto LABEL_13;
  }

  if (![-[THNotesViewController searchText](self "searchText")])
  {
    goto LABEL_10;
  }

  v4 = [(THNotesViewController *)self numberOfNotes];
  if (v4 == 1)
  {
    v10 = THBundle();
    v11 = @"All Chapters: 1 Result";
    goto LABEL_13;
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = THBundle();
  v7 = @"All Chapters: %lu Results";
LABEL_15:
  v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", [v6 localizedStringForKey:v7 value:&stru_471858 table:0], v5);
LABEL_16:
  v13 = v12;
  v14 = [(THNotesViewController *)self notesDetailViewController];

  [(THNotesDetailTableViewController *)v14 setTitle:v13];
}

- (void)endEditingDidDelete:(BOOL)a3
{
  v3 = a3;
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setEditing:0 animated:1];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:0 collapsed:[(THNotesViewControllerPad *)self p_isCollapsed]];
  if (v3)
  {

    [(THNotesViewController *)self noteWasDeleted];
  }
}

- (BOOL)p_studyButtonShouldBeEnabled
{
  if ([-[THNotesViewController searchText](self "searchText")])
  {
    return 0;
  }

  v3 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:v3];
  if ([v5 annotationCountForStudyCards])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 hasGlossaryTerms];
  }

  return [v5 shouldEnableStudyButton] & v6;
}

- (void)p_showCorrectView:(BOOL)a3
{
  v3 = a3;
  v5 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  v6 = [(THNotesViewController *)self numberOfNotes];
  v7 = v5 != 0x7FFFFFFFFFFFFFFFLL && [-[NSArray objectAtIndex:](-[THNotesViewController sectionProviders](self "sectionProviders")] != 0;
  [(UIBarButtonItem *)self->_selectButtonItem setEnabled:v7];
  if ([(THNotesViewController *)self notesExist])
  {
    if (v7 || !v6)
    {
      v8 = self;
      v9 = 0;
    }

    else
    {
      v8 = self;
      v9 = 1;
    }

    v10 = 0;
  }

  else
  {
    v8 = self;
    v9 = 1;
    v10 = 1;
  }

  [(THNotesViewControllerPad *)v8 p_showNoResultsView:v9 firstLaunch:v10 allowPush:v3];
}

- (void)p_returnToOriginalViewController
{
  [(THBookViewController *)[(THNotesViewController *)self bookViewController] hideFullscreenNotesView:[(THNotesViewController *)self originalViewController] andSearchForText:self->_pendingBookSearchText completion:0];
  [(THNotesViewController *)self setOriginalViewController:0];

  self->_pendingBookSearchText = 0;
}

- (void)showWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  [-[THNotesViewControllerPad view](self "view")];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4CC0;
  v8[3] = &unk_45B8B0;
  v8[4] = a5;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)hideWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  +[CATransaction begin];
  [CATransaction setAnimationDuration:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4DB0;
  v8[3] = &unk_45AEA8;
  v8[4] = self;
  v8[5] = a5;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)showForExitStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  [-[THNotesViewControllerPad view](self "view")];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4F04;
  v8[3] = &unk_45B8B0;
  v8[4] = a5;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)hideForEnterStudyModeWithPrepare:(id)a3 duration:(double)a4 completion:(id)a5
{
  if (a3)
  {
    (*(a3 + 2))(a3, a2);
  }

  +[CATransaction begin];
  [CATransaction setAnimationDuration:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4FF4;
  v8[3] = &unk_45AEA8;
  v8[4] = self;
  v8[5] = a5;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)finishedDismissing
{
  v2 = [(THNotesViewController *)self notesDetailViewController];

  [(THNotesDetailTableViewController *)v2 reloadWithSections:0];
}

- (id)sidebarContentViewController:(id)a3 viewControllerForSectionProvider:(id)a4
{
  if (![(THNotesViewControllerPad *)self isCollapsedForSidebarContentViewController:a3, a4])
  {
    return 0;
  }

  [(THNotesViewController *)self updateSectionProviders];
  [(THNotesViewControllerPad *)self p_showCorrectView:0];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setToolbarHidden:1 animated:0];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setNavigationBarHidden:1 animated:0];

  return [(THNotesViewControllerPad *)self detailNavigationController];
}

- (void)sidebarContentViewController:(id)a3 willSelectSectionProvider:(id)a4
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 sidebarContentViewController:a3 willSelectSectionProvider:a4];
  if ([(THNotesViewControllerPad *)self p_isEditing])
  {
    [(THNotesViewControllerPad *)self endEditingDidDelete:0];
  }

  [(THNotesViewController *)self updateSectionProviders];
  if ([(THNotesViewControllerPad *)self p_isCollapsed])
  {
    [(THNotesViewControllerPad *)self p_showCorrectView:1];
  }
}

- (BOOL)splitViewController:(id)a3 collapseSecondaryViewController:(id)a4 ontoPrimaryViewController:(id)a5
{
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self notesDetailViewController];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:[(THNotesViewControllerPad *)self p_isEditing] collapsed:1];
  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] updateVisibleIndexes];
  return 0;
}

- (id)splitViewController:(id)a3 separateSecondaryViewControllerFromPrimaryViewController:(id)a4
{
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self notesDetailViewController];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:[(THNotesViewControllerPad *)self p_isEditing] collapsed:0];
  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] updateVisibleIndexes];
  return 0;
}

- (void)splitViewController:(id)a3 willChangeToDisplayMode:(int64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_F52C0;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)handleStudy:(id)a3
{
  v4 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (v4 >= [(NSArray *)[(THNotesViewController *)self sectionProviders] count])
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesViewControllerPad handleStudy:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewControllerPad.m"];

    [v15 handleFailureInFunction:v16 file:v17 lineNumber:859 description:@"Study button should be disabled until a chapter is selected"];
  }

  else
  {
    v5 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:v4];
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [v5 navigationUnits];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObjectsFromArray:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "contentNodes")}];
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v12 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
    if ([v7 count] == &dword_0 + 1)
    {
      v13 = [v7 lastObject];
      v14 = 0;
    }

    else
    {
      v14 = [v5 title];
      v13 = [[THNavigationUnit alloc] initWithContext:v12 contentNodes:v6];
    }

    [(THBookViewController *)[(THNotesViewController *)self bookViewController] showStudyCardsForNavigationUnit:v13 useChapterTitle:v14];
  }
}

- (void)handleEdit:(id)a3
{
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setEditing:1 animated:1];
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] startEditing];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:1 collapsed:[(THNotesViewControllerPad *)self p_isCollapsed]];
  [(UIBarButtonItem *)self->_actionButtonItem setEnabled:0];
  deleteButtonItem = self->_deleteButtonItem;

  [(UIBarButtonItem *)deleteButtonItem setEnabled:0];
}

- (void)handleDone:(id)a3
{
  if ([(THNotesViewControllerPad *)self p_isEditing])
  {
    [(THNotesViewController *)self dismissActivityController:1];
    [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] deselectAllNotes];
    [(THNotesViewControllerPad *)self endEditingDidDelete:0];

    [(THNotesViewControllerPad *)self p_showCorrectView:1];
  }

  else
  {

    [(THNotesViewControllerPad *)self p_returnToOriginalViewController];
  }
}

- (id)p_textForSelectAllButton:(int64_t)a3
{
  v4 = THBundle();
  if (a3)
  {
    v5 = @"Deselect All";
  }

  else
  {
    v5 = @"Select All";
  }

  return [v4 localizedStringForKey:v5 value:&stru_471858 table:0];
}

- (void)p_setSelectAllButtonText
{
  [(UIBarButtonItem *)self->_selectAllButtonItem setTag:0];
  v3 = [(THNotesViewControllerPad *)self p_textForSelectAllButton:0];
  selectAllButtonItem = self->_selectAllButtonItem;

  [(UIBarButtonItem *)selectAllButtonItem setTitle:v3];
}

- (void)p_setDeselectAllButtonText
{
  [(UIBarButtonItem *)self->_selectAllButtonItem setTag:1];
  v3 = [(THNotesViewControllerPad *)self p_textForSelectAllButton:1];
  selectAllButtonItem = self->_selectAllButtonItem;

  [(UIBarButtonItem *)selectAllButtonItem setTitle:v3];
}

- (void)handleSelectAll:(id)a3
{
  [(THNotesViewController *)self dismissActivityController:1];
  v4 = [(UIBarButtonItem *)self->_selectAllButtonItem tag];
  v5 = [(THNotesViewController *)self notesDetailViewController];
  if (v4)
  {
    [(THNotesDetailTableViewController *)v5 deselectAllNotes];
  }

  else if (![(THNotesDetailTableViewController *)v5 selectAllNotes])
  {
    goto LABEL_5;
  }

  [(THNotesViewControllerPad *)self p_setDeselectAllButtonText];
LABEL_5:

  [(THNotesViewControllerPad *)self p_updateEditButtons];
}

- (void)p_updateEditButtons
{
  if ([(NSMutableDictionary *)[(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] selectedNotes] count])
  {
    [(UIBarButtonItem *)self->_deleteButtonItem setEnabled:[(THAnnotationStorageController *)[(THNotesViewController *)self annotationController] canModifyAnnotations]];
    actionButtonItem = self->_actionButtonItem;

    [(UIBarButtonItem *)actionButtonItem setEnabled:1];
  }

  else
  {
    [(UIBarButtonItem *)self->_deleteButtonItem setEnabled:0];
    [(UIBarButtonItem *)self->_actionButtonItem setEnabled:0];

    [(THNotesViewControllerPad *)self p_setSelectAllButtonText];
  }
}

- (BOOL)p_detailsViewIsCompactWidth
{
  v3 = [(THBookViewController *)[(THNotesViewController *)self bookViewController] im_isCompactWidth];
  if (v3 != [(THBookViewController *)[(THNotesViewController *)self bookViewController] im_isCompactHeight])
  {
    LOBYTE(v3) = [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController] displayMode]!= &dword_0 + 1;
  }

  return v3;
}

- (void)tableViewControllerDidChangeSelection:(id)a3
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 tableViewControllerDidChangeSelection:?];
  if ([a3 areAllNotesSelected])
  {
    [(THNotesViewControllerPad *)self p_setDeselectAllButtonText];
  }

  else
  {
    [(THNotesViewControllerPad *)self p_setSelectAllButtonText];
  }

  [(THNotesViewControllerPad *)self p_updateEditButtons];
}

- (void)tableViewControllerDidDeleteNote:(id)a3
{
  v4.receiver = self;
  v4.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v4 tableViewControllerDidDeleteNote:a3];
  [(THNotesViewController *)self noteWasDeleted];
}

- (void)tableViewController:(id)a3 navigateToNote:(id)a4
{
  v6 = [(THDocumentViewController *)[(THBookViewController *)[(THNotesViewController *)self bookViewController] documentViewController] documentRoot];
  v7 = [v6 modelStorageAnchorForAnnotation:a4];
  if ([a4 annotationAbsolutePhysicalPageIndex] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(v6, "reflowablePaginationController"))
  {
    [v7 setAbsolutePageIndex:{objc_msgSend(a4, "annotationAbsolutePhysicalPageIndex")}];
  }

  +[CATransaction begin];
  [(THBookViewController *)[(THNotesViewController *)self bookViewController] recordOutgoingMajorNavigationJump];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F5AF0;
  v8[3] = &unk_45AE00;
  v8[4] = self;
  [(THBookViewController *)[(THNotesViewController *)self bookViewController] navigateFromNotesViewToAnchorInDVC:v7 completion:v8];
  +[CATransaction commit];
}

- (void)tableViewController:(id)a3 searchBookForText:(id)a4
{
  if (self->_pendingBookSearchText)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  self->_pendingBookSearchText = [a4 copy];

  [(THNotesViewControllerPad *)self handleDone:0];
}

- (void)tableViewController:(id)a3 didLoadContentNode:(id)a4
{
  v7.receiver = self;
  v7.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v7 tableViewController:a3 didLoadContentNode:a4];
  v5 = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([-[NSArray objectAtIndex:](-[THNotesViewController sectionProviders](self "sectionProviders")])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F5CD4;
      block[3] = &unk_45AE00;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (double)cellMargin
{
  v2 = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 20.0;
  if (v2)
  {
    return 10.0;
  }

  return result;
}

- (double)noteLabelHorizontalInset
{
  v2 = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 61.0;
  if (v2)
  {
    return 46.0;
  }

  return result;
}

- (double)colorBarHorizontalInset
{
  v2 = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 47.0;
  if (v2)
  {
    return 32.0;
  }

  return result;
}

- (double)dateLabelHorizontalInset
{
  v2 = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 34.0;
  if (v2)
  {
    return 19.0;
  }

  return result;
}

@end
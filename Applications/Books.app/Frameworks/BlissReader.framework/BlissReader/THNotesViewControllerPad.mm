@interface THNotesViewControllerPad
- (BOOL)p_detailsViewIsCompactWidth;
- (BOOL)p_isCollapsed;
- (BOOL)p_isEditing;
- (BOOL)p_isToolbarHidden:(BOOL)hidden;
- (BOOL)p_studyButtonShouldBeEnabled;
- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController;
- (THNotesViewControllerPad)initWithNibName:(id)name bundle:(id)bundle;
- (double)cellMargin;
- (double)colorBarHorizontalInset;
- (double)dateLabelHorizontalInset;
- (double)noteLabelHorizontalInset;
- (id)p_noteCountLabelTextForChapter:(id)chapter;
- (id)p_textForSelectAllButton:(int64_t)button;
- (id)sidebarContentViewController:(id)controller viewControllerForSectionProvider:(id)provider;
- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController;
- (int64_t)p_interfaceOrientation;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)cleanup;
- (void)dealloc;
- (void)endEditingDidDelete:(BOOL)delete;
- (void)finishedDismissing;
- (void)handleDone:(id)done;
- (void)handleEdit:(id)edit;
- (void)handleSelectAll:(id)all;
- (void)handleStudy:(id)study;
- (void)hideForEnterStudyModeWithPrepare:(id)prepare duration:(double)duration completion:(id)completion;
- (void)hideWithPrepare:(id)prepare duration:(double)duration completion:(id)completion;
- (void)p_configureToolbarsForEditing:(BOOL)editing collapsed:(BOOL)collapsed;
- (void)p_layoutViewsForOrientation:(int64_t)orientation duration:(double)duration;
- (void)p_returnToOriginalViewController;
- (void)p_setDeselectAllButtonText;
- (void)p_setSelectAllButtonText;
- (void)p_showCorrectView:(BOOL)view;
- (void)p_showNoResultsView:(BOOL)view firstLaunch:(BOOL)launch allowPush:(BOOL)push;
- (void)p_updateChapterHeader;
- (void)p_updateEditButtons;
- (void)sectionProvidersDidChange;
- (void)showForExitStudyModeWithPrepare:(id)prepare duration:(double)duration completion:(id)completion;
- (void)showWithPrepare:(id)prepare duration:(double)duration completion:(id)completion;
- (void)sidebarContentViewController:(id)controller willSelectSectionProvider:(id)provider;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)tableViewController:(id)controller didLoadContentNode:(id)node;
- (void)tableViewController:(id)controller navigateToNote:(id)note;
- (void)tableViewController:(id)controller searchBookForText:(id)text;
- (void)tableViewControllerDidChangeSelection:(id)selection;
- (void)tableViewControllerDidDeleteNote:(id)note;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation THNotesViewControllerPad

- (THNotesViewControllerPad)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = THNotesViewControllerPad;
  v4 = [(THNotesViewController *)&v6 initWithNibName:name bundle:bundle];
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
  notesDetailViewController = [(THNotesViewController *)self notesDetailViewController];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setViewControllers:[NSArray arrayWithObjects:&notesDetailViewController count:1]];
  notesSplitViewController = [(THNotesViewControllerPad *)self notesSplitViewController];
  view = [(UISplitViewController *)notesSplitViewController view];
  [-[THNotesViewControllerPad view](self "view")];
  [view setFrame:?];
  [view setBackgroundColor:{+[UIColor bc_booksBackground](UIColor, "bc_booksBackground")}];
  [(THNotesViewControllerPad *)self addChildViewController:notesSplitViewController];
  [-[THNotesViewControllerPad view](self "view")];
  v7[0] = [(THNotesViewControllerPad *)self masterNavigationController];
  v7[1] = [(THNotesViewControllerPad *)self detailNavigationController];
  [(UISplitViewController *)notesSplitViewController setViewControllers:[NSArray arrayWithObjects:v7 count:2]];
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setDelegate:self];
  if (!self->_noSearchResultsViewController)
  {
    self->_noSearchResultsViewController = objc_alloc_init(THNotesNoSearchResultsViewController);
    [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] addChildViewController:[(THNotesViewControllerPad *)self noSearchResultsViewController]];
    view2 = [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController view];
    [-[THNotesDetailTableViewController view](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
    [view2 setHidden:1];
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
  tableView = [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView];

  return [(UITableView *)tableView isEditing];
}

- (BOOL)p_isCollapsed
{
  notesSplitViewController = [(THNotesViewControllerPad *)self notesSplitViewController];

  return [(UISplitViewController *)notesSplitViewController isCollapsed];
}

- (BOOL)p_isToolbarHidden:(BOOL)hidden
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 viewWillAppear:appear];
  [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController] setPreferredDisplayMode:0];
  p_isCollapsed = [(THNotesViewControllerPad *)self p_isCollapsed];
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:0 collapsed:p_isCollapsed];
  [(THNotesViewControllerPad *)self p_showCorrectView:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(THNotesViewControllerPad *)self isViewLoaded])
  {
    view = [(THNotesViewControllerPad *)self view];
    v6 = *&CGAffineTransformIdentity.c;
    v11[0] = *&CGAffineTransformIdentity.a;
    v11[1] = v6;
    v11[2] = *&CGAffineTransformIdentity.tx;
    [view setTransform:v11];
  }

  if ([(THNotesViewController *)self shouldDismissAfterRotate])
  {
    [(THNotesViewController *)self setShouldDismissAfterRotate:0];
    notesSplitViewController = [(THNotesViewControllerPad *)self notesSplitViewController];
    [-[UISplitViewController view](notesSplitViewController "view")];
    [(UISplitViewController *)notesSplitViewController viewWillTransitionToSize:[(THNotesViewControllerPad *)self transitionCoordinator] withTransitionCoordinator:v8, v9];
    [(THNotesViewControllerPad *)self p_layoutViewsForOrientation:[(THNotesViewControllerPad *)self p_interfaceOrientation] duration:0.0];
  }

  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] cancelSearch];
  v10.receiver = self;
  v10.super_class = THNotesViewControllerPad;
  [(THNotesViewControllerPad *)&v10 viewDidDisappear:disappearCopy];
}

- (int64_t)p_interfaceOrientation
{
  v2 = [-[THNotesViewControllerPad bc_windowForViewController](self "bc_windowForViewController")];

  return [v2 interfaceOrientation];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(THNotesViewControllerPad *)self p_isCollapsed:change];
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self "notesDetailViewController")];
  isEditing = [(THNotesViewControllerPad *)self isEditing];

  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:isEditing collapsed:v5];
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

- (void)p_showNoResultsView:(BOOL)view firstLaunch:(BOOL)launch allowPush:(BOOL)push
{
  pushCopy = push;
  if (view)
  {
    launchCopy = launch;
    [(UIView *)[(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController firstLaunchView] setHidden:!launch];
    [(UIView *)[(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController noResultsView] setHidden:launchCopy];
    providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
    if (!launchCopy)
    {
      -[THNotesNoSearchResultsViewController setMessageType:](self->_noSearchResultsViewController, "setMessageType:", [-[THNotesViewController searchText](self "searchText")] == 0);
      [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setChapterIndex:providerIndex];
      [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setResults:[(THNotesViewController *)self numberOfNotes]];
    }

    if (providerIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:providerIndex];
    }

    v11 = ![v9 hasGlossaryTerms] || !-[THNotesViewControllerPad p_studyButtonShouldBeEnabled](self, "p_studyButtonShouldBeEnabled");
    [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController setFooterType:v11];
    [(UITableView *)[(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView] setHidden:1];
    view = [(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController view];
  }

  else
  {
    if ([(THNotesNoSearchResultsViewController *)self->_noSearchResultsViewController isViewLoaded:view])
    {
      [-[THNotesNoSearchResultsViewController view](self->_noSearchResultsViewController "view")];
    }

    view = [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] tableView];
  }

  [(UITableView *)view setHidden:0];
  if (pushCopy)
  {
    if ([(THNotesViewControllerPad *)self p_isCollapsed])
    {
      masterNavigationController = [(THNotesViewControllerPad *)self masterNavigationController];
      detailNavigationController = [(THNotesViewControllerPad *)self detailNavigationController];
      if ([(UINavigationController *)masterNavigationController topViewController]!= detailNavigationController)
      {
        notesSplitViewController = [(THNotesViewControllerPad *)self notesSplitViewController];

        [(UISplitViewController *)notesSplitViewController showDetailViewController:detailNavigationController sender:0];
      }
    }
  }
}

- (void)p_configureToolbarsForEditing:(BOOL)editing collapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  editingCopy = editing;

  self->_actionButtonItem = 0;
  self->_deleteButtonItem = 0;
  p_selectAllButtonItem = &self->_selectAllButtonItem;

  self->_selectAllButtonItem = 0;
  p_studyButtonItem = &self->_studyButtonItem;

  self->_studyButtonItem = 0;
  p_selectButtonItem = &self->_selectButtonItem;

  self->_selectButtonItem = 0;
  notesSidebarViewController = [(THNotesViewController *)self notesSidebarViewController];
  notesDetailViewController = [(THNotesViewController *)self notesDetailViewController];
  v10 = [UIBarButtonItem alloc];
  v43 = editingCopy;
  if (editingCopy)
  {
    self->_actionButtonItem = [v10 initWithBarButtonSystemItem:9 target:self action:"handleAction:"];
    self->_deleteButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"handleDelete:"];
    areAllNotesSelected = [(THNotesDetailTableViewController *)notesDetailViewController areAllNotesSelected];
    v12 = [[NSSet alloc] initWithObjects:{-[THNotesViewControllerPad p_textForSelectAllButton:](self, "p_textForSelectAllButton:", 0), -[THNotesViewControllerPad p_textForSelectAllButton:](self, "p_textForSelectAllButton:", 1), 0}];
    v13 = [UIBarButtonItem alloc];
    v14 = [(THNotesViewControllerPad *)self p_textForSelectAllButton:areAllNotesSelected];
    v15 = v13;
    p_selectAllButtonItem = &self->_selectAllButtonItem;
    v16 = [v15 initWithTitle:v14 style:0 target:self action:"handleSelectAll:"];
    self->_selectAllButtonItem = v16;
    [(UIBarButtonItem *)v16 setPossibleTitles:v12];
    [(UIBarButtonItem *)self->_selectAllButtonItem setTag:areAllNotesSelected];

    [(THNotesViewControllerPad *)self p_updateEditButtons];
  }

  else
  {
    *p_studyButtonItem = [v10 initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Study Cards" action:{&stru_471858, 0), 0, self, "handleStudy:"}];
    *p_selectButtonItem = [[UIBarButtonItem alloc] initWithTitle:objc_msgSend(THBundle() style:"localizedStringForKey:value:table:" target:@"Select" action:{&stru_471858, 0), 0, self, "handleEdit:"}];
  }

  v17 = [-[THNotesDetailTableViewController navigationController](notesDetailViewController "navigationController")];
  v18 = notesSidebarViewController;
  navigationItem = [(THNotesSidebarViewController *)notesSidebarViewController navigationItem];
  if (navigationItem)
  {
    v20 = navigationItem;
    if (collapsedCopy)
    {
      v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDone:"];
      [v20 setRightBarButtonItem:v21];
    }

    else
    {
      [navigationItem setRightBarButtonItem:0];
    }
  }

  navigationItem2 = [(THNotesDetailTableViewController *)notesDetailViewController navigationItem];
  if (navigationItem2)
  {
    v23 = navigationItem2;
    v41 = notesDetailViewController;
    v24 = p_selectAllButtonItem;
    [navigationItem2 setLeftItemsSupplementBackButton:1];
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

    v18 = notesSidebarViewController;
    p_selectAllButtonItem = v24;
    notesDetailViewController = v41;
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

  [(THNotesDetailTableViewController *)notesDetailViewController setToolbarItems:v32];

  if (*p_studyButtonItem)
  {
    [*p_studyButtonItem setEnabled:{-[THNotesViewControllerPad p_studyButtonShouldBeEnabled](self, "p_studyButtonShouldBeEnabled")}];
  }

  if (*p_selectButtonItem)
  {
    providerIndex = [(THNotesSidebarViewController *)v18 providerIndex];
    v38 = providerIndex != 0x7FFFFFFFFFFFFFFFLL && [-[NSArray objectAtIndex:](-[THNotesViewController sectionProviders](self "sectionProviders")] != 0;
    [*p_selectButtonItem setEnabled:v38];
  }

  v39 = +[UIColor bc_booksKeyColor];
  view = [(THNotesViewControllerPad *)self view];

  [view setTintColor:v39];
}

- (void)p_layoutViewsForOrientation:(int64_t)orientation duration:(double)duration
{
  [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController:orientation] setPreferredDisplayMode:0];

  [(THNotesViewControllerPad *)self p_updateEditButtons];
}

- (id)p_noteCountLabelTextForChapter:(id)chapter
{
  if (![chapter needsMigration])
  {
    return +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", @"%lu", [chapter annotationCount]);
  }

  return [NSString stringWithUTF8String:"…"];
}

- (void)p_updateChapterHeader
{
  providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (providerIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:providerIndex];
    if ([-[THNotesViewController searchText](self "searchText")])
    {
      annotationCount = [v8 annotationCount];
      if (annotationCount == &dword_0 + 1)
      {
        v10 = THBundle();
        v11 = @"1 Result";
        goto LABEL_13;
      }

      v5 = annotationCount;
      if (annotationCount)
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

  numberOfNotes = [(THNotesViewController *)self numberOfNotes];
  if (numberOfNotes == 1)
  {
    v10 = THBundle();
    v11 = @"All Chapters: 1 Result";
    goto LABEL_13;
  }

  v5 = numberOfNotes;
  if (!numberOfNotes)
  {
    goto LABEL_9;
  }

  v6 = THBundle();
  v7 = @"All Chapters: %lu Results";
LABEL_15:
  v12 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", [v6 localizedStringForKey:v7 value:&stru_471858 table:0], v5);
LABEL_16:
  v13 = v12;
  notesDetailViewController = [(THNotesViewController *)self notesDetailViewController];

  [(THNotesDetailTableViewController *)notesDetailViewController setTitle:v13];
}

- (void)endEditingDidDelete:(BOOL)delete
{
  deleteCopy = delete;
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setEditing:0 animated:1];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:0 collapsed:[(THNotesViewControllerPad *)self p_isCollapsed]];
  if (deleteCopy)
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

  providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (providerIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:providerIndex];
  if ([v5 annotationCountForStudyCards])
  {
    hasGlossaryTerms = 1;
  }

  else
  {
    hasGlossaryTerms = [v5 hasGlossaryTerms];
  }

  return [v5 shouldEnableStudyButton] & hasGlossaryTerms;
}

- (void)p_showCorrectView:(BOOL)view
{
  viewCopy = view;
  providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  numberOfNotes = [(THNotesViewController *)self numberOfNotes];
  v7 = providerIndex != 0x7FFFFFFFFFFFFFFFLL && [-[NSArray objectAtIndex:](-[THNotesViewController sectionProviders](self "sectionProviders")] != 0;
  [(UIBarButtonItem *)self->_selectButtonItem setEnabled:v7];
  if ([(THNotesViewController *)self notesExist])
  {
    if (v7 || !numberOfNotes)
    {
      selfCopy3 = self;
      v9 = 0;
    }

    else
    {
      selfCopy3 = self;
      v9 = 1;
    }

    v10 = 0;
  }

  else
  {
    selfCopy3 = self;
    v9 = 1;
    v10 = 1;
  }

  [(THNotesViewControllerPad *)selfCopy3 p_showNoResultsView:v9 firstLaunch:v10 allowPush:viewCopy];
}

- (void)p_returnToOriginalViewController
{
  [(THBookViewController *)[(THNotesViewController *)self bookViewController] hideFullscreenNotesView:[(THNotesViewController *)self originalViewController] andSearchForText:self->_pendingBookSearchText completion:0];
  [(THNotesViewController *)self setOriginalViewController:0];

  self->_pendingBookSearchText = 0;
}

- (void)showWithPrepare:(id)prepare duration:(double)duration completion:(id)completion
{
  if (prepare)
  {
    (*(prepare + 2))(prepare, a2);
  }

  [-[THNotesViewControllerPad view](self "view")];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:duration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4CC0;
  v8[3] = &unk_45B8B0;
  v8[4] = completion;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)hideWithPrepare:(id)prepare duration:(double)duration completion:(id)completion
{
  if (prepare)
  {
    (*(prepare + 2))(prepare, a2);
  }

  +[CATransaction begin];
  [CATransaction setAnimationDuration:duration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4DB0;
  v8[3] = &unk_45AEA8;
  v8[4] = self;
  v8[5] = completion;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)showForExitStudyModeWithPrepare:(id)prepare duration:(double)duration completion:(id)completion
{
  if (prepare)
  {
    (*(prepare + 2))(prepare, a2);
  }

  [-[THNotesViewControllerPad view](self "view")];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:duration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4F04;
  v8[3] = &unk_45B8B0;
  v8[4] = completion;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)hideForEnterStudyModeWithPrepare:(id)prepare duration:(double)duration completion:(id)completion
{
  if (prepare)
  {
    (*(prepare + 2))(prepare, a2);
  }

  +[CATransaction begin];
  [CATransaction setAnimationDuration:duration];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_F4FF4;
  v8[3] = &unk_45AEA8;
  v8[4] = self;
  v8[5] = completion;
  [CATransaction setCompletionBlock:v8];
  [-[THNotesViewControllerPad view](self "view")];
  +[CATransaction commit];
}

- (void)finishedDismissing
{
  notesDetailViewController = [(THNotesViewController *)self notesDetailViewController];

  [(THNotesDetailTableViewController *)notesDetailViewController reloadWithSections:0];
}

- (id)sidebarContentViewController:(id)controller viewControllerForSectionProvider:(id)provider
{
  if (![(THNotesViewControllerPad *)self isCollapsedForSidebarContentViewController:controller, provider])
  {
    return 0;
  }

  [(THNotesViewController *)self updateSectionProviders];
  [(THNotesViewControllerPad *)self p_showCorrectView:0];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setToolbarHidden:1 animated:0];
  [(UINavigationController *)[(THNotesViewControllerPad *)self detailNavigationController] setNavigationBarHidden:1 animated:0];

  return [(THNotesViewControllerPad *)self detailNavigationController];
}

- (void)sidebarContentViewController:(id)controller willSelectSectionProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 sidebarContentViewController:controller willSelectSectionProvider:provider];
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

- (BOOL)splitViewController:(id)controller collapseSecondaryViewController:(id)viewController ontoPrimaryViewController:(id)primaryViewController
{
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self notesDetailViewController];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:[(THNotesViewControllerPad *)self p_isEditing] collapsed:1];
  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] updateVisibleIndexes];
  return 0;
}

- (id)splitViewController:(id)controller separateSecondaryViewControllerFromPrimaryViewController:(id)viewController
{
  [-[THNotesDetailTableViewController navigationController](-[THNotesViewController notesDetailViewController](self notesDetailViewController];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:[(THNotesViewControllerPad *)self p_isEditing] collapsed:0];
  [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] updateVisibleIndexes];
  return 0;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_F52C0;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = controller;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)handleStudy:(id)study
{
  providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (providerIndex >= [(NSArray *)[(THNotesViewController *)self sectionProviders] count])
  {
    v15 = +[TSUAssertionHandler currentHandler];
    v16 = [NSString stringWithUTF8String:"[THNotesViewControllerPad handleStudy:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNotesViewControllerPad.m"];

    [v15 handleFailureInFunction:v16 file:v17 lineNumber:859 description:@"Study button should be disabled until a chapter is selected"];
  }

  else
  {
    v5 = [(NSArray *)[(THNotesViewController *)self sectionProviders] objectAtIndex:providerIndex];
    v6 = objc_alloc_init(NSMutableArray);
    navigationUnits = [v5 navigationUnits];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [navigationUnits countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(navigationUnits);
          }

          [v6 addObjectsFromArray:{objc_msgSend(*(*(&v18 + 1) + 8 * i), "contentNodes")}];
        }

        v9 = [navigationUnits countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v12 = [-[THDocumentViewController documentRoot](-[THBookViewController documentViewController](-[THNotesViewController bookViewController](self "bookViewController")];
    if ([navigationUnits count] == &dword_0 + 1)
    {
      lastObject = [navigationUnits lastObject];
      title = 0;
    }

    else
    {
      title = [v5 title];
      lastObject = [[THNavigationUnit alloc] initWithContext:v12 contentNodes:v6];
    }

    [(THBookViewController *)[(THNotesViewController *)self bookViewController] showStudyCardsForNavigationUnit:lastObject useChapterTitle:title];
  }
}

- (void)handleEdit:(id)edit
{
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] setEditing:1 animated:1];
  [(THNotesDetailTableViewController *)[(THNotesViewController *)self notesDetailViewController] startEditing];
  [(THNotesViewControllerPad *)self p_configureToolbarsForEditing:1 collapsed:[(THNotesViewControllerPad *)self p_isCollapsed]];
  [(UIBarButtonItem *)self->_actionButtonItem setEnabled:0];
  deleteButtonItem = self->_deleteButtonItem;

  [(UIBarButtonItem *)deleteButtonItem setEnabled:0];
}

- (void)handleDone:(id)done
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

- (id)p_textForSelectAllButton:(int64_t)button
{
  v4 = THBundle();
  if (button)
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

- (void)handleSelectAll:(id)all
{
  [(THNotesViewController *)self dismissActivityController:1];
  v4 = [(UIBarButtonItem *)self->_selectAllButtonItem tag];
  notesDetailViewController = [(THNotesViewController *)self notesDetailViewController];
  if (v4)
  {
    [(THNotesDetailTableViewController *)notesDetailViewController deselectAllNotes];
  }

  else if (![(THNotesDetailTableViewController *)notesDetailViewController selectAllNotes])
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
  im_isCompactWidth = [(THBookViewController *)[(THNotesViewController *)self bookViewController] im_isCompactWidth];
  if (im_isCompactWidth != [(THBookViewController *)[(THNotesViewController *)self bookViewController] im_isCompactHeight])
  {
    LOBYTE(im_isCompactWidth) = [(UISplitViewController *)[(THNotesViewControllerPad *)self notesSplitViewController] displayMode]!= &dword_0 + 1;
  }

  return im_isCompactWidth;
}

- (void)tableViewControllerDidChangeSelection:(id)selection
{
  v5.receiver = self;
  v5.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v5 tableViewControllerDidChangeSelection:?];
  if ([selection areAllNotesSelected])
  {
    [(THNotesViewControllerPad *)self p_setDeselectAllButtonText];
  }

  else
  {
    [(THNotesViewControllerPad *)self p_setSelectAllButtonText];
  }

  [(THNotesViewControllerPad *)self p_updateEditButtons];
}

- (void)tableViewControllerDidDeleteNote:(id)note
{
  v4.receiver = self;
  v4.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v4 tableViewControllerDidDeleteNote:note];
  [(THNotesViewController *)self noteWasDeleted];
}

- (void)tableViewController:(id)controller navigateToNote:(id)note
{
  documentRoot = [(THDocumentViewController *)[(THBookViewController *)[(THNotesViewController *)self bookViewController] documentViewController] documentRoot];
  v7 = [documentRoot modelStorageAnchorForAnnotation:note];
  if ([note annotationAbsolutePhysicalPageIndex] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(documentRoot, "reflowablePaginationController"))
  {
    [v7 setAbsolutePageIndex:{objc_msgSend(note, "annotationAbsolutePhysicalPageIndex")}];
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

- (void)tableViewController:(id)controller searchBookForText:(id)text
{
  if (self->_pendingBookSearchText)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  self->_pendingBookSearchText = [text copy];

  [(THNotesViewControllerPad *)self handleDone:0];
}

- (void)tableViewController:(id)controller didLoadContentNode:(id)node
{
  v7.receiver = self;
  v7.super_class = THNotesViewControllerPad;
  [(THNotesViewController *)&v7 tableViewController:controller didLoadContentNode:node];
  providerIndex = [(THNotesSidebarViewController *)[(THNotesViewController *)self notesSidebarViewController] providerIndex];
  if (providerIndex != 0x7FFFFFFFFFFFFFFFLL)
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
  p_detailsViewIsCompactWidth = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 20.0;
  if (p_detailsViewIsCompactWidth)
  {
    return 10.0;
  }

  return result;
}

- (double)noteLabelHorizontalInset
{
  p_detailsViewIsCompactWidth = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 61.0;
  if (p_detailsViewIsCompactWidth)
  {
    return 46.0;
  }

  return result;
}

- (double)colorBarHorizontalInset
{
  p_detailsViewIsCompactWidth = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 47.0;
  if (p_detailsViewIsCompactWidth)
  {
    return 32.0;
  }

  return result;
}

- (double)dateLabelHorizontalInset
{
  p_detailsViewIsCompactWidth = [(THNotesViewControllerPad *)self p_detailsViewIsCompactWidth];
  result = 34.0;
  if (p_detailsViewIsCompactWidth)
  {
    return 19.0;
  }

  return result;
}

@end
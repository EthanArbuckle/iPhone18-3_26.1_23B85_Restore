@interface FBAInboxItemsViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (FBAInboxItemsViewController)initWithCoder:(id)coder;
- (FBAInboxItemsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (FBAInboxItemsViewController)initWithStyle:(int64_t)style;
- (id)activeInboxSource;
- (id)fbkLeftToolbarItem;
- (id)filterSource;
- (id)itemForIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)fbkNewFeedbackButtonState;
- (void)awakeFromNib;
- (void)beginRefresh;
- (void)beginSearch;
- (void)clearDetail;
- (void)commonInit;
- (void)destroyDraft:(id)draft;
- (void)destroyItemAtIndexPath:(id)path;
- (void)destroySelectedItems:(id)items;
- (void)didDismissSearchController:(id)controller;
- (void)fbkCreateNewFeedback:(id)feedback;
- (void)fbkDidTapSubtitleAction:(id)action;
- (void)filterContentForFilterManager:(id)manager;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)reloadAppProxy;
- (void)reloadView;
- (void)removeFBAObservers;
- (void)setTeam:(id)team;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)toggleFiltering;
- (void)updateSearchResults;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation FBAInboxItemsViewController

- (FBAInboxItemsViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = FBAInboxItemsViewController;
  v3 = [(FBAInboxItemsViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(FBAInboxItemsViewController *)v3 commonInit];
  }

  return v4;
}

- (FBAInboxItemsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = FBAInboxItemsViewController;
  v4 = [(FBAInboxItemsViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(FBAInboxItemsViewController *)v4 commonInit];
  }

  return v5;
}

- (FBAInboxItemsViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = FBAInboxItemsViewController;
  v3 = [(FBAInboxItemsViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(FBAInboxItemsViewController *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"mailboxSortDate" ascending:0];
  v9[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"ID" ascending:0];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  sortDescriptors = self->_sortDescriptors;
  self->_sortDescriptors = v5;

  v7 = objc_alloc_init(NSMutableArray);
  sortedInboxItems = self->_sortedInboxItems;
  self->_sortedInboxItems = v7;

  self->_needsUpdate = 0;
  self->_showingSyntheticInbox = 0;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = FBAInboxItemsViewController;
  [(FBAInboxItemsViewController *)&v2 awakeFromNib];
}

- (void)viewDidLoad
{
  v28.receiver = self;
  v28.super_class = FBAInboxItemsViewController;
  [(FBATableViewControler *)&v28 viewDidLoad];
  tableView = [(FBAInboxItemsViewController *)self tableView];
  [tableView setEstimatedRowHeight:60.0];

  tableView2 = [(FBAInboxItemsViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  v5 = objc_alloc_init(UIRefreshControl);
  [(FBAInboxItemsViewController *)self setRefreshControl:v5];

  refreshControl = [(FBAInboxItemsViewController *)self refreshControl];
  [refreshControl addTarget:self action:"reloadAppProxy" forControlEvents:4096];

  v7 = [UIKeyCommand keyCommandWithInput:@"R" modifierFlags:1572864 action:"reloadAppProxy"];
  v8 = +[NSBundle mainBundle];
  v9 = FBKCommonStrings;
  v10 = [v8 localizedStringForKey:@"REFRESH" value:&stru_1000E2210 table:FBKCommonStrings];
  [v7 setDiscoverabilityTitle:v10];

  [(FBAInboxItemsViewController *)self addKeyCommand:v7];
  v11 = [UIKeyCommand keyCommandWithInput:@"F" modifierFlags:0x100000 action:"beginSearch"];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"SEARCH" value:&stru_1000E2210 table:v9];
  [v11 setDiscoverabilityTitle:v13];

  [(FBAInboxItemsViewController *)self addKeyCommand:v11];
  inbox = [(FBAInboxItemsViewController *)self inbox];
  supportsSelection = [inbox supportsSelection];

  if (supportsSelection)
  {
    tableView3 = [(FBAInboxItemsViewController *)self tableView];
    [tableView3 setAllowsMultipleSelectionDuringEditing:1];
  }

  inbox2 = [(FBAInboxItemsViewController *)self inbox];
  type = [inbox2 type];

  if (type != 3)
  {
    v19 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(FBAInboxItemsViewController *)self setSearchController:v19];

    searchController = [(FBAInboxItemsViewController *)self searchController];
    [searchController setDelegate:self];

    searchController2 = [(FBAInboxItemsViewController *)self searchController];
    [searchController2 setSearchResultsUpdater:self];

    searchController3 = [(FBAInboxItemsViewController *)self searchController];
    [searchController3 setObscuresBackgroundDuringPresentation:0];

    searchController4 = [(FBAInboxItemsViewController *)self searchController];
    searchBar = [searchController4 searchBar];
    [searchBar setDelegate:self];

    searchController5 = [(FBAInboxItemsViewController *)self searchController];
    [searchController5 setHidesNavigationBarDuringPresentation:1];

    searchController6 = [(FBAInboxItemsViewController *)self searchController];
    navigationItem = [(FBAInboxItemsViewController *)self navigationItem];
    [navigationItem setSearchController:searchController6];

    [(FBAInboxItemsViewController *)self setDefinesPresentationContext:1];
  }

  [(FBAInboxItemsViewController *)self fbkShowToolbarWithStatus:&stru_1000E2210 animated:0];
}

- (void)setTeam:(id)team
{
  teamCopy = team;
  objc_storeStrong(&self->_team, team);
  if ([(FBAInboxItemsViewController *)self showingSyntheticInbox])
  {
    v5 = +[FBKContentItem filterGroupsForAll];
  }

  else
  {
    team = [(FBAInboxItemsViewController *)self team];
    v5 = [FBKContentItem filterGroupsForTeam:team];
  }

  v7 = [[_TtC18Feedback_Assistant16FBAFilterManager alloc] initWithFilterGroups:v5];
  filterManager = self->_filterManager;
  self->_filterManager = v7;

  [(FBAFilterManager *)self->_filterManager setFilterDelegate:self];
}

- (void)reloadAppProxy
{
  v2 = +[FBADraftManager sharedInstance];
  [v2 reloadApp];
}

- (void)beginRefresh
{
  refreshControl = [(FBAInboxItemsViewController *)self refreshControl];
  [refreshControl beginRefreshing];

  [(FBAInboxItemsViewController *)self reloadAppProxy];
}

- (void)beginSearch
{
  navigationItem = [(FBAInboxItemsViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  [searchBar becomeFirstResponder];
}

- (void)removeFBAObservers
{
  v3 = +[FBKData sharedInstance];
  notificationCenter = [v3 notificationCenter];

  fbaDataObservers = self->_fbaDataObservers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014D30;
  v8[3] = &unk_1000DEC28;
  v9 = notificationCenter;
  v6 = notificationCenter;
  [(NSMutableArray *)fbaDataObservers enumerateObjectsUsingBlock:v8];
  v7 = self->_fbaDataObservers;
  self->_fbaDataObservers = 0;
}

- (void)reloadView
{
  tableView = [(FBAInboxItemsViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow && (v4 = [indexPathForSelectedRow row], -[FBAInboxItemsViewController activeInboxSource](self, "activeInboxSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 < v6))
  {
    v7 = [(FBAInboxItemsViewController *)self itemForIndexPath:indexPathForSelectedRow];
  }

  else
  {
    v7 = 0;
  }

  inbox = [(FBAInboxItemsViewController *)self inbox];
  team = [(FBAInboxItemsViewController *)self team];
  v10 = [inbox inboxItemsForTeam:team withSortDescriptors:self->_sortDescriptors];
  v11 = [NSMutableArray arrayWithArray:v10];
  [(FBAInboxItemsViewController *)self setSortedInboxItems:v11];

  inbox2 = [(FBAInboxItemsViewController *)self inbox];
  displayText = [inbox2 displayText];
  navigationItem = [(FBAInboxItemsViewController *)self navigationItem];
  [navigationItem setTitle:displayText];

  [(FBAInboxItemsViewController *)self updateSearchResults];
  tableView2 = [(FBAInboxItemsViewController *)self tableView];
  [tableView2 reloadData];

  if (v7)
  {
    activeInboxSource = [(FBAInboxItemsViewController *)self activeInboxSource];
    v17 = [activeInboxSource indexOfObject:v7];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      inbox3 = [(FBAInboxItemsViewController *)self inbox];
      type = [inbox3 type];

      if (type != 3)
      {
        tableView3 = [(FBAInboxItemsViewController *)self tableView];
        v21 = [NSIndexPath indexPathForRow:v17 inSection:0];
        [tableView3 selectRowAtIndexPath:v21 animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)clearDetail
{
  splitViewController = [(FBAInboxItemsViewController *)self splitViewController];
  viewControllers = [splitViewController viewControllers];
  v5 = [viewControllers count];

  if (v5 == 2)
  {
    storyboard = [(FBAInboxItemsViewController *)self storyboard];
    v8 = [storyboard instantiateViewControllerWithIdentifier:@"FBAEmptyStack"];

    splitViewController2 = [(FBAInboxItemsViewController *)self splitViewController];
    [splitViewController2 showDetailViewController:v8 sender:self];
  }
}

- (void)destroyItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(FBAInboxItemsViewController *)self itemForIndexPath:pathCopy];
  if ([v5 itemType] == 1)
  {
    activeInboxSource = [(FBAInboxItemsViewController *)self activeInboxSource];
    [activeInboxSource removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];

    tableView = [(FBAInboxItemsViewController *)self tableView];
    v12 = pathCopy;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [tableView deleteRowsAtIndexPaths:v8 withRowAnimation:100];

    [(FBAInboxItemsViewController *)self destroyDraft:v5];
  }

  currDetailIndexPath = [(FBAInboxItemsViewController *)self currDetailIndexPath];
  v10 = [currDetailIndexPath row];
  v11 = [pathCopy row];

  if (v10 == v11)
  {
    [(FBAInboxItemsViewController *)self clearDetail];
  }
}

- (void)destroySelectedItems:(id)items
{
  v4 = objc_opt_new();
  tableView = [(FBAInboxItemsViewController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];

  v7 = [[NSMutableArray alloc] initWithArray:indexPathsForSelectedRows];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = indexPathsForSelectedRows;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [(FBAInboxItemsViewController *)self itemForIndexPath:v13];
        if ([v14 itemType] == 1)
        {
          [v4 addObject:v14];
        }

        else
        {
          [v7 removeObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000161BC;
  v26[3] = &unk_1000DEC28;
  v26[4] = self;
  [v4 enumerateObjectsUsingBlock:v26];
  tableView2 = [(FBAInboxItemsViewController *)self tableView];
  [tableView2 beginUpdates];

  tableView3 = [(FBAInboxItemsViewController *)self tableView];
  [tableView3 deleteRowsAtIndexPaths:v7 withRowAnimation:100];

  tableView4 = [(FBAInboxItemsViewController *)self tableView];
  [tableView4 endUpdates];

  splitViewController = [(FBAInboxItemsViewController *)self splitViewController];
  viewControllers = [splitViewController viewControllers];
  v20 = [viewControllers count];

  if (v20 == 2)
  {
    currDetailIndexPath = [(FBAInboxItemsViewController *)self currDetailIndexPath];
    v22 = [v7 containsObject:currDetailIndexPath];

    if (v22)
    {
      storyboard = [(FBAInboxItemsViewController *)self storyboard];
      v24 = [storyboard instantiateViewControllerWithIdentifier:@"FBAEmptyStack"];

      splitViewController2 = [(FBAInboxItemsViewController *)self splitViewController];
      [splitViewController2 showDetailViewController:v24 sender:self];
    }
  }

  [(FBAInboxItemsViewController *)self setEditing:0 animated:1];
}

- (void)destroyDraft:(id)draft
{
  draftCopy = draft;
  v4 = +[FBADraftManager sharedInstance];
  [v4 deleteDraftFromContentItem:draftCopy dismissViewOnCompletion:0];
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  tableView = [(FBAInboxItemsViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  [(FBAInboxItemsViewController *)self setCurrDetailIndexPath:indexPathForSelectedRow];
  v7 = [(FBAInboxItemsViewController *)self itemForIndexPath:indexPathForSelectedRow];
  destinationViewController = [segueCopy destinationViewController];
  viewControllers = [destinationViewController viewControllers];
  v10 = [viewControllers objectAtIndexedSubscript:0];

  identifier = [segueCopy identifier];
  LODWORD(viewControllers) = [identifier isEqualToString:@"FBAResponseDetailPresentation"];

  if (viewControllers)
  {
    goto LABEL_3;
  }

  identifier2 = [segueCopy identifier];
  v13 = [identifier2 isEqualToString:@"FBAFollowupDetailPresentation"];

  if (v13)
  {
    goto LABEL_3;
  }

  identifier3 = [segueCopy identifier];
  v15 = [identifier3 isEqualToString:@"FBASurveyDetailPresentation"];

  if (v15)
  {
    v16 = v10;
    team = [(FBAInboxItemsViewController *)self team];
    v18 = [v7 teamForItemPreferringTeam:team];
    [v16 setTeam:v18];

    [v16 setContentItem:v7];
  }

  else
  {
    identifier4 = [segueCopy identifier];
    v20 = [identifier4 isEqualToString:@"FBAAnnouncementDetailPresentation"];

    if (v20)
    {
LABEL_3:
      [v10 setContentItem:v7];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(FBAInboxItemsViewController *)self itemForIndexPath:pathCopy];
  searchController = [(FBAInboxItemsViewController *)self searchController];
  isActive = [searchController isActive];

  if (isActive)
  {
    searchController2 = [(FBAInboxItemsViewController *)self searchController];
    searchBar = [searchController2 searchBar];
    [searchBar resignFirstResponder];
  }

  if ([viewCopy isEditing])
  {
    tableView = [(FBAInboxItemsViewController *)self tableView];
    indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
    v15 = [indexPathsForSelectedRows count]!= 0;
    destructiveBarButtonItem = [(FBAInboxItemsViewController *)self destructiveBarButtonItem];
    [destructiveBarButtonItem setEnabled:v15];

LABEL_5:
LABEL_6:

    goto LABEL_11;
  }

  inbox = [(FBAInboxItemsViewController *)self inbox];
  type = [inbox type];

  if (type != 3)
  {
    v24 = +[FBALog appHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [v8 shortDescription];
      updatedAt = [v8 updatedAt];
      v30 = 138543618;
      v31 = shortDescription;
      v32 = 2114;
      v33 = updatedAt;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Selected Inbox Item [%{public}@] updated at: [%{public}@]", &v30, 0x16u);
    }

    tableView = [viewCopy cellForRowAtIndexPath:pathCopy];
    itemType = [v8 itemType];
    v28 = &off_1000DF968;
    if (itemType > 2)
    {
      if (itemType == 3)
      {
        v28 = &off_1000DF980;
      }

      else if (itemType != 5)
      {
        if (itemType != 4)
        {
          goto LABEL_6;
        }

        v28 = &off_1000DF970;
      }
    }

    else
    {
      if (!itemType)
      {
        indexPathsForSelectedRows = +[FBALog appHandle];
        if (os_log_type_enabled(indexPathsForSelectedRows, OS_LOG_TYPE_ERROR))
        {
          sub_100092ECC(indexPathsForSelectedRows);
        }

        goto LABEL_5;
      }

      if (itemType != 1)
      {
        if (itemType != 2)
        {
          goto LABEL_6;
        }

        v28 = &off_1000DF978;
      }
    }

    v29 = *v28;
    if (!v29)
    {
      goto LABEL_6;
    }

    indexPathsForSelectedRows = v29;
    [(FBAInboxItemsViewController *)self performSegueWithIdentifier:v29 sender:tableView];
    goto LABEL_5;
  }

  formResponse = [v8 formResponse];
  uploadTask = [formResponse uploadTask];
  localSubmissionStage = [uploadTask localSubmissionStage];

  v22 = +[FBALog appHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription2 = [v8 shortDescription];
    v30 = 138543618;
    v31 = shortDescription2;
    v32 = 1024;
    LODWORD(v33) = localSubmissionStage;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "did tap on outbox cell for item [%{public}@] upload task stage [%u]", &v30, 0x12u);
  }

LABEL_11:
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if ([view isEditing])
  {
    tableView = [(FBAInboxItemsViewController *)self tableView];
    indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
    v6 = [indexPathsForSelectedRows count] != 0;
    destructiveBarButtonItem = [(FBAInboxItemsViewController *)self destructiveBarButtonItem];
    [destructiveBarButtonItem setEnabled:v6];
  }
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(FBAInboxItemsViewController *)self inbox:view];
  supportsSelection = [v4 supportsSelection];

  return supportsSelection;
}

- (BOOL)tableView:(id)view shouldBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  v4 = [(FBAInboxItemsViewController *)self inbox:view];
  supportsSelection = [v4 supportsSelection];

  return supportsSelection;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(FBAInboxItemsViewController *)self inbox:view];
  supportsDeletion = [v4 supportsDeletion];

  return supportsDeletion;
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  inbox = [(FBAInboxItemsViewController *)self inbox];
  v9 = [inbox type] == 0;

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100016B68;
    v15[3] = &unk_1000DED50;
    objc_copyWeak(&v17, &location);
    v16 = pathCopy;
    v11 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v15];
    v12 = [UIImage systemImageNamed:FBKSystemImageNameSwipeToDelete];
    [v11 setImage:v12];

    v19 = v11;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    v10 = [UISwipeActionsConfiguration configurationWithActions:v13];

    objc_destroyWeak(&v17);
  }

  else
  {
    v10 = [UISwipeActionsConfiguration configurationWithActions:&__NSArray0__struct];
  }

  objc_destroyWeak(&location);

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(FBAInboxItemsViewController *)self activeInboxSource:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  inbox = [(FBAInboxItemsViewController *)self inbox];
  type = [inbox type];
  v10 = @"FBAMailboxItemCell";
  if (type == 3)
  {
    v10 = @"FBAOutboxItemCell";
  }

  v11 = v10;

  v12 = [viewCopy dequeueReusableCellWithIdentifier:v11 forIndexPath:pathCopy];

  v13 = [(FBAInboxItemsViewController *)self itemForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    contentItem = [v14 contentItem];

    if (contentItem)
    {
      [v12 updateWithItem:v14 showingTeamName:{-[FBAInboxItemsViewController showingSyntheticInbox](self, "showingSyntheticInbox")}];
    }

    else
    {
      [v12 updateWithEnhancedLoggingSession:v14];
    }
  }

  else
  {
    [v12 updateWithItem:v13 showingTeamName:{-[FBAInboxItemsViewController showingSyntheticInbox](self, "showingSyntheticInbox")}];
  }

  inbox2 = [(FBAInboxItemsViewController *)self inbox];
  type2 = [inbox2 type];

  if (type2 == 3)
  {
    formResponse = [v13 formResponse];

    if (formResponse)
    {
      formResponse2 = [v13 formResponse];
      [v12 setObservedResponse:formResponse2];
    }

    else
    {
      formResponse2 = +[FBALog appHandle];
      if (os_log_type_enabled(formResponse2, OS_LOG_TYPE_ERROR))
      {
        sub_100092F10(v13, formResponse2);
      }
    }
  }

  [v12 layoutIfNeeded];

  return v12;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  if ([text length])
  {
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = [text stringByTrimmingCharactersInSet:v6];

    v8 = [[NSMutableArray alloc] initWithCapacity:5];
    v9 = [v7 length];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001702C;
    v22[3] = &unk_1000DED78;
    v23 = v8;
    v10 = v8;
    [v7 enumerateSubstringsInRange:0 options:v9 usingBlock:{1027, v22}];
    v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
    sortedInboxItems = [(FBAInboxItemsViewController *)self sortedInboxItems];
    v13 = [sortedInboxItems filteredArrayUsingPredicate:v11];
    v14 = [v13 mutableCopy];
    searchResultItems = self->_searchResultItems;
    self->_searchResultItems = v14;
  }

  else
  {
    sortedInboxItems2 = [(FBAInboxItemsViewController *)self sortedInboxItems];
    v17 = self->_searchResultItems;
    self->_searchResultItems = sortedInboxItems2;
  }

  filterManager = [(FBAInboxItemsViewController *)self filterManager];
  active = [filterManager active];

  if (active)
  {
    filterManager2 = [(FBAInboxItemsViewController *)self filterManager];
    [(FBAInboxItemsViewController *)self filterContentForFilterManager:filterManager2];
  }

  tableView = [(FBAInboxItemsViewController *)self tableView];
  [tableView reloadData];
}

- (void)didDismissSearchController:(id)controller
{
  [(FBAInboxItemsViewController *)self setSearchResultItems:0];
  [(FBAInboxItemsViewController *)self reloadView];

  [(FBAInboxItemsViewController *)self becomeFirstResponder];
}

- (void)updateSearchResults
{
  searchController = [(FBAInboxItemsViewController *)self searchController];
  [(FBAInboxItemsViewController *)self updateSearchResultsForSearchController:searchController];
}

- (id)activeInboxSource
{
  filteredInboxItems = [(FBAInboxItemsViewController *)self filteredInboxItems];

  if (filteredInboxItems)
  {
    [(FBAInboxItemsViewController *)self filteredInboxItems];
  }

  else
  {
    [(FBAInboxItemsViewController *)self filterSource];
  }
  v4 = ;

  return v4;
}

- (id)filterSource
{
  searchResultItems = [(FBAInboxItemsViewController *)self searchResultItems];

  if (searchResultItems)
  {
    [(FBAInboxItemsViewController *)self searchResultItems];
  }

  else
  {
    [(FBAInboxItemsViewController *)self sortedInboxItems];
  }
  v4 = ;

  return v4;
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  activeInboxSource = [(FBAInboxItemsViewController *)self activeInboxSource];
  v6 = [pathCopy row];

  v7 = [activeInboxSource objectAtIndex:v6];

  return v7;
}

- (unint64_t)fbkNewFeedbackButtonState
{
  team = [(FBAInboxItemsViewController *)self team];
  canStartNewFeedback = [team canStartNewFeedback];

  if (canStartNewFeedback)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)fbkCreateNewFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v6 = +[FBADraftManager sharedInstance];
  team = [(FBAInboxItemsViewController *)self team];
  [v6 beginFeedbackForTeam:team sender:feedbackCopy];
}

- (id)fbkLeftToolbarItem
{
  v3 = [UIImage systemImageNamed:FBKSystemImageNameFilter];
  filterManager = [(FBAInboxItemsViewController *)self filterManager];
  active = [filterManager active];
  v6 = @"ENABLE_FILTER";
  if (active)
  {
    v6 = @"DISABLE_FILTER";
  }

  v7 = v6;

  v8 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"toggleFiltering"];
  filterManager2 = [(FBAInboxItemsViewController *)self filterManager];
  [v8 setSelected:{objc_msgSend(filterManager2, "active")}];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:v7 value:&stru_1000E2210 table:FBKCommonStrings];

  [v8 setAccessibilityLabel:v11];

  return v8;
}

- (void)toggleFiltering
{
  filterManager = [(FBAInboxItemsViewController *)self filterManager];
  [filterManager toggleActive];
}

- (void)filterContentForFilterManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy active])
  {
    filterSource = [(FBAInboxItemsViewController *)self filterSource];
    predicate = [managerCopy predicate];
    v6 = [filterSource filteredArrayUsingPredicate:predicate];
    v7 = [v6 mutableCopy];
    [(FBAInboxItemsViewController *)self setFilteredInboxItems:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"FILTERED_BY_PROMPT" value:&stru_1000E2210 table:FBKCommonStrings];

    userDescription = [managerCopy userDescription];
  }

  else
  {
    [(FBAInboxItemsViewController *)self setFilteredInboxItems:0];
    userDescription = 0;
    v9 = &stru_1000E2210;
  }

  navigationController = [(FBAInboxItemsViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    [(FBAInboxItemsViewController *)self fbkShowToolbarWithStatus:v9 subtitle:userDescription animated:1];
  }

  tableView = [(FBAInboxItemsViewController *)self tableView];
  [tableView reloadData];
}

- (void)fbkDidTapSubtitleAction:(id)action
{
  v9 = [[_TtC18Feedback_Assistant25FBAFilterPickerController alloc] initWithStyle:2];
  filterManager = [(FBAInboxItemsViewController *)self filterManager];
  [(FBAFilterPickerController *)v9 setFilterManager:filterManager];

  v5 = [[UINavigationController alloc] initWithRootViewController:v9];
  [v5 setModalPresentationStyle:7];
  navigationController = [(FBAInboxItemsViewController *)self navigationController];
  toolbar = [navigationController toolbar];
  presentationController = [v5 presentationController];
  [presentationController setSourceView:toolbar];

  [(FBAInboxItemsViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end
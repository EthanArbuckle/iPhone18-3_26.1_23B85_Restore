@interface FBAInboxItemsViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (FBAInboxItemsViewController)initWithCoder:(id)a3;
- (FBAInboxItemsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (FBAInboxItemsViewController)initWithStyle:(int64_t)a3;
- (id)activeInboxSource;
- (id)fbkLeftToolbarItem;
- (id)filterSource;
- (id)itemForIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)fbkNewFeedbackButtonState;
- (void)awakeFromNib;
- (void)beginRefresh;
- (void)beginSearch;
- (void)clearDetail;
- (void)commonInit;
- (void)destroyDraft:(id)a3;
- (void)destroyItemAtIndexPath:(id)a3;
- (void)destroySelectedItems:(id)a3;
- (void)didDismissSearchController:(id)a3;
- (void)fbkCreateNewFeedback:(id)a3;
- (void)fbkDidTapSubtitleAction:(id)a3;
- (void)filterContentForFilterManager:(id)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)reloadAppProxy;
- (void)reloadView;
- (void)removeFBAObservers;
- (void)setTeam:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleFiltering;
- (void)updateSearchResults;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBAInboxItemsViewController

- (FBAInboxItemsViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = FBAInboxItemsViewController;
  v3 = [(FBAInboxItemsViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(FBAInboxItemsViewController *)v3 commonInit];
  }

  return v4;
}

- (FBAInboxItemsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = FBAInboxItemsViewController;
  v4 = [(FBAInboxItemsViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(FBAInboxItemsViewController *)v4 commonInit];
  }

  return v5;
}

- (FBAInboxItemsViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = FBAInboxItemsViewController;
  v3 = [(FBAInboxItemsViewController *)&v6 initWithCoder:a3];
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
  v3 = [(FBAInboxItemsViewController *)self tableView];
  [v3 setEstimatedRowHeight:60.0];

  v4 = [(FBAInboxItemsViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = objc_alloc_init(UIRefreshControl);
  [(FBAInboxItemsViewController *)self setRefreshControl:v5];

  v6 = [(FBAInboxItemsViewController *)self refreshControl];
  [v6 addTarget:self action:"reloadAppProxy" forControlEvents:4096];

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
  v14 = [(FBAInboxItemsViewController *)self inbox];
  v15 = [v14 supportsSelection];

  if (v15)
  {
    v16 = [(FBAInboxItemsViewController *)self tableView];
    [v16 setAllowsMultipleSelectionDuringEditing:1];
  }

  v17 = [(FBAInboxItemsViewController *)self inbox];
  v18 = [v17 type];

  if (v18 != 3)
  {
    v19 = [[UISearchController alloc] initWithSearchResultsController:0];
    [(FBAInboxItemsViewController *)self setSearchController:v19];

    v20 = [(FBAInboxItemsViewController *)self searchController];
    [v20 setDelegate:self];

    v21 = [(FBAInboxItemsViewController *)self searchController];
    [v21 setSearchResultsUpdater:self];

    v22 = [(FBAInboxItemsViewController *)self searchController];
    [v22 setObscuresBackgroundDuringPresentation:0];

    v23 = [(FBAInboxItemsViewController *)self searchController];
    v24 = [v23 searchBar];
    [v24 setDelegate:self];

    v25 = [(FBAInboxItemsViewController *)self searchController];
    [v25 setHidesNavigationBarDuringPresentation:1];

    v26 = [(FBAInboxItemsViewController *)self searchController];
    v27 = [(FBAInboxItemsViewController *)self navigationItem];
    [v27 setSearchController:v26];

    [(FBAInboxItemsViewController *)self setDefinesPresentationContext:1];
  }

  [(FBAInboxItemsViewController *)self fbkShowToolbarWithStatus:&stru_1000E2210 animated:0];
}

- (void)setTeam:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_team, a3);
  if ([(FBAInboxItemsViewController *)self showingSyntheticInbox])
  {
    v5 = +[FBKContentItem filterGroupsForAll];
  }

  else
  {
    v6 = [(FBAInboxItemsViewController *)self team];
    v5 = [FBKContentItem filterGroupsForTeam:v6];
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
  v3 = [(FBAInboxItemsViewController *)self refreshControl];
  [v3 beginRefreshing];

  [(FBAInboxItemsViewController *)self reloadAppProxy];
}

- (void)beginSearch
{
  v4 = [(FBAInboxItemsViewController *)self navigationItem];
  v2 = [v4 searchController];
  v3 = [v2 searchBar];
  [v3 becomeFirstResponder];
}

- (void)removeFBAObservers
{
  v3 = +[FBKData sharedInstance];
  v4 = [v3 notificationCenter];

  fbaDataObservers = self->_fbaDataObservers;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014D30;
  v8[3] = &unk_1000DEC28;
  v9 = v4;
  v6 = v4;
  [(NSMutableArray *)fbaDataObservers enumerateObjectsUsingBlock:v8];
  v7 = self->_fbaDataObservers;
  self->_fbaDataObservers = 0;
}

- (void)reloadView
{
  v3 = [(FBAInboxItemsViewController *)self tableView];
  v22 = [v3 indexPathForSelectedRow];

  if (v22 && (v4 = [v22 row], -[FBAInboxItemsViewController activeInboxSource](self, "activeInboxSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4 < v6))
  {
    v7 = [(FBAInboxItemsViewController *)self itemForIndexPath:v22];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(FBAInboxItemsViewController *)self inbox];
  v9 = [(FBAInboxItemsViewController *)self team];
  v10 = [v8 inboxItemsForTeam:v9 withSortDescriptors:self->_sortDescriptors];
  v11 = [NSMutableArray arrayWithArray:v10];
  [(FBAInboxItemsViewController *)self setSortedInboxItems:v11];

  v12 = [(FBAInboxItemsViewController *)self inbox];
  v13 = [v12 displayText];
  v14 = [(FBAInboxItemsViewController *)self navigationItem];
  [v14 setTitle:v13];

  [(FBAInboxItemsViewController *)self updateSearchResults];
  v15 = [(FBAInboxItemsViewController *)self tableView];
  [v15 reloadData];

  if (v7)
  {
    v16 = [(FBAInboxItemsViewController *)self activeInboxSource];
    v17 = [v16 indexOfObject:v7];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [(FBAInboxItemsViewController *)self inbox];
      v19 = [v18 type];

      if (v19 != 3)
      {
        v20 = [(FBAInboxItemsViewController *)self tableView];
        v21 = [NSIndexPath indexPathForRow:v17 inSection:0];
        [v20 selectRowAtIndexPath:v21 animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)clearDetail
{
  v3 = [(FBAInboxItemsViewController *)self splitViewController];
  v4 = [v3 viewControllers];
  v5 = [v4 count];

  if (v5 == 2)
  {
    v6 = [(FBAInboxItemsViewController *)self storyboard];
    v8 = [v6 instantiateViewControllerWithIdentifier:@"FBAEmptyStack"];

    v7 = [(FBAInboxItemsViewController *)self splitViewController];
    [v7 showDetailViewController:v8 sender:self];
  }
}

- (void)destroyItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(FBAInboxItemsViewController *)self itemForIndexPath:v4];
  if ([v5 itemType] == 1)
  {
    v6 = [(FBAInboxItemsViewController *)self activeInboxSource];
    [v6 removeObjectAtIndex:{objc_msgSend(v4, "row")}];

    v7 = [(FBAInboxItemsViewController *)self tableView];
    v12 = v4;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
    [v7 deleteRowsAtIndexPaths:v8 withRowAnimation:100];

    [(FBAInboxItemsViewController *)self destroyDraft:v5];
  }

  v9 = [(FBAInboxItemsViewController *)self currDetailIndexPath];
  v10 = [v9 row];
  v11 = [v4 row];

  if (v10 == v11)
  {
    [(FBAInboxItemsViewController *)self clearDetail];
  }
}

- (void)destroySelectedItems:(id)a3
{
  v4 = objc_opt_new();
  v5 = [(FBAInboxItemsViewController *)self tableView];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [[NSMutableArray alloc] initWithArray:v6];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
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
  v15 = [(FBAInboxItemsViewController *)self tableView];
  [v15 beginUpdates];

  v16 = [(FBAInboxItemsViewController *)self tableView];
  [v16 deleteRowsAtIndexPaths:v7 withRowAnimation:100];

  v17 = [(FBAInboxItemsViewController *)self tableView];
  [v17 endUpdates];

  v18 = [(FBAInboxItemsViewController *)self splitViewController];
  v19 = [v18 viewControllers];
  v20 = [v19 count];

  if (v20 == 2)
  {
    v21 = [(FBAInboxItemsViewController *)self currDetailIndexPath];
    v22 = [v7 containsObject:v21];

    if (v22)
    {
      v23 = [(FBAInboxItemsViewController *)self storyboard];
      v24 = [v23 instantiateViewControllerWithIdentifier:@"FBAEmptyStack"];

      v25 = [(FBAInboxItemsViewController *)self splitViewController];
      [v25 showDetailViewController:v24 sender:self];
    }
  }

  [(FBAInboxItemsViewController *)self setEditing:0 animated:1];
}

- (void)destroyDraft:(id)a3
{
  v3 = a3;
  v4 = +[FBADraftManager sharedInstance];
  [v4 deleteDraftFromContentItem:v3 dismissViewOnCompletion:0];
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v21 = a3;
  v5 = [(FBAInboxItemsViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];

  [(FBAInboxItemsViewController *)self setCurrDetailIndexPath:v6];
  v7 = [(FBAInboxItemsViewController *)self itemForIndexPath:v6];
  v8 = [v21 destinationViewController];
  v9 = [v8 viewControllers];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v21 identifier];
  LODWORD(v9) = [v11 isEqualToString:@"FBAResponseDetailPresentation"];

  if (v9)
  {
    goto LABEL_3;
  }

  v12 = [v21 identifier];
  v13 = [v12 isEqualToString:@"FBAFollowupDetailPresentation"];

  if (v13)
  {
    goto LABEL_3;
  }

  v14 = [v21 identifier];
  v15 = [v14 isEqualToString:@"FBASurveyDetailPresentation"];

  if (v15)
  {
    v16 = v10;
    v17 = [(FBAInboxItemsViewController *)self team];
    v18 = [v7 teamForItemPreferringTeam:v17];
    [v16 setTeam:v18];

    [v16 setContentItem:v7];
  }

  else
  {
    v19 = [v21 identifier];
    v20 = [v19 isEqualToString:@"FBAAnnouncementDetailPresentation"];

    if (v20)
    {
LABEL_3:
      [v10 setContentItem:v7];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FBAInboxItemsViewController *)self itemForIndexPath:v7];
  v9 = [(FBAInboxItemsViewController *)self searchController];
  v10 = [v9 isActive];

  if (v10)
  {
    v11 = [(FBAInboxItemsViewController *)self searchController];
    v12 = [v11 searchBar];
    [v12 resignFirstResponder];
  }

  if ([v6 isEditing])
  {
    v13 = [(FBAInboxItemsViewController *)self tableView];
    v14 = [v13 indexPathsForSelectedRows];
    v15 = [v14 count]!= 0;
    v16 = [(FBAInboxItemsViewController *)self destructiveBarButtonItem];
    [v16 setEnabled:v15];

LABEL_5:
LABEL_6:

    goto LABEL_11;
  }

  v17 = [(FBAInboxItemsViewController *)self inbox];
  v18 = [v17 type];

  if (v18 != 3)
  {
    v24 = +[FBALog appHandle];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v8 shortDescription];
      v26 = [v8 updatedAt];
      v30 = 138543618;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Selected Inbox Item [%{public}@] updated at: [%{public}@]", &v30, 0x16u);
    }

    v13 = [v6 cellForRowAtIndexPath:v7];
    v27 = [v8 itemType];
    v28 = &off_1000DF968;
    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = &off_1000DF980;
      }

      else if (v27 != 5)
      {
        if (v27 != 4)
        {
          goto LABEL_6;
        }

        v28 = &off_1000DF970;
      }
    }

    else
    {
      if (!v27)
      {
        v14 = +[FBALog appHandle];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100092ECC(v14);
        }

        goto LABEL_5;
      }

      if (v27 != 1)
      {
        if (v27 != 2)
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

    v14 = v29;
    [(FBAInboxItemsViewController *)self performSegueWithIdentifier:v29 sender:v13];
    goto LABEL_5;
  }

  v19 = [v8 formResponse];
  v20 = [v19 uploadTask];
  v21 = [v20 localSubmissionStage];

  v22 = +[FBALog appHandle];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v8 shortDescription];
    v30 = 138543618;
    v31 = v23;
    v32 = 1024;
    LODWORD(v33) = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "did tap on outbox cell for item [%{public}@] upload task stage [%u]", &v30, 0x12u);
  }

LABEL_11:
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  if ([a3 isEditing])
  {
    v8 = [(FBAInboxItemsViewController *)self tableView];
    v5 = [v8 indexPathsForSelectedRows];
    v6 = [v5 count] != 0;
    v7 = [(FBAInboxItemsViewController *)self destructiveBarButtonItem];
    [v7 setEnabled:v6];
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(FBAInboxItemsViewController *)self inbox:a3];
  v5 = [v4 supportsSelection];

  return v5;
}

- (BOOL)tableView:(id)a3 shouldBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v4 = [(FBAInboxItemsViewController *)self inbox:a3];
  v5 = [v4 supportsSelection];

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(FBAInboxItemsViewController *)self inbox:a3];
  v5 = [v4 supportsDeletion];

  return v5;
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(FBAInboxItemsViewController *)self inbox];
  v9 = [v8 type] == 0;

  if (v9)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100016B68;
    v15[3] = &unk_1000DED50;
    objc_copyWeak(&v17, &location);
    v16 = v7;
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(FBAInboxItemsViewController *)self activeInboxSource:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FBAInboxItemsViewController *)self inbox];
  v9 = [v8 type];
  v10 = @"FBAMailboxItemCell";
  if (v9 == 3)
  {
    v10 = @"FBAOutboxItemCell";
  }

  v11 = v10;

  v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v6];

  v13 = [(FBAInboxItemsViewController *)self itemForIndexPath:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    v15 = [v14 contentItem];

    if (v15)
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

  v16 = [(FBAInboxItemsViewController *)self inbox];
  v17 = [v16 type];

  if (v17 == 3)
  {
    v18 = [v13 formResponse];

    if (v18)
    {
      v19 = [v13 formResponse];
      [v12 setObservedResponse:v19];
    }

    else
    {
      v19 = +[FBALog appHandle];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100092F10(v13, v19);
      }
    }
  }

  [v12 layoutIfNeeded];

  return v12;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v5 = [v4 text];

  if ([v5 length])
  {
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

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
    v12 = [(FBAInboxItemsViewController *)self sortedInboxItems];
    v13 = [v12 filteredArrayUsingPredicate:v11];
    v14 = [v13 mutableCopy];
    searchResultItems = self->_searchResultItems;
    self->_searchResultItems = v14;
  }

  else
  {
    v16 = [(FBAInboxItemsViewController *)self sortedInboxItems];
    v17 = self->_searchResultItems;
    self->_searchResultItems = v16;
  }

  v18 = [(FBAInboxItemsViewController *)self filterManager];
  v19 = [v18 active];

  if (v19)
  {
    v20 = [(FBAInboxItemsViewController *)self filterManager];
    [(FBAInboxItemsViewController *)self filterContentForFilterManager:v20];
  }

  v21 = [(FBAInboxItemsViewController *)self tableView];
  [v21 reloadData];
}

- (void)didDismissSearchController:(id)a3
{
  [(FBAInboxItemsViewController *)self setSearchResultItems:0];
  [(FBAInboxItemsViewController *)self reloadView];

  [(FBAInboxItemsViewController *)self becomeFirstResponder];
}

- (void)updateSearchResults
{
  v3 = [(FBAInboxItemsViewController *)self searchController];
  [(FBAInboxItemsViewController *)self updateSearchResultsForSearchController:v3];
}

- (id)activeInboxSource
{
  v3 = [(FBAInboxItemsViewController *)self filteredInboxItems];

  if (v3)
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
  v3 = [(FBAInboxItemsViewController *)self searchResultItems];

  if (v3)
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

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(FBAInboxItemsViewController *)self activeInboxSource];
  v6 = [v4 row];

  v7 = [v5 objectAtIndex:v6];

  return v7;
}

- (unint64_t)fbkNewFeedbackButtonState
{
  v2 = [(FBAInboxItemsViewController *)self team];
  v3 = [v2 canStartNewFeedback];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)fbkCreateNewFeedback:(id)a3
{
  v4 = a3;
  v6 = +[FBADraftManager sharedInstance];
  v5 = [(FBAInboxItemsViewController *)self team];
  [v6 beginFeedbackForTeam:v5 sender:v4];
}

- (id)fbkLeftToolbarItem
{
  v3 = [UIImage systemImageNamed:FBKSystemImageNameFilter];
  v4 = [(FBAInboxItemsViewController *)self filterManager];
  v5 = [v4 active];
  v6 = @"ENABLE_FILTER";
  if (v5)
  {
    v6 = @"DISABLE_FILTER";
  }

  v7 = v6;

  v8 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"toggleFiltering"];
  v9 = [(FBAInboxItemsViewController *)self filterManager];
  [v8 setSelected:{objc_msgSend(v9, "active")}];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:v7 value:&stru_1000E2210 table:FBKCommonStrings];

  [v8 setAccessibilityLabel:v11];

  return v8;
}

- (void)toggleFiltering
{
  v2 = [(FBAInboxItemsViewController *)self filterManager];
  [v2 toggleActive];
}

- (void)filterContentForFilterManager:(id)a3
{
  v14 = a3;
  if ([v14 active])
  {
    v4 = [(FBAInboxItemsViewController *)self filterSource];
    v5 = [v14 predicate];
    v6 = [v4 filteredArrayUsingPredicate:v5];
    v7 = [v6 mutableCopy];
    [(FBAInboxItemsViewController *)self setFilteredInboxItems:v7];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"FILTERED_BY_PROMPT" value:&stru_1000E2210 table:FBKCommonStrings];

    v10 = [v14 userDescription];
  }

  else
  {
    [(FBAInboxItemsViewController *)self setFilteredInboxItems:0];
    v10 = 0;
    v9 = &stru_1000E2210;
  }

  v11 = [(FBAInboxItemsViewController *)self navigationController];
  v12 = [v11 topViewController];

  if (v12 == self)
  {
    [(FBAInboxItemsViewController *)self fbkShowToolbarWithStatus:v9 subtitle:v10 animated:1];
  }

  v13 = [(FBAInboxItemsViewController *)self tableView];
  [v13 reloadData];
}

- (void)fbkDidTapSubtitleAction:(id)a3
{
  v9 = [[_TtC18Feedback_Assistant25FBAFilterPickerController alloc] initWithStyle:2];
  v4 = [(FBAInboxItemsViewController *)self filterManager];
  [(FBAFilterPickerController *)v9 setFilterManager:v4];

  v5 = [[UINavigationController alloc] initWithRootViewController:v9];
  [v5 setModalPresentationStyle:7];
  v6 = [(FBAInboxItemsViewController *)self navigationController];
  v7 = [v6 toolbar];
  v8 = [v5 presentationController];
  [v8 setSourceView:v7];

  [(FBAInboxItemsViewController *)self presentViewController:v5 animated:1 completion:0];
}

@end
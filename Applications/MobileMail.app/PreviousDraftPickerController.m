@interface PreviousDraftPickerController
+ (OS_os_log)log;
- (BOOL)hasDrafts;
- (NSDirectionalEdgeInsets)mf_extraContentMargins;
- (PreviousDraftPickerController)initWithMessageRepository:(id)a3;
- (double)draftRowHeight;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_cancel:(id)a3;
- (void)_configureCell:(id)a3 itemID:(id)a4;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 completionHandler:(id)a5;
- (void)_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completionHandler:(id)a6;
- (void)_reloadDataSource;
- (void)_updateHeaderViewDraftsState;
- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5;
- (void)collection:(id)a3 changedItemIDs:(id)a4;
- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5;
- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5;
- (void)collectionDidFinishInitialLoad:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation PreviousDraftPickerController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002400F8;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD7C8 != -1)
  {
    dispatch_once(&qword_1006DD7C8, block);
  }

  v2 = qword_1006DD7C0;

  return v2;
}

- (PreviousDraftPickerController)initWithMessageRepository:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = PreviousDraftPickerController;
  v6 = [(PreviousDraftPickerController *)&v27 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageRepository, a3);
    v8 = [[MessageListCollectionHelper alloc] initWithLoggableClient:v7 updateQueueName:@"com.apple.mobilemail.PreviousDraftPickerController.tableViewUpdate" section:0];
    collectionHelper = v7->_collectionHelper;
    v7->_collectionHelper = v8;

    v10 = objc_alloc_init(MessageListCellLayoutValuesHelper);
    layoutValuesHelper = v7->_layoutValuesHelper;
    v7->_layoutValuesHelper = v10;

    v12 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
    [(MessageListCellLayoutValuesHelper *)v7->_layoutValuesHelper setDefaultBackgroundConfiguration:v12];

    v13 = +[LocalAccount localAccount];
    v14 = [v13 transientDraftsFolder];
    v15 = [v14 URL];

    v16 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxWithURL:v15];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_TITLE" value:&stru_100662A88 table:@"Main"];
    v19 = [EMSmartMailbox unifiedMailboxOfType:5 name:v18 additionalPredicate:v16];
    v28 = v19;
    v20 = [NSArray arrayWithObjects:&v28 count:1];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = v20;

    v22 = +[NSUUID UUID];
    v23 = [v22 UUIDString];
    composeSection = v7->_composeSection;
    v7->_composeSection = v23;

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v7 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v12 traitCollectionDidChange:v4];
  v5 = [(PreviousDraftPickerController *)self traitCollection];
  v6 = [(PreviousDraftPickerController *)self mf_supportsPopoverPresentation];
  v7 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [v7 setSupportsPopover:v6];

  if ([v5 mf_traitDifferenceAffectsTextLayout:v4])
  {
    v8 = [(PreviousDraftPickerController *)self layoutValuesHelper];
    [v8 setTraitCollection:v5];
  }

  v9 = [(PreviousDraftPickerController *)self tableView];
  v10 = [NSIndexPath indexPathForRow:0 inSection:0];
  v11 = [v9 cellForRowAtIndexPath:v10];

  if (v11)
  {
    [v11 mf_updateBackgroundColorForPopover:{-[PreviousDraftPickerController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
  }
}

- (void)viewLayoutMarginsDidChange
{
  v12.receiver = self;
  v12.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v12 viewLayoutMarginsDidChange];
  [(PreviousDraftPickerController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [v11 setSystemLayoutMargins:{v4, v6, v8, v10}];
}

- (NSDirectionalEdgeInsets)mf_extraContentMargins
{
  v2 = [(PreviousDraftPickerController *)self traitCollection];
  [v2 mf_leadingEdgeToBackButtonText];
  v4 = v3;

  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.trailing = v7;
  result.bottom = v6;
  result.leading = v8;
  result.top = v5;
  return result;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v12 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_TITLE" value:&stru_100662A88 table:@"Main"];
  [(PreviousDraftPickerController *)self setTitle:v4];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel:"];
  v6 = [(PreviousDraftPickerController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(PreviousDraftPickerController *)self tableView];
  v8 = objc_opt_class();
  v9 = +[MessageListTableViewCell reusableIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(PreviousDraftPickerController *)self tableView];
  [v10 registerClass:objc_opt_class() forCellReuseIdentifier:@"PreviousDraftPickerNewMessageCellIdentifier"];

  [(PreviousDraftPickerController *)self _reloadDataSource];
  v11 = [(PreviousDraftPickerController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(PreviousDraftPickerController *)self setTableViewObserver:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v6 viewWillAppear:a3];
  v4 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  v5 = [(PreviousDraftPickerController *)self traitCollection];
  [v4 setTraitCollection:v5];

  [(PreviousDraftPickerController *)self systemMinimumLayoutMargins];
  [v4 setSystemLayoutMargins:?];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v4 viewDidAppear:a3];
  [(PreviousDraftPickerController *)self mf_updateAlertSuppressionContextsForReason:@"showed previous drafts picker"];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v3 viewWillDisappear:a3];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  headerView = self->_headerView;
  if (!headerView)
  {
    v8 = [PreviousDraftPickerHeaderView alloc];
    [(PreviousDraftPickerController *)self tableView:v6 heightForHeaderInSection:a4];
    v10 = [(PreviousDraftPickerHeaderView *)v8 initWithFrame:0.0, 0.0, 320.0, v9];
    v11 = self->_headerView;
    self->_headerView = v10;

    [(PreviousDraftPickerHeaderView *)self->_headerView setHasDrafts:[(PreviousDraftPickerController *)self hasDrafts]];
    headerView = self->_headerView;
  }

  v12 = headerView;

  return headerView;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 36.0;
  if (a4 != 1)
  {
    return 20.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section] == 1)
  {
    [(PreviousDraftPickerController *)self draftRowHeight];
    v7 = v6;
  }

  else if (MUISolariumFeatureEnabled() && (+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v5 isEqual:v8], v8, v9))
  {
    v7 = UITableViewAutomaticDimension;
  }

  else
  {
    v10 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

    if (IsAccessibilityCategory)
    {
      v7 = UITableViewAutomaticDimension;
    }

    else
    {
      v7 = 44.0;
    }
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PreviousDraftPickerController *)self actionBlock];

  if (v6)
  {
    if ([v5 section])
    {
      v7 = [(PreviousDraftPickerController *)self tableViewDataSource];
      v8 = [v7 itemIdentifierForIndexPath:v5];

      objc_initWeak(&location, self);
      v9 = [(PreviousDraftPickerController *)self messageList];
      v10 = [v9 messageListItemForItemID:v8];
      v11 = +[EFScheduler mainThreadScheduler];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100240E0C;
      v12[3] = &unk_10064CDE0;
      objc_copyWeak(&v13, &location);
      [v10 onScheduler:v11 addSuccessBlock:v12];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = [(PreviousDraftPickerController *)self actionBlock];
      v8[2](v8, 0, 0);
    }
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(PreviousDraftPickerController *)self tableViewDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];

  v8 = [(PreviousDraftPickerController *)self messageList];
  v9 = [v8 messageListItemForItemID:v7];
  v10 = [v9 result];

  if (v10)
  {
    v21 = v10;
    v11 = [NSArray arrayWithObjects:&v21 count:1];
    v12 = [(PreviousDraftPickerController *)self undoManager];
    v13 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v11 undoManager:v12 origin:5 actor:2];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10024115C;
    v18[3] = &unk_10064D1A8;
    v18[4] = self;
    v19 = v7;
    v14 = [v13 swipeActionWithPreparation:v18 completion:0];
    v20 = v14;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    v16 = [UISwipeActionsConfiguration configurationWithActions:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (double)draftRowHeight
{
  v2 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  v3 = [v2 defaultLayoutValues];
  [v3 defaultRowHeight];
  v5 = v4;

  return v5;
}

- (void)_reloadDataSource
{
  v3 = [(PreviousDraftPickerController *)self mailboxes];
  v4 = [(PreviousDraftPickerController *)self messageRepository];
  v5 = [EMMessageList simpleMessageListForMailboxes:v3 withRepository:v4 additionalQueryOptions:0 shouldUpdateDisplayDate:0];
  [(PreviousDraftPickerController *)self setMessageList:v5];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100241578;
  v14[3] = &unk_100656598;
  objc_copyWeak(&v15, &location);
  v6 = objc_retainBlock(v14);
  v7 = [UITableViewDiffableDataSource alloc];
  v8 = [(PreviousDraftPickerController *)self tableView];
  v9 = [v7 initWithTableView:v8 cellProvider:v6];
  [(PreviousDraftPickerController *)self setTableViewDataSource:v9];

  v10 = [(PreviousDraftPickerController *)self collectionHelper];
  v11 = [v10 updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002417CC;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  dispatch_sync(v11, block);

  v12 = [(PreviousDraftPickerController *)self messageList];
  [v12 beginObserving:self];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_configureCell:(id)a3 itemID:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [NSAssertionHandler currentHandler:v8];
      [v21 handleFailureInMethod:a2 object:self file:@"PreviousDraftPickerController.m" lineNumber:353 description:@"cell must be an instance of [MessageListTableViewCell class]"];
    }
  }

  v9 = v7;
  v10 = [v9 cellHelper];
  v11 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  v12 = [v10 cellView];
  [v12 setLayoutValuesHelper:v11];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100241D18;
  v25[3] = &unk_100654578;
  v13 = v8;
  v26 = v13;
  v14 = v10;
  v27 = v14;
  v15 = objc_retainBlock(v25);
  v16 = [(PreviousDraftPickerController *)self messageList];
  v17 = [v16 messageListItemForItemID:v13];
  v18 = [v17 resultIfAvailable];
  if (v18)
  {
    (v15[2])(v15, v18);
  }

  else
  {
    [v14 setMessageListItem:0 style:0];
    v19 = +[EFScheduler mainThreadScheduler];
    [v17 onScheduler:v19 addSuccessBlock:v15];

    v20 = +[EFScheduler mainThreadScheduler];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100241DF4;
    v22[3] = &unk_10064DD80;
    v23 = v13;
    v24 = v16;
    [v17 onScheduler:v20 addFailureBlock:v22];
  }
}

- (void)_updateHeaderViewDraftsState
{
  headerView = self->_headerView;
  v3 = [(PreviousDraftPickerController *)self hasDrafts];

  [(PreviousDraftPickerHeaderView *)headerView setHasDrafts:v3];
}

- (void)_cancel:(id)a3
{
  v4 = [(PreviousDraftPickerController *)self actionBlock];

  if (v4)
  {
    v5 = [(PreviousDraftPickerController *)self actionBlock];
    v5[2](v5, 2, 0);
  }
}

- (void)_contentSizeCategoryChanged:(id)a3
{
  v4 = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [v4 invalidate];

  v5 = [(PreviousDraftPickerController *)self tableView];
  [v5 reloadData];
}

- (BOOL)hasDrafts
{
  v3 = [(PreviousDraftPickerController *)self tableViewDataSource];
  v4 = [v3 snapshot];

  v5 = [(PreviousDraftPickerController *)self collectionHelper];
  v6 = [v5 section];
  v7 = [v4 numberOfItemsInSection:v6] > 0;

  return v7;
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 after:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002421B8;
  v9[3] = &unk_10064CF88;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(PreviousDraftPickerController *)v10 _performDataSourceUpdateAnimated:1 collection:a3 update:v9];
}

- (void)collection:(id)a3 addedItemIDs:(id)a4 before:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100242358;
  v9[3] = &unk_10064CF88;
  v10 = self;
  v11 = a4;
  v12 = a5;
  v7 = v12;
  v8 = v11;
  [(PreviousDraftPickerController *)v10 _performDataSourceUpdateAnimated:1 collection:a3 update:v9];
}

- (void)collection:(id)a3 changedItemIDs:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002424C0;
  v7[3] = &unk_10064CCA0;
  v8 = a4;
  v6 = v8;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v7];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 after:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002425D8;
  v10[3] = &unk_10064CF88;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v8 = v13;
  v9 = v11;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v10];
}

- (void)collection:(id)a3 movedItemIDs:(id)a4 before:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100242844;
  v10[3] = &unk_10064CF88;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v8 = v13;
  v9 = v11;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:a3 update:v10];
}

- (void)collectionDidFinishInitialLoad:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100242A5C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)_deleteItemsWithIDs:(id)a3 fromCollection:(id)a4 completionHandler:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100242B90;
  v9[3] = &unk_10064CCA0;
  v10 = a3;
  v8 = v10;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:a4 update:v9 completionHandler:a5];
}

- (void)_performDataSourceUpdateAnimated:(BOOL)a3 collection:(id)a4 update:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100242E04;
  v17[3] = &unk_10064CCC8;
  v13 = v10;
  v18 = v13;
  v19 = self;
  v14 = v11;
  v20 = v14;
  v22 = a3;
  v15 = v12;
  v21 = v15;
  v16 = +[EFScheduler mainThreadScheduler];
  [v16 performBlock:v17];
}

@end
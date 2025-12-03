@interface PreviousDraftPickerController
+ (OS_os_log)log;
- (BOOL)hasDrafts;
- (NSDirectionalEdgeInsets)mf_extraContentMargins;
- (PreviousDraftPickerController)initWithMessageRepository:(id)repository;
- (double)draftRowHeight;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_cancel:(id)_cancel;
- (void)_configureCell:(id)cell itemID:(id)d;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_deleteItemsWithIDs:(id)ds fromCollection:(id)collection completionHandler:(id)handler;
- (void)_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completionHandler:(id)handler;
- (void)_reloadDataSource;
- (void)_updateHeaderViewDraftsState;
- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before;
- (void)collection:(id)collection changedItemIDs:(id)ds;
- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after;
- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before;
- (void)collectionDidFinishInitialLoad:(id)load;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PreviousDraftPickerController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002400F8;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD7C8 != -1)
  {
    dispatch_once(&qword_1006DD7C8, block);
  }

  v2 = qword_1006DD7C0;

  return v2;
}

- (PreviousDraftPickerController)initWithMessageRepository:(id)repository
{
  repositoryCopy = repository;
  v27.receiver = self;
  v27.super_class = PreviousDraftPickerController;
  v6 = [(PreviousDraftPickerController *)&v27 initWithStyle:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageRepository, repository);
    v8 = [[MessageListCollectionHelper alloc] initWithLoggableClient:v7 updateQueueName:@"com.apple.mobilemail.PreviousDraftPickerController.tableViewUpdate" section:0];
    collectionHelper = v7->_collectionHelper;
    v7->_collectionHelper = v8;

    v10 = objc_alloc_init(MessageListCellLayoutValuesHelper);
    layoutValuesHelper = v7->_layoutValuesHelper;
    v7->_layoutValuesHelper = v10;

    v12 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
    [(MessageListCellLayoutValuesHelper *)v7->_layoutValuesHelper setDefaultBackgroundConfiguration:v12];

    v13 = +[LocalAccount localAccount];
    transientDraftsFolder = [v13 transientDraftsFolder];
    v15 = [transientDraftsFolder URL];

    v16 = [EMMessageListItemPredicates predicateForExcludingMessagesInMailboxWithURL:v15];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"PREVIOUS_DRAFT_PICKER_TITLE" value:&stru_100662A88 table:@"Main"];
    v19 = [EMSmartMailbox unifiedMailboxOfType:5 name:v18 additionalPredicate:v16];
    v28 = v19;
    v20 = [NSArray arrayWithObjects:&v28 count:1];
    mailboxes = v7->_mailboxes;
    v7->_mailboxes = v20;

    v22 = +[NSUUID UUID];
    uUIDString = [v22 UUIDString];
    composeSection = v7->_composeSection;
    v7->_composeSection = uUIDString;

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v7 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(PreviousDraftPickerController *)self traitCollection];
  mf_supportsPopoverPresentation = [(PreviousDraftPickerController *)self mf_supportsPopoverPresentation];
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [layoutValuesHelper setSupportsPopover:mf_supportsPopoverPresentation];

  if ([traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy])
  {
    layoutValuesHelper2 = [(PreviousDraftPickerController *)self layoutValuesHelper];
    [layoutValuesHelper2 setTraitCollection:traitCollection];
  }

  tableView = [(PreviousDraftPickerController *)self tableView];
  v10 = [NSIndexPath indexPathForRow:0 inSection:0];
  v11 = [tableView cellForRowAtIndexPath:v10];

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
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [layoutValuesHelper setSystemLayoutMargins:{v4, v6, v8, v10}];
}

- (NSDirectionalEdgeInsets)mf_extraContentMargins
{
  traitCollection = [(PreviousDraftPickerController *)self traitCollection];
  [traitCollection mf_leadingEdgeToBackButtonText];
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
  navigationItem = [(PreviousDraftPickerController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  tableView = [(PreviousDraftPickerController *)self tableView];
  v8 = objc_opt_class();
  v9 = +[MessageListTableViewCell reusableIdentifier];
  [tableView registerClass:v8 forCellReuseIdentifier:v9];

  tableView2 = [(PreviousDraftPickerController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"PreviousDraftPickerNewMessageCellIdentifier"];

  [(PreviousDraftPickerController *)self _reloadDataSource];
  mf_updatePreferredContentSizeBasedOnTableView = [(PreviousDraftPickerController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(PreviousDraftPickerController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v6 viewWillAppear:appear];
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  traitCollection = [(PreviousDraftPickerController *)self traitCollection];
  [layoutValuesHelper setTraitCollection:traitCollection];

  [(PreviousDraftPickerController *)self systemMinimumLayoutMargins];
  [layoutValuesHelper setSystemLayoutMargins:?];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v4 viewDidAppear:appear];
  [(PreviousDraftPickerController *)self mf_updateAlertSuppressionContextsForReason:@"showed previous drafts picker"];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = PreviousDraftPickerController;
  [(PreviousDraftPickerController *)&v3 viewWillDisappear:disappear];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  headerView = self->_headerView;
  if (!headerView)
  {
    v8 = [PreviousDraftPickerHeaderView alloc];
    [(PreviousDraftPickerController *)self tableView:viewCopy heightForHeaderInSection:section];
    v10 = [(PreviousDraftPickerHeaderView *)v8 initWithFrame:0.0, 0.0, 320.0, v9];
    v11 = self->_headerView;
    self->_headerView = v10;

    [(PreviousDraftPickerHeaderView *)self->_headerView setHasDrafts:[(PreviousDraftPickerController *)self hasDrafts]];
    headerView = self->_headerView;
  }

  v12 = headerView;

  return headerView;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 36.0;
  if (section != 1)
  {
    return 20.0;
  }

  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    [(PreviousDraftPickerController *)self draftRowHeight];
    v7 = v6;
  }

  else if (MUISolariumFeatureEnabled() && (+[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = [pathCopy isEqual:v8], v8, v9))
  {
    v7 = UITableViewAutomaticDimension;
  }

  else
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  actionBlock = [(PreviousDraftPickerController *)self actionBlock];

  if (actionBlock)
  {
    if ([pathCopy section])
    {
      tableViewDataSource = [(PreviousDraftPickerController *)self tableViewDataSource];
      actionBlock2 = [tableViewDataSource itemIdentifierForIndexPath:pathCopy];

      objc_initWeak(&location, self);
      messageList = [(PreviousDraftPickerController *)self messageList];
      v10 = [messageList messageListItemForItemID:actionBlock2];
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
      actionBlock2 = [(PreviousDraftPickerController *)self actionBlock];
      actionBlock2[2](actionBlock2, 0, 0);
    }
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableViewDataSource = [(PreviousDraftPickerController *)self tableViewDataSource];
  v7 = [tableViewDataSource itemIdentifierForIndexPath:pathCopy];

  messageList = [(PreviousDraftPickerController *)self messageList];
  v9 = [messageList messageListItemForItemID:v7];
  result = [v9 result];

  if (result)
  {
    v21 = result;
    v11 = [NSArray arrayWithObjects:&v21 count:1];
    undoManager = [(PreviousDraftPickerController *)self undoManager];
    v13 = [(MFDestructiveTriageInteraction *)MFDeleteTriageInteraction interactionWithMessageListItems:v11 undoManager:undoManager origin:5 actor:2];

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
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  defaultLayoutValues = [layoutValuesHelper defaultLayoutValues];
  [defaultLayoutValues defaultRowHeight];
  v5 = v4;

  return v5;
}

- (void)_reloadDataSource
{
  mailboxes = [(PreviousDraftPickerController *)self mailboxes];
  messageRepository = [(PreviousDraftPickerController *)self messageRepository];
  v5 = [EMMessageList simpleMessageListForMailboxes:mailboxes withRepository:messageRepository additionalQueryOptions:0 shouldUpdateDisplayDate:0];
  [(PreviousDraftPickerController *)self setMessageList:v5];

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100241578;
  v14[3] = &unk_100656598;
  objc_copyWeak(&v15, &location);
  v6 = objc_retainBlock(v14);
  v7 = [UITableViewDiffableDataSource alloc];
  tableView = [(PreviousDraftPickerController *)self tableView];
  v9 = [v7 initWithTableView:tableView cellProvider:v6];
  [(PreviousDraftPickerController *)self setTableViewDataSource:v9];

  collectionHelper = [(PreviousDraftPickerController *)self collectionHelper];
  updateQueue = [collectionHelper updateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002417CC;
  block[3] = &unk_10064C7E8;
  block[4] = self;
  dispatch_sync(updateQueue, block);

  messageList = [(PreviousDraftPickerController *)self messageList];
  [messageList beginObserving:self];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_configureCell:(id)cell itemID:(id)d
{
  cellCopy = cell;
  dCopy = d;
  if (cellCopy)
  {
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [NSAssertionHandler currentHandler:dCopy];
      [v21 handleFailureInMethod:a2 object:self file:@"PreviousDraftPickerController.m" lineNumber:353 description:@"cell must be an instance of [MessageListTableViewCell class]"];
    }
  }

  v9 = cellCopy;
  cellHelper = [v9 cellHelper];
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  cellView = [cellHelper cellView];
  [cellView setLayoutValuesHelper:layoutValuesHelper];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100241D18;
  v25[3] = &unk_100654578;
  v13 = dCopy;
  v26 = v13;
  v14 = cellHelper;
  v27 = v14;
  v15 = objc_retainBlock(v25);
  messageList = [(PreviousDraftPickerController *)self messageList];
  v17 = [messageList messageListItemForItemID:v13];
  resultIfAvailable = [v17 resultIfAvailable];
  if (resultIfAvailable)
  {
    (v15[2])(v15, resultIfAvailable);
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
    v24 = messageList;
    [v17 onScheduler:v20 addFailureBlock:v22];
  }
}

- (void)_updateHeaderViewDraftsState
{
  headerView = self->_headerView;
  hasDrafts = [(PreviousDraftPickerController *)self hasDrafts];

  [(PreviousDraftPickerHeaderView *)headerView setHasDrafts:hasDrafts];
}

- (void)_cancel:(id)_cancel
{
  actionBlock = [(PreviousDraftPickerController *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(PreviousDraftPickerController *)self actionBlock];
    actionBlock2[2](actionBlock2, 2, 0);
  }
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  layoutValuesHelper = [(PreviousDraftPickerController *)self layoutValuesHelper];
  [layoutValuesHelper invalidate];

  tableView = [(PreviousDraftPickerController *)self tableView];
  [tableView reloadData];
}

- (BOOL)hasDrafts
{
  tableViewDataSource = [(PreviousDraftPickerController *)self tableViewDataSource];
  snapshot = [tableViewDataSource snapshot];

  collectionHelper = [(PreviousDraftPickerController *)self collectionHelper];
  section = [collectionHelper section];
  v7 = [snapshot numberOfItemsInSection:section] > 0;

  return v7;
}

- (void)collection:(id)collection addedItemIDs:(id)ds after:(id)after
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1002421B8;
  v9[3] = &unk_10064CF88;
  selfCopy = self;
  dsCopy = ds;
  afterCopy = after;
  v7 = afterCopy;
  v8 = dsCopy;
  [(PreviousDraftPickerController *)selfCopy _performDataSourceUpdateAnimated:1 collection:collection update:v9];
}

- (void)collection:(id)collection addedItemIDs:(id)ds before:(id)before
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100242358;
  v9[3] = &unk_10064CF88;
  selfCopy = self;
  dsCopy = ds;
  beforeCopy = before;
  v7 = beforeCopy;
  v8 = dsCopy;
  [(PreviousDraftPickerController *)selfCopy _performDataSourceUpdateAnimated:1 collection:collection update:v9];
}

- (void)collection:(id)collection changedItemIDs:(id)ds
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002424C0;
  v7[3] = &unk_10064CCA0;
  dsCopy = ds;
  v6 = dsCopy;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v7];
}

- (void)collection:(id)collection movedItemIDs:(id)ds after:(id)after
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002425D8;
  v10[3] = &unk_10064CF88;
  dsCopy = ds;
  selfCopy = self;
  afterCopy = after;
  v8 = afterCopy;
  v9 = dsCopy;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v10];
}

- (void)collection:(id)collection movedItemIDs:(id)ds before:(id)before
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100242844;
  v10[3] = &unk_10064CF88;
  dsCopy = ds;
  selfCopy = self;
  beforeCopy = before;
  v8 = beforeCopy;
  v9 = dsCopy;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v10];
}

- (void)collectionDidFinishInitialLoad:(id)load
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100242A5C;
  v4[3] = &unk_10064C7E8;
  v4[4] = self;
  v3 = +[EFScheduler mainThreadScheduler];
  [v3 performBlock:v4];
}

- (void)_deleteItemsWithIDs:(id)ds fromCollection:(id)collection completionHandler:(id)handler
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100242B90;
  v9[3] = &unk_10064CCA0;
  dsCopy = ds;
  v8 = dsCopy;
  [(PreviousDraftPickerController *)self _performDataSourceUpdateAnimated:1 collection:collection update:v9 completionHandler:handler];
}

- (void)_performDataSourceUpdateAnimated:(BOOL)animated collection:(id)collection update:(id)update completionHandler:(id)handler
{
  collectionCopy = collection;
  updateCopy = update;
  handlerCopy = handler;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100242E04;
  v17[3] = &unk_10064CCC8;
  v13 = collectionCopy;
  v18 = v13;
  selfCopy = self;
  v14 = updateCopy;
  v20 = v14;
  animatedCopy = animated;
  v15 = handlerCopy;
  v21 = v15;
  v16 = +[EFScheduler mainThreadScheduler];
  [v16 performBlock:v17];
}

@end
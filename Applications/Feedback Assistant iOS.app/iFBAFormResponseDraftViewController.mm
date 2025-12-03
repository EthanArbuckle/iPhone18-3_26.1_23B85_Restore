@interface iFBAFormResponseDraftViewController
- (BOOL)shouldDisplayUnsolicitedFollowup;
- (BOOL)shouldShowStatus;
- (FBKFormResponseStub)responseStub;
- (NSDateFormatter)dateFormatter;
- (iFBAFormResponseDraftViewController)initWithCoder:(id)coder;
- (iFBAResponseDetailHeaderView)headerView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureActionsMenu;
- (void)deleteDraft:(id)draft completion:(id)completion;
- (void)setContentItem:(id)item;
- (void)setSuppressUnsolicitedResponse:(BOOL)response;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateBarButton;
- (void)updateContent;
- (void)updateHeader;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation iFBAFormResponseDraftViewController

- (iFBAFormResponseDraftViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = iFBAFormResponseDraftViewController;
  v3 = [(iFBAFormResponseDraftViewController *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_suppressUnsolicitedResponse = 0;
    sections = v3->_sections;
    v3->_sections = 0;
  }

  return v4;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = iFBAFormResponseDraftViewController;
  [(iFBAFormResponseDraftViewController *)&v13 viewDidLoad];
  tableView = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:0.0];

  tableView2 = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView2 setEstimatedSectionFooterHeight:0.0];

  [(iFBAFormResponseDraftViewController *)self updateBarButton];
  [(iFBAFormResponseDraftViewController *)self updateHeader];
  tableView3 = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  tableView4 = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView4 setEstimatedRowHeight:100.0];

  v7 = [UIView alloc];
  tableView5 = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView5 frame];
  v9 = [v7 initWithFrame:{0.0, 0.0}];

  v10 = +[UIColor separatorColor];
  [v9 setBackgroundColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  tableView6 = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView6 setTableHeaderView:v9];

  navigationItem = [(iFBAFormResponseDraftViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(iFBAFormResponseDraftViewController *)self configureActionsMenu];
}

- (FBKFormResponseStub)responseStub
{
  contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
  formResponseStub = [contentItem formResponseStub];

  return formResponseStub;
}

- (void)setContentItem:(id)item
{
  itemCopy = item;
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [itemCopy ID];
    *buf = 67109120;
    *&buf[4] = [v7 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Viewing Stub Response Item with ID  [%i]", buf, 8u);
  }

  objc_storeStrong(&self->_contentItem, item);
  contentItemObserver = [(iFBAFormResponseDraftViewController *)self contentItemObserver];

  if (contentItemObserver)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    contentItemObserver2 = [(iFBAFormResponseDraftViewController *)self contentItemObserver];
    [v9 removeObserver:contentItemObserver2];
  }

  objc_initWeak(buf, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10000D160;
  v39[3] = &unk_1000DE708;
  objc_copyWeak(&v40, buf);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10000D20C;
  v37[3] = &unk_1000DE758;
  v37[4] = self;
  v11 = objc_retainBlock(v39);
  v38 = v11;
  v12 = objc_retainBlock(v37);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000D2F0;
  v33[3] = &unk_1000DE7D0;
  v33[4] = self;
  objc_copyWeak(&v36, buf);
  v13 = v12;
  v34 = v13;
  v14 = v11;
  v35 = v14;
  v15 = objc_retainBlock(v33);
  contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
  managedObjectContext = [contentItem managedObjectContext];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10000D7C8;
  v29 = &unk_1000DE7F8;
  v18 = itemCopy;
  v30 = v18;
  objc_copyWeak(&v32, buf);
  v19 = v15;
  v31 = v19;
  v20 = [managedObjectContext addObjectsDidChangeNotificationObserver:&v26];
  contentItemObserver = self->_contentItemObserver;
  self->_contentItemObserver = v20;

  v22 = [(iFBAFormResponseDraftViewController *)self contentItem:v26];
  LOBYTE(contentItem) = v22 == 0;

  v23 = v14;
  if ((contentItem & 1) == 0)
  {
    v24 = +[NSBundle mainBundle];
    v25 = [v24 localizedStringForKey:@"LOADING_ELLIPSES" value:&stru_1000E2210 table:0];
    [(iFBAFormResponseDraftViewController *)self fbkShowSpinnerWithStatus:v25 userInteractionEnabled:1];

    [(iFBAFormResponseDraftViewController *)self updateHeader];
    v23 = v19;
  }

  (v23[2])();

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v40);
  objc_destroyWeak(buf);
}

- (BOOL)shouldShowStatus
{
  contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
  v3 = [contentItem itemType] == 4;

  return v3;
}

- (void)updateContent
{
  v8 = [[NSMutableArray alloc] initWithCapacity:4];
  responseStub = [(iFBAFormResponseDraftViewController *)self responseStub];

  if (responseStub)
  {
    v4 = [[FBARDVSection alloc] initWithTitle:0 type:0];
    v5 = [[FBARDVRow alloc] initWithTitle:0 subtitle:0 object:0];
    rows = [(FBARDVSection *)v4 rows];
    [rows addObject:v5];

    [v8 addObject:v4];
  }

  v7 = [NSArray arrayWithArray:v8];
  [(iFBAFormResponseDraftViewController *)self setSections:v7];
}

- (void)setSuppressUnsolicitedResponse:(BOOL)response
{
  self->_suppressUnsolicitedResponse = response;
  tableView = [(iFBAFormResponseDraftViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateBarButton
{
  contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
  itemType = [contentItem itemType];

  navigationItem = [(iFBAFormResponseDraftViewController *)self navigationItem];
  if (itemType == 1)
  {
    editBarButton = [(iFBAFormResponseDraftViewController *)self editBarButton];
    [navigationItem setRightBarButtonItem:editBarButton];
  }

  else
  {
    [navigationItem setRightBarButtonItem:0];
  }
}

- (void)updateHeader
{
  if ((FBKIsSolariumEnabled() & 1) != 0 || ([(iFBAFormResponseDraftViewController *)self responseStub], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
    displayTitle = [contentItem displayTitle];
    navigationItem = [(iFBAFormResponseDraftViewController *)self navigationItem];
    [navigationItem setTitle:displayTitle];
  }

  else
  {
    v6 = +[FBALog appHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100092844(v6);
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"LOADING_ELLIPSES" value:&stru_1000E2210 table:0];
    navigationItem2 = [(iFBAFormResponseDraftViewController *)self navigationItem];
    [navigationItem2 setTitle:v8];
  }
}

- (NSDateFormatter)dateFormatter
{
  if (qword_10010AF88 != -1)
  {
    sub_100092888();
  }

  v3 = qword_10010AF80;

  return v3;
}

- (BOOL)shouldDisplayUnsolicitedFollowup
{
  if ([(iFBAFormResponseDraftViewController *)self suppressUnsolicitedResponse])
  {
    return 0;
  }

  responseStub = [(iFBAFormResponseDraftViewController *)self responseStub];
  isSubmitted = [responseStub isSubmitted];

  if (!isSubmitted)
  {
    return 0;
  }

  responseStub2 = [(iFBAFormResponseDraftViewController *)self responseStub];
  feedback = [responseStub2 feedback];
  allowUnsolicitedFollowup = [feedback allowUnsolicitedFollowup];

  return allowUnsolicitedFollowup;
}

- (void)configureActionsMenu
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
    v5 = [contentItem ID];
    *buf = 67109120;
    intValue = [v5 intValue];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "edit button tapped for form response [%i]", buf, 8u);
  }

  v6 = [[_TtC18Feedback_Assistant23FBAActionMenuController alloc] initWithTitle:0 subtitle:0 actions:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"EDIT_DRAFT" value:@"Edit Draft" table:@"CommonStrings"];
  v9 = [UIImage systemImageNamed:FBKSystemImageNameEditDraft];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000E030;
  v17[3] = &unk_1000DE840;
  v17[4] = self;
  [(FBAActionMenuController *)v6 addActionWithTitle:v8 image:v9 actionHandler:v17];

  v10 = [_TtC18Feedback_Assistant25FBAActionControllerAction alloc];
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"DELETE_DRAFT" value:@"Delete Draft" table:@"CommonStrings"];
  v13 = [UIImage systemImageNamed:FBKSystemImageNameDeleteDraft];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000E0A0;
  v16[3] = &unk_1000DE840;
  v16[4] = self;
  v14 = [(FBAActionControllerAction *)v10 initWithTitle:v12 image:v13 actionHandler:v16];

  [(FBAActionControllerAction *)v14 setDestructive:1];
  [(FBAActionMenuController *)v6 addAction:v14];
  editBarButton = [(iFBAFormResponseDraftViewController *)self editBarButton];
  [(FBAActionMenuController *)v6 attachToBarButtonItem:editBarButton];
}

- (void)deleteDraft:(id)draft completion:(id)completion
{
  completionCopy = completion;
  draftCopy = draft;
  v7 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:[(iFBAFormResponseDraftViewController *)self fbk_objc_preferredAlertStyle]];
  preferredStyle = [v7 preferredStyle];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (preferredStyle == 1)
  {
    v11 = [v9 localizedStringForKey:@"DELETE_DRAFT_PROMPT_SHORT" value:@"Are you sure you want to delete this draft?" table:@"CommonStrings"];
    [v7 setTitle:v11];

    navigationItem = +[NSBundle mainBundle];
    rightBarButtonItem = [navigationItem localizedStringForKey:@"CANNOT_UNDO" value:@"This cannot be undone." table:@"CommonStrings"];
    [v7 setMessage:rightBarButtonItem];
  }

  else
  {
    v14 = [v9 localizedStringForKey:@"DELETE_DRAFT_PROMPT_LONG" value:@"Are you sure you want to delete this draft? This cannot be undone." table:@"CommonStrings"];
    [v7 setMessage:v14];

    navigationItem = [(iFBAFormResponseDraftViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceItem:rightBarButtonItem];
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DELETE_DRAFT_PROMPT" value:@"Delete Draft" table:@"CommonStrings"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000E408;
  v27[3] = &unk_1000DE868;
  v27[4] = self;
  v18 = completionCopy;
  v28 = v18;
  v19 = [UIAlertAction actionWithTitle:v17 style:2 handler:v27];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:@"Cancel" table:@"CommonStrings"];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000E49C;
  v25[3] = &unk_1000DE868;
  v25[4] = self;
  v26 = v18;
  v22 = v18;
  v23 = [UIAlertAction actionWithTitle:v21 style:1 handler:v25];

  [v7 addAction:v19];
  [v7 addAction:v23];
  [draftCopy presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  if ([v6 sectionType] == 3)
  {
    contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
    [(iFBAFormResponseDraftViewController *)self didTapCloseFeedbackWithItem:contentItem atIndexPath:pathCopy];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(iFBAFormResponseDraftViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  sectionTitle = [v6 sectionTitle];

  return sectionTitle;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  rows = [v6 rows];
  v8 = [rows count];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(iFBAFormResponseDraftViewController *)self sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  rows = [v9 rows];
  v11 = [rows objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  sectionType = [v9 sectionType];
  if ((sectionType - 2) < 2)
  {
    object = [v11 object];
    rows = [viewCopy dequeueReusableCellWithIdentifier:object forIndexPath:pathCopy];

    contentItem = +[iFBAConstants tintColor];
    textLabel = [rows textLabel];
    [textLabel setTextColor:contentItem];

LABEL_6:
    goto LABEL_8;
  }

  if (sectionType != 1)
  {
    if (sectionType)
    {
      goto LABEL_8;
    }

    rows = [viewCopy dequeueReusableCellWithIdentifier:@"FormResponseDetailCell" forIndexPath:pathCopy];
    contentItem = [(iFBAFormResponseDraftViewController *)self contentItem];
    [rows setContentItem:contentItem];
    goto LABEL_6;
  }

  v16 = +[FBKAttachmentCell reuseIdentifier];
  rows = [viewCopy dequeueReusableCellWithIdentifier:v16 forIndexPath:pathCopy];

  [rows setSelectionStyle:0];
  title = [v11 title];
  textLabel2 = [rows textLabel];
  [textLabel2 setText:title];

  v19 = +[UIColor labelColor];
  textLabel3 = [rows textLabel];
  [textLabel3 setTextColor:v19];

  [rows setGatherState:2];
  [rows setAccessoryType:0];
LABEL_8:

  return rows;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E928;
  v4[3] = &unk_1000DE8F0;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

- (iFBAResponseDetailHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

@end
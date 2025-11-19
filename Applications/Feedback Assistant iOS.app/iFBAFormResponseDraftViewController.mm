@interface iFBAFormResponseDraftViewController
- (BOOL)shouldDisplayUnsolicitedFollowup;
- (BOOL)shouldShowStatus;
- (FBKFormResponseStub)responseStub;
- (NSDateFormatter)dateFormatter;
- (iFBAFormResponseDraftViewController)initWithCoder:(id)a3;
- (iFBAResponseDetailHeaderView)headerView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureActionsMenu;
- (void)deleteDraft:(id)a3 completion:(id)a4;
- (void)setContentItem:(id)a3;
- (void)setSuppressUnsolicitedResponse:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateBarButton;
- (void)updateContent;
- (void)updateHeader;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation iFBAFormResponseDraftViewController

- (iFBAFormResponseDraftViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = iFBAFormResponseDraftViewController;
  v3 = [(iFBAFormResponseDraftViewController *)&v7 initWithCoder:a3];
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
  v3 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v3 setEstimatedSectionHeaderHeight:0.0];

  v4 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v4 setEstimatedSectionFooterHeight:0.0];

  [(iFBAFormResponseDraftViewController *)self updateBarButton];
  [(iFBAFormResponseDraftViewController *)self updateHeader];
  v5 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v5 setRowHeight:UITableViewAutomaticDimension];

  v6 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v6 setEstimatedRowHeight:100.0];

  v7 = [UIView alloc];
  v8 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v8 frame];
  v9 = [v7 initWithFrame:{0.0, 0.0}];

  v10 = +[UIColor separatorColor];
  [v9 setBackgroundColor:v10];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v11 setTableHeaderView:v9];

  v12 = [(iFBAFormResponseDraftViewController *)self navigationItem];
  [v12 setLargeTitleDisplayMode:2];

  [(iFBAFormResponseDraftViewController *)self configureActionsMenu];
}

- (FBKFormResponseStub)responseStub
{
  v2 = [(iFBAFormResponseDraftViewController *)self contentItem];
  v3 = [v2 formResponseStub];

  return v3;
}

- (void)setContentItem:(id)a3
{
  v5 = a3;
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 ID];
    *buf = 67109120;
    *&buf[4] = [v7 intValue];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Viewing Stub Response Item with ID  [%i]", buf, 8u);
  }

  objc_storeStrong(&self->_contentItem, a3);
  v8 = [(iFBAFormResponseDraftViewController *)self contentItemObserver];

  if (v8)
  {
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = [(iFBAFormResponseDraftViewController *)self contentItemObserver];
    [v9 removeObserver:v10];
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
  v16 = [(iFBAFormResponseDraftViewController *)self contentItem];
  v17 = [v16 managedObjectContext];
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10000D7C8;
  v29 = &unk_1000DE7F8;
  v18 = v5;
  v30 = v18;
  objc_copyWeak(&v32, buf);
  v19 = v15;
  v31 = v19;
  v20 = [v17 addObjectsDidChangeNotificationObserver:&v26];
  contentItemObserver = self->_contentItemObserver;
  self->_contentItemObserver = v20;

  v22 = [(iFBAFormResponseDraftViewController *)self contentItem:v26];
  LOBYTE(v16) = v22 == 0;

  v23 = v14;
  if ((v16 & 1) == 0)
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
  v2 = [(iFBAFormResponseDraftViewController *)self contentItem];
  v3 = [v2 itemType] == 4;

  return v3;
}

- (void)updateContent
{
  v8 = [[NSMutableArray alloc] initWithCapacity:4];
  v3 = [(iFBAFormResponseDraftViewController *)self responseStub];

  if (v3)
  {
    v4 = [[FBARDVSection alloc] initWithTitle:0 type:0];
    v5 = [[FBARDVRow alloc] initWithTitle:0 subtitle:0 object:0];
    v6 = [(FBARDVSection *)v4 rows];
    [v6 addObject:v5];

    [v8 addObject:v4];
  }

  v7 = [NSArray arrayWithArray:v8];
  [(iFBAFormResponseDraftViewController *)self setSections:v7];
}

- (void)setSuppressUnsolicitedResponse:(BOOL)a3
{
  self->_suppressUnsolicitedResponse = a3;
  v3 = [(iFBAFormResponseDraftViewController *)self tableView];
  [v3 reloadData];
}

- (void)updateBarButton
{
  v3 = [(iFBAFormResponseDraftViewController *)self contentItem];
  v4 = [v3 itemType];

  v6 = [(iFBAFormResponseDraftViewController *)self navigationItem];
  if (v4 == 1)
  {
    v5 = [(iFBAFormResponseDraftViewController *)self editBarButton];
    [v6 setRightBarButtonItem:v5];
  }

  else
  {
    [v6 setRightBarButtonItem:0];
  }
}

- (void)updateHeader
{
  if ((FBKIsSolariumEnabled() & 1) != 0 || ([(iFBAFormResponseDraftViewController *)self responseStub], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v10 = [(iFBAFormResponseDraftViewController *)self contentItem];
    v4 = [v10 displayTitle];
    v5 = [(iFBAFormResponseDraftViewController *)self navigationItem];
    [v5 setTitle:v4];
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
    v9 = [(iFBAFormResponseDraftViewController *)self navigationItem];
    [v9 setTitle:v8];
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

  v3 = [(iFBAFormResponseDraftViewController *)self responseStub];
  v4 = [v3 isSubmitted];

  if (!v4)
  {
    return 0;
  }

  v5 = [(iFBAFormResponseDraftViewController *)self responseStub];
  v6 = [v5 feedback];
  v7 = [v6 allowUnsolicitedFollowup];

  return v7;
}

- (void)configureActionsMenu
{
  v3 = +[FBALog appHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(iFBAFormResponseDraftViewController *)self contentItem];
    v5 = [v4 ID];
    *buf = 67109120;
    v19 = [v5 intValue];
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
  v15 = [(iFBAFormResponseDraftViewController *)self editBarButton];
  [(FBAActionMenuController *)v6 attachToBarButtonItem:v15];
}

- (void)deleteDraft:(id)a3 completion:(id)a4
{
  v6 = a4;
  v24 = a3;
  v7 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:[(iFBAFormResponseDraftViewController *)self fbk_objc_preferredAlertStyle]];
  v8 = [v7 preferredStyle];
  v9 = +[NSBundle mainBundle];
  v10 = v9;
  if (v8 == 1)
  {
    v11 = [v9 localizedStringForKey:@"DELETE_DRAFT_PROMPT_SHORT" value:@"Are you sure you want to delete this draft?" table:@"CommonStrings"];
    [v7 setTitle:v11];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"CANNOT_UNDO" value:@"This cannot be undone." table:@"CommonStrings"];
    [v7 setMessage:v13];
  }

  else
  {
    v14 = [v9 localizedStringForKey:@"DELETE_DRAFT_PROMPT_LONG" value:@"Are you sure you want to delete this draft? This cannot be undone." table:@"CommonStrings"];
    [v7 setMessage:v14];

    v12 = [(iFBAFormResponseDraftViewController *)self navigationItem];
    v13 = [v12 rightBarButtonItem];
    v15 = [v7 popoverPresentationController];
    [v15 setSourceItem:v13];
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DELETE_DRAFT_PROMPT" value:@"Delete Draft" table:@"CommonStrings"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000E408;
  v27[3] = &unk_1000DE868;
  v27[4] = self;
  v18 = v6;
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
  [v24 presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v8, "section")}];

  if ([v6 sectionType] == 3)
  {
    v7 = [(iFBAFormResponseDraftViewController *)self contentItem];
    [(iFBAFormResponseDraftViewController *)self didTapCloseFeedbackWithItem:v7 atIndexPath:v8];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(iFBAFormResponseDraftViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 sectionTitle];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(iFBAFormResponseDraftViewController *)self sections];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 rows];
  v8 = [v7 count];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(iFBAFormResponseDraftViewController *)self sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v10 = [v9 rows];
  v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v12 = [v9 sectionType];
  if ((v12 - 2) < 2)
  {
    v14 = [v11 object];
    v10 = [v6 dequeueReusableCellWithIdentifier:v14 forIndexPath:v7];

    v13 = +[iFBAConstants tintColor];
    v15 = [v10 textLabel];
    [v15 setTextColor:v13];

LABEL_6:
    goto LABEL_8;
  }

  if (v12 != 1)
  {
    if (v12)
    {
      goto LABEL_8;
    }

    v10 = [v6 dequeueReusableCellWithIdentifier:@"FormResponseDetailCell" forIndexPath:v7];
    v13 = [(iFBAFormResponseDraftViewController *)self contentItem];
    [v10 setContentItem:v13];
    goto LABEL_6;
  }

  v16 = +[FBKAttachmentCell reuseIdentifier];
  v10 = [v6 dequeueReusableCellWithIdentifier:v16 forIndexPath:v7];

  [v10 setSelectionStyle:0];
  v17 = [v11 title];
  v18 = [v10 textLabel];
  [v18 setText:v17];

  v19 = +[UIColor labelColor];
  v20 = [v10 textLabel];
  [v20 setTextColor:v19];

  [v10 setGatherState:2];
  [v10 setAccessoryType:0];
LABEL_8:

  return v10;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000E928;
  v4[3] = &unk_1000DE8F0;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

- (iFBAResponseDetailHeaderView)headerView
{
  WeakRetained = objc_loadWeakRetained(&self->_headerView);

  return WeakRetained;
}

@end
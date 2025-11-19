@interface PHConferenceParticipantsViewController
- (PHConferenceParticipantsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)callStatusChanged:(id)a3;
- (void)conferenceParticipantCellRequestedEndCall:(id)a3;
- (void)conferenceParticipantCellRequestedTakeCallPrivate:(id)a3;
- (void)dealloc;
- (void)dismissAfterPrivate;
- (void)dismissConferenceView;
- (void)handleCallModelChangedNotification:(id)a3;
- (void)loadView;
- (void)removeCall:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PHConferenceParticipantsViewController

- (PHConferenceParticipantsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = PHConferenceParticipantsViewController;
  v4 = [(PHConferenceParticipantsViewController *)&v11 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];
    [v5 addObserver:v4 selector:"handleCallModelChangedNotification:" name:TUCallModelChangedNotification object:0];
    v6 = +[NSMutableArray array];
    conferenceParticipantCalls = v4->_conferenceParticipantCalls;
    v4->_conferenceParticipantCalls = v6;

    v8 = +[NSMutableArray array];
    remoteParticipantHandles = v4->_remoteParticipantHandles;
    v4->_remoteParticipantHandles = v8;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHConferenceParticipantsViewController;
  [(PHConferenceParticipantsViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[UIView alloc] initWithFrame:{v5, v7, v9, v11}];
  [(PHConferenceParticipantsViewController *)self setView:v12];

  v13 = +[UIColor clearColor];
  v14 = [(PHConferenceParticipantsViewController *)self view];
  [v14 setBackgroundColor:v13];

  v15 = [(PHConferenceParticipantsViewController *)self view];
  [v15 setOpaque:0];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CONFERENCE" value:&stru_100361FD0 table:@"InCallService"];
  v18 = [(PHConferenceParticipantsViewController *)self navigationItem];
  [v18 setTitle:v17];

  v19 = [(PHConferenceParticipantsViewController *)self view];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [(PHConferenceParticipantsViewController *)self navigationController];
  v29 = [v28 navigationBar];
  [v29 frame];
  v31 = v30;
  v32 = [UIApp statusBar];
  [v32 defaultHeight];
  v34 = v31 + v33;

  v35 = [[UITableView alloc] initWithFrame:{v21, v23 + v34, v25, v27 - v34}];
  [(PHConferenceParticipantsViewController *)self setConferenceTable:v35];

  [(UITableView *)self->_conferenceTable setDataSource:self];
  [(UITableView *)self->_conferenceTable setDelegate:self];
  conferenceTable = self->_conferenceTable;
  v37 = +[UIColor clearColor];
  [(UITableView *)conferenceTable setBackgroundColor:v37];

  [(UITableView *)self->_conferenceTable setSeparatorStyle:0];
  [(UITableView *)self->_conferenceTable setRowHeight:100.0];
  [(UITableView *)self->_conferenceTable setOpaque:0];
  [(UITableView *)self->_conferenceTable setBounces:0];
  [(UITableView *)self->_conferenceTable setDelaysContentTouches:0];
  [(UITableView *)self->_conferenceTable setCanCancelContentTouches:0];
  [(UITableView *)self->_conferenceTable setRowHeight:UITableViewAutomaticDimension];
  v38 = [(PHConferenceParticipantsViewController *)self view];
  [v38 addSubview:self->_conferenceTable];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PHConferenceParticipantsViewController;
  [(PHConferenceParticipantsViewController *)&v6 viewDidLoad];
  if (self->_usesLargeFormatUI)
  {
    v3 = [UIImage systemImageNamed:@"chevron.backward"];
    v4 = [[UIBarButtonItem alloc] initWithImage:v3 style:0 target:self action:"dismissConferenceView"];
    v5 = [(PHConferenceParticipantsViewController *)self navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = PHConferenceParticipantsViewController;
  [(PHConferenceParticipantsViewController *)&v15 viewWillAppear:a3];
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 frontmostCall];
  v6 = [v5 isConversation];

  v7 = +[TUCallCenter sharedInstance];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 frontmostCall];
    v10 = [v9 remoteParticipantHandles];
    v11 = [v10 allObjects];
    v12 = [v11 mutableCopy];
    [(PHConferenceParticipantsViewController *)self setRemoteParticipantHandles:v12];

    [(PHConferenceParticipantsViewController *)self setShowingMultiwayParticipants:1];
  }

  else
  {
    v13 = [v7 conferenceParticipantCalls];
    v14 = [v13 mutableCopy];
    [(PHConferenceParticipantsViewController *)self setConferenceParticipantCalls:v14];
  }
}

- (void)dismissConferenceView
{
  v3 = [(PHConferenceParticipantsViewController *)self navigationController];
  v2 = [v3 popToRootViewControllerAnimated:1];
}

- (void)callStatusChanged:(id)a3
{
  v4 = [a3 object];
  if ([v4 status] == 6)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call was disconnected, we'll remove that call and pop %@", &v9, 0xCu);
    }

    [(PHConferenceParticipantsViewController *)self removeCall:v4];
  }

  else
  {
    v6 = [v4 status];
    v7 = sub_100004F84();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == 4)
    {
      if (v8)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saw an incoming call, we'll pop", &v9, 2u);
      }

      [(PHConferenceParticipantsViewController *)self dismissConferenceView];
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saw a call change but won't do anything with it: %@", &v9, 0xCu);
      }
    }
  }
}

- (void)handleCallModelChangedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v6 = [v4 object];
  if (v6)
  {
    v7 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v8 = [v7 indexOfObject:v6];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = sub_100004F84();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Skipping table row reload, did not find a call in the conference participants list that matches (%@).", buf, 0xCu);
      }
    }

    else
    {
      v9 = [(PHConferenceParticipantsViewController *)self conferenceTable];
      v10 = [NSIndexPath indexPathForRow:v8 inSection:0];
      v12 = v10;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v9 reloadRowsAtIndexPaths:v11 withRowAnimation:0];
    }
  }
}

- (void)removeCall:(id)a3
{
  v4 = a3;
  v5 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v6 = [v5 indexOfObject:v4];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    [v7 removeObjectAtIndex:v6];

    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    v9 = [(PHConferenceParticipantsViewController *)self conferenceTable];
    v15 = v8;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    [v9 deleteRowsAtIndexPaths:v10 withRowAnimation:2];

    v11 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v12 = [v11 count];

    if (v12 <= 1)
    {
      v13 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A8AE4;
      block[3] = &unk_100356988;
      block[4] = self;
      dispatch_after(v13, &_dispatch_main_q, block);
    }
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(PHConferenceParticipantsViewController *)self isShowingMultiwayParticipants:a3])
  {
    [(PHConferenceParticipantsViewController *)self remoteParticipantHandles];
  }

  else
  {
    [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  }
  v5 = ;
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(PHConferenceParticipantCell);
  [(PHConferenceParticipantCell *)v6 setSelectionStyle:0];
  [(PHConferenceParticipantCell *)v6 setDelegate:self];
  if ([(PHConferenceParticipantsViewController *)self isShowingMultiwayParticipants])
  {
    v7 = [(PHConferenceParticipantsViewController *)self remoteParticipantHandles];
    v8 = [v5 row];

    v9 = [v7 objectAtIndexedSubscript:v8];

    [(PHConferenceParticipantCell *)v6 setRepresentedHandle:v9];
    [(PHConferenceParticipantCell *)v6 setPrivateButtonHidden:1];
    [(PHConferenceParticipantCell *)v6 setEndButtonHidden:1];
  }

  else
  {
    v10 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v11 = [v5 row];

    v9 = [v10 objectAtIndexedSubscript:v11];

    [(PHConferenceParticipantCell *)v6 setRepresentedCall:v9];
    v12 = [v9 provider];
    v13 = [v12 prioritizedSenderIdentities];
    v14 = [v13 count];

    if (v14 >= 2)
    {
      v15 = [v9 localSenderIdentity];
      v16 = [v15 localizedShortName];
      [(PHConferenceParticipantCell *)v6 setLocalizedSenderIdentity:v16];
    }

    v17 = [v9 model];
    if ([v17 supportsUngrouping])
    {
      v18 = +[TUCallCenter sharedInstance];
      v19 = [v18 currentCallGroups];
      -[PHConferenceParticipantCell setPrivateButtonEnabled:](v6, "setPrivateButtonEnabled:", [v19 count] == 1);
    }

    else
    {
      [(PHConferenceParticipantCell *)v6 setPrivateButtonEnabled:0];
    }
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  v6 = +[UIColor clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)conferenceParticipantCellRequestedEndCall:(id)a3
{
  v4 = a3;
  v5 = [(PHConferenceParticipantsViewController *)self conferenceTable];
  v6 = [v5 indexPathForCell:v4];

  v7 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v8 = [v7 objectAtIndex:{objc_msgSend(v6, "row")}];

  v9 = sub_100004F84();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "End call requested for %@", &v11, 0xCu);
  }

  v10 = +[TUCallCenter sharedInstance];
  [v10 disconnectCall:v8];
}

- (void)conferenceParticipantCellRequestedTakeCallPrivate:(id)a3
{
  conferenceTable = self->_conferenceTable;
  v5 = a3;
  v6 = [(UITableView *)conferenceTable visibleCells];
  v7 = [v6 mutableCopy];

  [v7 removeObject:v5];
  [v7 makeObjectsPerformSelector:"makeHeld"];
  v8 = [(UITableView *)self->_conferenceTable indexPathForCell:v5];

  v9 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v10 = [v9 objectAtIndex:{objc_msgSend(v8, "row")}];

  v11 = +[TUCallCenter sharedInstance];
  [v11 ungroupCall:v10];

  v12 = sub_100004F84();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Take call private requested for %@", &v13, 0xCu);
  }

  [UIApp setIgnoresInteractionEvents:1];
  [(PHConferenceParticipantsViewController *)self performSelector:"dismissAfterPrivate" withObject:0 afterDelay:0.5];
}

- (void)dismissAfterPrivate
{
  [UIApp setIgnoresInteractionEvents:0];
  v4 = [(PHConferenceParticipantsViewController *)self navigationController];
  v3 = [v4 popToRootViewControllerAnimated:1];
}

@end
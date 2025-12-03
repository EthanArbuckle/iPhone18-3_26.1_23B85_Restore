@interface PHConferenceParticipantsViewController
- (PHConferenceParticipantsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)callStatusChanged:(id)changed;
- (void)conferenceParticipantCellRequestedEndCall:(id)call;
- (void)conferenceParticipantCellRequestedTakeCallPrivate:(id)private;
- (void)dealloc;
- (void)dismissAfterPrivate;
- (void)dismissConferenceView;
- (void)handleCallModelChangedNotification:(id)notification;
- (void)loadView;
- (void)removeCall:(id)call;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PHConferenceParticipantsViewController

- (PHConferenceParticipantsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = PHConferenceParticipantsViewController;
  v4 = [(PHConferenceParticipantsViewController *)&v11 initWithNibName:name bundle:bundle];
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
  view = [(PHConferenceParticipantsViewController *)self view];
  [view setBackgroundColor:v13];

  view2 = [(PHConferenceParticipantsViewController *)self view];
  [view2 setOpaque:0];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"CONFERENCE" value:&stru_100361FD0 table:@"InCallService"];
  navigationItem = [(PHConferenceParticipantsViewController *)self navigationItem];
  [navigationItem setTitle:v17];

  view3 = [(PHConferenceParticipantsViewController *)self view];
  [view3 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  navigationController = [(PHConferenceParticipantsViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v31 = v30;
  statusBar = [UIApp statusBar];
  [statusBar defaultHeight];
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
  view4 = [(PHConferenceParticipantsViewController *)self view];
  [view4 addSubview:self->_conferenceTable];
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
    navigationItem = [(PHConferenceParticipantsViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v4];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = PHConferenceParticipantsViewController;
  [(PHConferenceParticipantsViewController *)&v15 viewWillAppear:appear];
  v4 = +[TUCallCenter sharedInstance];
  frontmostCall = [v4 frontmostCall];
  isConversation = [frontmostCall isConversation];

  v7 = +[TUCallCenter sharedInstance];
  v8 = v7;
  if (isConversation)
  {
    frontmostCall2 = [v7 frontmostCall];
    remoteParticipantHandles = [frontmostCall2 remoteParticipantHandles];
    allObjects = [remoteParticipantHandles allObjects];
    v12 = [allObjects mutableCopy];
    [(PHConferenceParticipantsViewController *)self setRemoteParticipantHandles:v12];

    [(PHConferenceParticipantsViewController *)self setShowingMultiwayParticipants:1];
  }

  else
  {
    conferenceParticipantCalls = [v7 conferenceParticipantCalls];
    v14 = [conferenceParticipantCalls mutableCopy];
    [(PHConferenceParticipantsViewController *)self setConferenceParticipantCalls:v14];
  }
}

- (void)dismissConferenceView
{
  navigationController = [(PHConferenceParticipantsViewController *)self navigationController];
  v2 = [navigationController popToRootViewControllerAnimated:1];
}

- (void)callStatusChanged:(id)changed
{
  object = [changed object];
  if ([object status] == 6)
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = object;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Call was disconnected, we'll remove that call and pop %@", &v9, 0xCu);
    }

    [(PHConferenceParticipantsViewController *)self removeCall:object];
  }

  else
  {
    status = [object status];
    v7 = sub_100004F84();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (status == 4)
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
        v10 = object;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Saw a call change but won't do anything with it: %@", &v9, 0xCu);
      }
    }
  }
}

- (void)handleCallModelChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  object = [notificationCopy object];
  if (object)
  {
    conferenceParticipantCalls = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v8 = [conferenceParticipantCalls indexOfObject:object];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      conferenceTable = sub_100004F84();
      if (os_log_type_enabled(conferenceTable, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = object;
        _os_log_impl(&_mh_execute_header, conferenceTable, OS_LOG_TYPE_DEFAULT, "Skipping table row reload, did not find a call in the conference participants list that matches (%@).", buf, 0xCu);
      }
    }

    else
    {
      conferenceTable = [(PHConferenceParticipantsViewController *)self conferenceTable];
      v10 = [NSIndexPath indexPathForRow:v8 inSection:0];
      v12 = v10;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [conferenceTable reloadRowsAtIndexPaths:v11 withRowAnimation:0];
    }
  }
}

- (void)removeCall:(id)call
{
  callCopy = call;
  conferenceParticipantCalls = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v6 = [conferenceParticipantCalls indexOfObject:callCopy];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    conferenceParticipantCalls2 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    [conferenceParticipantCalls2 removeObjectAtIndex:v6];

    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    conferenceTable = [(PHConferenceParticipantsViewController *)self conferenceTable];
    v15 = v8;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    [conferenceTable deleteRowsAtIndexPaths:v10 withRowAnimation:2];

    conferenceParticipantCalls3 = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v12 = [conferenceParticipantCalls3 count];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(PHConferenceParticipantsViewController *)self isShowingMultiwayParticipants:view])
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = objc_alloc_init(PHConferenceParticipantCell);
  [(PHConferenceParticipantCell *)v6 setSelectionStyle:0];
  [(PHConferenceParticipantCell *)v6 setDelegate:self];
  if ([(PHConferenceParticipantsViewController *)self isShowingMultiwayParticipants])
  {
    remoteParticipantHandles = [(PHConferenceParticipantsViewController *)self remoteParticipantHandles];
    v8 = [pathCopy row];

    v9 = [remoteParticipantHandles objectAtIndexedSubscript:v8];

    [(PHConferenceParticipantCell *)v6 setRepresentedHandle:v9];
    [(PHConferenceParticipantCell *)v6 setPrivateButtonHidden:1];
    [(PHConferenceParticipantCell *)v6 setEndButtonHidden:1];
  }

  else
  {
    conferenceParticipantCalls = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
    v11 = [pathCopy row];

    v9 = [conferenceParticipantCalls objectAtIndexedSubscript:v11];

    [(PHConferenceParticipantCell *)v6 setRepresentedCall:v9];
    provider = [v9 provider];
    prioritizedSenderIdentities = [provider prioritizedSenderIdentities];
    v14 = [prioritizedSenderIdentities count];

    if (v14 >= 2)
    {
      localSenderIdentity = [v9 localSenderIdentity];
      localizedShortName = [localSenderIdentity localizedShortName];
      [(PHConferenceParticipantCell *)v6 setLocalizedSenderIdentity:localizedShortName];
    }

    model = [v9 model];
    if ([model supportsUngrouping])
    {
      v18 = +[TUCallCenter sharedInstance];
      currentCallGroups = [v18 currentCallGroups];
      -[PHConferenceParticipantCell setPrivateButtonEnabled:](v6, "setPrivateButtonEnabled:", [currentCallGroups count] == 1);
    }

    else
    {
      [(PHConferenceParticipantCell *)v6 setPrivateButtonEnabled:0];
    }
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v6 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v6];
}

- (void)conferenceParticipantCellRequestedEndCall:(id)call
{
  callCopy = call;
  conferenceTable = [(PHConferenceParticipantsViewController *)self conferenceTable];
  v6 = [conferenceTable indexPathForCell:callCopy];

  conferenceParticipantCalls = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v8 = [conferenceParticipantCalls objectAtIndex:{objc_msgSend(v6, "row")}];

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

- (void)conferenceParticipantCellRequestedTakeCallPrivate:(id)private
{
  conferenceTable = self->_conferenceTable;
  privateCopy = private;
  visibleCells = [(UITableView *)conferenceTable visibleCells];
  v7 = [visibleCells mutableCopy];

  [v7 removeObject:privateCopy];
  [v7 makeObjectsPerformSelector:"makeHeld"];
  v8 = [(UITableView *)self->_conferenceTable indexPathForCell:privateCopy];

  conferenceParticipantCalls = [(PHConferenceParticipantsViewController *)self conferenceParticipantCalls];
  v10 = [conferenceParticipantCalls objectAtIndex:{objc_msgSend(v8, "row")}];

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
  navigationController = [(PHConferenceParticipantsViewController *)self navigationController];
  v3 = [navigationController popToRootViewControllerAnimated:1];
}

@end
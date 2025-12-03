@interface BuddyMigrationProgressController
- (BFFFlowItemDelegate)delegate;
- (BuddyMigrationProgressController)initWithTitle:(id)title icon:(id)icon;
- (void)_cancelTapped:(id)tapped;
- (void)cancelMigration;
- (void)confirmCancellation:(id)cancellation;
- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information;
- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error;
- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress;
- (void)loadView;
- (void)setProgressTitle:(id)title;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BuddyMigrationProgressController

- (BuddyMigrationProgressController)initWithTitle:(id)title icon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v13 = 0;
  objc_storeStrong(&v13, icon);
  v5 = selfCopy;
  v6 = location[0];
  v7 = +[NSBundle mainBundle];
  v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRELESS"];
  v9 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Migration"];
  selfCopy = 0;
  v12.receiver = v5;
  v12.super_class = BuddyMigrationProgressController;
  selfCopy = [(BuddyMigrationProgressController *)&v12 initWithTitle:v6 detailText:v9 icon:v13];
  objc_storeStrong(&selfCopy, selfCopy);

  if (selfCopy)
  {
    objc_storeStrong(selfCopy + 1, location[0]);
  }

  v10 = selfCopy;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)loadView
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationProgressController;
  [(BuddyMigrationProgressController *)&v6 loadView];
  v2 = [UIBarButtonItem alloc];
  location = [v2 initWithBarButtonSystemItem:1 target:selfCopy action:"_cancelTapped:"];
  navigationItem = [(BuddyMigrationProgressController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem:location animated:0];

  v4 = dispatch_queue_create("Disconnection Queue", 0);
  [(BuddyMigrationProgressController *)selfCopy setDisconnectionQueue:v4];

  [(BuddyMigrationProgressController *)selfCopy setConnectionState:0];
  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v14 = a2;
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = BuddyMigrationProgressController;
  [(BuddyMigrationProgressController *)&v12 viewDidAppear:appear];
  lockscreenController = [(BuddyMigrationProgressController *)selfCopy lockscreenController];

  if (!lockscreenController)
  {
    createLockscreenController = [(BuddyMigrationProgressController *)selfCopy createLockscreenController];
    [(BuddyMigrationProgressController *)selfCopy setLockscreenController:createLockscreenController];

    lockscreenController2 = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
    [(BuddyMigrationLockscreenController *)lockscreenController2 activate];

    lockscreenController3 = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
    miscState = [(BuddyMigrationProgressController *)selfCopy miscState];
    [(BuddyMiscState *)miscState setMigrationLockscreenController:lockscreenController3];

    connectionInfo = [(BuddyMigrationProgressController *)selfCopy connectionInfo];
    if (connectionInfo)
    {
      lockscreenController4 = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
      manager = [(BuddyMigrationProgressController *)selfCopy manager];
      connectionInfo2 = [(BuddyMigrationProgressController *)selfCopy connectionInfo];
      [(BuddyMigrationLockscreenController *)lockscreenController4 deviceMigrationManager:manager didChangeConnectionInformation:connectionInfo2];

      [(BuddyMigrationProgressController *)selfCopy setManager:0];
      [(BuddyMigrationProgressController *)selfCopy setConnectionInfo:0];
    }
  }
}

- (void)setProgressTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  objc_storeStrong(&selfCopy->_progressTitle, location[0]);
  headerView = [(BuddyMigrationProgressController *)selfCopy headerView];
  [headerView setTitle:location[0]];

  lockscreenController = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
  [(BuddyMigrationLockscreenController *)lockscreenController setProgressTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)confirmCancellation:(id)cancellation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancellation);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  v2 = [(BuddyMigrationProgressController *)self navigationItem:a2];
  leftBarButtonItem = [v2 leftBarButtonItem];
  [leftBarButtonItem setEnabled:0];
}

- (void)_cancelTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v3 = selfCopy;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10018F414;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  [(BuddyMigrationProgressController *)v3 confirmCancellation:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didChangeConnectionInformation:(id)information
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v22 = 0;
  objc_storeStrong(&v22, information);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10018F69C;
  v18 = &unk_10032BB10;
  v19 = selfCopy;
  v20 = location[0];
  v21 = v22;
  dispatch_async(v5, &block);

  disconnectionQueue = [(BuddyMigrationProgressController *)selfCopy disconnectionQueue];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10018F8D0;
  v11 = &unk_10032B838;
  v12 = v22;
  v13 = selfCopy;
  dispatch_async(disconnectionQueue, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didUpdateProgress:(id)progress
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v14 = 0;
  objc_storeStrong(&v14, progress);
  lockscreenController = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
  [(BuddyMigrationLockscreenController *)lockscreenController deviceMigrationManager:location[0] didUpdateProgress:v14];

  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10018FFD0;
  v11 = &unk_10032B838;
  v12 = selfCopy;
  v13 = v14;
  dispatch_async(v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)manager didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v6 = 0;
  objc_storeStrong(&v6, error);
  lockscreenController = [(BuddyMigrationProgressController *)selfCopy lockscreenController];
  [(BuddyMigrationLockscreenController *)lockscreenController deviceMigrationManager:location[0] didCompleteWithError:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
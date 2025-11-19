@interface BuddyMigrationProgressController
- (BFFFlowItemDelegate)delegate;
- (BuddyMigrationProgressController)initWithTitle:(id)a3 icon:(id)a4;
- (void)_cancelTapped:(id)a3;
- (void)cancelMigration;
- (void)confirmCancellation:(id)a3;
- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4;
- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4;
- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4;
- (void)loadView;
- (void)setProgressTitle:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BuddyMigrationProgressController

- (BuddyMigrationProgressController)initWithTitle:(id)a3 icon:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = v15;
  v6 = location[0];
  v7 = +[NSBundle mainBundle];
  v8 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"PROGRESS_DETAIL_WIRELESS"];
  v9 = [(NSBundle *)v7 localizedStringForKey:v8 value:&stru_10032F900 table:@"Migration"];
  v15 = 0;
  v12.receiver = v5;
  v12.super_class = BuddyMigrationProgressController;
  v15 = [(BuddyMigrationProgressController *)&v12 initWithTitle:v6 detailText:v9 icon:v13];
  objc_storeStrong(&v15, v15);

  if (v15)
  {
    objc_storeStrong(v15 + 1, location[0]);
  }

  v10 = v15;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v10;
}

- (void)loadView
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = BuddyMigrationProgressController;
  [(BuddyMigrationProgressController *)&v6 loadView];
  v2 = [UIBarButtonItem alloc];
  location = [v2 initWithBarButtonSystemItem:1 target:v8 action:"_cancelTapped:"];
  v3 = [(BuddyMigrationProgressController *)v8 navigationItem];
  [v3 setLeftBarButtonItem:location animated:0];

  v4 = dispatch_queue_create("Disconnection Queue", 0);
  [(BuddyMigrationProgressController *)v8 setDisconnectionQueue:v4];

  [(BuddyMigrationProgressController *)v8 setConnectionState:0];
  objc_storeStrong(&location, 0);
}

- (void)viewDidAppear:(BOOL)a3
{
  v15 = self;
  v14 = a2;
  v13 = a3;
  v12.receiver = self;
  v12.super_class = BuddyMigrationProgressController;
  [(BuddyMigrationProgressController *)&v12 viewDidAppear:a3];
  v3 = [(BuddyMigrationProgressController *)v15 lockscreenController];

  if (!v3)
  {
    v4 = [(BuddyMigrationProgressController *)v15 createLockscreenController];
    [(BuddyMigrationProgressController *)v15 setLockscreenController:v4];

    v5 = [(BuddyMigrationProgressController *)v15 lockscreenController];
    [(BuddyMigrationLockscreenController *)v5 activate];

    v6 = [(BuddyMigrationProgressController *)v15 lockscreenController];
    v7 = [(BuddyMigrationProgressController *)v15 miscState];
    [(BuddyMiscState *)v7 setMigrationLockscreenController:v6];

    v8 = [(BuddyMigrationProgressController *)v15 connectionInfo];
    if (v8)
    {
      v9 = [(BuddyMigrationProgressController *)v15 lockscreenController];
      v10 = [(BuddyMigrationProgressController *)v15 manager];
      v11 = [(BuddyMigrationProgressController *)v15 connectionInfo];
      [(BuddyMigrationLockscreenController *)v9 deviceMigrationManager:v10 didChangeConnectionInformation:v11];

      [(BuddyMigrationProgressController *)v15 setManager:0];
      [(BuddyMigrationProgressController *)v15 setConnectionInfo:0];
    }
  }
}

- (void)setProgressTitle:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_progressTitle, location[0]);
  v3 = [(BuddyMigrationProgressController *)v6 headerView];
  [v3 setTitle:location[0]];

  v4 = [(BuddyMigrationProgressController *)v6 lockscreenController];
  [(BuddyMigrationLockscreenController *)v4 setProgressTitle:location[0]];

  objc_storeStrong(location, 0);
}

- (void)confirmCancellation:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)cancelMigration
{
  v2 = [(BuddyMigrationProgressController *)self navigationItem:a2];
  v3 = [v2 leftBarButtonItem];
  [v3 setEnabled:0];
}

- (void)_cancelTapped:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10018F414;
  v8 = &unk_10032B0D0;
  v9 = v11;
  [(BuddyMigrationProgressController *)v3 confirmCancellation:&v4];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didChangeConnectionInformation:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v5 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = sub_10018F69C;
  v18 = &unk_10032BB10;
  v19 = v24;
  v20 = location[0];
  v21 = v22;
  dispatch_async(v5, &block);

  v6 = [(BuddyMigrationProgressController *)v24 disconnectionQueue];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10018F8D0;
  v11 = &unk_10032B838;
  v12 = v22;
  v13 = v24;
  dispatch_async(v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didUpdateProgress:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v5 = [(BuddyMigrationProgressController *)v16 lockscreenController];
  [(BuddyMigrationLockscreenController *)v5 deviceMigrationManager:location[0] didUpdateProgress:v14];

  v6 = &_dispatch_main_q;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10018FFD0;
  v11 = &unk_10032B838;
  v12 = v16;
  v13 = v14;
  dispatch_async(v6, &v7);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)deviceMigrationManager:(id)a3 didCompleteWithError:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(BuddyMigrationProgressController *)v8 lockscreenController];
  [(BuddyMigrationLockscreenController *)v5 deviceMigrationManager:location[0] didCompleteWithError:v6];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
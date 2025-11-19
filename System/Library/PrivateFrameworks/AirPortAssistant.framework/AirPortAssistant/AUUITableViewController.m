@interface AUUITableViewController
- (AUUITableViewController)initWithCoder:(id)a3;
- (AUUITableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)initAUUITableViewControllerCommon;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)setTableView:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AUUITableViewController

- (void)initAUUITableViewControllerCommon
{
  if (!self->_tableManager)
  {
    v3 = objc_alloc_init(TableViewManager);
    self->_tableManager = v3;

    objc_msgSend_setDelegate_(v3, v4, self);
  }
}

- (AUUITableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = AUUITableViewController;
  v4 = [(AUUITableViewController *)&v9 initWithNibName:a3 bundle:a4];
  v7 = v4;
  if (v4)
  {
    objc_msgSend_initAUUITableViewControllerCommon(v4, v5, v6);
  }

  return v7;
}

- (AUUITableViewController)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = AUUITableViewController;
  v3 = [(AUUITableViewController *)&v8 initWithCoder:a3];
  v6 = v3;
  if (v3)
  {
    objc_msgSend_initAUUITableViewControllerCommon(v3, v4, v5);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_setTableView_(self, a2, 0);
  objc_msgSend_setDelegate_(self->_tableManager, v3, 0);

  self->_tableManager = 0;
  v4.receiver = self;
  v4.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v4 dealloc];
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v10 loadView];
  v5 = objc_msgSend_tableView(self, v3, v4);
  v8 = objc_msgSend_tableManager(self, v6, v7);
  objc_msgSend_setManagedTableView_(v8, v9, v5);
}

- (void)setTableView:(id)a3
{
  objc_msgSend_initAUUITableViewControllerCommon(self, a2, a3);
  objc_msgSend_setManagedTableView_(self->_tableManager, v5, a3);
  v6.receiver = self;
  v6.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v6 setTableView:a3];
}

- (void)setDelegate:(id)a3
{
  objc_msgSend_initAUUITableViewControllerCommon(self, a2, a3);
  tableManager = self->_tableManager;

  objc_msgSend_setDelegate_(tableManager, v5, a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  objc_msgSend_viewWillAppear_(self->_tableManager, a2, a3);
  v5.receiver = self;
  v5.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  objc_msgSend_viewWillDisappear_(self->_tableManager, a2, a3);
  v5.receiver = self;
  v5.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v5 viewWillDisappear:v3];
}

@end
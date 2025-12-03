@interface AAUICustodiansListViewController
- (AAUICustodiansListViewController)initWithContacts:(id)contacts;
- (id)_pictureStore;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setupTableView;
- (void)viewDidLoad;
@end

@implementation AAUICustodiansListViewController

- (AAUICustodiansListViewController)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [[AAUIOBCustodiansListViewModel alloc] initWithContacts:contactsCopy];

  viewModel = self->_viewModel;
  self->_viewModel = v5;

  v7 = self->_viewModel;
  v9.receiver = self;
  v9.super_class = AAUICustodiansListViewController;
  return [(AAUIOBTableWelcomeController *)&v9 initWithViewModel:v7];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AAUICustodiansListViewController;
  [(AAUIOBTableWelcomeController *)&v3 viewDidLoad];
  [(AAUICustodiansListViewController *)self _setupTableView];
}

- (void)_setupTableView
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(AAOBCustodiansListViewModel *)self->_viewModel contacts:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CustodiansListCell"];
  if (!v7)
  {
    v7 = [[AAUITrustedContactCell alloc] initWithStyle:0 reuseIdentifier:@"CustodiansListCell"];
  }

  contacts = [(AAOBCustodiansListViewModel *)self->_viewModel contacts];
  v9 = [pathCopy row];

  v10 = [contacts objectAtIndexedSubscript:v9];

  _pictureStore = [(AAUICustodiansListViewController *)self _pictureStore];
  [(AAUITrustedContactCell *)v7 updateWithContact:v10 pictureStore:_pictureStore];

  return v7;
}

- (id)_pictureStore
{
  pictureStore = self->_pictureStore;
  if (!pictureStore)
  {
    v4 = objc_opt_new();
    v5 = self->_pictureStore;
    self->_pictureStore = v4;

    pictureStore = self->_pictureStore;
  }

  return pictureStore;
}

@end
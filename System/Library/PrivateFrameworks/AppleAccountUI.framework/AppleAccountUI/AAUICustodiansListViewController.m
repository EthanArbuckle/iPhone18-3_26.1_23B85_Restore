@interface AAUICustodiansListViewController
- (AAUICustodiansListViewController)initWithContacts:(id)a3;
- (id)_pictureStore;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupTableView;
- (void)viewDidLoad;
@end

@implementation AAUICustodiansListViewController

- (AAUICustodiansListViewController)initWithContacts:(id)a3
{
  v4 = a3;
  v5 = [[AAUIOBCustodiansListViewModel alloc] initWithContacts:v4];

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
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setDelegate:self];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setDataSource:self];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(AAOBCustodiansListViewModel *)self->_viewModel contacts:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CustodiansListCell"];
  if (!v7)
  {
    v7 = [[AAUITrustedContactCell alloc] initWithStyle:0 reuseIdentifier:@"CustodiansListCell"];
  }

  v8 = [(AAOBCustodiansListViewModel *)self->_viewModel contacts];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];

  v11 = [(AAUICustodiansListViewController *)self _pictureStore];
  [(AAUITrustedContactCell *)v7 updateWithContact:v10 pictureStore:v11];

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
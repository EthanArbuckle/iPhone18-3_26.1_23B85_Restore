@interface AAUITableViewDecorator
- (AAUITableViewDecorator)initWithTableView:(id)view;
- (BOOL)respondsToSelector:(SEL)selector;
- (UITableViewDataSource)dataSource;
- (UITableViewDelegate)delegate;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation AAUITableViewDecorator

- (AAUITableViewDecorator)initWithTableView:(id)view
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = AAUITableViewDecorator;
  v6 = [(AAUITableViewDecorator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    dataSource = [viewCopy dataSource];
    objc_storeWeak(&v7->_dataSource, dataSource);

    delegate = [viewCopy delegate];
    objc_storeWeak(&v7->_delegate, delegate);

    [(AAUITableViewDecoratorProtocol *)v7->_tableView setDelegate:v7];
    [(AAUITableViewDecoratorProtocol *)v7->_tableView setDataSource:v7];
  }

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v5 = objc_opt_respondsToSelector();

  if (v5 & 1) != 0 || (v6 = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), v6, (v7))
  {
    v8 = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = AAUITableViewDecorator;
  if ([(AAUITableViewDecorator *)&v9 respondsToSelector:?]|| (v4 = objc_loadWeakRetained(&self->_dataSource), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) != 0))
  {
    v6 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();
  }

  return v6 & 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained tableView:viewCopy numberOfRowsInSection:section];

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [WeakRetained tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  return v9;
}

- (UITableViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UITableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
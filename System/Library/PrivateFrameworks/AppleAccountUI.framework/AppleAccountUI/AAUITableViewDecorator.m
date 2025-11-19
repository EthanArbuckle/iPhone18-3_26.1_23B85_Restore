@interface AAUITableViewDecorator
- (AAUITableViewDecorator)initWithTableView:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (UITableViewDataSource)dataSource;
- (UITableViewDelegate)delegate;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
@end

@implementation AAUITableViewDecorator

- (AAUITableViewDecorator)initWithTableView:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AAUITableViewDecorator;
  v6 = [(AAUITableViewDecorator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    v8 = [v5 dataSource];
    objc_storeWeak(&v7->_dataSource, v8);

    v9 = [v5 delegate];
    objc_storeWeak(&v7->_delegate, v9);

    [(AAUITableViewDecoratorProtocol *)v7->_tableView setDelegate:v7];
    [(AAUITableViewDecoratorProtocol *)v7->_tableView setDataSource:v7];
  }

  return v7;
}

- (id)forwardingTargetForSelector:(SEL)a3
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

- (BOOL)respondsToSelector:(SEL)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained tableView:v6 numberOfRowsInSection:a4];

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v9 = [WeakRetained tableView:v7 cellForRowAtIndexPath:v6];

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
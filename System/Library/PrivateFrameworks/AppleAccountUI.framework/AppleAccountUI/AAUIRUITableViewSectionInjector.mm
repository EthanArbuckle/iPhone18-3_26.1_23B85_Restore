@interface AAUIRUITableViewSectionInjector
+ (BOOL)shouldInject:(id)a3 inPage:(id)a4;
- (AAUIRUITableViewSectionInjector)initWithTableView:(id)a3 ruiTableView:(id)a4 injectWith:(id)a5;
- (BOOL)_shouldInjectViewInSection:(int64_t)a3;
- (NSString)injectionType;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
@end

@implementation AAUIRUITableViewSectionInjector

- (AAUIRUITableViewSectionInjector)initWithTableView:(id)a3 ruiTableView:(id)a4 injectWith:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = AAUIRUITableViewSectionInjector;
  v11 = [(AAUITableViewDecorator *)&v14 initWithTableView:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_remoteTableViewController, a4);
    objc_storeStrong(&v12->_viewToInject, a5);
  }

  return v12;
}

+ (BOOL)shouldInject:(id)a3 inPage:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 hasTableView];
  v8 = 0;
  if (v5 && v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v6 tableViewOM];
    v10 = [v9 sections];

    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) attributes];
          v16 = [v15 objectForKeyedSubscript:@"appleAccountAction"];

          LOBYTE(v15) = [v16 isEqualToString:v5];
          if (v15)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_13:
  }

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(AAUIRUITableViewSectionInjector *)self _shouldInjectViewInSection:a4])
  {
    [(UIView *)self->_viewToInject intrinsicContentSize];
    v8 = v7;
  }

  else
  {
    [(RUITableView *)self->_remoteTableViewController tableView:v6 heightForFooterInSection:a4];
    v8 = v9;
  }

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  if ([(AAUIRUITableViewSectionInjector *)self _shouldInjectViewInSection:a4])
  {
    [(UIView *)self->_viewToInject setAccessibilityIdentifier:@"injected-view"];
    v7 = self->_viewToInject;
  }

  else
  {
    v7 = [(RUITableView *)self->_remoteTableViewController tableView:v6 viewForFooterInSection:a4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_shouldInjectViewInSection:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionType);

  result = 0;
  if (WeakRetained)
  {
    v6 = [(RUITableView *)self->_remoteTableViewController sections];
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 attributes];
    v9 = [v8 objectForKeyedSubscript:@"appleAccountAction"];

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_injectionType);
      v11 = [v9 isEqualToString:v10];

      if (v11)
      {
        return 1;
      }
    }
  }

  return result;
}

- (NSString)injectionType
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionType);

  return WeakRetained;
}

@end
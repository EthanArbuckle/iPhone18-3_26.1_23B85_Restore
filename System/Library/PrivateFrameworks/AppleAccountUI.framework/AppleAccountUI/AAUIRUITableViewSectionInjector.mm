@interface AAUIRUITableViewSectionInjector
+ (BOOL)shouldInject:(id)inject inPage:(id)page;
- (AAUIRUITableViewSectionInjector)initWithTableView:(id)view ruiTableView:(id)tableView injectWith:(id)with;
- (BOOL)_shouldInjectViewInSection:(int64_t)section;
- (NSString)injectionType;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
@end

@implementation AAUIRUITableViewSectionInjector

- (AAUIRUITableViewSectionInjector)initWithTableView:(id)view ruiTableView:(id)tableView injectWith:(id)with
{
  tableViewCopy = tableView;
  withCopy = with;
  v14.receiver = self;
  v14.super_class = AAUIRUITableViewSectionInjector;
  v11 = [(AAUITableViewDecorator *)&v14 initWithTableView:view];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_remoteTableViewController, tableView);
    objc_storeStrong(&v12->_viewToInject, with);
  }

  return v12;
}

+ (BOOL)shouldInject:(id)inject inPage:(id)page
{
  v23 = *MEMORY[0x1E69E9840];
  injectCopy = inject;
  pageCopy = page;
  hasTableView = [pageCopy hasTableView];
  v8 = 0;
  if (injectCopy && hasTableView)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    tableViewOM = [pageCopy tableViewOM];
    sections = [tableViewOM sections];

    v11 = [sections countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(sections);
          }

          attributes = [*(*(&v18 + 1) + 8 * i) attributes];
          v16 = [attributes objectForKeyedSubscript:@"appleAccountAction"];

          LOBYTE(attributes) = [v16 isEqualToString:injectCopy];
          if (attributes)
          {
            v8 = 1;
            goto LABEL_13;
          }
        }

        v12 = [sections countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(AAUIRUITableViewSectionInjector *)self _shouldInjectViewInSection:section])
  {
    [(UIView *)self->_viewToInject intrinsicContentSize];
    v8 = v7;
  }

  else
  {
    [(RUITableView *)self->_remoteTableViewController tableView:viewCopy heightForFooterInSection:section];
    v8 = v9;
  }

  return v8;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  if ([(AAUIRUITableViewSectionInjector *)self _shouldInjectViewInSection:section])
  {
    [(UIView *)self->_viewToInject setAccessibilityIdentifier:@"injected-view"];
    v7 = self->_viewToInject;
  }

  else
  {
    v7 = [(RUITableView *)self->_remoteTableViewController tableView:viewCopy viewForFooterInSection:section];
  }

  v8 = v7;

  return v8;
}

- (BOOL)_shouldInjectViewInSection:(int64_t)section
{
  WeakRetained = objc_loadWeakRetained(&self->_injectionType);

  result = 0;
  if (WeakRetained)
  {
    sections = [(RUITableView *)self->_remoteTableViewController sections];
    v7 = [sections objectAtIndexedSubscript:section];
    attributes = [v7 attributes];
    v9 = [attributes objectForKeyedSubscript:@"appleAccountAction"];

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
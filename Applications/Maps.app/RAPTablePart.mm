@interface RAPTablePart
+ (void)holdChangesAffectingTableView:(id)a3 withinBlock:(id)a4;
- (RAPPresentingViewController)presentingViewController;
- (RAPTablePart)initWithSections:(id)a3;
- (RAPTablePartsDataSource)dataSource;
- (id)_dataSource;
- (void)_setTableView:(id)a3;
- (void)dealloc;
- (void)didChange;
- (void)holdChangesAffectingTableViewWithinBlock:(id)a3;
- (void)presentingViewControllerViewDidLayoutSubviews;
- (void)setSections:(id)a3;
@end

@implementation RAPTablePart

- (RAPPresentingViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (void)didChange
{
  v3 = [(RAPTablePart *)self _dataSource];
  [v3 tablePartDidChange:self];
}

- (void)presentingViewControllerViewDidLayoutSubviews
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) presentingViewControllerViewDidLayoutSubviews];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (RAPTablePartsDataSource)dataSource
{
  v2 = [(RAPTablePart *)self tableView];
  v3 = [v2 dataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setTableView:(id)a3
{
  v5 = a3;
  if (self->_tableView != v5)
  {
    objc_storeStrong(&self->_tableView, a3);
    if (self->_tableView)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = self->_sections;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * i) _registerReuseIdentifiersIfNeeded];
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)setSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  if (sections != v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = sections;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v24 + 1) + 8 * i) _setPartController:0];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v11 = [(NSArray *)v4 copy];
    v12 = self->_sections;
    self->_sections = v11;

    v13 = [(RAPTablePart *)self tableView];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = self->_sections;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * j);
          [v19 _setPartController:{self, v20}];
          if (v13)
          {
            [v19 _registerReuseIdentifiersIfNeeded];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    [(RAPTablePart *)self didChange];
  }
}

- (void)holdChangesAffectingTableViewWithinBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(RAPTablePart *)self tableView];
  [v5 holdChangesAffectingTableView:v6 withinBlock:v4];
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) _setPartController:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = RAPTablePart;
  [(RAPTablePart *)&v8 dealloc];
}

- (RAPTablePart)initWithSections:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RAPTablePart;
  v5 = [(RAPTablePart *)&v8 init];
  if (v5)
  {
    v6 = [v4 copy];
    [(RAPTablePart *)v5 setSections:v6];
  }

  return v5;
}

- (id)_dataSource
{
  v2 = [(RAPTablePart *)self tableView];
  v3 = [v2 dataSource];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (void)holdChangesAffectingTableView:(id)a3 withinBlock:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = v12;
  v7 = v5;
  if (v12)
  {
    v8 = qword_10195CF78;
    if (!qword_10195CF78)
    {
      v9 = objc_alloc_init(NSCountedSet);
      v10 = qword_10195CF78;
      qword_10195CF78 = v9;

      v6 = v12;
      v8 = qword_10195CF78;
    }

    [v8 addObject:v6];
    v7[2](v7);
    [qword_10195CF78 removeObject:v12];
    if (![qword_10195CF78 count])
    {
      v11 = qword_10195CF78;
      qword_10195CF78 = 0;
    }

    if (([qword_10195CF78 containsObject:v12] & 1) == 0)
    {
      [v12 reloadData];
    }
  }

  else
  {
    v5[2](v5);
  }
}

@end
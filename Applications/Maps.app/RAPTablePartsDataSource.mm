@interface RAPTablePartsDataSource
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (RAPTablePartsDataSource)init;
- (RAPTablePartsDataSource)initWithPresentingViewController:(id)a3;
- (id)indexPathForRow:(int64_t)a3 ofSection:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)indexOfSection:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_clearPartsAndSections;
- (void)_createPartAndSectionArraysIfNeeded;
- (void)_rebuildTableSections;
- (void)_updateTableAppearance;
- (void)dealloc;
- (void)popTablePart:(id)a3 withRowAnimation:(int64_t)a4;
- (void)pushTablePart:(id)a3 withRowAnimation:(int64_t)a4;
- (void)setTableParts:(id)a3 withRowAnimation:(int64_t)a4;
- (void)setTableView:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation RAPTablePartsDataSource

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [v7 section]);
  [v8 commitEdit:a4 forRowAtIndex:objc_msgSend(v7 tableViewIndexPath:{"row"), v7}];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [v5 section]);
  v7 = [v5 row];

  LOBYTE(v5) = [v6 canEditRowAtIndex:v7];
  return v5;
}

- (id)indexPathForRow:(int64_t)a3 ofSection:(id)a4
{
  v5 = [(RAPTablePartsDataSource *)self indexOfSection:a4];

  return [NSIndexPath indexPathForRow:a3 inSection:v5];
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(RAPTablePartsDataSource *)self sectionAtIndex:a4];
  v5 = [v4 footerTitle];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v6 = [(RAPTablePartsDataSource *)self sectionAtIndex:a4];
    v7 = [v6 headerTitle];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [v5 section]);
  v7 = [v5 row];

  v8 = [v6 cellForRowAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(RAPTablePartsDataSource *)self sectionAtIndex:a4];
  v5 = [v4 rowsCount];

  return v5;
}

- (int64_t)indexOfSection:(id)a3
{
  v3 = objc_getAssociatedObject(a3, off_101929930);
  v4 = [v3 integerValue];

  return v4;
}

- (void)popTablePart:(id)a3 withRowAnimation:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSMutableArray *)self->_tableParts lastObject];

  if (v7 == v6)
  {
    v8 = [v6 sections];
    tableSections = self->_tableSections;
    v10 = [v8 firstObject];
    v11 = [(NSMutableArray *)tableSections indexOfObject:v10];

    v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v11, [v8 count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          objc_setAssociatedObject(*(*(&v19 + 1) + 8 * v17), off_101929930, 0, 3);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [v6 _setTableView:{0, v19}];
    [v6 setPresentingViewController:0];
    [(NSMutableArray *)self->_tableParts removeLastObject];
    [(NSMutableArray *)self->_tableSections removeObjectsAtIndexes:v12];
    v18 = [(RAPTablePartsDataSource *)self tableView];
    [v18 deleteSections:v12 withRowAnimation:a4];
  }
}

- (void)pushTablePart:(id)a3 withRowAnimation:(int64_t)a4
{
  v5 = a3;
  [(RAPTablePartsDataSource *)self _createPartAndSectionArraysIfNeeded];
  v22 = [(NSMutableArray *)self->_tableSections count];
  [(NSMutableArray *)self->_tableParts addObject:v5];
  v6 = [v5 sections];
  [(NSMutableArray *)self->_tableSections addObjectsFromArray:v6];
  v7 = [(RAPTablePartsDataSource *)self tableView];
  [v5 _setTableView:v7];

  v20 = self;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [v5 setPresentingViewController:WeakRetained];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = off_101929930;
        v17 = [NSNumber numberWithUnsignedInteger:v13, v20];
        objc_setAssociatedObject(v15, v16, v17, 3);

        ++v13;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = [(RAPTablePartsDataSource *)v20 tableView];
  v19 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v22, [v9 count]);
  [v18 insertSections:v19 withRowAnimation:a4];
}

- (void)_createPartAndSectionArraysIfNeeded
{
  if (!self->_tableParts)
  {
    v3 = objc_alloc_init(NSMutableArray);
    tableParts = self->_tableParts;
    self->_tableParts = v3;
  }

  if (!self->_tableSections)
  {
    v5 = objc_alloc_init(NSMutableArray);
    tableSections = self->_tableSections;
    self->_tableSections = v5;
  }
}

- (void)_rebuildTableSections
{
  v3 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(RAPTablePartsDataSource *)self tableParts];
  v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v4 = 0;
    v23 = *v32;
    v24 = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v5;
        v6 = *(*(&v31 + 1) + 8 * v5);
        v7 = [(RAPTablePartsDataSource *)self tableView];
        [v6 _setTableView:v7];

        WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
        [v6 setPresentingViewController:WeakRetained];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = [v6 sections];
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              [v3 addObject:v14];
              v15 = off_101929930;
              v16 = [NSNumber numberWithUnsignedInteger:v4];
              objc_setAssociatedObject(v14, v15, v16, 3);

              ++v4;
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v5 = v26 + 1;
        self = v24;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v17 = [v3 mutableCopy];
  tableSections = self->_tableSections;
  self->_tableSections = v17;

  v19 = [(RAPTablePartsDataSource *)self tableView];
  v20 = [RAPTablePart isHoldingChangesAffectingTableView:v19];

  if ((v20 & 1) == 0)
  {
    v21 = [(RAPTablePartsDataSource *)self tableView];
    [v21 reloadData];
  }
}

- (void)setTableParts:(id)a3 withRowAnimation:(int64_t)a4
{
  v6 = a3;
  if (([(NSMutableArray *)self->_tableParts isEqual:v6]& 1) == 0)
  {
    if ([(NSMutableArray *)self->_tableParts _maps_isPrefixOfArray:v6])
    {
      v7 = [(NSMutableArray *)self->_tableParts count];
      v8 = [v6 count];
      v9 = [(NSMutableArray *)self->_tableParts count];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = [v6 subarrayWithRange:{v7, v8 - v9}];
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v29;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v29 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(RAPTablePartsDataSource *)self pushTablePart:*(*(&v28 + 1) + 8 * i) withRowAnimation:a4];
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }
    }

    else
    {
      if (![v6 _maps_isPrefixOfArray:self->_tableParts])
      {
        [(RAPTablePartsDataSource *)self _clearPartsAndSections];
        v22 = [v6 mutableCopy];
        tableParts = self->_tableParts;
        self->_tableParts = v22;

        [(RAPTablePartsDataSource *)self _rebuildTableSections];
        [(RAPTablePartsDataSource *)self _updateTableAppearance];
        goto LABEL_21;
      }

      v15 = [v6 count];
      v16 = [(NSMutableArray *)self->_tableParts count];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = -[NSMutableArray subarrayWithRange:](self->_tableParts, "subarrayWithRange:", v15, v16 - [v6 count], 0);
      v10 = [v17 reverseObjectEnumerator];

      v18 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v10);
            }

            [(RAPTablePartsDataSource *)self popTablePart:*(*(&v24 + 1) + 8 * j) withRowAnimation:a4];
          }

          v19 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }

LABEL_21:
}

- (void)setTableView:(id)a3
{
  v5 = a3;
  p_tableView = &self->_tableView;
  tableView = self->_tableView;
  if (tableView != v5)
  {
    v8 = [(UITableView *)tableView dataSource];

    if (v8 == self)
    {
      [(UITableView *)*p_tableView setDataSource:0];
    }

    objc_storeStrong(&self->_tableView, a3);
    [(UITableView *)self->_tableView setDataSource:self];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = self->_tableParts;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13) _setTableView:{*p_tableView, v14}];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [(RAPTablePartsDataSource *)self _updateTableAppearance];
  }
}

- (void)_updateTableAppearance
{
  if (sub_10000FA08(self->_tableView) == 5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_tableParts;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      v7 = 2;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v5 == ++v8)
        {
          v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v7 = 1;
    }

    v9 = [(RAPTablePartsDataSource *)self tableView];
    [v9 _maps_initializeRAPAppearanceWithStyle:v7];
  }

  else
  {
    v10 = [(RAPTablePartsDataSource *)self tableView];
    [v10 _maps_initializeRAPAppearance];
  }
}

- (void)_clearPartsAndSections
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_tableSections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_setAssociatedObject(*(*(&v18 + 1) + 8 * i), off_101929930, 0, 3);
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_tableParts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * j);
        [v13 setTableView:{0, v14}];
        [v13 setPresentingViewController:0];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)dealloc
{
  [(RAPTablePartsDataSource *)self _clearPartsAndSections];
  v3 = [(UITableView *)self->_tableView dataSource];

  if (v3 == self)
  {
    [(UITableView *)self->_tableView setDataSource:0];
  }

  v4.receiver = self;
  v4.super_class = RAPTablePartsDataSource;
  [(RAPTablePartsDataSource *)&v4 dealloc];
}

- (RAPTablePartsDataSource)initWithPresentingViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RAPTablePartsDataSource;
  v5 = [(RAPTablePartsDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, v4);
  }

  return v6;
}

- (RAPTablePartsDataSource)init
{
  result = [NSException raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end
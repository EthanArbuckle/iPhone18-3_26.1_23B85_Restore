@interface RAPTablePartsDataSource
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (RAPTablePartsDataSource)init;
- (RAPTablePartsDataSource)initWithPresentingViewController:(id)controller;
- (id)indexPathForRow:(int64_t)row ofSection:(id)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)indexOfSection:(id)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_clearPartsAndSections;
- (void)_createPartAndSectionArraysIfNeeded;
- (void)_rebuildTableSections;
- (void)_updateTableAppearance;
- (void)dealloc;
- (void)popTablePart:(id)part withRowAnimation:(int64_t)animation;
- (void)pushTablePart:(id)part withRowAnimation:(int64_t)animation;
- (void)setTableParts:(id)parts withRowAnimation:(int64_t)animation;
- (void)setTableView:(id)view;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation RAPTablePartsDataSource

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
  [v8 commitEdit:style forRowAtIndex:objc_msgSend(pathCopy tableViewIndexPath:{"row"), pathCopy}];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
  v7 = [pathCopy row];

  LOBYTE(pathCopy) = [v6 canEditRowAtIndex:v7];
  return pathCopy;
}

- (id)indexPathForRow:(int64_t)row ofSection:(id)section
{
  v5 = [(RAPTablePartsDataSource *)self indexOfSection:section];

  return [NSIndexPath indexPathForRow:row inSection:v5];
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(RAPTablePartsDataSource *)self sectionAtIndex:section];
  footerTitle = [v4 footerTitle];

  return footerTitle;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v6 = [(RAPTablePartsDataSource *)self sectionAtIndex:section];
    headerTitle = [v6 headerTitle];
  }

  else
  {
    headerTitle = 0;
  }

  return headerTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[RAPTablePartsDataSource sectionAtIndex:](self, "sectionAtIndex:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 cellForRowAtIndex:v7];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(RAPTablePartsDataSource *)self sectionAtIndex:section];
  rowsCount = [v4 rowsCount];

  return rowsCount;
}

- (int64_t)indexOfSection:(id)section
{
  v3 = objc_getAssociatedObject(section, off_101929930);
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)popTablePart:(id)part withRowAnimation:(int64_t)animation
{
  partCopy = part;
  lastObject = [(NSMutableArray *)self->_tableParts lastObject];

  if (lastObject == partCopy)
  {
    sections = [partCopy sections];
    tableSections = self->_tableSections;
    firstObject = [sections firstObject];
    v11 = [(NSMutableArray *)tableSections indexOfObject:firstObject];

    v12 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v11, [sections count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = sections;
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

    [partCopy _setTableView:{0, v19}];
    [partCopy setPresentingViewController:0];
    [(NSMutableArray *)self->_tableParts removeLastObject];
    [(NSMutableArray *)self->_tableSections removeObjectsAtIndexes:v12];
    tableView = [(RAPTablePartsDataSource *)self tableView];
    [tableView deleteSections:v12 withRowAnimation:animation];
  }
}

- (void)pushTablePart:(id)part withRowAnimation:(int64_t)animation
{
  partCopy = part;
  [(RAPTablePartsDataSource *)self _createPartAndSectionArraysIfNeeded];
  v22 = [(NSMutableArray *)self->_tableSections count];
  [(NSMutableArray *)self->_tableParts addObject:partCopy];
  sections = [partCopy sections];
  [(NSMutableArray *)self->_tableSections addObjectsFromArray:sections];
  tableView = [(RAPTablePartsDataSource *)self tableView];
  [partCopy _setTableView:tableView];

  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  [partCopy setPresentingViewController:WeakRetained];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = sections;
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
        selfCopy = [NSNumber numberWithUnsignedInteger:v13, selfCopy];
        objc_setAssociatedObject(v15, v16, selfCopy, 3);

        ++v13;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  tableView2 = [(RAPTablePartsDataSource *)selfCopy tableView];
  v19 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v22, [v9 count]);
  [tableView2 insertSections:v19 withRowAnimation:animation];
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
    selfCopy = self;
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
        tableView = [(RAPTablePartsDataSource *)self tableView];
        [v6 _setTableView:tableView];

        WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
        [v6 setPresentingViewController:WeakRetained];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        sections = [v6 sections];
        v10 = [sections countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(sections);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              [v3 addObject:v14];
              v15 = off_101929930;
              v16 = [NSNumber numberWithUnsignedInteger:v4];
              objc_setAssociatedObject(v14, v15, v16, 3);

              ++v4;
            }

            v11 = [sections countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v5 = v26 + 1;
        self = selfCopy;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  v17 = [v3 mutableCopy];
  tableSections = self->_tableSections;
  self->_tableSections = v17;

  tableView2 = [(RAPTablePartsDataSource *)self tableView];
  v20 = [RAPTablePart isHoldingChangesAffectingTableView:tableView2];

  if ((v20 & 1) == 0)
  {
    tableView3 = [(RAPTablePartsDataSource *)self tableView];
    [tableView3 reloadData];
  }
}

- (void)setTableParts:(id)parts withRowAnimation:(int64_t)animation
{
  partsCopy = parts;
  if (([(NSMutableArray *)self->_tableParts isEqual:partsCopy]& 1) == 0)
  {
    if ([(NSMutableArray *)self->_tableParts _maps_isPrefixOfArray:partsCopy])
    {
      v7 = [(NSMutableArray *)self->_tableParts count];
      v8 = [partsCopy count];
      v9 = [(NSMutableArray *)self->_tableParts count];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      reverseObjectEnumerator = [partsCopy subarrayWithRange:{v7, v8 - v9}];
      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            [(RAPTablePartsDataSource *)self pushTablePart:*(*(&v28 + 1) + 8 * i) withRowAnimation:animation];
          }

          v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v12);
      }
    }

    else
    {
      if (![partsCopy _maps_isPrefixOfArray:self->_tableParts])
      {
        [(RAPTablePartsDataSource *)self _clearPartsAndSections];
        v22 = [partsCopy mutableCopy];
        tableParts = self->_tableParts;
        self->_tableParts = v22;

        [(RAPTablePartsDataSource *)self _rebuildTableSections];
        [(RAPTablePartsDataSource *)self _updateTableAppearance];
        goto LABEL_21;
      }

      v15 = [partsCopy count];
      v16 = [(NSMutableArray *)self->_tableParts count];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = -[NSMutableArray subarrayWithRange:](self->_tableParts, "subarrayWithRange:", v15, v16 - [partsCopy count], 0);
      reverseObjectEnumerator = [v17 reverseObjectEnumerator];

      v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            [(RAPTablePartsDataSource *)self popTablePart:*(*(&v24 + 1) + 8 * j) withRowAnimation:animation];
          }

          v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }
    }
  }

LABEL_21:
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  p_tableView = &self->_tableView;
  tableView = self->_tableView;
  if (tableView != viewCopy)
  {
    dataSource = [(UITableView *)tableView dataSource];

    if (dataSource == self)
    {
      [(UITableView *)*p_tableView setDataSource:0];
    }

    objc_storeStrong(&self->_tableView, view);
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

    tableView = [(RAPTablePartsDataSource *)self tableView];
    [tableView _maps_initializeRAPAppearanceWithStyle:v7];
  }

  else
  {
    tableView2 = [(RAPTablePartsDataSource *)self tableView];
    [tableView2 _maps_initializeRAPAppearance];
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
  dataSource = [(UITableView *)self->_tableView dataSource];

  if (dataSource == self)
  {
    [(UITableView *)self->_tableView setDataSource:0];
  }

  v4.receiver = self;
  v4.super_class = RAPTablePartsDataSource;
  [(RAPTablePartsDataSource *)&v4 dealloc];
}

- (RAPTablePartsDataSource)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = RAPTablePartsDataSource;
  v5 = [(RAPTablePartsDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presentingViewController, controllerCopy);
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
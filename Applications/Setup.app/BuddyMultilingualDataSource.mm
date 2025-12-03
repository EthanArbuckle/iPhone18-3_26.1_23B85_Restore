@interface BuddyMultilingualDataSource
- (BOOL)_isEmojiSoleDataItemPostDeletion:(id)deletion;
- (BOOL)containsKey:(id)key;
- (BOOL)itemDeleteableAtIndexPath:(id)path;
- (BOOL)itemReorderableAtIndexPath:(id)path;
- (BOOL)rowActionableAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BuddyMultilingualDataSource)initWithBackingStore:(id)store actionText:(id)text;
- (id)addToCollectionCellWithTableView:(id)view;
- (id)combinedStore;
- (id)immutableBackingStore;
- (id)itemForPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)editingStyleForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_additionRowForSection:(int64_t)section;
- (unint64_t)itemEditingOptionsAtIndexPath:(id)path;
- (unint64_t)rowForInsertionInSection:(unint64_t)section;
- (void)_sizeConsistentRowHeight;
- (void)tableView:(id)view allowAdditionalDataSelection:(BOOL)selection;
- (void)tableView:(id)view appendItem:(id)item inSection:(unint64_t)section;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view setBackingStore:(id)store;
@end

@implementation BuddyMultilingualDataSource

- (BuddyMultilingualDataSource)initWithBackingStore:(id)store actionText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v39 = 0;
  objc_storeStrong(&v39, text);
  v5 = selfCopy;
  selfCopy = 0;
  v38.receiver = v5;
  v38.super_class = BuddyMultilingualDataSource;
  v6 = [(BuddyMultilingualDataSource *)&v38 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    *(selfCopy + 5) = UITableViewAutomaticDimension;
    v7 = [NSMutableArray alloc];
    v8 = [v7 initWithCapacity:{objc_msgSend(location[0], "count")}];
    v9 = *(selfCopy + 2);
    *(selfCopy + 2) = v8;

    v10 = +[NSMutableDictionary dictionary];
    v11 = *(selfCopy + 4);
    *(selfCopy + 4) = v10;

    v12 = [v39 copy];
    v13 = *(selfCopy + 3);
    *(selfCopy + 3) = v12;

    *(selfCopy + 8) = 1;
    *(selfCopy + 9) = 0;
    v14 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:UIKeyboardInputMode_emoji];
    identifierWithLayouts = [(UIKeyboardInputMode *)v14 identifierWithLayouts];
    v16 = *(selfCopy + 6);
    *(selfCopy + 6) = identifierWithLayouts;

    memset(__b, 0, sizeof(__b));
    v17 = location[0];
    v18 = [v17 countByEnumeratingWithState:__b objects:v43 count:16];
    if (v18)
    {
      v19 = *__b[2];
      v33 = v17;
      v32 = *__b[2];
      do
      {
        for (i = 0; i < v18; ++i)
        {
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(v17);
          }

          v37 = *(__b[1] + 8 * i);
          memset(v34, 0, sizeof(v34));
          v21 = v37;
          v22 = [v21 countByEnumeratingWithState:v34 objects:v42 count:16];
          if (v22)
          {
            v23 = *v34[2];
            do
            {
              for (j = 0; j < v22; ++j)
              {
                if (*v34[2] != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v35 = *(v34[1] + 8 * j);
                v25 = *(selfCopy + 4);
                identifier = [v35 identifier];
                identifier2 = [v35 identifier];
                [v25 setObject:identifier forKey:identifier2];

                if ([v35 showDetailText])
                {
                  *(selfCopy + 9) = 1;
                }
              }

              v22 = [v21 countByEnumeratingWithState:v34 objects:v42 count:16];
            }

            while (v22);
            v17 = v33;
            v19 = v32;
          }

          v28 = *(selfCopy + 2);
          v29 = [v37 mutableCopy];
          [v28 addObject:v29];
        }

        v18 = [v17 countByEnumeratingWithState:__b objects:v43 count:16];
      }

      while (v18);
    }
  }

  v30 = selfCopy;
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v30;
}

- (void)tableView:(id)view setBackingStore:(id)store
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v25 = 0;
  objc_storeStrong(&v25, store);
  v5 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v5);

  [(NSMutableArray *)selfCopy->_backingStore removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_fastIdentifierMap removeAllObjects];
  memset(__b, 0, sizeof(__b));
  v6 = v25;
  v7 = [v6 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v7)
  {
    v8 = *__b[2];
    v20 = v6;
    v19 = *__b[2];
    do
    {
      for (i = 0; i < v7; ++i)
      {
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v24 = *(__b[1] + 8 * i);
        memset(v21, 0, sizeof(v21));
        v10 = v24;
        v11 = [v10 countByEnumeratingWithState:v21 objects:v28 count:16];
        if (v11)
        {
          v12 = *v21[2];
          do
          {
            for (j = 0; j < v11; ++j)
            {
              if (*v21[2] != v12)
              {
                objc_enumerationMutation(v10);
              }

              v22 = *(v21[1] + 8 * j);
              fastIdentifierMap = selfCopy->_fastIdentifierMap;
              identifier = [v22 identifier];
              identifier2 = [v22 identifier];
              [(NSMutableDictionary *)fastIdentifierMap setObject:identifier forKey:identifier2];

              if ([v22 showDetailText])
              {
                selfCopy->_dataHasDetailedLabelField = 1;
              }
            }

            v11 = [v10 countByEnumeratingWithState:v21 objects:v28 count:16];
          }

          while (v11);
          v6 = v20;
          v8 = v19;
        }

        backingStore = selfCopy->_backingStore;
        v18 = [v24 mutableCopy];
        [(NSMutableArray *)backingStore addObject:v18];
      }

      v7 = [v6 countByEnumeratingWithState:__b objects:v29 count:16];
    }

    while (v7);
  }

  [location[0] reloadData];
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v21 = 0;
  objc_storeStrong(&v21, path);
  v5 = [v21 row];
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [v21 section]);
  v8 = [v7 count];

  if (v5 == v8)
  {
    v24 = [(BuddyMultilingualDataSource *)selfCopy addToCollectionCellWithTableView:location[0]];
    v20 = 1;
  }

  else
  {
    v19 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingualCell"];
    if (!v19)
    {
      v19 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingualCell"];
    }

    backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](backingStore2, "objectAtIndexedSubscript:", [v21 section]);
    v18 = [v10 objectAtIndexedSubscript:{objc_msgSend(v21, "row")}];

    if (![v21 row])
    {
      [(BuddyMultilingualDataSource *)selfCopy _sizeConsistentRowHeight];
    }

    title = [v18 title];
    textLabel = [v19 textLabel];
    [textLabel setText:title];

    detailText = [v18 detailText];
    detailTextLabel = [v19 detailTextLabel];
    [detailTextLabel setText:detailText];

    [v19 setSelectionStyle:0];
    v15 = +[UIColor secondarySystemBackgroundColor];
    [v19 setBackgroundColor:v15];

    v24 = v19;
    v20 = 1;
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v16 = v24;

  return v16;
}

- (id)addToCollectionCellWithTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v15 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingual.dataAdditionCell"];
  if (!v15)
  {
    v15 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingual.dataAdditionCell"];
  }

  actionString = [(BuddyMultilingualDataSource *)selfCopy actionString];
  textLabel = [v15 textLabel];
  [textLabel setText:actionString];

  v13 = 0;
  v11 = 0;
  if ([(BuddyMultilingualDataSource *)selfCopy dataSourceActionEnabled])
  {
    v5 = +[UIColor systemBlueColor];
    v14 = v5;
    v13 = 1;
  }

  else
  {
    v5 = +[UIColor lightGrayColor];
    v12 = v5;
    v11 = 1;
  }

  textLabel2 = [v15 textLabel];
  [textLabel2 setTextColor:v5];

  if (v11)
  {
  }

  if (v13)
  {
  }

  if ([(BuddyMultilingualDataSource *)selfCopy dataSourceActionEnabled])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [v15 setSelectionStyle:v7];
  [v15 setUserInteractionEnabled:{-[BuddyMultilingualDataSource dataSourceActionEnabled](selfCopy, "dataSourceActionEnabled")}];
  v8 = +[UIColor secondarySystemBackgroundColor];
  [v15 setBackgroundColor:v8];

  v9 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  sectionCopy = section;
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v6 = [(NSMutableArray *)backingStore objectAtIndexedSubscript:sectionCopy];
  v7 = [v6 count] + 1;

  objc_storeStrong(location, 0);
  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v4 = [(NSMutableArray *)backingStore count];

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)rowActionableAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 count];
  LOBYTE(v5) = v5 == [location[0] row];

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v11 = 0;
  objc_storeStrong(&v11, path);
  v5 = [v11 row];
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [v11 section]);
  v8 = v5 == [v7 count];
  v9 = 0;
  if (!v8)
  {
    v9 = [(BuddyMultilingualDataSource *)selfCopy itemReorderableAtIndexPath:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v20 = 0;
  objc_storeStrong(&v20, path);
  v19 = 0;
  objc_storeStrong(&v19, indexPath);
  v7 = [v19 row];
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v9 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [v19 section]);
  v10 = [v9 count];

  if (v7 < v10)
  {
    backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v12 = -[NSMutableArray objectAtIndexedSubscript:](backingStore2, "objectAtIndexedSubscript:", [v20 section]);
    v17 = [v12 objectAtIndexedSubscript:{objc_msgSend(v20, "row")}];

    backingStore3 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v14 = -[NSMutableArray objectAtIndexedSubscript:](backingStore3, "objectAtIndexedSubscript:", [v20 section]);
    [v14 removeObjectAtIndex:{objc_msgSend(v20, "row")}];

    backingStore4 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v16 = -[NSMutableArray objectAtIndexedSubscript:](backingStore4, "objectAtIndexedSubscript:", [v19 section]);
    [v16 insertObject:v17 atIndex:{objc_msgSend(v19, "row")}];

    objc_storeStrong(&v17, 0);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  LOBYTE(path) = [(BuddyMultilingualDataSource *)selfCopy itemEditingOptionsAtIndexPath:v6]!= 0;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return path & 1;
}

- (int64_t)editingStyleForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = [(BuddyMultilingualDataSource *)selfCopy itemEditingOptionsAtIndexPath:location[0]];
  if (v3)
  {
    if ((v3 - 1) < 3)
    {
      v7 = 1;
    }

    else if (v3 == 4)
    {
      if ([(BuddyMultilingualDataSource *)selfCopy dataSourceActionEnabled])
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  styleCopy = style;
  v16 = 0;
  objc_storeStrong(&v16, path);
  if (styleCopy == 1 && [(BuddyMultilingualDataSource *)selfCopy itemDeleteableAtIndexPath:v16])
  {
    fastIdentifierMap = [(BuddyMultilingualDataSource *)selfCopy fastIdentifierMap];
    backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v9 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [v16 section]);
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
    identifier = [v10 identifier];
    [(NSMutableDictionary *)fastIdentifierMap removeObjectForKey:identifier];

    backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v13 = -[NSMutableArray objectAtIndexedSubscript:](backingStore2, "objectAtIndexedSubscript:", [v16 section]);
    [v13 removeObjectAtIndex:{objc_msgSend(v16, "row")}];

    v14 = location[0];
    v20 = v16;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v14 deleteRowsAtIndexPaths:v15 withRowAnimation:6];

    if (![(BuddyMultilingualDataSource *)selfCopy dataSourceActionEnabled])
    {
      [(BuddyMultilingualDataSource *)selfCopy tableView:location[0] allowAdditionalDataSelection:1];
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)itemEditingOptionsAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = [location[0] row];
  v14 = v3 == -[BuddyMultilingualDataSource _additionRowForSection:](selfCopy, "_additionRowForSection:", [location[0] section]);
  v12 = 0;
  v10 = 0;
  v4 = 1;
  if (!v14)
  {
    backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v12 = 1;
    v11 = [backingStore objectAtIndexedSubscript:{objc_msgSend(location[0], "section")}];
    v10 = 1;
    v4 = 1;
    if ([v11 count] > 1)
    {
      v4 = [(BuddyMultilingualDataSource *)selfCopy _isEmojiSoleDataItemPostDeletion:location[0]];
    }
  }

  if (v10)
  {
  }

  if (v12)
  {
  }

  if (v4)
  {
    if (v14)
    {
      editingOptions = 4;
    }

    else
    {
      editingOptions = 0;
    }

    v9 = 1;
  }

  else
  {
    backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v6 = -[NSMutableArray objectAtIndexedSubscript:](backingStore2, "objectAtIndexedSubscript:", [location[0] section]);
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

    editingOptions = [v8 editingOptions];
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  return editingOptions;
}

- (void)tableView:(id)view appendItem:(id)item inSection:(unint64_t)section
{
  selfCopy = self;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, view);
  v23 = 0;
  objc_storeStrong(&v23, item);
  sectionCopy = section;
  sectionCopy2 = section;
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v9 = sectionCopy2 >= [(NSMutableArray *)backingStore count];

  if (v9)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = v25;
    v12 = selfCopy;
    backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    [(NSAssertionHandler *)v10 handleFailureInMethod:v11 object:v12 file:@"BuddyMultilingualDataSource.m" lineNumber:206 description:@"OOB check failed store:%@ section:%lu", backingStore2, sectionCopy];
  }

  [location beginUpdates];
  backingStore3 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v15 = [(NSMutableArray *)backingStore3 objectAtIndexedSubscript:sectionCopy];
  [v15 addObject:v23];

  fastIdentifierMap = [(BuddyMultilingualDataSource *)selfCopy fastIdentifierMap];
  identifier = [v23 identifier];
  identifier2 = [v23 identifier];
  [(NSMutableDictionary *)fastIdentifierMap setObject:identifier forKey:identifier2];

  v21 = [NSIndexPath indexPathForRow:[(BuddyMultilingualDataSource *)selfCopy rowForInsertionInSection:sectionCopy] inSection:sectionCopy];
  v19 = location;
  v27 = v21;
  v20 = [NSArray arrayWithObjects:&v27 count:1];
  [v19 insertRowsAtIndexPaths:v20 withRowAnimation:0];

  [location endUpdates];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

- (void)tableView:(id)view allowAdditionalDataSelection:(BOOL)selection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (selection != [(BuddyMultilingualDataSource *)selfCopy dataSourceActionEnabled])
  {
    [(BuddyMultilingualDataSource *)selfCopy setDataSourceActionEnabled:selection];
    [location[0] reloadData];
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)rowForInsertionInSection:(unint64_t)section
{
  backingStore = [(BuddyMultilingualDataSource *)self backingStore];
  v4 = [(NSMutableArray *)backingStore objectAtIndexedSubscript:section];
  v9 = 0;
  v7 = 0;
  if ([v4 count] == 1)
  {
    v5 = 0;
  }

  else
  {
    backingStore2 = [(BuddyMultilingualDataSource *)self backingStore];
    v9 = 1;
    v8 = [(NSMutableArray *)backingStore2 objectAtIndexedSubscript:section];
    v7 = 1;
    v5 = [v8 count] - 1;
  }

  v13 = v5;
  if (v7)
  {
  }

  if (v9)
  {
  }

  return v13;
}

- (id)itemForPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

  objc_storeStrong(location, 0);

  return v5;
}

- (id)combinedStore
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v3 = [(NSMutableArray *)backingStore countByEnumeratingWithState:__b objects:v19 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(backingStore);
        }

        v15 = *(__b[1] + 8 * i);
        memset(v12, 0, sizeof(v12));
        v6 = v15;
        v7 = [v6 countByEnumeratingWithState:v12 objects:v18 count:16];
        if (v7)
        {
          v8 = *v12[2];
          do
          {
            for (j = 0; j < v7; ++j)
            {
              if (*v12[2] != v8)
              {
                objc_enumerationMutation(v6);
              }

              v13 = *(v12[1] + 8 * j);
              [location[0] addObject:v13];
            }

            v7 = [v6 countByEnumeratingWithState:v12 objects:v18 count:16];
          }

          while (v7);
        }
      }

      v3 = [(NSMutableArray *)backingStore countByEnumeratingWithState:__b objects:v19 count:16];
    }

    while (v3);
  }

  v10 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v10;
}

- (BOOL)containsKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  fastIdentifierMap = [(BuddyMultilingualDataSource *)selfCopy fastIdentifierMap];
  v4 = [(NSMutableDictionary *)fastIdentifierMap objectForKey:location[0]];
  v5 = v4 != 0;

  objc_storeStrong(location, 0);
  return v5;
}

- (id)immutableBackingStore
{
  selfCopy = self;
  location[1] = a2;
  v2 = [NSMutableArray alloc];
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  location[0] = [v2 initWithCapacity:{-[NSMutableArray count](backingStore, "count")}];

  memset(__b, 0, sizeof(__b));
  backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v5 = [(NSMutableArray *)backingStore2 countByEnumeratingWithState:__b objects:v16 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(backingStore2);
        }

        v13 = *(__b[1] + 8 * i);
        v8 = location[0];
        v9 = [v13 copy];
        [v8 addObject:v9];
      }

      v5 = [(NSMutableArray *)backingStore2 countByEnumeratingWithState:__b objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v10;
}

- (BOOL)itemReorderableAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = ([(BuddyMultilingualDataSource *)selfCopy itemEditingOptionsAtIndexPath:location[0]]& 1) == 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)itemDeleteableAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = 1;
  if ([v4 count] != 1)
  {
    v5 = [(BuddyMultilingualDataSource *)selfCopy _isEmojiSoleDataItemPostDeletion:location[0]];
  }

  v9 = (v5 & 1) == 0 && ([(BuddyMultilingualDataSource *)selfCopy itemEditingOptionsAtIndexPath:location[0]]& 2) == 2;
  objc_storeStrong(location, 0);
  return v9;
}

- (unint64_t)_additionRowForSection:(int64_t)section
{
  backingStore = [(BuddyMultilingualDataSource *)self backingStore];
  v4 = [(NSMutableArray *)backingStore objectAtIndexedSubscript:section];
  v5 = [v4 count];

  return v5;
}

- (BOOL)_isEmojiSoleDataItemPostDeletion:(id)deletion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, deletion);
  backingStore = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](backingStore, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 count];

  if (v5 != 2)
  {
    goto LABEL_28;
  }

  backingStore2 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](backingStore2, "objectAtIndexedSubscript:", [location[0] section]);
  v8 = [v7 objectAtIndexedSubscript:0];
  identifier = [v8 identifier];
  emojiKeyboardIdentifier = [(BuddyMultilingualDataSource *)selfCopy emojiKeyboardIdentifier];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v24 = 0;
  v11 = 1;
  if (([identifier hasPrefix:emojiKeyboardIdentifier] & 1) == 0)
  {
    backingStore3 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v32 = 1;
    v31 = -[NSMutableArray objectAtIndexedSubscript:](backingStore3, "objectAtIndexedSubscript:", [location[0] section]);
    v30 = 1;
    v29 = [v31 objectAtIndexedSubscript:1];
    v28 = 1;
    identifier2 = [v29 identifier];
    v26 = 1;
    emojiKeyboardIdentifier2 = [(BuddyMultilingualDataSource *)selfCopy emojiKeyboardIdentifier];
    v24 = 1;
    v11 = [identifier2 hasPrefix:?];
  }

  if (v24)
  {
  }

  if (v26)
  {
  }

  if (v28)
  {
  }

  if (v30)
  {
  }

  if (v32)
  {
  }

  v22 = 0;
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  if (v11)
  {
    backingStore4 = [(BuddyMultilingualDataSource *)selfCopy backingStore];
    v22 = 1;
    v21 = -[NSMutableArray objectAtIndexedSubscript:](backingStore4, "objectAtIndexedSubscript:", [location[0] section]);
    v20 = 1;
    v19 = [v21 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];
    v18 = 1;
    identifier3 = [v19 identifier];
    v16 = 1;
    emojiKeyboardIdentifier3 = [(BuddyMultilingualDataSource *)selfCopy emojiKeyboardIdentifier];
    v14 = 1;
    v12 = [identifier3 hasPrefix:?] ^ 1;
  }

  if (v14)
  {
  }

  if (v16)
  {
  }

  if (v18)
  {
  }

  if (v20)
  {
  }

  if (v22)
  {
  }

  if (v12)
  {
    v36 = 1;
  }

  else
  {
LABEL_28:
    v36 = 0;
  }

  objc_storeStrong(location, 0);
  return v36 & 1;
}

- (void)_sizeConsistentRowHeight
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, preferredContentSizeCategory);

  if (v4 == NSOrderedAscending)
  {
    [(BuddyMultilingualDataSource *)selfCopy setConsistentRowHeight:UITableViewAutomaticDimension];
  }

  else
  {
    [(BuddyMultilingualDataSource *)selfCopy consistentRowHeight];
    if (v5 == UITableViewAutomaticDimension)
    {
      location[0] = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      textLabel = [location[0] textLabel];
      [textLabel setText:@"SIZING_TEXT"];

      if ([(BuddyMultilingualDataSource *)selfCopy dataHasDetailedLabelField])
      {
        v7 = @"SIZING_DETAIL_TEXT";
      }

      else
      {
        v7 = 0;
      }

      detailTextLabel = [location[0] detailTextLabel];
      [detailTextLabel setText:v7];

      [location[0] layoutIfNeeded];
      [location[0] frame];
      sub_10023ED04();
      LODWORD(v9) = 1148846080;
      LODWORD(v10) = 1112014848;
      [location[0] systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:v12 verticalFittingPriority:{v9, v10}];
      [(BuddyMultilingualDataSource *)selfCopy setConsistentRowHeight:v13];
      objc_storeStrong(location, 0);
    }
  }
}

@end
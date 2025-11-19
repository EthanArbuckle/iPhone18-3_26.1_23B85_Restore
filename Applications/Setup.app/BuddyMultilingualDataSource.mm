@interface BuddyMultilingualDataSource
- (BOOL)_isEmojiSoleDataItemPostDeletion:(id)a3;
- (BOOL)containsKey:(id)a3;
- (BOOL)itemDeleteableAtIndexPath:(id)a3;
- (BOOL)itemReorderableAtIndexPath:(id)a3;
- (BOOL)rowActionableAtIndexPath:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BuddyMultilingualDataSource)initWithBackingStore:(id)a3 actionText:(id)a4;
- (id)addToCollectionCellWithTableView:(id)a3;
- (id)combinedStore;
- (id)immutableBackingStore;
- (id)itemForPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)editingStyleForRowAtIndexPath:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_additionRowForSection:(int64_t)a3;
- (unint64_t)itemEditingOptionsAtIndexPath:(id)a3;
- (unint64_t)rowForInsertionInSection:(unint64_t)a3;
- (void)_sizeConsistentRowHeight;
- (void)tableView:(id)a3 allowAdditionalDataSelection:(BOOL)a4;
- (void)tableView:(id)a3 appendItem:(id)a4 inSection:(unint64_t)a5;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 setBackingStore:(id)a4;
@end

@implementation BuddyMultilingualDataSource

- (BuddyMultilingualDataSource)initWithBackingStore:(id)a3 actionText:(id)a4
{
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v5 = v41;
  v41 = 0;
  v38.receiver = v5;
  v38.super_class = BuddyMultilingualDataSource;
  v6 = [(BuddyMultilingualDataSource *)&v38 init];
  v41 = v6;
  objc_storeStrong(&v41, v6);
  if (v6)
  {
    *(v41 + 5) = UITableViewAutomaticDimension;
    v7 = [NSMutableArray alloc];
    v8 = [v7 initWithCapacity:{objc_msgSend(location[0], "count")}];
    v9 = *(v41 + 2);
    *(v41 + 2) = v8;

    v10 = +[NSMutableDictionary dictionary];
    v11 = *(v41 + 4);
    *(v41 + 4) = v10;

    v12 = [v39 copy];
    v13 = *(v41 + 3);
    *(v41 + 3) = v12;

    *(v41 + 8) = 1;
    *(v41 + 9) = 0;
    v14 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:UIKeyboardInputMode_emoji];
    v15 = [(UIKeyboardInputMode *)v14 identifierWithLayouts];
    v16 = *(v41 + 6);
    *(v41 + 6) = v15;

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
                v25 = *(v41 + 4);
                v26 = [v35 identifier];
                v27 = [v35 identifier];
                [v25 setObject:v26 forKey:v27];

                if ([v35 showDetailText])
                {
                  *(v41 + 9) = 1;
                }
              }

              v22 = [v21 countByEnumeratingWithState:v34 objects:v42 count:16];
            }

            while (v22);
            v17 = v33;
            v19 = v32;
          }

          v28 = *(v41 + 2);
          v29 = [v37 mutableCopy];
          [v28 addObject:v29];
        }

        v18 = [v17 countByEnumeratingWithState:__b objects:v43 count:16];
      }

      while (v18);
    }
  }

  v30 = v41;
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v41, 0);
  return v30;
}

- (void)tableView:(id)a3 setBackingStore:(id)a4
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v5 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v5);

  [(NSMutableArray *)v27->_backingStore removeAllObjects];
  [(NSMutableDictionary *)v27->_fastIdentifierMap removeAllObjects];
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
              fastIdentifierMap = v27->_fastIdentifierMap;
              v15 = [v22 identifier];
              v16 = [v22 identifier];
              [(NSMutableDictionary *)fastIdentifierMap setObject:v15 forKey:v16];

              if ([v22 showDetailText])
              {
                v27->_dataHasDetailedLabelField = 1;
              }
            }

            v11 = [v10 countByEnumeratingWithState:v21 objects:v28 count:16];
          }

          while (v11);
          v6 = v20;
          v8 = v19;
        }

        backingStore = v27->_backingStore;
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v5 = [v21 row];
  v6 = [(BuddyMultilingualDataSource *)v23 backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](v6, "objectAtIndexedSubscript:", [v21 section]);
  v8 = [v7 count];

  if (v5 == v8)
  {
    v24 = [(BuddyMultilingualDataSource *)v23 addToCollectionCellWithTableView:location[0]];
    v20 = 1;
  }

  else
  {
    v19 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingualCell"];
    if (!v19)
    {
      v19 = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingualCell"];
    }

    v9 = [(BuddyMultilingualDataSource *)v23 backingStore];
    v10 = -[NSMutableArray objectAtIndexedSubscript:](v9, "objectAtIndexedSubscript:", [v21 section]);
    v18 = [v10 objectAtIndexedSubscript:{objc_msgSend(v21, "row")}];

    if (![v21 row])
    {
      [(BuddyMultilingualDataSource *)v23 _sizeConsistentRowHeight];
    }

    v11 = [v18 title];
    v12 = [v19 textLabel];
    [v12 setText:v11];

    v13 = [v18 detailText];
    v14 = [v19 detailTextLabel];
    [v14 setText:v13];

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

- (id)addToCollectionCellWithTableView:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [location[0] dequeueReusableCellWithIdentifier:@"com.purpleBuddy.BuddyMultilingual.dataAdditionCell"];
  if (!v15)
  {
    v15 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"com.purpleBuddy.BuddyMultilingual.dataAdditionCell"];
  }

  v3 = [(BuddyMultilingualDataSource *)v17 actionString];
  v4 = [v15 textLabel];
  [v4 setText:v3];

  v13 = 0;
  v11 = 0;
  if ([(BuddyMultilingualDataSource *)v17 dataSourceActionEnabled])
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

  v6 = [v15 textLabel];
  [v6 setTextColor:v5];

  if (v11)
  {
  }

  if (v13)
  {
  }

  if ([(BuddyMultilingualDataSource *)v17 dataSourceActionEnabled])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  [v15 setSelectionStyle:v7];
  [v15 setUserInteractionEnabled:{-[BuddyMultilingualDataSource dataSourceActionEnabled](v17, "dataSourceActionEnabled")}];
  v8 = +[UIColor secondarySystemBackgroundColor];
  [v15 setBackgroundColor:v8];

  v9 = v15;
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v5 = [(BuddyMultilingualDataSource *)v11 backingStore];
  v6 = [(NSMutableArray *)v5 objectAtIndexedSubscript:v9];
  v7 = [v6 count] + 1;

  objc_storeStrong(location, 0);
  return v7;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v7 backingStore];
  v4 = [(NSMutableArray *)v3 count];

  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)rowActionableAtIndexPath:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v8 backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](v3, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 count];
  LOBYTE(v5) = v5 == [location[0] row];

  objc_storeStrong(location, 0);
  return v5 & 1;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v5 = [v11 row];
  v6 = [(BuddyMultilingualDataSource *)v13 backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](v6, "objectAtIndexedSubscript:", [v11 section]);
  v8 = v5 == [v7 count];
  v9 = 0;
  if (!v8)
  {
    v9 = [(BuddyMultilingualDataSource *)v13 itemReorderableAtIndexPath:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v7 = [v19 row];
  v8 = [(BuddyMultilingualDataSource *)v22 backingStore];
  v9 = -[NSMutableArray objectAtIndexedSubscript:](v8, "objectAtIndexedSubscript:", [v19 section]);
  v10 = [v9 count];

  if (v7 < v10)
  {
    v11 = [(BuddyMultilingualDataSource *)v22 backingStore];
    v12 = -[NSMutableArray objectAtIndexedSubscript:](v11, "objectAtIndexedSubscript:", [v20 section]);
    v17 = [v12 objectAtIndexedSubscript:{objc_msgSend(v20, "row")}];

    v13 = [(BuddyMultilingualDataSource *)v22 backingStore];
    v14 = -[NSMutableArray objectAtIndexedSubscript:](v13, "objectAtIndexedSubscript:", [v20 section]);
    [v14 removeObjectAtIndex:{objc_msgSend(v20, "row")}];

    v15 = [(BuddyMultilingualDataSource *)v22 backingStore];
    v16 = -[NSMutableArray objectAtIndexedSubscript:](v15, "objectAtIndexedSubscript:", [v19 section]);
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

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  LOBYTE(a4) = [(BuddyMultilingualDataSource *)v8 itemEditingOptionsAtIndexPath:v6]!= 0;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return a4 & 1;
}

- (int64_t)editingStyleForRowAtIndexPath:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v6 itemEditingOptionsAtIndexPath:location[0]];
  if (v3)
  {
    if ((v3 - 1) < 3)
    {
      v7 = 1;
    }

    else if (v3 == 4)
    {
      if ([(BuddyMultilingualDataSource *)v6 dataSourceActionEnabled])
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = 0;
  objc_storeStrong(&v16, a5);
  if (v17 == 1 && [(BuddyMultilingualDataSource *)v19 itemDeleteableAtIndexPath:v16])
  {
    v7 = [(BuddyMultilingualDataSource *)v19 fastIdentifierMap];
    v8 = [(BuddyMultilingualDataSource *)v19 backingStore];
    v9 = -[NSMutableArray objectAtIndexedSubscript:](v8, "objectAtIndexedSubscript:", [v16 section]);
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
    v11 = [v10 identifier];
    [(NSMutableDictionary *)v7 removeObjectForKey:v11];

    v12 = [(BuddyMultilingualDataSource *)v19 backingStore];
    v13 = -[NSMutableArray objectAtIndexedSubscript:](v12, "objectAtIndexedSubscript:", [v16 section]);
    [v13 removeObjectAtIndex:{objc_msgSend(v16, "row")}];

    v14 = location[0];
    v20 = v16;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
    [v14 deleteRowsAtIndexPaths:v15 withRowAnimation:6];

    if (![(BuddyMultilingualDataSource *)v19 dataSourceActionEnabled])
    {
      [(BuddyMultilingualDataSource *)v19 tableView:location[0] allowAdditionalDataSelection:1];
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)itemEditingOptionsAtIndexPath:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] row];
  v14 = v3 == -[BuddyMultilingualDataSource _additionRowForSection:](v16, "_additionRowForSection:", [location[0] section]);
  v12 = 0;
  v10 = 0;
  v4 = 1;
  if (!v14)
  {
    v13 = [(BuddyMultilingualDataSource *)v16 backingStore];
    v12 = 1;
    v11 = [v13 objectAtIndexedSubscript:{objc_msgSend(location[0], "section")}];
    v10 = 1;
    v4 = 1;
    if ([v11 count] > 1)
    {
      v4 = [(BuddyMultilingualDataSource *)v16 _isEmojiSoleDataItemPostDeletion:location[0]];
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
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    v9 = 1;
  }

  else
  {
    v5 = [(BuddyMultilingualDataSource *)v16 backingStore];
    v6 = -[NSMutableArray objectAtIndexedSubscript:](v5, "objectAtIndexedSubscript:", [location[0] section]);
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

    v17 = [v8 editingOptions];
    v9 = 1;
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  return v17;
}

- (void)tableView:(id)a3 appendItem:(id)a4 inSection:(unint64_t)a5
{
  v26 = self;
  v25 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v22 = a5;
  v7 = a5;
  v8 = [(BuddyMultilingualDataSource *)v26 backingStore];
  v9 = v7 >= [(NSMutableArray *)v8 count];

  if (v9)
  {
    v10 = +[NSAssertionHandler currentHandler];
    v11 = v25;
    v12 = v26;
    v13 = [(BuddyMultilingualDataSource *)v26 backingStore];
    [(NSAssertionHandler *)v10 handleFailureInMethod:v11 object:v12 file:@"BuddyMultilingualDataSource.m" lineNumber:206 description:@"OOB check failed store:%@ section:%lu", v13, v22];
  }

  [location beginUpdates];
  v14 = [(BuddyMultilingualDataSource *)v26 backingStore];
  v15 = [(NSMutableArray *)v14 objectAtIndexedSubscript:v22];
  [v15 addObject:v23];

  v16 = [(BuddyMultilingualDataSource *)v26 fastIdentifierMap];
  v17 = [v23 identifier];
  v18 = [v23 identifier];
  [(NSMutableDictionary *)v16 setObject:v17 forKey:v18];

  v21 = [NSIndexPath indexPathForRow:[(BuddyMultilingualDataSource *)v26 rowForInsertionInSection:v22] inSection:v22];
  v19 = location;
  v27 = v21;
  v20 = [NSArray arrayWithObjects:&v27 count:1];
  [v19 insertRowsAtIndexPaths:v20 withRowAnimation:0];

  [location endUpdates];
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

- (void)tableView:(id)a3 allowAdditionalDataSelection:(BOOL)a4
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 != [(BuddyMultilingualDataSource *)v6 dataSourceActionEnabled])
  {
    [(BuddyMultilingualDataSource *)v6 setDataSourceActionEnabled:a4];
    [location[0] reloadData];
  }

  objc_storeStrong(location, 0);
}

- (unint64_t)rowForInsertionInSection:(unint64_t)a3
{
  v3 = [(BuddyMultilingualDataSource *)self backingStore];
  v4 = [(NSMutableArray *)v3 objectAtIndexedSubscript:a3];
  v9 = 0;
  v7 = 0;
  if ([v4 count] == 1)
  {
    v5 = 0;
  }

  else
  {
    v10 = [(BuddyMultilingualDataSource *)self backingStore];
    v9 = 1;
    v8 = [(NSMutableArray *)v10 objectAtIndexedSubscript:a3];
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

- (id)itemForPath:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v8 backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](v3, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];

  objc_storeStrong(location, 0);

  return v5;
}

- (id)combinedStore
{
  v17 = self;
  location[1] = a2;
  location[0] = objc_opt_new();
  memset(__b, 0, sizeof(__b));
  v2 = [(BuddyMultilingualDataSource *)v17 backingStore];
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v3)
  {
    v4 = *__b[2];
    do
    {
      for (i = 0; i < v3; ++i)
      {
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(v2);
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

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:__b objects:v19 count:16];
    }

    while (v3);
  }

  v10 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v10;
}

- (BOOL)containsKey:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v8 fastIdentifierMap];
  v4 = [(NSMutableDictionary *)v3 objectForKey:location[0]];
  v5 = v4 != 0;

  objc_storeStrong(location, 0);
  return v5;
}

- (id)immutableBackingStore
{
  v15 = self;
  location[1] = a2;
  v2 = [NSMutableArray alloc];
  v3 = [(BuddyMultilingualDataSource *)v15 backingStore];
  location[0] = [v2 initWithCapacity:{-[NSMutableArray count](v3, "count")}];

  memset(__b, 0, sizeof(__b));
  v4 = [(BuddyMultilingualDataSource *)v15 backingStore];
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:__b objects:v16 count:16];
  if (v5)
  {
    v6 = *__b[2];
    do
    {
      for (i = 0; i < v5; ++i)
      {
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(__b[1] + 8 * i);
        v8 = location[0];
        v9 = [v13 copy];
        [v8 addObject:v9];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:__b objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [location[0] copy];
  objc_storeStrong(location, 0);

  return v10;
}

- (BOOL)itemReorderableAtIndexPath:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = ([(BuddyMultilingualDataSource *)v6 itemEditingOptionsAtIndexPath:location[0]]& 1) == 1;
  objc_storeStrong(location, 0);
  return v3;
}

- (BOOL)itemDeleteableAtIndexPath:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v8 backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](v3, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = 1;
  if ([v4 count] != 1)
  {
    v5 = [(BuddyMultilingualDataSource *)v8 _isEmojiSoleDataItemPostDeletion:location[0]];
  }

  v9 = (v5 & 1) == 0 && ([(BuddyMultilingualDataSource *)v8 itemEditingOptionsAtIndexPath:location[0]]& 2) == 2;
  objc_storeStrong(location, 0);
  return v9;
}

- (unint64_t)_additionRowForSection:(int64_t)a3
{
  v3 = [(BuddyMultilingualDataSource *)self backingStore];
  v4 = [(NSMutableArray *)v3 objectAtIndexedSubscript:a3];
  v5 = [v4 count];

  return v5;
}

- (BOOL)_isEmojiSoleDataItemPostDeletion:(id)a3
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyMultilingualDataSource *)v35 backingStore];
  v4 = -[NSMutableArray objectAtIndexedSubscript:](v3, "objectAtIndexedSubscript:", [location[0] section]);
  v5 = [v4 count];

  if (v5 != 2)
  {
    goto LABEL_28;
  }

  v6 = [(BuddyMultilingualDataSource *)v35 backingStore];
  v7 = -[NSMutableArray objectAtIndexedSubscript:](v6, "objectAtIndexedSubscript:", [location[0] section]);
  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = [v8 identifier];
  v10 = [(BuddyMultilingualDataSource *)v35 emojiKeyboardIdentifier];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  v26 = 0;
  v24 = 0;
  v11 = 1;
  if (([v9 hasPrefix:v10] & 1) == 0)
  {
    v33 = [(BuddyMultilingualDataSource *)v35 backingStore];
    v32 = 1;
    v31 = -[NSMutableArray objectAtIndexedSubscript:](v33, "objectAtIndexedSubscript:", [location[0] section]);
    v30 = 1;
    v29 = [v31 objectAtIndexedSubscript:1];
    v28 = 1;
    v27 = [v29 identifier];
    v26 = 1;
    v25 = [(BuddyMultilingualDataSource *)v35 emojiKeyboardIdentifier];
    v24 = 1;
    v11 = [v27 hasPrefix:?];
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
    v23 = [(BuddyMultilingualDataSource *)v35 backingStore];
    v22 = 1;
    v21 = -[NSMutableArray objectAtIndexedSubscript:](v23, "objectAtIndexedSubscript:", [location[0] section]);
    v20 = 1;
    v19 = [v21 objectAtIndexedSubscript:{objc_msgSend(location[0], "row")}];
    v18 = 1;
    v17 = [v19 identifier];
    v16 = 1;
    v15 = [(BuddyMultilingualDataSource *)v35 emojiKeyboardIdentifier];
    v14 = 1;
    v12 = [v17 hasPrefix:?] ^ 1;
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
  v15 = self;
  location[1] = a2;
  v2 = +[UIApplication sharedApplication];
  v3 = [(UIApplication *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(UIContentSizeCategoryExtraLarge, v3);

  if (v4 == NSOrderedAscending)
  {
    [(BuddyMultilingualDataSource *)v15 setConsistentRowHeight:UITableViewAutomaticDimension];
  }

  else
  {
    [(BuddyMultilingualDataSource *)v15 consistentRowHeight];
    if (v5 == UITableViewAutomaticDimension)
    {
      location[0] = [[UITableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
      v6 = [location[0] textLabel];
      [v6 setText:@"SIZING_TEXT"];

      if ([(BuddyMultilingualDataSource *)v15 dataHasDetailedLabelField])
      {
        v7 = @"SIZING_DETAIL_TEXT";
      }

      else
      {
        v7 = 0;
      }

      v8 = [location[0] detailTextLabel];
      [v8 setText:v7];

      [location[0] layoutIfNeeded];
      [location[0] frame];
      sub_10023ED04();
      LODWORD(v9) = 1148846080;
      LODWORD(v10) = 1112014848;
      [location[0] systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:v12 verticalFittingPriority:{v9, v10}];
      [(BuddyMultilingualDataSource *)v15 setConsistentRowHeight:v13];
      objc_storeStrong(location, 0);
    }
  }
}

@end
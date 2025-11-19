@interface ICSEFolderListViewState
- (ICSEFolderListViewState)init;
- (id)accountItemAtIndex:(unint64_t)a3;
- (id)description;
- (id)itemAtIndexPath:(id)a3;
- (unint64_t)countOfAccounts;
- (unint64_t)countOfItemsInAccountAtIndex:(unint64_t)a3;
- (unint64_t)getModernAccountFolderListType:(id)a3;
- (void)addAccount:(id)a3;
- (void)addFolderListItem:(id)a3;
- (void)removeAccounts;
@end

@implementation ICSEFolderListViewState

- (ICSEFolderListViewState)init
{
  v10.receiver = self;
  v10.super_class = ICSEFolderListViewState;
  v2 = [(ICSEFolderListViewState *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    accounts = v2->_accounts;
    v2->_accounts = v3;

    v5 = objc_alloc_init(NSMutableSet);
    expandedFolderIdentifiers = v2->_expandedFolderIdentifiers;
    v2->_expandedFolderIdentifiers = v5;

    v7 = objc_alloc_init(NSMutableSet);
    collapsedAccountIdentifiers = v2->_collapsedAccountIdentifiers;
    v2->_collapsedAccountIdentifiers = v7;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(ICSEFolderListViewState *)self accounts];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 = v10 + 1;
        v11 = [NSString stringWithFormat:@"\nAccount %lu\n%@\n", v10, *(*(&v13 + 1) + 8 * v9)];
        [v3 appendString:v11];

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addAccount:(id)a3
{
  v4 = a3;
  v5 = [[ICSEFolderListItem alloc] initWithViewState:self];
  [(ICSEFolderListItem *)v5 setIsAccount:1];
  [(ICSEFolderListItem *)v5 setNoteContainer:v4];
  [(ICSEFolderListItem *)v5 setParent:0];
  [(ICSEFolderListItem *)v5 setFolderListItemAccountType:[(ICSEFolderListViewState *)self getModernAccountFolderListType:v4]];
  v6 = self;
  [(ICSEFolderListViewState *)self addFolderListItem:v5];
  [v4 visibleNoteContainerChildren];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        v12 = ICDynamicCast();
        if (v12)
        {
          v13 = [[ICSEFolderListItem alloc] initWithViewState:v6];
          [(ICSEFolderListItem *)v13 setIsAccount:1];
          [(ICSEFolderListItem *)v13 setNoteContainer:v4];
          [(ICSEFolderListItem *)v13 setParent:v5];
          [(ICSEFolderListItem *)v5 addChildItem:v13];
        }

        objc_opt_class();
        v14 = ICDynamicCast();
        if ([v14 isVisible] && (objc_msgSend(v14, "isTrashFolder") & 1) == 0)
        {
          [(ICSEFolderListItem *)v5 recursivelyAddChildFolder:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (unint64_t)getModernAccountFolderListType:(id)a3
{
  v3 = a3;
  if ([v3 accountType] == 1)
  {
    v4 = [v3 isManaged];
  }

  else if ([v3 accountType] == 3)
  {
    v4 = 2;
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3674(v3, v5);
    }

    v4 = 3;
  }

  return v4;
}

- (void)addFolderListItem:(id)a3
{
  v4 = a3;
  v5 = [(ICSEFolderListViewState *)self accounts];
  [v5 addObject:v4];

  v6 = [(ICSEFolderListViewState *)self accounts];
  [v6 sortUsingComparator:&stru_1000F2588];
}

- (unint64_t)countOfAccounts
{
  v2 = [(ICSEFolderListViewState *)self accounts];
  v3 = [v2 count];

  return v3;
}

- (void)removeAccounts
{
  v2 = [(ICSEFolderListViewState *)self accounts];
  [v2 removeAllObjects];
}

- (unint64_t)countOfItemsInAccountAtIndex:(unint64_t)a3
{
  v5 = [(ICSEFolderListViewState *)self accounts];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(ICSEFolderListViewState *)self accounts];
  v8 = [v7 objectAtIndex:a3];

  v9 = [v8 flattenedChildItems];
  v10 = [v9 count];

  return v10;
}

- (id)accountItemAtIndex:(unint64_t)a3
{
  v5 = [(ICSEFolderListViewState *)self accounts];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    [ICAssert handleFailedAssertWithCondition:"0" functionName:"[ICSEFolderListViewState accountItemAtIndex:]" simulateCrash:1 showAlert:0 format:@"Index %lu out of range for accounts", a3];
    v8 = 0;
  }

  else
  {
    v7 = [(ICSEFolderListViewState *)self accounts];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(ICSEFolderListViewState *)self accounts];
  if (v5 >= [v6 count])
  {
    v8 = 0;
  }

  else
  {
    v7 = [(ICSEFolderListViewState *)self accounts];
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "section")}];
  }

  v9 = [v8 flattenedChildItems];
  if (v9 && (v10 = [v4 row], v10 < objc_msgSend(v9, "count")))
  {
    v11 = [v9 objectAtIndex:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
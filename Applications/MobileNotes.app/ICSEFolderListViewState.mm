@interface ICSEFolderListViewState
- (ICSEFolderListViewState)init;
- (id)accountItemAtIndex:(unint64_t)index;
- (id)description;
- (id)itemAtIndexPath:(id)path;
- (unint64_t)countOfAccounts;
- (unint64_t)countOfItemsInAccountAtIndex:(unint64_t)index;
- (unint64_t)getModernAccountFolderListType:(id)type;
- (void)addAccount:(id)account;
- (void)addFolderListItem:(id)item;
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
  accounts = [(ICSEFolderListViewState *)self accounts];
  v5 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v7 = v10 + 1;
        v11 = [NSString stringWithFormat:@"\nAccount %lu\n%@\n", v10, *(*(&v13 + 1) + 8 * v9)];
        [v3 appendString:v11];

        v9 = v9 + 1;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addAccount:(id)account
{
  accountCopy = account;
  v5 = [[ICSEFolderListItem alloc] initWithViewState:self];
  [(ICSEFolderListItem *)v5 setIsAccount:1];
  [(ICSEFolderListItem *)v5 setNoteContainer:accountCopy];
  [(ICSEFolderListItem *)v5 setParent:0];
  [(ICSEFolderListItem *)v5 setFolderListItemAccountType:[(ICSEFolderListViewState *)self getModernAccountFolderListType:accountCopy]];
  selfCopy = self;
  [(ICSEFolderListViewState *)self addFolderListItem:v5];
  [accountCopy visibleNoteContainerChildren];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v7 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v11 = ICDynamicCast();
        if (v11)
        {
          v12 = [[ICSEFolderListItem alloc] initWithViewState:selfCopy];
          [(ICSEFolderListItem *)v12 setIsAccount:1];
          [(ICSEFolderListItem *)v12 setNoteContainer:accountCopy];
          [(ICSEFolderListItem *)v12 setParent:v5];
          [(ICSEFolderListItem *)v5 addChildItem:v12];
        }

        objc_opt_class();
        v13 = ICDynamicCast();
        if ([v13 isVisible] && (objc_msgSend(v13, "isTrashFolder") & 1) == 0)
        {
          [(ICSEFolderListItem *)v5 recursivelyAddChildFolder:v13];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (unint64_t)getModernAccountFolderListType:(id)type
{
  typeCopy = type;
  if ([typeCopy accountType] == 1)
  {
    isManaged = [typeCopy isManaged];
  }

  else if ([typeCopy accountType] == 3)
  {
    isManaged = 2;
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9874(typeCopy, v5);
    }

    isManaged = 3;
  }

  return isManaged;
}

- (void)addFolderListItem:(id)item
{
  itemCopy = item;
  accounts = [(ICSEFolderListViewState *)self accounts];
  [accounts addObject:itemCopy];

  accounts2 = [(ICSEFolderListViewState *)self accounts];
  [accounts2 sortUsingComparator:&stru_100646C60];
}

- (unint64_t)countOfAccounts
{
  accounts = [(ICSEFolderListViewState *)self accounts];
  v3 = [accounts count];

  return v3;
}

- (void)removeAccounts
{
  accounts = [(ICSEFolderListViewState *)self accounts];
  [accounts removeAllObjects];
}

- (unint64_t)countOfItemsInAccountAtIndex:(unint64_t)index
{
  accounts = [(ICSEFolderListViewState *)self accounts];
  v6 = [accounts count];

  if (v6 <= index)
  {
    return 0;
  }

  accounts2 = [(ICSEFolderListViewState *)self accounts];
  v8 = [accounts2 objectAtIndex:index];

  flattenedChildItems = [v8 flattenedChildItems];
  v10 = [flattenedChildItems count];

  return v10;
}

- (id)accountItemAtIndex:(unint64_t)index
{
  accounts = [(ICSEFolderListViewState *)self accounts];
  v6 = [accounts count];

  if (v6 <= index)
  {
    [ICAssert handleFailedAssertWithCondition:"0" functionName:"[ICSEFolderListViewState accountItemAtIndex:]" simulateCrash:1 showAlert:0 format:@"Index %lu out of range for accounts", index];
    v8 = 0;
  }

  else
  {
    accounts2 = [(ICSEFolderListViewState *)self accounts];
    v8 = [accounts2 objectAtIndex:index];
  }

  return v8;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  accounts = [(ICSEFolderListViewState *)self accounts];
  if (section >= [accounts count])
  {
    v8 = 0;
  }

  else
  {
    accounts2 = [(ICSEFolderListViewState *)self accounts];
    v8 = [accounts2 objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  }

  flattenedChildItems = [v8 flattenedChildItems];
  if (flattenedChildItems && (v10 = [pathCopy row], v10 < objc_msgSend(flattenedChildItems, "count")))
  {
    v11 = [flattenedChildItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
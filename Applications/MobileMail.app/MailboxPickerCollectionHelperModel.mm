@interface MailboxPickerCollectionHelperModel
- (BOOL)hasMultipleAccounts;
- (MailboxPickerCollectionHelperModel)initWithFavoritesManager:(id)manager;
- (MailboxPickerCollectionHelperSection)favoritesSection;
- (NSArray)sections;
- (id)favoriteItemAtIndexPath:(id)path;
- (id)favoriteItemForItemID:(id)d inSection:(id)section;
- (id)indexPathForItem:(id)item;
- (id)sectionForIndexPath:(id)path;
@end

@implementation MailboxPickerCollectionHelperModel

- (MailboxPickerCollectionHelperModel)initWithFavoritesManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MailboxPickerCollectionHelperModel;
  v6 = [(MailboxPickerCollectionHelperModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (BOOL)hasMultipleAccounts
{
  manager = [(MailboxPickerCollectionHelperModel *)self manager];
  accountsCollection = [manager accountsCollection];
  v4 = [accountsCollection visibleItemsOfType:1];
  v5 = [v4 count] > 1;

  return v5;
}

- (NSArray)sections
{
  sections = self->_sections;
  if (!sections)
  {
    selfCopy = self;
    manager = [(MailboxPickerCollectionHelperModel *)self manager];
    visibleMailboxCollections = [manager visibleMailboxCollections];

    v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [visibleMailboxCollections count]);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = visibleMailboxCollections;
    v33 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    if (v33)
    {
      v32 = *v41;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v40 + 1) + 8 * i);
          if ([v6 isAccountsCollection])
          {
            v7 = [v6 visibleItemsOfType:1];
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v8 = v7;
            v9 = [(MailboxPickerCollectionHelperSection *)v8 countByEnumeratingWithState:&v36 objects:v53 count:16];
            if (v9)
            {
              v10 = 0;
              v11 = *v37;
              do
              {
                for (j = 0; j != v9; j = j + 1)
                {
                  if (*v37 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v13 = *(*(&v36 + 1) + 8 * j);
                  v14 = [MailboxPickerCollectionHelperSection alloc];
                  v52 = v13;
                  v15 = [NSArray arrayWithObjects:&v52 count:1];
                  v16 = [(MailboxPickerCollectionHelperSection *)v14 initWithAccountsCollection:v6 index:v10 items:v15];
                  [v35 addObject:v16];

                  ++v10;
                }

                v9 = [(MailboxPickerCollectionHelperSection *)v8 countByEnumeratingWithState:&v36 objects:v53 count:16];
              }

              while (v9);
            }
          }

          else
          {
            v8 = [[MailboxPickerCollectionHelperSection alloc] initWithCollection:v6];
            [v35 addObject:v8];
          }
        }

        v33 = [obj countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v33);
    }

    v17 = v35;
    v18 = v17;
    if ([(NSArray *)v17 count])
    {
      v19 = [NSMutableArray arrayWithCapacity:[(NSArray *)v17 count]];
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x2020000000;
      v51[3] = 0;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1000FC39C;
      v48[3] = &unk_10064CA60;
      v20 = v19;
      v49 = v20;
      v50 = v51;
      v21 = objc_retainBlock(v48);
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v22 = v17;
      v23 = [(NSArray *)v22 countByEnumeratingWithState:&v44 objects:v55 count:16];
      if (v23)
      {
        v24 = 0;
        v25 = *v45;
        do
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v45 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v44 + 1) + 8 * k);
            if (!(v24 & 1 | (([v27 isAccounts] & 1) == 0)))
            {
              (v21[2])(v21);
              v24 = 1;
            }

            [v20 addObject:v27];
            if ([v27 isAccounts])
            {
              (v21[2])(v21);
            }
          }

          v23 = [(NSArray *)v22 countByEnumeratingWithState:&v44 objects:v55 count:16];
        }

        while (v23);
      }

      v18 = v20;
      _Block_object_dispose(v51, 8);
    }

    v28 = selfCopy->_sections;
    selfCopy->_sections = v18;

    sections = selfCopy->_sections;
  }

  return sections;
}

- (MailboxPickerCollectionHelperSection)favoritesSection
{
  sections = [(MailboxPickerCollectionHelperModel *)self sections];
  v3 = [sections ef_firstObjectPassingTest:&stru_100650448];

  return v3;
}

- (id)sectionForIndexPath:(id)path
{
  pathCopy = path;
  sections = [(MailboxPickerCollectionHelperModel *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  return v6;
}

- (id)favoriteItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MailboxPickerCollectionHelperModel *)self sectionForIndexPath:pathCopy];
  if ([v5 isAccounts])
  {
    items = [v5 items];
    if ([items count])
    {
      v7 = [pathCopy row];

      if (!v7)
      {
        items2 = [v5 items];
        v9 = [items2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
LABEL_13:
        v12 = v9;
        goto LABEL_17;
      }
    }

    else
    {
    }

    items2 = [v5 accountFavoriteItem];
    if (items2 && [pathCopy row])
    {
      subItems = [items2 subItems];
      v11 = [pathCopy row];
      if (v11 - 1 >= [subItems count])
      {
        v12 = 0;
      }

      else
      {
        v12 = [subItems objectAtIndexedSubscript:?];
      }

      goto LABEL_17;
    }
  }

  items2 = [v5 items];
  v13 = [pathCopy row];
  if (v13 < [items2 count])
  {
    v9 = [items2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    goto LABEL_13;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)favoriteItemForItemID:(id)d inSection:(id)section
{
  dCopy = d;
  sectionCopy = section;
  itemsByItemID = [sectionCopy itemsByItemID];
  v8 = [itemsByItemID objectForKeyedSubscript:dCopy];

  if (!v8)
  {
    [sectionCopy _reloadItemsByItemID];
    itemsByItemID2 = [sectionCopy itemsByItemID];
    v8 = [itemsByItemID2 objectForKeyedSubscript:dCopy];
  }

  return v8;
}

- (id)indexPathForItem:(id)item
{
  itemCopy = item;
  sections = [(MailboxPickerCollectionHelperModel *)self sections];
  for (i = 0; ; ++i)
  {
    if (i >= [sections count])
    {
      v16 = 0;
      goto LABEL_15;
    }

    v7 = [sections objectAtIndexedSubscript:i];
    items = [v7 items];
    if ([items count])
    {
      items2 = [v7 items];
      v10 = [items2 indexOfObject:itemCopy];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [NSIndexPath indexPathForRow:v10 inSection:i];
        goto LABEL_14;
      }
    }

    else
    {
    }

    accountFavoriteItem = [v7 accountFavoriteItem];
    v12 = accountFavoriteItem;
    if (accountFavoriteItem)
    {
      break;
    }

LABEL_12:
  }

  subItems = [accountFavoriteItem subItems];
  if (![subItems count])
  {

    goto LABEL_12;
  }

  subItems2 = [v12 subItems];
  v15 = [subItems2 indexOfObject:itemCopy];

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v16 = [NSIndexPath indexPathForRow:v15 + 1 inSection:i];

LABEL_14:
LABEL_15:

  return v16;
}

@end
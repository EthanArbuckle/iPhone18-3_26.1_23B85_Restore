@interface MailboxPickerCollectionHelperModel
- (BOOL)hasMultipleAccounts;
- (MailboxPickerCollectionHelperModel)initWithFavoritesManager:(id)a3;
- (MailboxPickerCollectionHelperSection)favoritesSection;
- (NSArray)sections;
- (id)favoriteItemAtIndexPath:(id)a3;
- (id)favoriteItemForItemID:(id)a3 inSection:(id)a4;
- (id)indexPathForItem:(id)a3;
- (id)sectionForIndexPath:(id)a3;
@end

@implementation MailboxPickerCollectionHelperModel

- (MailboxPickerCollectionHelperModel)initWithFavoritesManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MailboxPickerCollectionHelperModel;
  v6 = [(MailboxPickerCollectionHelperModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
  }

  return v7;
}

- (BOOL)hasMultipleAccounts
{
  v2 = [(MailboxPickerCollectionHelperModel *)self manager];
  v3 = [v2 accountsCollection];
  v4 = [v3 visibleItemsOfType:1];
  v5 = [v4 count] > 1;

  return v5;
}

- (NSArray)sections
{
  sections = self->_sections;
  if (!sections)
  {
    v30 = self;
    v4 = [(MailboxPickerCollectionHelperModel *)self manager];
    v5 = [v4 visibleMailboxCollections];

    v35 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v5;
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

    v28 = v30->_sections;
    v30->_sections = v18;

    sections = v30->_sections;
  }

  return sections;
}

- (MailboxPickerCollectionHelperSection)favoritesSection
{
  v2 = [(MailboxPickerCollectionHelperModel *)self sections];
  v3 = [v2 ef_firstObjectPassingTest:&stru_100650448];

  return v3;
}

- (id)sectionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelperModel *)self sections];
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];

  return v6;
}

- (id)favoriteItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelperModel *)self sectionForIndexPath:v4];
  if ([v5 isAccounts])
  {
    v6 = [v5 items];
    if ([v6 count])
    {
      v7 = [v4 row];

      if (!v7)
      {
        v8 = [v5 items];
        v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
LABEL_13:
        v12 = v9;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v8 = [v5 accountFavoriteItem];
    if (v8 && [v4 row])
    {
      v10 = [v8 subItems];
      v11 = [v4 row];
      if (v11 - 1 >= [v10 count])
      {
        v12 = 0;
      }

      else
      {
        v12 = [v10 objectAtIndexedSubscript:?];
      }

      goto LABEL_17;
    }
  }

  v8 = [v5 items];
  v13 = [v4 row];
  if (v13 < [v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
    goto LABEL_13;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (id)favoriteItemForItemID:(id)a3 inSection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 itemsByItemID];
  v8 = [v7 objectForKeyedSubscript:v5];

  if (!v8)
  {
    [v6 _reloadItemsByItemID];
    v9 = [v6 itemsByItemID];
    v8 = [v9 objectForKeyedSubscript:v5];
  }

  return v8;
}

- (id)indexPathForItem:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelperModel *)self sections];
  for (i = 0; ; ++i)
  {
    if (i >= [v5 count])
    {
      v16 = 0;
      goto LABEL_15;
    }

    v7 = [v5 objectAtIndexedSubscript:i];
    v8 = [v7 items];
    if ([v8 count])
    {
      v9 = [v7 items];
      v10 = [v9 indexOfObject:v4];

      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [NSIndexPath indexPathForRow:v10 inSection:i];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v11 = [v7 accountFavoriteItem];
    v12 = v11;
    if (v11)
    {
      break;
    }

LABEL_12:
  }

  v13 = [v11 subItems];
  if (![v13 count])
  {

    goto LABEL_12;
  }

  v14 = [v12 subItems];
  v15 = [v14 indexOfObject:v4];

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
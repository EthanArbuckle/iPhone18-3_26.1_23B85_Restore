@interface MailboxPickerCollectionHelperSection
- (MailboxPickerCollectionHelperSection)initWithAccountsCollection:(id)a3 index:(int64_t)a4 items:(id)a5;
- (MailboxPickerCollectionHelperSection)initWithCollection:(id)a3;
- (NSArray)items;
- (id)accountFavoriteItem;
- (id)initPlaceholderWithSectionIdentifierIndex:(int64_t)a3;
- (void)_reloadItemsByItemID;
- (void)prepareItemsForView;
@end

@implementation MailboxPickerCollectionHelperSection

- (MailboxPickerCollectionHelperSection)initWithAccountsCollection:(id)a3 index:(int64_t)a4 items:(id)a5
{
  v10 = a3;
  v11 = a5;
  if (([v10 isAccountsCollection] & 1) == 0)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelperModel.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"[collection isAccountsCollection]"}];
  }

  v22.receiver = self;
  v22.super_class = MailboxPickerCollectionHelperSection;
  v12 = [(MailboxPickerCollectionHelperSection *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_collection, a3);
    [(MailboxPickerCollectionHelperSection *)v13 setAccountIndex:a4];
    [(MailboxPickerCollectionHelperSection *)v13 setItems:v11];
    [(MailboxPickerCollectionHelperSection *)v13 setType:2];
    v14 = [v10 uniqueId];
    v15 = [v11 firstObject];
    v16 = [v15 itemID];
    v17 = [NSString stringWithFormat:@"%@-%@", v14, v16];
    [(MailboxPickerCollectionHelperSection *)v13 setSectionIdentifier:v17];

    v18 = [v10 items];
    v19 = sub_1000FADD4(v13, v18);
    [(MailboxPickerCollectionHelperSection *)v13 setItemsByItemID:v19];
  }

  return v13;
}

- (MailboxPickerCollectionHelperSection)initWithCollection:(id)a3
{
  v6 = a3;
  if ([v6 isAccountsCollection])
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelperModel.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"![collection isAccountsCollection]"}];
  }

  v16.receiver = self;
  v16.super_class = MailboxPickerCollectionHelperSection;
  v7 = [(MailboxPickerCollectionHelperSection *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_collection, a3);
    [(MailboxPickerCollectionHelperSection *)v8 setAccountIndex:0x7FFFFFFFFFFFFFFFLL];
    v9 = [v6 uniqueId];
    [(MailboxPickerCollectionHelperSection *)v8 setSectionIdentifier:v9];

    if ([v6 isMailboxesCollection])
    {
      v10 = 0;
    }

    else
    {
      if (![v6 isOutboxCollection])
      {
        v11 = +[NSAssertionHandler currentHandler];
        [v11 handleFailureInMethod:a2 object:v8 file:@"MailboxPickerCollectionHelperModel.m" lineNumber:59 description:@"Unexpected collection type"];

        goto LABEL_10;
      }

      v10 = 1;
    }

    [(MailboxPickerCollectionHelperSection *)v8 setType:v10];
LABEL_10:
    v12 = [v6 items];
    v13 = sub_1000FADD4(v8, v12);
    [(MailboxPickerCollectionHelperSection *)v8 setItemsByItemID:v13];
  }

  return v8;
}

- (id)initPlaceholderWithSectionIdentifierIndex:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = MailboxPickerCollectionHelperSection;
  v4 = [(MailboxPickerCollectionHelperSection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(MailboxPickerCollectionHelperSection *)v4 setItems:&__NSArray0__struct];
    [(MailboxPickerCollectionHelperSection *)v5 setItemsByItemID:&__NSDictionary0__struct];
    [(MailboxPickerCollectionHelperSection *)v5 setType:3];
    v6 = [NSString stringWithFormat:@"Placeholder:%ld", a3];
    [(MailboxPickerCollectionHelperSection *)v5 setSectionIdentifier:v6];
  }

  return v5;
}

- (NSArray)items
{
  items = self->_items;
  if (items)
  {
    v3 = items;
  }

  else
  {
    v4 = [(MailboxPickerCollectionHelperSection *)self collection];
    v3 = [v4 visibleItems];
  }

  return v3;
}

- (id)accountFavoriteItem
{
  v3 = [(MailboxPickerCollectionHelperSection *)self items];
  if (-[MailboxPickerCollectionHelperSection isAccounts](self, "isAccounts") && [v3 count] && (objc_msgSend(v3, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "type"), v4, v5 == 1))
  {
    v6 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)prepareItemsForView
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MailboxPickerCollectionHelperSection *)self collection];
  v3 = [v2 items];

  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6) prepareItemForView];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_reloadItemsByItemID
{
  v4 = [(MailboxPickerCollectionHelperSection *)self items];
  v3 = sub_1000FADD4(self, v4);
  [(MailboxPickerCollectionHelperSection *)self setItemsByItemID:v3];
}

@end
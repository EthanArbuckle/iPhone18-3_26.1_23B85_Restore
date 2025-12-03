@interface MailboxPickerCollectionHelperSection
- (MailboxPickerCollectionHelperSection)initWithAccountsCollection:(id)collection index:(int64_t)index items:(id)items;
- (MailboxPickerCollectionHelperSection)initWithCollection:(id)collection;
- (NSArray)items;
- (id)accountFavoriteItem;
- (id)initPlaceholderWithSectionIdentifierIndex:(int64_t)index;
- (void)_reloadItemsByItemID;
- (void)prepareItemsForView;
@end

@implementation MailboxPickerCollectionHelperSection

- (MailboxPickerCollectionHelperSection)initWithAccountsCollection:(id)collection index:(int64_t)index items:(id)items
{
  collectionCopy = collection;
  itemsCopy = items;
  if (([collectionCopy isAccountsCollection] & 1) == 0)
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
    objc_storeStrong(&v12->_collection, collection);
    [(MailboxPickerCollectionHelperSection *)v13 setAccountIndex:index];
    [(MailboxPickerCollectionHelperSection *)v13 setItems:itemsCopy];
    [(MailboxPickerCollectionHelperSection *)v13 setType:2];
    uniqueId = [collectionCopy uniqueId];
    firstObject = [itemsCopy firstObject];
    itemID = [firstObject itemID];
    v17 = [NSString stringWithFormat:@"%@-%@", uniqueId, itemID];
    [(MailboxPickerCollectionHelperSection *)v13 setSectionIdentifier:v17];

    items = [collectionCopy items];
    v19 = sub_1000FADD4(v13, items);
    [(MailboxPickerCollectionHelperSection *)v13 setItemsByItemID:v19];
  }

  return v13;
}

- (MailboxPickerCollectionHelperSection)initWithCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy isAccountsCollection])
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
    objc_storeStrong(&v7->_collection, collection);
    [(MailboxPickerCollectionHelperSection *)v8 setAccountIndex:0x7FFFFFFFFFFFFFFFLL];
    uniqueId = [collectionCopy uniqueId];
    [(MailboxPickerCollectionHelperSection *)v8 setSectionIdentifier:uniqueId];

    if ([collectionCopy isMailboxesCollection])
    {
      v10 = 0;
    }

    else
    {
      if (![collectionCopy isOutboxCollection])
      {
        v11 = +[NSAssertionHandler currentHandler];
        [v11 handleFailureInMethod:a2 object:v8 file:@"MailboxPickerCollectionHelperModel.m" lineNumber:59 description:@"Unexpected collection type"];

        goto LABEL_10;
      }

      v10 = 1;
    }

    [(MailboxPickerCollectionHelperSection *)v8 setType:v10];
LABEL_10:
    items = [collectionCopy items];
    v13 = sub_1000FADD4(v8, items);
    [(MailboxPickerCollectionHelperSection *)v8 setItemsByItemID:v13];
  }

  return v8;
}

- (id)initPlaceholderWithSectionIdentifierIndex:(int64_t)index
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
    index = [NSString stringWithFormat:@"Placeholder:%ld", index];
    [(MailboxPickerCollectionHelperSection *)v5 setSectionIdentifier:index];
  }

  return v5;
}

- (NSArray)items
{
  items = self->_items;
  if (items)
  {
    visibleItems = items;
  }

  else
  {
    collection = [(MailboxPickerCollectionHelperSection *)self collection];
    visibleItems = [collection visibleItems];
  }

  return visibleItems;
}

- (id)accountFavoriteItem
{
  items = [(MailboxPickerCollectionHelperSection *)self items];
  if (-[MailboxPickerCollectionHelperSection isAccounts](self, "isAccounts") && [items count] && (objc_msgSend(items, "objectAtIndexedSubscript:", 0), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "type"), v4, v5 == 1))
  {
    v6 = [items objectAtIndexedSubscript:0];
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
  collection = [(MailboxPickerCollectionHelperSection *)self collection];
  items = [collection items];

  v4 = [items countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(items);
        }

        [*(*(&v7 + 1) + 8 * v6) prepareItemForView];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [items countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_reloadItemsByItemID
{
  items = [(MailboxPickerCollectionHelperSection *)self items];
  v3 = sub_1000FADD4(self, items);
  [(MailboxPickerCollectionHelperSection *)self setItemsByItemID:v3];
}

@end
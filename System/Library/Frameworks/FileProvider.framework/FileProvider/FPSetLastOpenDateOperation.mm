@interface FPSetLastOpenDateOperation
- (FPSetLastOpenDateOperation)initWithItems:(id)items date:(id)date;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)items;
@end

@implementation FPSetLastOpenDateOperation

- (id)replicateForItems:(id)items
{
  itemsCopy = items;
  v5 = [[FPSetLastOpenDateOperation alloc] initWithItems:itemsCopy date:self->_date];

  return v5;
}

- (FPSetLastOpenDateOperation)initWithItems:(id)items date:(id)date
{
  itemsCopy = items;
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = FPSetLastOpenDateOperation;
  v9 = [(FPTransformOperation *)&v13 initWithItemsOfDifferentProviders:itemsCopy action:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_items, items);
    date = dateCopy;
    if (!dateCopy)
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    objc_storeStrong(&v10->_date, date);
    if (!dateCopy)
    {
    }

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
  }

  return v10;
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  items = [(FPTransformOperation *)self items];
  fp_itemIdentifiers = [items fp_itemIdentifiers];
  v6 = FPAbbreviatedArrayDescription(fp_itemIdentifiers);
  v7 = [v3 stringWithFormat:@"set last used date %@ to %@", v6, self->_date];

  return v7;
}

@end
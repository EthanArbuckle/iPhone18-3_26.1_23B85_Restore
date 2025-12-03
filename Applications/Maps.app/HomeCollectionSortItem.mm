@interface HomeCollectionSortItem
- (BOOL)isEqual:(id)equal;
- (HomeCollectionSortItem)initWithCollection:(id)collection delegate:(id)delegate;
- (HomeCollectionSortItemDelegate)delegate;
- (id)_sortTypes;
- (id)_titleForCollectionSortType:(int64_t)type;
- (id)cellModelWithBackgroundModel:(id)model;
- (void)smallDropDownOutlineCell:(id)cell didSelectItemAtIndex:(int64_t)index;
@end

@implementation HomeCollectionSortItem

- (HomeCollectionSortItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smallDropDownOutlineCell:(id)cell didSelectItemAtIndex:(int64_t)index
{
  _sortTypes = [(HomeCollectionSortItem *)self _sortTypes];
  if ((index & 0x8000000000000000) == 0)
  {
    v11 = _sortTypes;
    v7 = [_sortTypes count] <= index;
    _sortTypes = v11;
    if (!v7)
    {
      v8 = [v11 objectAtIndexedSubscript:index];
      integerValue = [v8 integerValue];

      delegate = [(HomeCollectionSortItem *)self delegate];
      [delegate collectionSortItem:self didSelectSortType:integerValue];

      _sortTypes = v11;
    }
  }
}

- (id)_sortTypes
{
  v3 = +[NSMutableArray array];
  [v3 addObject:&off_1016E6B78];
  if ([(CollectionHandler *)self->_collection contentType]== 1)
  {
    v4 = +[MKLocationManager sharedLocationManager];
    isAuthorizedForPreciseLocation = [v4 isAuthorizedForPreciseLocation];

    if (isAuthorizedForPreciseLocation)
    {
      [v3 addObject:&off_1016E6B90];
    }
  }

  if ([(CollectionHandler *)self->_collection handlerType]!= 3)
  {
    [v3 addObject:&off_1016E6BA8];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)_titleForCollectionSortType:(int64_t)type
{
  if (type <= 2)
  {
    v4 = *(&off_1016284B0 + type);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)cellModelWithBackgroundModel:(id)model
{
  modelCopy = model;
  _sortTypes = [(HomeCollectionSortItem *)self _sortTypes];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = _sortTypes;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = -[HomeCollectionSortItem _titleForCollectionSortType:](self, "_titleForCollectionSortType:", [*(*(&v18 + 1) + 8 * i) integerValue]);
        [v6 addObject:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = [SmallDropDownOutlineCellModel alloc];
  v14 = [(HomeCollectionSortItem *)self _titleForCollectionSortType:[(CollectionHandler *)self->_collection sortType]];
  v15 = [NSNumber numberWithInteger:[(CollectionHandler *)self->_collection sortType]];
  v16 = -[SmallDropDownOutlineCellModel initWithButtonTitle:dropDownTitles:selectedIndex:delegate:backgroundModel:](v13, "initWithButtonTitle:dropDownTitles:selectedIndex:delegate:backgroundModel:", v14, v6, [v7 indexOfObject:v15], self, modelCopy);

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    collection = [(HomeCollectionSortItem *)v6 collection];
    v8 = collection;
    if (collection == self->_collection || [(CollectionHandler *)collection isEqual:?])
    {
      delegate = [(HomeCollectionSortItem *)v6 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (delegate == WeakRetained)
      {
        v11 = 1;
      }

      else
      {
        v11 = [delegate isEqual:WeakRetained];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HomeCollectionSortItem)initWithCollection:(id)collection delegate:(id)delegate
{
  collectionCopy = collection;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HomeCollectionSortItem;
  v9 = [(HomeCollectionSortItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end
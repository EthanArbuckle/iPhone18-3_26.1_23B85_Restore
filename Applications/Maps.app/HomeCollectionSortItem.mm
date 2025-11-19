@interface HomeCollectionSortItem
- (BOOL)isEqual:(id)a3;
- (HomeCollectionSortItem)initWithCollection:(id)a3 delegate:(id)a4;
- (HomeCollectionSortItemDelegate)delegate;
- (id)_sortTypes;
- (id)_titleForCollectionSortType:(int64_t)a3;
- (id)cellModelWithBackgroundModel:(id)a3;
- (void)smallDropDownOutlineCell:(id)a3 didSelectItemAtIndex:(int64_t)a4;
@end

@implementation HomeCollectionSortItem

- (HomeCollectionSortItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smallDropDownOutlineCell:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  v6 = [(HomeCollectionSortItem *)self _sortTypes];
  if ((a4 & 0x8000000000000000) == 0)
  {
    v11 = v6;
    v7 = [v6 count] <= a4;
    v6 = v11;
    if (!v7)
    {
      v8 = [v11 objectAtIndexedSubscript:a4];
      v9 = [v8 integerValue];

      v10 = [(HomeCollectionSortItem *)self delegate];
      [v10 collectionSortItem:self didSelectSortType:v9];

      v6 = v11;
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
    v5 = [v4 isAuthorizedForPreciseLocation];

    if (v5)
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

- (id)_titleForCollectionSortType:(int64_t)a3
{
  if (a3 <= 2)
  {
    v4 = *(&off_1016284B0 + a3);
    v5 = +[NSBundle mainBundle];
    v3 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  return v3;
}

- (id)cellModelWithBackgroundModel:(id)a3
{
  v4 = a3;
  v5 = [(HomeCollectionSortItem *)self _sortTypes];
  v6 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
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
  v16 = -[SmallDropDownOutlineCellModel initWithButtonTitle:dropDownTitles:selectedIndex:delegate:backgroundModel:](v13, "initWithButtonTitle:dropDownTitles:selectedIndex:delegate:backgroundModel:", v14, v6, [v7 indexOfObject:v15], self, v4);

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(HomeCollectionSortItem *)v6 collection];
    v8 = v7;
    if (v7 == self->_collection || [(CollectionHandler *)v7 isEqual:?])
    {
      v9 = [(HomeCollectionSortItem *)v6 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (v9 == WeakRetained)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqual:WeakRetained];
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

- (HomeCollectionSortItem)initWithCollection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HomeCollectionSortItem;
  v9 = [(HomeCollectionSortItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end
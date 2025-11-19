@interface MFMailboxFilterPickerViewModel
- (BOOL)canDeselectRowAtIndexPath:(id)a3;
- (MFMailboxFilterPickerViewModel)initWithFilterViewModel:(id)a3 delegate:(id)a4;
- (MFMailboxFilterPickerViewModel)initWithProvider:(id)a3 selectedFilters:(id)a4 delegate:(id)a5;
- (MFMailboxFilterPickerViewModelDelegate)delegate;
- (NSArray)filters;
- (id)filterAtIndexPath:(id)a3;
- (id)filtersForGroupAtIndex:(int64_t)a3;
- (id)groupAtIndex:(int64_t)a3;
- (id)indexPathForFilter:(id)a3;
- (id)indexPathsForFilters:(id)a3;
- (id)selected;
- (id)selectedFilters;
- (id)titleForSection:(int64_t)a3;
- (int64_t)indexOfGroup:(id)a3;
- (int64_t)numberOfFilterSection;
- (int64_t)numberOfFiltersForSection:(int64_t)a3;
- (int64_t)selectionTypeAtIndex:(id)a3;
- (void)_notifyDelegateOfChangeAtIndexPath:(id)a3;
- (void)deselectFilterAtIndexPath:(id)a3;
- (void)selectFilterAtIndexPath:(id)a3;
@end

@implementation MFMailboxFilterPickerViewModel

- (MFMailboxFilterPickerViewModel)initWithProvider:(id)a3 selectedFilters:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MFMailboxFilterPickerViewModel;
  v12 = [(MFMailboxFilterPickerViewModel *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provider, a3);
    v14 = [(MFMailboxFilterPickerViewModel *)v13 indexPathsForFilters:v10];
    v15 = [[NSMutableSet alloc] initWithArray:v14];

    selectedIndexPaths = v13->_selectedIndexPaths;
    v13->_selectedIndexPaths = v15;

    objc_storeWeak(&v13->_delegate, v11);
  }

  return v13;
}

- (MFMailboxFilterPickerViewModel)initWithFilterViewModel:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 provider];
  v9 = [v6 selectedFilters];
  v10 = [(MFMailboxFilterPickerViewModel *)self initWithProvider:v8 selectedFilters:v9 delegate:v7];

  return v10;
}

- (NSArray)filters
{
  v2 = [(MFMailboxFilterPickerViewModel *)self provider];
  v3 = [v2 allFilters];

  return v3;
}

- (int64_t)numberOfFilterSection
{
  v2 = [(MFMailboxFilterPickerViewModel *)self provider];
  v3 = [v2 filtersGroups];
  v4 = [v3 count];

  return v4;
}

- (int64_t)numberOfFiltersForSection:(int64_t)a3
{
  v3 = [(MFMailboxFilterPickerViewModel *)self filtersForGroupAtIndex:a3];
  v4 = [v3 count];

  return v4;
}

- (id)filtersForGroupAtIndex:(int64_t)a3
{
  v3 = [(MFMailboxFilterPickerViewModel *)self groupAtIndex:a3];
  v4 = [v3 filters];

  return v4;
}

- (id)groupAtIndex:(int64_t)a3
{
  v4 = [(MFMailboxFilterPickerViewModel *)self provider];
  v5 = [v4 filtersGroups];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (int64_t)indexOfGroup:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxFilterPickerViewModel *)self provider];
  v6 = [v5 filtersGroups];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

- (id)titleForSection:(int64_t)a3
{
  v3 = [(MFMailboxFilterPickerViewModel *)self groupAtIndex:a3];
  v4 = [v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_100662A88;
  }

  v7 = v6;

  return v6;
}

- (id)filterAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[MFMailboxFilterPickerViewModel filtersForGroupAtIndex:](self, "filtersForGroupAtIndex:", [v4 section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

  return v6;
}

- (id)indexPathForFilter:(id)a3
{
  v5 = a3;
  v6 = [(MFMailboxFilterPickerViewModel *)self provider];
  v7 = [v6 groupContainingFilter:v5];

  v8 = [(MFMailboxFilterPickerViewModel *)self indexOfGroup:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[MFMailboxFilterPickerViewModel filtersForGroupAtIndex:](self, "filtersForGroupAtIndex:", v8), v11 = objc_claimAutoreleasedReturnValue(), v10 = [v11 indexOfObject:v5], v11, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:96 description:@"It should always be possible to find the group and the filter index"];

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [NSIndexPath indexPathForRow:v10 inSection:v8];

  return v12;
}

- (id)indexPathsForFilters:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7380;
  v5[3] = &unk_100654388;
  v5[4] = self;
  v3 = [a3 ef_map:v5];

  return v3;
}

- (BOOL)canDeselectRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[MFMailboxFilterPickerViewModel groupAtIndex:](self, "groupAtIndex:", [v4 section]);
  if ([v5 selectionCardinality])
  {
    v6 = 1;
  }

  else
  {
    v7 = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001D74D4;
    v10[3] = &unk_1006521F0;
    v11 = v4;
    v8 = [v7 ef_countObjectsPassingTest:v10];

    v6 = v8 > 1;
  }

  return v6;
}

- (int64_t)selectionTypeAtIndex:(id)a3
{
  v4 = a3;
  v5 = -[MFMailboxFilterPickerViewModel groupAtIndex:](self, "groupAtIndex:", [v4 section]);
  v6 = [v5 combinator] == 0;

  return v6;
}

- (void)selectFilterAtIndexPath:(id)a3
{
  v10 = a3;
  if (!v10 || (v5 = [v10 row], -[MFMailboxFilterPickerViewModel filters](self, "filters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"indexPath && ((NSUInteger)indexPath.row < self.filters.count)"}];
  }

  v9 = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  [v9 addObject:v10];

  [(MFMailboxFilterPickerViewModel *)self _notifyDelegateOfChangeAtIndexPath:v10];
}

- (void)deselectFilterAtIndexPath:(id)a3
{
  v10 = a3;
  if (!v10 || (v5 = [v10 row], -[MFMailboxFilterPickerViewModel filters](self, "filters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"indexPath && ((NSUInteger)indexPath.row < self.filters.count)"}];
  }

  v9 = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  [v9 removeObject:v10];

  [(MFMailboxFilterPickerViewModel *)self _notifyDelegateOfChangeAtIndexPath:v10];
}

- (id)selected
{
  v2 = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  v3 = [v2 allObjects];

  return v3;
}

- (id)selectedFilters
{
  v3 = NSStringFromSelector("section");
  v4 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:1];

  v5 = NSStringFromSelector("row");
  v6 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];

  v7 = [(MFMailboxFilterPickerViewModel *)self selected];
  v13[0] = v4;
  v13[1] = v6;
  v8 = [NSArray arrayWithObjects:v13 count:2];
  v9 = [v7 sortedArrayUsingDescriptors:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D7A64;
  v12[3] = &unk_1006543B0;
  v12[4] = self;
  v10 = [v9 ef_map:v12];

  return v10;
}

- (void)_notifyDelegateOfChangeAtIndexPath:(id)a3
{
  v5 = [(MFMailboxFilterPickerViewModel *)self filterAtIndexPath:a3];
  if ([v5 hasCriterionOfType:23])
  {
    v4 = [(MFMailboxFilterPickerViewModel *)self delegate];
    [v4 filterPickerViewModelDidChangeSelectedAccounts:self];
  }
}

- (MFMailboxFilterPickerViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
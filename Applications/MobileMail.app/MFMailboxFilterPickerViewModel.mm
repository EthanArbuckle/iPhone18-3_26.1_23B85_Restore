@interface MFMailboxFilterPickerViewModel
- (BOOL)canDeselectRowAtIndexPath:(id)path;
- (MFMailboxFilterPickerViewModel)initWithFilterViewModel:(id)model delegate:(id)delegate;
- (MFMailboxFilterPickerViewModel)initWithProvider:(id)provider selectedFilters:(id)filters delegate:(id)delegate;
- (MFMailboxFilterPickerViewModelDelegate)delegate;
- (NSArray)filters;
- (id)filterAtIndexPath:(id)path;
- (id)filtersForGroupAtIndex:(int64_t)index;
- (id)groupAtIndex:(int64_t)index;
- (id)indexPathForFilter:(id)filter;
- (id)indexPathsForFilters:(id)filters;
- (id)selected;
- (id)selectedFilters;
- (id)titleForSection:(int64_t)section;
- (int64_t)indexOfGroup:(id)group;
- (int64_t)numberOfFilterSection;
- (int64_t)numberOfFiltersForSection:(int64_t)section;
- (int64_t)selectionTypeAtIndex:(id)index;
- (void)_notifyDelegateOfChangeAtIndexPath:(id)path;
- (void)deselectFilterAtIndexPath:(id)path;
- (void)selectFilterAtIndexPath:(id)path;
@end

@implementation MFMailboxFilterPickerViewModel

- (MFMailboxFilterPickerViewModel)initWithProvider:(id)provider selectedFilters:(id)filters delegate:(id)delegate
{
  providerCopy = provider;
  filtersCopy = filters;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = MFMailboxFilterPickerViewModel;
  v12 = [(MFMailboxFilterPickerViewModel *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provider, provider);
    v14 = [(MFMailboxFilterPickerViewModel *)v13 indexPathsForFilters:filtersCopy];
    v15 = [[NSMutableSet alloc] initWithArray:v14];

    selectedIndexPaths = v13->_selectedIndexPaths;
    v13->_selectedIndexPaths = v15;

    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (MFMailboxFilterPickerViewModel)initWithFilterViewModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  provider = [modelCopy provider];
  selectedFilters = [modelCopy selectedFilters];
  v10 = [(MFMailboxFilterPickerViewModel *)self initWithProvider:provider selectedFilters:selectedFilters delegate:delegateCopy];

  return v10;
}

- (NSArray)filters
{
  provider = [(MFMailboxFilterPickerViewModel *)self provider];
  allFilters = [provider allFilters];

  return allFilters;
}

- (int64_t)numberOfFilterSection
{
  provider = [(MFMailboxFilterPickerViewModel *)self provider];
  filtersGroups = [provider filtersGroups];
  v4 = [filtersGroups count];

  return v4;
}

- (int64_t)numberOfFiltersForSection:(int64_t)section
{
  v3 = [(MFMailboxFilterPickerViewModel *)self filtersForGroupAtIndex:section];
  v4 = [v3 count];

  return v4;
}

- (id)filtersForGroupAtIndex:(int64_t)index
{
  v3 = [(MFMailboxFilterPickerViewModel *)self groupAtIndex:index];
  filters = [v3 filters];

  return filters;
}

- (id)groupAtIndex:(int64_t)index
{
  provider = [(MFMailboxFilterPickerViewModel *)self provider];
  filtersGroups = [provider filtersGroups];
  v6 = [filtersGroups objectAtIndexedSubscript:index];

  return v6;
}

- (int64_t)indexOfGroup:(id)group
{
  groupCopy = group;
  provider = [(MFMailboxFilterPickerViewModel *)self provider];
  filtersGroups = [provider filtersGroups];
  v7 = [filtersGroups indexOfObject:groupCopy];

  return v7;
}

- (id)titleForSection:(int64_t)section
{
  v3 = [(MFMailboxFilterPickerViewModel *)self groupAtIndex:section];
  name = [v3 name];
  v5 = name;
  if (name)
  {
    v6 = name;
  }

  else
  {
    v6 = &stru_100662A88;
  }

  v7 = v6;

  return v6;
}

- (id)filterAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[MFMailboxFilterPickerViewModel filtersForGroupAtIndex:](self, "filtersForGroupAtIndex:", [pathCopy section]);
  v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  return v6;
}

- (id)indexPathForFilter:(id)filter
{
  filterCopy = filter;
  provider = [(MFMailboxFilterPickerViewModel *)self provider];
  v7 = [provider groupContainingFilter:filterCopy];

  v8 = [(MFMailboxFilterPickerViewModel *)self indexOfGroup:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL || (-[MFMailboxFilterPickerViewModel filtersForGroupAtIndex:](self, "filtersForGroupAtIndex:", v8), v11 = objc_claimAutoreleasedReturnValue(), v10 = [v11 indexOfObject:filterCopy], v11, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:96 description:@"It should always be possible to find the group and the filter index"];

    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = [NSIndexPath indexPathForRow:v10 inSection:v8];

  return v12;
}

- (id)indexPathsForFilters:(id)filters
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D7380;
  v5[3] = &unk_100654388;
  v5[4] = self;
  v3 = [filters ef_map:v5];

  return v3;
}

- (BOOL)canDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[MFMailboxFilterPickerViewModel groupAtIndex:](self, "groupAtIndex:", [pathCopy section]);
  if ([v5 selectionCardinality])
  {
    v6 = 1;
  }

  else
  {
    selectedIndexPaths = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001D74D4;
    v10[3] = &unk_1006521F0;
    v11 = pathCopy;
    v8 = [selectedIndexPaths ef_countObjectsPassingTest:v10];

    v6 = v8 > 1;
  }

  return v6;
}

- (int64_t)selectionTypeAtIndex:(id)index
{
  indexCopy = index;
  v5 = -[MFMailboxFilterPickerViewModel groupAtIndex:](self, "groupAtIndex:", [indexCopy section]);
  v6 = [v5 combinator] == 0;

  return v6;
}

- (void)selectFilterAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy || (v5 = [pathCopy row], -[MFMailboxFilterPickerViewModel filters](self, "filters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"indexPath && ((NSUInteger)indexPath.row < self.filters.count)"}];
  }

  selectedIndexPaths = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  [selectedIndexPaths addObject:pathCopy];

  [(MFMailboxFilterPickerViewModel *)self _notifyDelegateOfChangeAtIndexPath:pathCopy];
}

- (void)deselectFilterAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy || (v5 = [pathCopy row], -[MFMailboxFilterPickerViewModel filters](self, "filters"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v5 >= v7))
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewModel.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"indexPath && ((NSUInteger)indexPath.row < self.filters.count)"}];
  }

  selectedIndexPaths = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  [selectedIndexPaths removeObject:pathCopy];

  [(MFMailboxFilterPickerViewModel *)self _notifyDelegateOfChangeAtIndexPath:pathCopy];
}

- (id)selected
{
  selectedIndexPaths = [(MFMailboxFilterPickerViewModel *)self selectedIndexPaths];
  allObjects = [selectedIndexPaths allObjects];

  return allObjects;
}

- (id)selectedFilters
{
  v3 = NSStringFromSelector("section");
  v4 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:1];

  v5 = NSStringFromSelector("row");
  v6 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];

  selected = [(MFMailboxFilterPickerViewModel *)self selected];
  v13[0] = v4;
  v13[1] = v6;
  v8 = [NSArray arrayWithObjects:v13 count:2];
  v9 = [selected sortedArrayUsingDescriptors:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D7A64;
  v12[3] = &unk_1006543B0;
  v12[4] = self;
  v10 = [v9 ef_map:v12];

  return v10;
}

- (void)_notifyDelegateOfChangeAtIndexPath:(id)path
{
  v5 = [(MFMailboxFilterPickerViewModel *)self filterAtIndexPath:path];
  if ([v5 hasCriterionOfType:23])
  {
    delegate = [(MFMailboxFilterPickerViewModel *)self delegate];
    [delegate filterPickerViewModelDidChangeSelectedAccounts:self];
  }
}

- (MFMailboxFilterPickerViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
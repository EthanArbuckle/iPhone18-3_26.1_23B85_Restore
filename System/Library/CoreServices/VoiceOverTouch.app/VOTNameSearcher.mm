@interface VOTNameSearcher
- (BOOL)itemsLoaded;
- (VOTNameSearcher)initWithDelegate:(id)delegate itemSource:(id)source filter:(id)filter;
- (VOTNameSearcherDelegate)delegate;
- (VOTNameSearcherFilter)filter;
- (void)_focusOnItemAtIndexInFilteredItems:(int64_t)items;
- (void)_updateFilteredItemsWithSearchText;
- (void)didRetrieveAllEntries:(id)entries;
- (void)focusOnFirstMatchingItem;
- (void)focusOnLastMatchingItem;
- (void)focusOnNextMatchingItem;
- (void)focusOnPreviousMatchingItem;
- (void)selectFocusedItem;
- (void)setFocusedEntry:(id)entry;
- (void)updateMatchingItems;
@end

@implementation VOTNameSearcher

- (VOTNameSearcher)initWithDelegate:(id)delegate itemSource:(id)source filter:(id)filter
{
  delegateCopy = delegate;
  sourceCopy = source;
  filterCopy = filter;
  v16.receiver = self;
  v16.super_class = VOTNameSearcher;
  v11 = [(VOTNameSearcher *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(VOTNameSearcher *)v11 setDelegate:delegateCopy];
    [(VOTNameSearcher *)v12 setItemSource:sourceCopy];
    [(VOTNameSearcher *)v12 setFilter:filterCopy];
    [(VOTNameSearcher *)v12 setSearchPending:0];
    itemSource = [(VOTNameSearcher *)v12 itemSource];
    [itemSource retrieveAllEntries:v12];

    v14 = v12;
  }

  return v12;
}

- (void)setFocusedEntry:(id)entry
{
  entryCopy = entry;
  focusedEntry = [(VOTNameSearcher *)self focusedEntry];

  if (focusedEntry != entryCopy)
  {
    objc_storeStrong(&self->_focusedEntry, entry);
    if (entryCopy)
    {
      [entryCopy focus];
    }
  }
}

- (BOOL)itemsLoaded
{
  filteredEntries = [(VOTNameSearcher *)self filteredEntries];
  v3 = filteredEntries != 0;

  return v3;
}

- (void)updateMatchingItems
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {

    [(VOTNameSearcher *)self _updateFilteredItemsWithSearchText];
  }

  else
  {

    [(VOTNameSearcher *)self setSearchPending:1];
  }
}

- (void)focusOnPreviousMatchingItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    filteredEntries = [(VOTNameSearcher *)self filteredEntries];
    focusedEntry = [(VOTNameSearcher *)self focusedEntry];
    v5 = [filteredEntries indexOfObject:focusedEntry];

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = (v5 + 1);
      filteredEntries2 = [(VOTNameSearcher *)self filteredEntries];
      v6 = v7 % [filteredEntries2 count];
    }

    [(VOTNameSearcher *)self _focusOnItemAtIndexInFilteredItems:v6];
  }
}

- (void)focusOnNextMatchingItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    filteredEntries = [(VOTNameSearcher *)self filteredEntries];
    focusedEntry = [(VOTNameSearcher *)self focusedEntry];
    v5 = [filteredEntries indexOfObject:focusedEntry];

    if (v5)
    {
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        --v5;
      }
    }

    else
    {
      filteredEntries2 = [(VOTNameSearcher *)self filteredEntries];
      v5 = [filteredEntries2 count] - 1;
    }

    [(VOTNameSearcher *)self _focusOnItemAtIndexInFilteredItems:v5];
  }
}

- (void)focusOnFirstMatchingItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {

    [(VOTNameSearcher *)self _focusOnItemAtIndexInFilteredItems:0];
  }
}

- (void)focusOnLastMatchingItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    filteredEntries = [(VOTNameSearcher *)self filteredEntries];
    -[VOTNameSearcher _focusOnItemAtIndexInFilteredItems:](self, "_focusOnItemAtIndexInFilteredItems:", [filteredEntries count] - 1);
  }
}

- (void)selectFocusedItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    focusedEntry = [(VOTNameSearcher *)self focusedEntry];

    if (focusedEntry)
    {
      focusedEntry2 = [(VOTNameSearcher *)self focusedEntry];
      [focusedEntry2 select];
    }

    delegate = [(VOTNameSearcher *)self delegate];
    itemSource = [(VOTNameSearcher *)self itemSource];
    focusedEntry3 = [(VOTNameSearcher *)self focusedEntry];
    name = [focusedEntry3 name];
    [delegate itemSource:itemSource didSelect:name];
  }
}

- (void)didRetrieveAllEntries:(id)entries
{
  entriesCopy = entries;
  [(VOTNameSearcher *)self setAllEntries:entriesCopy];
  [(VOTNameSearcher *)self setFilteredEntries:entriesCopy];

  if ([(VOTNameSearcher *)self searchPending])
  {
    [(VOTNameSearcher *)self updateMatchingItems];

    [(VOTNameSearcher *)self setSearchPending:0];
  }
}

- (void)_updateFilteredItemsWithSearchText
{
  filteredEntries = [(VOTNameSearcher *)self filteredEntries];
  focusedEntry = [(VOTNameSearcher *)self focusedEntry];
  filter = [(VOTNameSearcher *)self filter];
  allEntries = [(VOTNameSearcher *)self allEntries];
  v7 = [filter nameSearcherEntriesPassingSearchFrom:allEntries];
  [(VOTNameSearcher *)self setFilteredEntries:v7];

  filteredEntries2 = [(VOTNameSearcher *)self filteredEntries];
  v9 = [filteredEntries2 count];

  if (v9)
  {
    filteredEntries3 = [(VOTNameSearcher *)self filteredEntries];
    firstObject = [filteredEntries3 firstObject];
    [(VOTNameSearcher *)self setFocusedEntry:firstObject];
  }

  else
  {
    [(VOTNameSearcher *)self setFocusedEntry:0];
  }

  filteredEntries4 = [(VOTNameSearcher *)self filteredEntries];
  v13 = [filteredEntries isEqualToArray:filteredEntries4];

  focusedEntry2 = [(VOTNameSearcher *)self focusedEntry];
  v15 = [focusedEntry isEqual:focusedEntry2];

  delegate = [(VOTNameSearcher *)self delegate];
  itemSource = [(VOTNameSearcher *)self itemSource];
  if (v13)
  {
    v18 = 0;
    if ((v15 & 1) == 0)
    {
LABEL_6:
      focusedEntry3 = [(VOTNameSearcher *)self focusedEntry];
      name = [focusedEntry3 name];
      goto LABEL_9;
    }
  }

  else
  {
    filteredEntries5 = [(VOTNameSearcher *)self filteredEntries];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [filteredEntries5 count]);
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  name = 0;
LABEL_9:
  focusedEntry4 = [(VOTNameSearcher *)self focusedEntry];
  value = [focusedEntry4 value];
  [delegate itemSource:itemSource didFilter:v18 didSwitchFocus:name focusedValue:value];

  if ((v15 & 1) == 0)
  {
  }

  if ((v13 & 1) == 0)
  {
  }
}

- (void)_focusOnItemAtIndexInFilteredItems:(int64_t)items
{
  filteredEntries = [(VOTNameSearcher *)self filteredEntries];
  v6 = filteredEntries;
  if (items != 0x7FFFFFFFFFFFFFFFLL)
  {
    filteredEntries2 = [filteredEntries objectAtIndex:items];
    [(VOTNameSearcher *)self setFocusedEntry:filteredEntries2];
    goto LABEL_5;
  }

  if ([filteredEntries count])
  {
    filteredEntries2 = [(VOTNameSearcher *)self filteredEntries];
    firstObject = [filteredEntries2 firstObject];
    [(VOTNameSearcher *)self setFocusedEntry:firstObject];

LABEL_5:
    goto LABEL_6;
  }

  [(VOTNameSearcher *)self setFocusedEntry:0];
LABEL_6:

  delegate = [(VOTNameSearcher *)self delegate];
  itemSource = [(VOTNameSearcher *)self itemSource];
  focusedEntry = [(VOTNameSearcher *)self focusedEntry];
  name = [focusedEntry name];
  focusedEntry2 = [(VOTNameSearcher *)self focusedEntry];
  value = [focusedEntry2 value];
  [delegate itemSource:itemSource didFilter:0 didSwitchFocus:name focusedValue:value];
}

- (VOTNameSearcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VOTNameSearcherFilter)filter
{
  WeakRetained = objc_loadWeakRetained(&self->_filter);

  return WeakRetained;
}

@end
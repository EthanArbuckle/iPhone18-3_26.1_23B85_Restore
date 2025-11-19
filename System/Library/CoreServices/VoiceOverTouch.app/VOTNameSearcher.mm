@interface VOTNameSearcher
- (BOOL)itemsLoaded;
- (VOTNameSearcher)initWithDelegate:(id)a3 itemSource:(id)a4 filter:(id)a5;
- (VOTNameSearcherDelegate)delegate;
- (VOTNameSearcherFilter)filter;
- (void)_focusOnItemAtIndexInFilteredItems:(int64_t)a3;
- (void)_updateFilteredItemsWithSearchText;
- (void)didRetrieveAllEntries:(id)a3;
- (void)focusOnFirstMatchingItem;
- (void)focusOnLastMatchingItem;
- (void)focusOnNextMatchingItem;
- (void)focusOnPreviousMatchingItem;
- (void)selectFocusedItem;
- (void)setFocusedEntry:(id)a3;
- (void)updateMatchingItems;
@end

@implementation VOTNameSearcher

- (VOTNameSearcher)initWithDelegate:(id)a3 itemSource:(id)a4 filter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = VOTNameSearcher;
  v11 = [(VOTNameSearcher *)&v16 init];
  v12 = v11;
  if (v11)
  {
    [(VOTNameSearcher *)v11 setDelegate:v8];
    [(VOTNameSearcher *)v12 setItemSource:v9];
    [(VOTNameSearcher *)v12 setFilter:v10];
    [(VOTNameSearcher *)v12 setSearchPending:0];
    v13 = [(VOTNameSearcher *)v12 itemSource];
    [v13 retrieveAllEntries:v12];

    v14 = v12;
  }

  return v12;
}

- (void)setFocusedEntry:(id)a3
{
  v6 = a3;
  v5 = [(VOTNameSearcher *)self focusedEntry];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_focusedEntry, a3);
    if (v6)
    {
      [v6 focus];
    }
  }
}

- (BOOL)itemsLoaded
{
  v2 = [(VOTNameSearcher *)self filteredEntries];
  v3 = v2 != 0;

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
    v3 = [(VOTNameSearcher *)self filteredEntries];
    v4 = [(VOTNameSearcher *)self focusedEntry];
    v5 = [v3 indexOfObject:v4];

    v6 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = (v5 + 1);
      v8 = [(VOTNameSearcher *)self filteredEntries];
      v6 = v7 % [v8 count];
    }

    [(VOTNameSearcher *)self _focusOnItemAtIndexInFilteredItems:v6];
  }
}

- (void)focusOnNextMatchingItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    v3 = [(VOTNameSearcher *)self filteredEntries];
    v4 = [(VOTNameSearcher *)self focusedEntry];
    v5 = [v3 indexOfObject:v4];

    if (v5)
    {
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        --v5;
      }
    }

    else
    {
      v6 = [(VOTNameSearcher *)self filteredEntries];
      v5 = [v6 count] - 1;
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
    v3 = [(VOTNameSearcher *)self filteredEntries];
    -[VOTNameSearcher _focusOnItemAtIndexInFilteredItems:](self, "_focusOnItemAtIndexInFilteredItems:", [v3 count] - 1);
  }
}

- (void)selectFocusedItem
{
  if ([(VOTNameSearcher *)self itemsLoaded])
  {
    v3 = [(VOTNameSearcher *)self focusedEntry];

    if (v3)
    {
      v4 = [(VOTNameSearcher *)self focusedEntry];
      [v4 select];
    }

    v8 = [(VOTNameSearcher *)self delegate];
    v5 = [(VOTNameSearcher *)self itemSource];
    v6 = [(VOTNameSearcher *)self focusedEntry];
    v7 = [v6 name];
    [v8 itemSource:v5 didSelect:v7];
  }
}

- (void)didRetrieveAllEntries:(id)a3
{
  v4 = a3;
  [(VOTNameSearcher *)self setAllEntries:v4];
  [(VOTNameSearcher *)self setFilteredEntries:v4];

  if ([(VOTNameSearcher *)self searchPending])
  {
    [(VOTNameSearcher *)self updateMatchingItems];

    [(VOTNameSearcher *)self setSearchPending:0];
  }
}

- (void)_updateFilteredItemsWithSearchText
{
  v23 = [(VOTNameSearcher *)self filteredEntries];
  v4 = [(VOTNameSearcher *)self focusedEntry];
  v5 = [(VOTNameSearcher *)self filter];
  v6 = [(VOTNameSearcher *)self allEntries];
  v7 = [v5 nameSearcherEntriesPassingSearchFrom:v6];
  [(VOTNameSearcher *)self setFilteredEntries:v7];

  v8 = [(VOTNameSearcher *)self filteredEntries];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(VOTNameSearcher *)self filteredEntries];
    v11 = [v10 firstObject];
    [(VOTNameSearcher *)self setFocusedEntry:v11];
  }

  else
  {
    [(VOTNameSearcher *)self setFocusedEntry:0];
  }

  v12 = [(VOTNameSearcher *)self filteredEntries];
  v13 = [v23 isEqualToArray:v12];

  v14 = [(VOTNameSearcher *)self focusedEntry];
  v15 = [v4 isEqual:v14];

  v16 = [(VOTNameSearcher *)self delegate];
  v17 = [(VOTNameSearcher *)self itemSource];
  if (v13)
  {
    v18 = 0;
    if ((v15 & 1) == 0)
    {
LABEL_6:
      v2 = [(VOTNameSearcher *)self focusedEntry];
      v19 = [v2 name];
      goto LABEL_9;
    }
  }

  else
  {
    v22 = [(VOTNameSearcher *)self filteredEntries];
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 count]);
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_9:
  v20 = [(VOTNameSearcher *)self focusedEntry];
  v21 = [v20 value];
  [v16 itemSource:v17 didFilter:v18 didSwitchFocus:v19 focusedValue:v21];

  if ((v15 & 1) == 0)
  {
  }

  if ((v13 & 1) == 0)
  {
  }
}

- (void)_focusOnItemAtIndexInFilteredItems:(int64_t)a3
{
  v5 = [(VOTNameSearcher *)self filteredEntries];
  v6 = v5;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 objectAtIndex:a3];
    [(VOTNameSearcher *)self setFocusedEntry:v7];
    goto LABEL_5;
  }

  if ([v5 count])
  {
    v7 = [(VOTNameSearcher *)self filteredEntries];
    v8 = [v7 firstObject];
    [(VOTNameSearcher *)self setFocusedEntry:v8];

LABEL_5:
    goto LABEL_6;
  }

  [(VOTNameSearcher *)self setFocusedEntry:0];
LABEL_6:

  v14 = [(VOTNameSearcher *)self delegate];
  v9 = [(VOTNameSearcher *)self itemSource];
  v10 = [(VOTNameSearcher *)self focusedEntry];
  v11 = [v10 name];
  v12 = [(VOTNameSearcher *)self focusedEntry];
  v13 = [v12 value];
  [v14 itemSource:v9 didFilter:0 didSwitchFocus:v11 focusedValue:v13];
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
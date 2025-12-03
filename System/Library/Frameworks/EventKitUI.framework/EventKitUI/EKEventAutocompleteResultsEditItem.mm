@interface EKEventAutocompleteResultsEditItem
- (BOOL)hasSuggestedLocationResult;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (unint64_t)numberOfSubitems;
- (void)_updateTableWithOldCount:(int64_t)count newCount:(int64_t)newCount;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)setResults:(id)results;
@end

@implementation EKEventAutocompleteResultsEditItem

- (void)setResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v14 = resultsCopy;
  if (!results)
  {
    v8 = 1;
    if (resultsCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v7 = [(NSArray *)results count];
  resultsCopy = v14;
  v8 = v7 == 0;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = [resultsCopy count];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = [(NSArray *)self->_results isEqualToArray:v14];
    resultsCopy = v14;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (self->_suggestionApplied)
    {
      objc_storeStrong(&self->_results, results);
    }

    else
    {
      numberOfSubitems = [(EKEventAutocompleteResultsEditItem *)self numberOfSubitems];
      objc_storeStrong(&self->_results, results);
      [(EKEventAutocompleteResultsEditItem *)self _updateTableWithOldCount:numberOfSubitems newCount:[(EKEventAutocompleteResultsEditItem *)self numberOfSubitems]];
    }

    resultsCopy = v14;
    goto LABEL_17;
  }

  resultsCopy = v14;
LABEL_10:
  if (!v8 || !v10)
  {
    goto LABEL_13;
  }

LABEL_17:
}

- (void)_updateTableWithOldCount:(int64_t)count newCount:(int64_t)newCount
{
  v26 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  if (!count || !newCount)
  {
    delegate = [(EKCalendarItemEditItem *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(EKCalendarItemEditItem *)self delegate];
      [delegate2 editItemVisibilityChanged:self];
    }
  }

  if (count == newCount)
  {
    if (count)
    {
      v12 = 0;
      do
      {
        [v8 addIndex:v12++];
      }

      while (count != v12);
    }
  }

  else if (count <= newCount)
  {
    if (newCount)
    {
      v15 = 0;
      do
      {
        v16 = v26;
        if (v15 < count)
        {
          v16 = v8;
        }

        [v16 addIndex:v15++];
      }

      while (newCount != v15);
    }
  }

  else if (count)
  {
    v13 = 0;
    do
    {
      if (v13 >= newCount)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      [v14 addIndex:v13++];
    }

    while (count != v13);
  }

  delegate3 = [(EKCalendarItemEditItem *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate4 = [(EKCalendarItemEditItem *)self delegate];
    [delegate4 editItem:self wantsRowInsertions:v26 rowDeletions:v7 rowReloads:v8];
  }

  if ((count == 0) != (newCount == 0))
  {
    if (!count)
    {
      delegate5 = [(EKCalendarItemEditItem *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        delegate6 = [(EKCalendarItemEditItem *)self delegate];
        [delegate6 autocompleteResultsEditItemDidShowResults:self];
      }
    }

    if (!newCount)
    {
      delegate7 = [(EKCalendarItemEditItem *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        delegate8 = [(EKCalendarItemEditItem *)self delegate];
        [delegate8 autocompleteResultsEditItemDidHideResults:self];
      }
    }
  }
}

- (unint64_t)numberOfSubitems
{
  if (self->_suggestionApplied)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_results count];
  }
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [(NSArray *)self->_results objectAtIndexedSubscript:index];
  pasteboardResults = [v4 pasteboardResults];
  [pasteboardResults count];

  v6 = objc_opt_class();
  delegate = [(EKCalendarItemEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[EKCalendarItemEditItem delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), -[objc_class reuseIdentifier](v6, "reuseIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), [v9 cellWithReuseIdentifier:v10 forEditItem:self], v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    v12 = [v6 alloc];
    reuseIdentifier = [(objc_class *)v6 reuseIdentifier];
    v11 = [v12 initWithStyle:0 reuseIdentifier:reuseIdentifier];
  }

  [v11 updateWithResult:v4];

  return v11;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5 = [(NSArray *)self->_results objectAtIndexedSubscript:index];
  pasteboardResults = [v5 pasteboardResults];
  v7 = [pasteboardResults count];

  v8 = off_1E843D990;
  if (v7 <= 1)
  {
    v8 = off_1E843D708;
  }

  [(__objc2_class *)*v8 cellHeightForResult:v5 forWidth:width];
  v10 = v9;

  return v10;
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v9 = [(NSArray *)self->_results objectAtIndexedSubscript:subitem];
  pasteboardResults = [v9 pasteboardResults];
  self->_suggestionApplied = [pasteboardResults count] < 2;

  delegate = [(EKCalendarItemEditItem *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(EKCalendarItemEditItem *)self delegate];
    [delegate2 autocompleteResultsEditItem:self resultSelected:v9];
  }
}

- (BOOL)hasSuggestedLocationResult
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_results;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        preferredLocation = [*(*(&v9 + 1) + 8 * i) preferredLocation];
        isPrediction = [preferredLocation isPrediction];

        if (isPrediction)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

@end
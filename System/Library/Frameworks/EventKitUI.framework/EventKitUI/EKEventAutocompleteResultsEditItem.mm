@interface EKEventAutocompleteResultsEditItem
- (BOOL)hasSuggestedLocationResult;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (unint64_t)numberOfSubitems;
- (void)_updateTableWithOldCount:(int64_t)a3 newCount:(int64_t)a4;
- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4;
- (void)setResults:(id)a3;
@end

@implementation EKEventAutocompleteResultsEditItem

- (void)setResults:(id)a3
{
  v5 = a3;
  results = self->_results;
  v14 = v5;
  if (!results)
  {
    v8 = 1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v7 = [(NSArray *)results count];
  v5 = v14;
  v8 = v7 == 0;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = [v5 count];
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
    v5 = v14;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_13:
    if (self->_suggestionApplied)
    {
      objc_storeStrong(&self->_results, a3);
    }

    else
    {
      v13 = [(EKEventAutocompleteResultsEditItem *)self numberOfSubitems];
      objc_storeStrong(&self->_results, a3);
      [(EKEventAutocompleteResultsEditItem *)self _updateTableWithOldCount:v13 newCount:[(EKEventAutocompleteResultsEditItem *)self numberOfSubitems]];
    }

    v5 = v14;
    goto LABEL_17;
  }

  v5 = v14;
LABEL_10:
  if (!v8 || !v10)
  {
    goto LABEL_13;
  }

LABEL_17:
}

- (void)_updateTableWithOldCount:(int64_t)a3 newCount:(int64_t)a4
{
  v26 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  if (!a3 || !a4)
  {
    v9 = [(EKCalendarItemEditItem *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EKCalendarItemEditItem *)self delegate];
      [v11 editItemVisibilityChanged:self];
    }
  }

  if (a3 == a4)
  {
    if (a3)
    {
      v12 = 0;
      do
      {
        [v8 addIndex:v12++];
      }

      while (a3 != v12);
    }
  }

  else if (a3 <= a4)
  {
    if (a4)
    {
      v15 = 0;
      do
      {
        v16 = v26;
        if (v15 < a3)
        {
          v16 = v8;
        }

        [v16 addIndex:v15++];
      }

      while (a4 != v15);
    }
  }

  else if (a3)
  {
    v13 = 0;
    do
    {
      if (v13 >= a4)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      [v14 addIndex:v13++];
    }

    while (a3 != v13);
  }

  v17 = [(EKCalendarItemEditItem *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v19 = [(EKCalendarItemEditItem *)self delegate];
    [v19 editItem:self wantsRowInsertions:v26 rowDeletions:v7 rowReloads:v8];
  }

  if ((a3 == 0) != (a4 == 0))
  {
    if (!a3)
    {
      v20 = [(EKCalendarItemEditItem *)self delegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(EKCalendarItemEditItem *)self delegate];
        [v22 autocompleteResultsEditItemDidShowResults:self];
      }
    }

    if (!a4)
    {
      v23 = [(EKCalendarItemEditItem *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [(EKCalendarItemEditItem *)self delegate];
        [v25 autocompleteResultsEditItemDidHideResults:self];
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

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v4 = [(NSArray *)self->_results objectAtIndexedSubscript:a3];
  v5 = [v4 pasteboardResults];
  [v5 count];

  v6 = objc_opt_class();
  v7 = [(EKCalendarItemEditItem *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[EKCalendarItemEditItem delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), -[objc_class reuseIdentifier](v6, "reuseIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), [v9 cellWithReuseIdentifier:v10 forEditItem:self], v11 = objc_claimAutoreleasedReturnValue(), v10, v9, !v11))
  {
    v12 = [v6 alloc];
    v13 = [(objc_class *)v6 reuseIdentifier];
    v11 = [v12 initWithStyle:0 reuseIdentifier:v13];
  }

  [v11 updateWithResult:v4];

  return v11;
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4
{
  v5 = [(NSArray *)self->_results objectAtIndexedSubscript:a3];
  v6 = [v5 pasteboardResults];
  v7 = [v6 count];

  v8 = off_1E843D990;
  if (v7 <= 1)
  {
    v8 = off_1E843D708;
  }

  [(__objc2_class *)*v8 cellHeightForResult:v5 forWidth:a4];
  v10 = v9;

  return v10;
}

- (void)editor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v9 = [(NSArray *)self->_results objectAtIndexedSubscript:a4];
  v5 = [v9 pasteboardResults];
  self->_suggestionApplied = [v5 count] < 2;

  v6 = [(EKCalendarItemEditItem *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(EKCalendarItemEditItem *)self delegate];
    [v8 autocompleteResultsEditItem:self resultSelected:v9];
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

        v6 = [*(*(&v9 + 1) + 8 * i) preferredLocation];
        v7 = [v6 isPrediction];

        if (v7)
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
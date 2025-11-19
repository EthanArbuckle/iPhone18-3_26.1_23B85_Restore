@interface HomeSearchResultsFilterItem
- (BOOL)isEqual:(id)a3;
- (HomeSearchResultsFilterItem)initWithSuggestions:(id)a3 currentSuggestion:(id)a4 delegate:(id)a5;
- (HomeSearchResultsFilterItemDelegate)delegate;
- (SmallDropDownOutlineCellModel)cellModel;
- (void)smallDropDownOutlineCell:(id)a3 didSelectItemAtIndex:(int64_t)a4;
@end

@implementation HomeSearchResultsFilterItem

- (HomeSearchResultsFilterItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smallDropDownOutlineCell:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  v6 = [(NSArray *)self->_suggestions objectAtIndexedSubscript:a4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchResultsFilterItem:self didSelectSuggestion:v6];
}

- (SmallDropDownOutlineCellModel)cellModel
{
  v3 = [(GEORelatedSearchSuggestion *)self->_currentSuggestion displayString];
  v4 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_suggestions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) displayString];
        [v4 addObject:v10];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [[SmallDropDownOutlineCellModel alloc] initWithButtonTitle:v3 dropDownTitles:v4 selectedIndex:[(NSArray *)self->_suggestions indexOfObject:self->_currentSuggestion] delegate:self backgroundModel:0];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HomeSearchResultsFilterItem *)v5 suggestions];
      v7 = v6;
      if (v6 == self->_suggestions || [(NSArray *)v6 isEqual:?])
      {
        v8 = [(HomeSearchResultsFilterItem *)v5 currentSuggestion];
        v9 = v8;
        if (v8 == self->_currentSuggestion || [(GEORelatedSearchSuggestion *)v8 isEqual:?])
        {
          v10 = [(HomeSearchResultsFilterItem *)v5 delegate];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (v10 == WeakRetained)
          {
            v12 = 1;
          }

          else
          {
            v12 = [v10 isEqual:WeakRetained];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (HomeSearchResultsFilterItem)initWithSuggestions:(id)a3 currentSuggestion:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = HomeSearchResultsFilterItem;
  v11 = [(HomeSearchResultsFilterItem *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v12;

    objc_storeStrong(&v11->_currentSuggestion, a4);
    objc_storeWeak(&v11->_delegate, v10);
  }

  return v11;
}

@end
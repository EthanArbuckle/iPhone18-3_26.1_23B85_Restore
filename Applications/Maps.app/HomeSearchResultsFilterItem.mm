@interface HomeSearchResultsFilterItem
- (BOOL)isEqual:(id)equal;
- (HomeSearchResultsFilterItem)initWithSuggestions:(id)suggestions currentSuggestion:(id)suggestion delegate:(id)delegate;
- (HomeSearchResultsFilterItemDelegate)delegate;
- (SmallDropDownOutlineCellModel)cellModel;
- (void)smallDropDownOutlineCell:(id)cell didSelectItemAtIndex:(int64_t)index;
@end

@implementation HomeSearchResultsFilterItem

- (HomeSearchResultsFilterItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)smallDropDownOutlineCell:(id)cell didSelectItemAtIndex:(int64_t)index
{
  v6 = [(NSArray *)self->_suggestions objectAtIndexedSubscript:index];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained searchResultsFilterItem:self didSelectSuggestion:v6];
}

- (SmallDropDownOutlineCellModel)cellModel
{
  displayString = [(GEORelatedSearchSuggestion *)self->_currentSuggestion displayString];
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

        displayString2 = [*(*(&v13 + 1) + 8 * i) displayString];
        [v4 addObject:displayString2];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [[SmallDropDownOutlineCellModel alloc] initWithButtonTitle:displayString dropDownTitles:v4 selectedIndex:[(NSArray *)self->_suggestions indexOfObject:self->_currentSuggestion] delegate:self backgroundModel:0];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      suggestions = [(HomeSearchResultsFilterItem *)v5 suggestions];
      v7 = suggestions;
      if (suggestions == self->_suggestions || [(NSArray *)suggestions isEqual:?])
      {
        currentSuggestion = [(HomeSearchResultsFilterItem *)v5 currentSuggestion];
        v9 = currentSuggestion;
        if (currentSuggestion == self->_currentSuggestion || [(GEORelatedSearchSuggestion *)currentSuggestion isEqual:?])
        {
          delegate = [(HomeSearchResultsFilterItem *)v5 delegate];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          if (delegate == WeakRetained)
          {
            v12 = 1;
          }

          else
          {
            v12 = [delegate isEqual:WeakRetained];
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

- (HomeSearchResultsFilterItem)initWithSuggestions:(id)suggestions currentSuggestion:(id)suggestion delegate:(id)delegate
{
  suggestionsCopy = suggestions;
  suggestionCopy = suggestion;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = HomeSearchResultsFilterItem;
  v11 = [(HomeSearchResultsFilterItem *)&v15 init];
  if (v11)
  {
    v12 = [suggestionsCopy copy];
    suggestions = v11->_suggestions;
    v11->_suggestions = v12;

    objc_storeStrong(&v11->_currentSuggestion, suggestion);
    objc_storeWeak(&v11->_delegate, delegateCopy);
  }

  return v11;
}

@end
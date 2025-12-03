@interface RelatedSearchSuggestionOutlineCellModel
- (BOOL)isEqual:(id)equal;
- (RelatedSearchSuggestionOutlineCellDelegate)delegate;
- (RelatedSearchSuggestionOutlineCellModel)initWithRelatedSuggestion:(id)suggestion delegate:(id)delegate;
@end

@implementation RelatedSearchSuggestionOutlineCellModel

- (RelatedSearchSuggestionOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    suggestion = [(RelatedSearchSuggestionOutlineCellModel *)v6 suggestion];
    v8 = suggestion;
    if (suggestion == self->_suggestion || [(RelatedSearchSuggestion *)suggestion isEqual:?])
    {
      delegate = [(RelatedSearchSuggestionOutlineCellModel *)v6 delegate];
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

- (RelatedSearchSuggestionOutlineCellModel)initWithRelatedSuggestion:(id)suggestion delegate:(id)delegate
{
  suggestionCopy = suggestion;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = RelatedSearchSuggestionOutlineCellModel;
  v9 = [(RelatedSearchSuggestionOutlineCellModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, suggestion);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end
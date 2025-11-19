@interface RelatedSearchSuggestionOutlineCellModel
- (BOOL)isEqual:(id)a3;
- (RelatedSearchSuggestionOutlineCellDelegate)delegate;
- (RelatedSearchSuggestionOutlineCellModel)initWithRelatedSuggestion:(id)a3 delegate:(id)a4;
@end

@implementation RelatedSearchSuggestionOutlineCellModel

- (RelatedSearchSuggestionOutlineCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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
    v7 = [(RelatedSearchSuggestionOutlineCellModel *)v6 suggestion];
    v8 = v7;
    if (v7 == self->_suggestion || [(RelatedSearchSuggestion *)v7 isEqual:?])
    {
      v9 = [(RelatedSearchSuggestionOutlineCellModel *)v6 delegate];
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

- (RelatedSearchSuggestionOutlineCellModel)initWithRelatedSuggestion:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RelatedSearchSuggestionOutlineCellModel;
  v9 = [(RelatedSearchSuggestionOutlineCellModel *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suggestion, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end
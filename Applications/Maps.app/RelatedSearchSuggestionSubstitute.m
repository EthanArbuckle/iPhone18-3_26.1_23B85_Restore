@interface RelatedSearchSuggestionSubstitute
- (RelatedSearchSuggestionSubstitute)initWithLocation:(unint64_t)a3 substitute:(id)a4;
- (_NSRange)range;
@end

@implementation RelatedSearchSuggestionSubstitute

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (RelatedSearchSuggestionSubstitute)initWithLocation:(unint64_t)a3 substitute:(id)a4
{
  v7 = a4;
  v19.receiver = self;
  v19.super_class = RelatedSearchSuggestionSubstitute;
  v8 = [(RelatedSearchSuggestionSubstitute *)&v19 init];
  v9 = v8;
  if (v8)
  {
    substituteText = v8->_substituteText;
    v8->_substituteText = &stru_1016631F0;

    v9->_isRelatedSearchSuggestion = 0;
    v11 = [v7 substituteType];
    if (v11 == 2)
    {
      v14 = [v7 relatedSearchSuggestion];
      v15 = [v14 displayString];
      v16 = v9->_substituteText;
      v9->_substituteText = v15;

      v9->_isRelatedSearchSuggestion = 1;
    }

    else if (v11 == 1)
    {
      v12 = [v7 interpretedQuery];
      v13 = v9->_substituteText;
      v9->_substituteText = v12;
    }

    v17 = [(NSString *)v9->_substituteText length];
    v9->_range.location = a3;
    v9->_range.length = v17;
    objc_storeStrong(&v9->_pdSubstitute, a4);
  }

  return v9;
}

@end
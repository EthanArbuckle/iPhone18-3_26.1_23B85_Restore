@interface RelatedSearchSuggestionSubstitute
- (RelatedSearchSuggestionSubstitute)initWithLocation:(unint64_t)location substitute:(id)substitute;
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

- (RelatedSearchSuggestionSubstitute)initWithLocation:(unint64_t)location substitute:(id)substitute
{
  substituteCopy = substitute;
  v19.receiver = self;
  v19.super_class = RelatedSearchSuggestionSubstitute;
  v8 = [(RelatedSearchSuggestionSubstitute *)&v19 init];
  v9 = v8;
  if (v8)
  {
    substituteText = v8->_substituteText;
    v8->_substituteText = &stru_1016631F0;

    v9->_isRelatedSearchSuggestion = 0;
    substituteType = [substituteCopy substituteType];
    if (substituteType == 2)
    {
      relatedSearchSuggestion = [substituteCopy relatedSearchSuggestion];
      displayString = [relatedSearchSuggestion displayString];
      v16 = v9->_substituteText;
      v9->_substituteText = displayString;

      v9->_isRelatedSearchSuggestion = 1;
    }

    else if (substituteType == 1)
    {
      interpretedQuery = [substituteCopy interpretedQuery];
      v13 = v9->_substituteText;
      v9->_substituteText = interpretedQuery;
    }

    v17 = [(NSString *)v9->_substituteText length];
    v9->_range.location = location;
    v9->_range.length = v17;
    objc_storeStrong(&v9->_pdSubstitute, substitute);
  }

  return v9;
}

@end
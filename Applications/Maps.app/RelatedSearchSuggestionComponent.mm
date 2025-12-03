@interface RelatedSearchSuggestionComponent
- (GEORelatedSearchSuggestion)suggestion;
- (RelatedSearchSuggestionComponent)initWithDisplayText:(id)text substitute:(id)substitute;
@end

@implementation RelatedSearchSuggestionComponent

- (GEORelatedSearchSuggestion)suggestion
{
  pdSubstitute = [(RelatedSearchSuggestionSubstitute *)self->_substitute pdSubstitute];
  relatedSearchSuggestion = [pdSubstitute relatedSearchSuggestion];

  return relatedSearchSuggestion;
}

- (RelatedSearchSuggestionComponent)initWithDisplayText:(id)text substitute:(id)substitute
{
  textCopy = text;
  substituteCopy = substitute;
  v12.receiver = self;
  v12.super_class = RelatedSearchSuggestionComponent;
  v8 = [(RelatedSearchSuggestionComponent *)&v12 init];
  if (v8)
  {
    v9 = [textCopy copy];
    displayText = v8->_displayText;
    v8->_displayText = v9;

    objc_storeStrong(&v8->_substitute, substitute);
  }

  return v8;
}

@end
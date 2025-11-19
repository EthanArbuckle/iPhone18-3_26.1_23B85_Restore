@interface RelatedSearchSuggestionComponent
- (GEORelatedSearchSuggestion)suggestion;
- (RelatedSearchSuggestionComponent)initWithDisplayText:(id)a3 substitute:(id)a4;
@end

@implementation RelatedSearchSuggestionComponent

- (GEORelatedSearchSuggestion)suggestion
{
  v2 = [(RelatedSearchSuggestionSubstitute *)self->_substitute pdSubstitute];
  v3 = [v2 relatedSearchSuggestion];

  return v3;
}

- (RelatedSearchSuggestionComponent)initWithDisplayText:(id)a3 substitute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RelatedSearchSuggestionComponent;
  v8 = [(RelatedSearchSuggestionComponent *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    displayText = v8->_displayText;
    v8->_displayText = v9;

    objc_storeStrong(&v8->_substitute, a4);
  }

  return v8;
}

@end
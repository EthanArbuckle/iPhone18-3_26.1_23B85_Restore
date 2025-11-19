@interface AutocompleteSection
+ (id)sectionWithTitle:(id)a3 items:(id)a4 isQuerySuggestionsSection:(BOOL)a5;
- (AutocompleteSection)initWithTitle:(id)a3 items:(id)a4 isQuerySuggestionsSection:(BOOL)a5;
@end

@implementation AutocompleteSection

- (AutocompleteSection)initWithTitle:(id)a3 items:(id)a4 isQuerySuggestionsSection:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = AutocompleteSection;
  v9 = [(PersonalizedCompoundItemGroup *)&v13 initWithItems:a4];
  if (v9)
  {
    v10 = [v8 copy];
    title = v9->_title;
    v9->_title = v10;

    v9->_isQuerySuggestionsSection = a5;
  }

  return v9;
}

+ (id)sectionWithTitle:(id)a3 items:(id)a4 isQuerySuggestionsSection:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithTitle:v9 items:v8 isQuerySuggestionsSection:v5];

  return v10;
}

@end
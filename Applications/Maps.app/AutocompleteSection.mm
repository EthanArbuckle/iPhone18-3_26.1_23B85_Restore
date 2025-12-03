@interface AutocompleteSection
+ (id)sectionWithTitle:(id)title items:(id)items isQuerySuggestionsSection:(BOOL)section;
- (AutocompleteSection)initWithTitle:(id)title items:(id)items isQuerySuggestionsSection:(BOOL)section;
@end

@implementation AutocompleteSection

- (AutocompleteSection)initWithTitle:(id)title items:(id)items isQuerySuggestionsSection:(BOOL)section
{
  titleCopy = title;
  v13.receiver = self;
  v13.super_class = AutocompleteSection;
  v9 = [(PersonalizedCompoundItemGroup *)&v13 initWithItems:items];
  if (v9)
  {
    v10 = [titleCopy copy];
    title = v9->_title;
    v9->_title = v10;

    v9->_isQuerySuggestionsSection = section;
  }

  return v9;
}

+ (id)sectionWithTitle:(id)title items:(id)items isQuerySuggestionsSection:(BOOL)section
{
  sectionCopy = section;
  itemsCopy = items;
  titleCopy = title;
  v10 = [[self alloc] initWithTitle:titleCopy items:itemsCopy isQuerySuggestionsSection:sectionCopy];

  return v10;
}

@end
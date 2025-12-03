@interface SearchResultSection
- (SearchResultSection)initWithTitle:(id)title type:(int64_t)type searchResults:(id)results;
@end

@implementation SearchResultSection

- (SearchResultSection)initWithTitle:(id)title type:(int64_t)type searchResults:(id)results
{
  titleCopy = title;
  resultsCopy = results;
  v14.receiver = self;
  v14.super_class = SearchResultSection;
  v10 = [(SearchResultSection *)&v14 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_type = type;
    objc_storeStrong(&v10->_searchResults, results);
  }

  return v10;
}

@end
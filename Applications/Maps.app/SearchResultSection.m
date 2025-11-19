@interface SearchResultSection
- (SearchResultSection)initWithTitle:(id)a3 type:(int64_t)a4 searchResults:(id)a5;
@end

@implementation SearchResultSection

- (SearchResultSection)initWithTitle:(id)a3 type:(int64_t)a4 searchResults:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = SearchResultSection;
  v10 = [(SearchResultSection *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_type = a4;
    objc_storeStrong(&v10->_searchResults, a5);
  }

  return v10;
}

@end
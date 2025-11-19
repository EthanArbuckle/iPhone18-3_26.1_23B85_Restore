@interface BKSearchResult
+ (id)mutableSearchResult;
- (_NSRange)searchStringRange;
- (id)pageLocation;
@end

@implementation BKSearchResult

+ (id)mutableSearchResult
{
  v2 = objc_alloc_init(BKSearchResult);

  return v2;
}

- (id)pageLocation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_location;
  }

  else
  {
    v3 = [[BKPageLocation alloc] initWithOrdinal:self->_ordinal andOffset:self->_pageOffset];
  }

  return v3;
}

- (_NSRange)searchStringRange
{
  length = self->_searchStringRange.length;
  location = self->_searchStringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
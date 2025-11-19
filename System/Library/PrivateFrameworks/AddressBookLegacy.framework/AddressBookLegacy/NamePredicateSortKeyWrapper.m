@interface NamePredicateSortKeyWrapper
- (void)dealloc;
@end

@implementation NamePredicateSortKeyWrapper

- (void)dealloc
{
  tokenizationSortKeys = self->_tokenizationSortKeys;
  if (tokenizationSortKeys)
  {
    releaseTokenizationSortKeys(tokenizationSortKeys);
  }

  v4.receiver = self;
  v4.super_class = NamePredicateSortKeyWrapper;
  [(NamePredicateSortKeyWrapper *)&v4 dealloc];
}

@end
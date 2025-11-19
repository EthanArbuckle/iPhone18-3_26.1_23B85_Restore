@interface NSFileProviderSearch
- (NSFileProviderSearch)initWithSpotlightQueryString:(id)a3 scopedToItemIdentifier:(id)a4 searchContainerItemIdentifier:(id)a5 legacySearchQuery:(id)a6;
@end

@implementation NSFileProviderSearch

- (NSFileProviderSearch)initWithSpotlightQueryString:(id)a3 scopedToItemIdentifier:(id)a4 searchContainerItemIdentifier:(id)a5 legacySearchQuery:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(NSFileProviderSearch *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_spotlightQueryString, a3);
    objc_storeStrong(&v16->_scopedToItemIdentifier, a4);
    objc_storeStrong(&v16->_searchContainerItemIdentifier, a5);
    objc_storeStrong(&v16->_legacySearchQuery, a6);
  }

  return v16;
}

@end
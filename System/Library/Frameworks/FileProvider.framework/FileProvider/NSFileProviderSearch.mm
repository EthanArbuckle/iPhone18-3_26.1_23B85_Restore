@interface NSFileProviderSearch
- (NSFileProviderSearch)initWithSpotlightQueryString:(id)string scopedToItemIdentifier:(id)identifier searchContainerItemIdentifier:(id)itemIdentifier legacySearchQuery:(id)query;
@end

@implementation NSFileProviderSearch

- (NSFileProviderSearch)initWithSpotlightQueryString:(id)string scopedToItemIdentifier:(id)identifier searchContainerItemIdentifier:(id)itemIdentifier legacySearchQuery:(id)query
{
  stringCopy = string;
  identifierCopy = identifier;
  itemIdentifierCopy = itemIdentifier;
  queryCopy = query;
  v15 = [(NSFileProviderSearch *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_spotlightQueryString, string);
    objc_storeStrong(&v16->_scopedToItemIdentifier, identifier);
    objc_storeStrong(&v16->_searchContainerItemIdentifier, itemIdentifier);
    objc_storeStrong(&v16->_legacySearchQuery, query);
  }

  return v16;
}

@end
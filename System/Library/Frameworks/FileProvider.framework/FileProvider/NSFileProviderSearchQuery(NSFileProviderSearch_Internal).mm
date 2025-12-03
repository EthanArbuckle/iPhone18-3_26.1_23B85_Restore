@interface NSFileProviderSearchQuery(NSFileProviderSearch_Internal)
- (void)csQueryScopes;
@end

@implementation NSFileProviderSearchQuery(NSFileProviderSearch_Internal)

- (void)csQueryScopes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"NSFileProviderSearchQuery.m" lineNumber:634 description:{@"If a scopedToItemIdentifier is set, providerDomainID must be set as well"}];
}

@end
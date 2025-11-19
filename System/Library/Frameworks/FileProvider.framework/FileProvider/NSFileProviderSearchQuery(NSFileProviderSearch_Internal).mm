@interface NSFileProviderSearchQuery(NSFileProviderSearch_Internal)
- (void)csQueryScopes;
@end

@implementation NSFileProviderSearchQuery(NSFileProviderSearch_Internal)

- (void)csQueryScopes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileProviderSearchQuery.m" lineNumber:634 description:{@"If a scopedToItemIdentifier is set, providerDomainID must be set as well"}];
}

@end
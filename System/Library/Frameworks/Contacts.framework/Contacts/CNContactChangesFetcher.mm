@interface CNContactChangesFetcher
- (void)setIdentifiers:(uint64_t)identifiers;
@end

@implementation CNContactChangesFetcher

- (void)setIdentifiers:(uint64_t)identifiers
{
  if (identifiers)
  {
    objc_storeStrong((identifiers + 16), a2);
  }
}

@end
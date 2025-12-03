@interface CNContactChangesObserverProxy
- (void)setContactSnapshot:(uint64_t)snapshot;
- (void)setKeysToFetch:(uint64_t)fetch;
@end

@implementation CNContactChangesObserverProxy

- (void)setKeysToFetch:(uint64_t)fetch
{
  if (fetch)
  {
    OUTLINED_FUNCTION_2_7(fetch, a2);
  }
}

- (void)setContactSnapshot:(uint64_t)snapshot
{
  if (snapshot)
  {
    objc_storeStrong((snapshot + 32), a2);
  }
}

@end
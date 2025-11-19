@interface CNContactChangesObserverProxy
- (void)setContactSnapshot:(uint64_t)a1;
- (void)setKeysToFetch:(uint64_t)a1;
@end

@implementation CNContactChangesObserverProxy

- (void)setKeysToFetch:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_7(a1, a2);
  }
}

- (void)setContactSnapshot:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

@end
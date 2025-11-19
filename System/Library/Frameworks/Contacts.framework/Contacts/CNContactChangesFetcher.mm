@interface CNContactChangesFetcher
- (void)setIdentifiers:(uint64_t)a1;
@end

@implementation CNContactChangesFetcher

- (void)setIdentifiers:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

@end
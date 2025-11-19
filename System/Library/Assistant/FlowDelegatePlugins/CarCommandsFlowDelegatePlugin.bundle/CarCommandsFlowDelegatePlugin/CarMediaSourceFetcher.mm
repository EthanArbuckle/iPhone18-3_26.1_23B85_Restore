@interface CarMediaSourceFetcher
- (uint64_t)mediaSourceService:didUpdateIdentifier:;
- (void)mediaSourceService:(id)a3 didUpdateMediaItems:(id)a4;
@end

@implementation CarMediaSourceFetcher

- (void)mediaSourceService:(id)a3 didUpdateMediaItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_97EF0(v6, a4);
}

- (uint64_t)mediaSourceService:didUpdateIdentifier:
{
  sub_16A664();
}

@end
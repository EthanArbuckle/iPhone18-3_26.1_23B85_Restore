@interface CarMediaSourceFetcher
- (uint64_t)mediaSourceService:didUpdateIdentifier:;
- (void)mediaSourceService:(id)service didUpdateMediaItems:(id)items;
@end

@implementation CarMediaSourceFetcher

- (void)mediaSourceService:(id)service didUpdateMediaItems:(id)items
{
  serviceCopy = service;
  itemsCopy = items;
  selfCopy = self;
  sub_97EF0(serviceCopy, items);
}

- (uint64_t)mediaSourceService:didUpdateIdentifier:
{
  sub_16A664();
}

@end
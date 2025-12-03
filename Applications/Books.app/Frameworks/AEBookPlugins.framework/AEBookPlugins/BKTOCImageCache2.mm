@interface BKTOCImageCache2
- (BOOL)entryForRequest:(id)request;
@end

@implementation BKTOCImageCache2

- (BOOL)entryForRequest:(id)request
{
  cacheKey = [request cacheKey];
  v5 = [(BKTOCImageCache2 *)self objectForKey:cacheKey];
  LOBYTE(self) = v5 != 0;

  return self;
}

@end
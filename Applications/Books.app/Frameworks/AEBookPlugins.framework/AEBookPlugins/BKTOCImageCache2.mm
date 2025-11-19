@interface BKTOCImageCache2
- (BOOL)entryForRequest:(id)a3;
@end

@implementation BKTOCImageCache2

- (BOOL)entryForRequest:(id)a3
{
  v4 = [a3 cacheKey];
  v5 = [(BKTOCImageCache2 *)self objectForKey:v4];
  LOBYTE(self) = v5 != 0;

  return self;
}

@end
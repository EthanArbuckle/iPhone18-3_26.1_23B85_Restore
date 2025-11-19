@interface LPFetcher
- (LPFetcher)init;
@end

@implementation LPFetcher

- (LPFetcher)init
{
  v6.receiver = self;
  v6.super_class = LPFetcher;
  v2 = [(LPFetcher *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_loggingID = ++init_nextLoggingID;
    v4 = v2;
  }

  return v3;
}

@end
@interface NSDictionary(ASDTIOA2Config)
- (uint64_t)asdtIsolatedInputUseCaseID;
@end

@implementation NSDictionary(ASDTIOA2Config)

- (uint64_t)asdtIsolatedInputUseCaseID
{
  v1 = [a1 asdtNumberForKey:@"IsolatedInputUseCaseID"];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

@end
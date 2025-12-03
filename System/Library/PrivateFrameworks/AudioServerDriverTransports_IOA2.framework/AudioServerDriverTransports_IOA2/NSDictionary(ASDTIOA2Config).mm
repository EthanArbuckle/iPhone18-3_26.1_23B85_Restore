@interface NSDictionary(ASDTIOA2Config)
- (uint64_t)asdtIsolatedInputUseCaseID;
@end

@implementation NSDictionary(ASDTIOA2Config)

- (uint64_t)asdtIsolatedInputUseCaseID
{
  v1 = [self asdtNumberForKey:@"IsolatedInputUseCaseID"];
  unsignedLongLongValue = [v1 unsignedLongLongValue];

  return unsignedLongLongValue;
}

@end
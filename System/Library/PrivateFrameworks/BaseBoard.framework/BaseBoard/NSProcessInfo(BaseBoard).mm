@interface NSProcessInfo(BaseBoard)
- (id)bs_jobLabel;
@end

@implementation NSProcessInfo(BaseBoard)

- (id)bs_jobLabel
{
  environment = [self environment];
  v2 = [environment objectForKey:@"XPC_SERVICE_NAME"];

  return v2;
}

@end
@interface NSProcessInfo(BaseBoard)
- (id)bs_jobLabel;
@end

@implementation NSProcessInfo(BaseBoard)

- (id)bs_jobLabel
{
  v1 = [a1 environment];
  v2 = [v1 objectForKey:@"XPC_SERVICE_NAME"];

  return v2;
}

@end
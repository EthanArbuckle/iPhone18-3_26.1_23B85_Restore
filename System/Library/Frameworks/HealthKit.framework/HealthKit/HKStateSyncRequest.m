@interface HKStateSyncRequest
- (BOOL)isEqual:(id)a3;
@end

@implementation HKStateSyncRequest

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
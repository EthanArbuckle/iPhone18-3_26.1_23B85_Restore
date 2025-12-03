@interface HKStateSyncRequest
- (BOOL)isEqual:(id)equal;
@end

@implementation HKStateSyncRequest

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

@end
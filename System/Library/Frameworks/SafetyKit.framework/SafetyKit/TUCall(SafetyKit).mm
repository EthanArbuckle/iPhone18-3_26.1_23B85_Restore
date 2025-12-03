@interface TUCall(SafetyKit)
- (BOOL)sa_hasFailed;
@end

@implementation TUCall(SafetyKit)

- (BOOL)sa_hasFailed
{
  disconnectedReason = [self disconnectedReason];
  result = 1;
  if (disconnectedReason > 0x34)
  {
    return disconnectedReason - 1000 < 2;
  }

  if (((1 << disconnectedReason) & 0x177FFBF1EF7F20) != 0)
  {
    return result;
  }

  if (((1 << disconnectedReason) & 0x880040E0080DFLL) == 0)
  {
    return disconnectedReason - 1000 < 2;
  }

  return 0;
}

@end
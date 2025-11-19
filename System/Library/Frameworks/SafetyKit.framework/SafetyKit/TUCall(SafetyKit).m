@interface TUCall(SafetyKit)
- (BOOL)sa_hasFailed;
@end

@implementation TUCall(SafetyKit)

- (BOOL)sa_hasFailed
{
  v1 = [a1 disconnectedReason];
  result = 1;
  if (v1 > 0x34)
  {
    return v1 - 1000 < 2;
  }

  if (((1 << v1) & 0x177FFBF1EF7F20) != 0)
  {
    return result;
  }

  if (((1 << v1) & 0x880040E0080DFLL) == 0)
  {
    return v1 - 1000 < 2;
  }

  return 0;
}

@end
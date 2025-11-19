@interface NSURL(AMOSExtensions)
- (BOOL)isAMOSCommittedIdentifier;
- (BOOL)isAMOSIdentifier;
@end

@implementation NSURL(AMOSExtensions)

- (BOOL)isAMOSCommittedIdentifier
{
  if (![a1 isAMOSIdentifier])
  {
    return 0;
  }

  v2 = [a1 query];
  if (v2)
  {
    v3 = [a1 query];
    [v3 rangeOfString:@"committed=yes"];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isAMOSIdentifier
{
  v1 = [a1 scheme];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"amos"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
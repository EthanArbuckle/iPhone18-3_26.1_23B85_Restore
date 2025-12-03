@interface NSURL(AMOSExtensions)
- (BOOL)isAMOSCommittedIdentifier;
- (BOOL)isAMOSIdentifier;
@end

@implementation NSURL(AMOSExtensions)

- (BOOL)isAMOSCommittedIdentifier
{
  if (![self isAMOSIdentifier])
  {
    return 0;
  }

  query = [self query];
  if (query)
  {
    query2 = [self query];
    [query2 rangeOfString:@"committed=yes"];
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
  scheme = [self scheme];
  v2 = scheme;
  if (scheme)
  {
    v3 = [scheme caseInsensitiveCompare:@"amos"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end
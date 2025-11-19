@interface NSURL(LPPrivateExtras)
- (uint64_t)_lp_hasAllowedNonHTTPScheme;
@end

@implementation NSURL(LPPrivateExtras)

- (uint64_t)_lp_hasAllowedNonHTTPScheme
{
  v2 = [a1 scheme];
  if ([v2 _lp_isEqualIgnoringCase:@"prefs"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [a1 _lp_hasWalletRelatedScheme];
  }

  return v3;
}

@end
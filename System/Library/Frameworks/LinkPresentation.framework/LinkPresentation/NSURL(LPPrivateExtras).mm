@interface NSURL(LPPrivateExtras)
- (uint64_t)_lp_hasAllowedNonHTTPScheme;
@end

@implementation NSURL(LPPrivateExtras)

- (uint64_t)_lp_hasAllowedNonHTTPScheme
{
  scheme = [self scheme];
  if ([scheme _lp_isEqualIgnoringCase:@"prefs"])
  {
    _lp_hasWalletRelatedScheme = 1;
  }

  else
  {
    _lp_hasWalletRelatedScheme = [self _lp_hasWalletRelatedScheme];
  }

  return _lp_hasWalletRelatedScheme;
}

@end
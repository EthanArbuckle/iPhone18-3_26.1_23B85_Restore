@interface ASAuthorizationPasswordRequest
- (BOOL)supportsStyle:(int64_t)a3;
@end

@implementation ASAuthorizationPasswordRequest

- (BOOL)supportsStyle:(int64_t)a3
{
  if (a3 < 3)
  {
    return 1u >> (a3 & 7);
  }

  else
  {
    return 0;
  }
}

@end
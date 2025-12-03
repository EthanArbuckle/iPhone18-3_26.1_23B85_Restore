@interface ASAuthorizationPasswordRequest
- (BOOL)supportsStyle:(int64_t)style;
@end

@implementation ASAuthorizationPasswordRequest

- (BOOL)supportsStyle:(int64_t)style
{
  if (style < 3)
  {
    return 1u >> (style & 7);
  }

  else
  {
    return 0;
  }
}

@end
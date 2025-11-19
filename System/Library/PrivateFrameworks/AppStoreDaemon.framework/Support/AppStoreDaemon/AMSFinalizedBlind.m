@interface AMSFinalizedBlind
- (NSString)lib_certificate;
@end

@implementation AMSFinalizedBlind

- (NSString)lib_certificate
{
  v2 = self;
  result = [(AMSFinalizedBlind *)v2 certificate];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end
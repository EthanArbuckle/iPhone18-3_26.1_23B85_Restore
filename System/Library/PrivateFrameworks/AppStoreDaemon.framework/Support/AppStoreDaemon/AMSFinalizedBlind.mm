@interface AMSFinalizedBlind
- (NSString)lib_certificate;
@end

@implementation AMSFinalizedBlind

- (NSString)lib_certificate
{
  selfCopy = self;
  result = [(AMSFinalizedBlind *)selfCopy certificate];
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
@interface INIntent(WK)
- (id)_wk_asMigratedAppIntent;
@end

@implementation INIntent(WK)

- (id)_wk_asMigratedAppIntent
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else if (objc_opt_respondsToSelector())
  {
    selfCopy = [self _asMigratedAppIntent];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end
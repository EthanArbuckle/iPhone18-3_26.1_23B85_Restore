@interface NSUserDefaults(SBDefaultExistance)
- (BOOL)bs_defaultExists:()SBDefaultExistance;
@end

@implementation NSUserDefaults(SBDefaultExistance)

- (BOOL)bs_defaultExists:()SBDefaultExistance
{
  v5 = a3;
  if (!self || (objc_getAssociatedObject(self, "baseBoard_domain"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSAbstractDefaultDomain.m" lineNumber:39 description:@"Domain must be present or we are unable to answer this question."];

    v6 = 0;
  }

  v7 = _CFPreferencesHasAppValue() != 0;

  return v7;
}

@end
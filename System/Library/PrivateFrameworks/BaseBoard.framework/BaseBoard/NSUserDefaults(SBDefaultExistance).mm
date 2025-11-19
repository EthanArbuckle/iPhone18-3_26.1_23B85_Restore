@interface NSUserDefaults(SBDefaultExistance)
- (BOOL)bs_defaultExists:()SBDefaultExistance;
@end

@implementation NSUserDefaults(SBDefaultExistance)

- (BOOL)bs_defaultExists:()SBDefaultExistance
{
  v5 = a3;
  if (!a1 || (objc_getAssociatedObject(a1, "baseBoard_domain"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"BSAbstractDefaultDomain.m" lineNumber:39 description:@"Domain must be present or we are unable to answer this question."];

    v6 = 0;
  }

  v7 = _CFPreferencesHasAppValue() != 0;

  return v7;
}

@end
@interface GAXSBSBMainDisplayPolicyAggregator
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_guidedAccessShouldBlockCapability:(int64_t)capability explanation:(id *)explanation;
- (BOOL)allowsCapability:(int64_t)capability;
- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation;
@end

@implementation GAXSBSBMainDisplayPolicyAggregator

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBMainDisplayPolicyAggregator" hasInstanceMethod:@"allowsCapability:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"SBMainDisplayPolicyAggregator" hasInstanceMethod:@"allowsCapability:explanation:" withFullSignature:{"B", "q", "^@", 0}];
}

- (BOOL)_guidedAccessShouldBlockCapability:(int64_t)capability explanation:(id *)explanation
{
  v6 = +[GAXSpringboard sharedInstance];
  isActive = [v6 isActive];
  isInWorkspace = [v6 isInWorkspace];
  wantsSingleAppModeOrAppSelfLockMode = [v6 wantsSingleAppModeOrAppSelfLockMode];
  if (isActive & 1) != 0 || (wantsSingleAppModeOrAppSelfLockMode)
  {
    v10 = 0;
    if (capability > 0x19 || ((1 << capability) & 0x2EFD928) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (((capability == 5) & isInWorkspace) == 0)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if (explanation)
  {
    if (((capability == 5) & isInWorkspace) != 0)
    {
      v11 = @"Guided Access is in workspace";
    }

    else
    {
      v11 = @"Guided Access wants single app mode";
    }

    if (isActive)
    {
      v11 = @"Guided Access is active";
    }

    *explanation = v11;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)allowsCapability:(int64_t)capability
{
  if ([(GAXSBSBMainDisplayPolicyAggregator *)self _guidedAccessShouldBlockCapability:capability explanation:0])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GAXSBSBMainDisplayPolicyAggregator;
  return [(GAXSBSBMainDisplayPolicyAggregator *)&v6 allowsCapability:capability];
}

- (BOOL)allowsCapability:(int64_t)capability explanation:(id *)explanation
{
  if ([GAXSBSBMainDisplayPolicyAggregator _guidedAccessShouldBlockCapability:"_guidedAccessShouldBlockCapability:explanation:" explanation:?])
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = GAXSBSBMainDisplayPolicyAggregator;
  return [(GAXSBSBMainDisplayPolicyAggregator *)&v8 allowsCapability:capability explanation:explanation];
}

@end
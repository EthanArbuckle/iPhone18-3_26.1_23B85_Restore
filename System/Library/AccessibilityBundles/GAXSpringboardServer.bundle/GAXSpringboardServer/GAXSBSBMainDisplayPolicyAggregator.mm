@interface GAXSBSBMainDisplayPolicyAggregator
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_guidedAccessShouldBlockCapability:(int64_t)a3 explanation:(id *)a4;
- (BOOL)allowsCapability:(int64_t)a3;
- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4;
@end

@implementation GAXSBSBMainDisplayPolicyAggregator

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBMainDisplayPolicyAggregator" hasInstanceMethod:@"allowsCapability:" withFullSignature:{"B", "q", 0}];
  [v3 validateClass:@"SBMainDisplayPolicyAggregator" hasInstanceMethod:@"allowsCapability:explanation:" withFullSignature:{"B", "q", "^@", 0}];
}

- (BOOL)_guidedAccessShouldBlockCapability:(int64_t)a3 explanation:(id *)a4
{
  v6 = +[GAXSpringboard sharedInstance];
  v7 = [v6 isActive];
  v8 = [v6 isInWorkspace];
  v9 = [v6 wantsSingleAppModeOrAppSelfLockMode];
  if (v7 & 1) != 0 || (v9)
  {
    v10 = 0;
    if (a3 > 0x19 || ((1 << a3) & 0x2EFD928) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (((a3 == 5) & v8) == 0)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if (a4)
  {
    if (((a3 == 5) & v8) != 0)
    {
      v11 = @"Guided Access is in workspace";
    }

    else
    {
      v11 = @"Guided Access wants single app mode";
    }

    if (v7)
    {
      v11 = @"Guided Access is active";
    }

    *a4 = v11;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)allowsCapability:(int64_t)a3
{
  if ([(GAXSBSBMainDisplayPolicyAggregator *)self _guidedAccessShouldBlockCapability:a3 explanation:0])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GAXSBSBMainDisplayPolicyAggregator;
  return [(GAXSBSBMainDisplayPolicyAggregator *)&v6 allowsCapability:a3];
}

- (BOOL)allowsCapability:(int64_t)a3 explanation:(id *)a4
{
  if ([GAXSBSBMainDisplayPolicyAggregator _guidedAccessShouldBlockCapability:"_guidedAccessShouldBlockCapability:explanation:" explanation:?])
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = GAXSBSBMainDisplayPolicyAggregator;
  return [(GAXSBSBMainDisplayPolicyAggregator *)&v8 allowsCapability:a3 explanation:a4];
}

@end
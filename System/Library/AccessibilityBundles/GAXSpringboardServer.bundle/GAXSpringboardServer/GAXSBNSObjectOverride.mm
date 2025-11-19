@interface GAXSBNSObjectOverride
+ (BOOL)__accessibilityGuidedAccessStateEnabled;
@end

@implementation GAXSBNSObjectOverride

+ (BOOL)__accessibilityGuidedAccessStateEnabled
{
  v2 = +[GAXSpringboard sharedInstance];
  v3 = [v2 isActive];

  return v3;
}

@end
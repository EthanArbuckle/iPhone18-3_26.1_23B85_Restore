@interface GAXSBNSObjectOverride
+ (BOOL)__accessibilityGuidedAccessStateEnabled;
@end

@implementation GAXSBNSObjectOverride

+ (BOOL)__accessibilityGuidedAccessStateEnabled
{
  v2 = +[GAXSpringboard sharedInstance];
  isActive = [v2 isActive];

  return isActive;
}

@end
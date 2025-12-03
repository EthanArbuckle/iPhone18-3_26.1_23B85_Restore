@interface GKPreferencesSPI
+ (void)forceLocalPlayerAgeCategoryToAdult;
+ (void)forceLocalPlayerAgeCategoryToChild;
+ (void)unforceLocalPlayerAgeCategory;
@end

@implementation GKPreferencesSPI

+ (void)forceLocalPlayerAgeCategoryToAdult
{
  shared = [off_278236578 shared];

  [shared setForceAgeCategory:1];
}

+ (void)forceLocalPlayerAgeCategoryToChild
{
  shared = [off_278236578 shared];

  [shared setForceAgeCategory:3];
}

+ (void)unforceLocalPlayerAgeCategory
{
  shared = [off_278236578 shared];

  [shared setForceAgeCategory:0];
}

@end
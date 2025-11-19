@interface GKPreferencesSPI
+ (void)forceLocalPlayerAgeCategoryToAdult;
+ (void)forceLocalPlayerAgeCategoryToChild;
+ (void)unforceLocalPlayerAgeCategory;
@end

@implementation GKPreferencesSPI

+ (void)forceLocalPlayerAgeCategoryToAdult
{
  v2 = [off_278236578 shared];

  [v2 setForceAgeCategory:1];
}

+ (void)forceLocalPlayerAgeCategoryToChild
{
  v2 = [off_278236578 shared];

  [v2 setForceAgeCategory:3];
}

+ (void)unforceLocalPlayerAgeCategory
{
  v2 = [off_278236578 shared];

  [v2 setForceAgeCategory:0];
}

@end
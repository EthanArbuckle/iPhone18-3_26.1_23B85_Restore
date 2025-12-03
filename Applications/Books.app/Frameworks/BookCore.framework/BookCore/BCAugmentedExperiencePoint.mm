@interface BCAugmentedExperiencePoint
- (id)description;
@end

@implementation BCAugmentedExperiencePoint

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"BCAugmentedExperiencePoint\n"];
  experiencePoint = [(BCAugmentedExperiencePoint *)self experiencePoint];
  [v3 appendFormat:@"        experiencePoint . . . : %@\n", experiencePoint];

  validRange = [(BCAugmentedExperiencePoint *)self validRange];
  [v3 appendFormat:@"        validRange  . . . . . : %@", validRange];

  return v3;
}

@end
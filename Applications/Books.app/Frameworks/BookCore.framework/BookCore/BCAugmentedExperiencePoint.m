@interface BCAugmentedExperiencePoint
- (id)description;
@end

@implementation BCAugmentedExperiencePoint

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"BCAugmentedExperiencePoint\n"];
  v4 = [(BCAugmentedExperiencePoint *)self experiencePoint];
  [v3 appendFormat:@"        experiencePoint . . . : %@\n", v4];

  v5 = [(BCAugmentedExperiencePoint *)self validRange];
  [v3 appendFormat:@"        validRange  . . . . . : %@", v5];

  return v3;
}

@end
@interface BCAugmentedExperience
- (id)description;
@end

@implementation BCAugmentedExperience

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"BCAugmentedExperience\n"];
  v4 = [(BCAugmentedExperience *)self location];
  [v3 appendFormat:@"    location  . . . . . . . . : %@\n", v4];

  [(BCAugmentedExperience *)self delay];
  [v3 appendFormat:@"    delay . . . . . . . . . . : %f\n", v5];
  [v3 appendFormat:@"    kind  . . . . . . . . . . : %ld\n", -[BCAugmentedExperience kind](self, "kind")];
  if ([(BCAugmentedExperience *)self enabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"    enabled . . . . . . . . . : %@\n", v6];
  if ([(BCAugmentedExperience *)self skipToast])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"    skipToast . . . . . . . . : %@\n", v7];
  v8 = [(BCAugmentedExperience *)self presenter];
  [v3 appendFormat:@"    presenter . . . . . . . . : %@", v8];

  return v3;
}

@end
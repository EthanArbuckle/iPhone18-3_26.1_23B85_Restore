@interface UIScene
- (BOOL)tvSettings_isNonLightningSecondScreenScene;
@end

@implementation UIScene

- (BOOL)tvSettings_isNonLightningSecondScreenScene
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [(UIScene *)self screen];
  v4 = [v3 displayConfiguration];
  v5 = [v4 name];

  NSLog(@"Found window scene with display name %@", v5);
  LOBYTE(v3) = [v5 hasPrefix:@"TVOut"];

  return v3;
}

@end
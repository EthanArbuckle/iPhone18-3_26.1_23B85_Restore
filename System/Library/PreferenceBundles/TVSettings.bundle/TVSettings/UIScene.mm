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

  screen = [(UIScene *)self screen];
  displayConfiguration = [screen displayConfiguration];
  name = [displayConfiguration name];

  NSLog(@"Found window scene with display name %@", name);
  LOBYTE(screen) = [name hasPrefix:@"TVOut"];

  return screen;
}

@end
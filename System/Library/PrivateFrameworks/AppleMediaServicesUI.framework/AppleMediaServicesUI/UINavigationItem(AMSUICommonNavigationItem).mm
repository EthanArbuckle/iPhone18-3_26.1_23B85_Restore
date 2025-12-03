@interface UINavigationItem(AMSUICommonNavigationItem)
- (void)ams_configureWithDefaultBackground;
- (void)ams_configureWithTranslucentWhileScrollingBackground;
- (void)ams_configureWithTransparentBackground;
@end

@implementation UINavigationItem(AMSUICommonNavigationItem)

- (void)ams_configureWithDefaultBackground
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithDefaultBackground];
  [self setStandardAppearance:v2];
  [self setCompactAppearance:v2];
  [self setScrollEdgeAppearance:v2];
}

- (void)ams_configureWithTranslucentWhileScrollingBackground
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v3 configureWithDefaultBackground];
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithTransparentBackground];
  [self setStandardAppearance:v3];
  [self setCompactAppearance:v3];
  [self setScrollEdgeAppearance:v2];
}

- (void)ams_configureWithTransparentBackground
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithTransparentBackground];
  [self setStandardAppearance:v2];
  [self setCompactAppearance:v2];
  [self setScrollEdgeAppearance:v2];
}

@end
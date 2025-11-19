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
  [a1 setStandardAppearance:v2];
  [a1 setCompactAppearance:v2];
  [a1 setScrollEdgeAppearance:v2];
}

- (void)ams_configureWithTranslucentWhileScrollingBackground
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v3 configureWithDefaultBackground];
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithTransparentBackground];
  [a1 setStandardAppearance:v3];
  [a1 setCompactAppearance:v3];
  [a1 setScrollEdgeAppearance:v2];
}

- (void)ams_configureWithTransparentBackground
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v2 configureWithTransparentBackground];
  [a1 setStandardAppearance:v2];
  [a1 setCompactAppearance:v2];
  [a1 setScrollEdgeAppearance:v2];
}

@end
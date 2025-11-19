@interface UIViewController(_MKUIViewControllerContent)
- (double)contentAlpha;
- (id)accessibilityIdentifier;
- (uint64_t)_mapkit_contentVisibility;
- (void)setAccessibilityIdentifier:()_MKUIViewControllerContent;
- (void)setContentAlpha:()_MKUIViewControllerContent;
- (void)set_mapkit_contentVisibility:()_MKUIViewControllerContent;
@end

@implementation UIViewController(_MKUIViewControllerContent)

- (id)accessibilityIdentifier
{
  if ([a1 isViewLoaded])
  {
    v2 = [a1 view];
    v3 = [v2 accessibilityIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_mapkit_contentVisibility:()_MKUIViewControllerContent
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(a1, &_MKContentVisibilityKey, v2, 0x301);
}

- (uint64_t)_mapkit_contentVisibility
{
  v1 = objc_getAssociatedObject(a1, &_MKContentVisibilityKey);
  v2 = [v1 integerValue];

  return v2;
}

- (void)setContentAlpha:()_MKUIViewControllerContent
{
  v3 = [a1 view];
  [v3 setAlpha:a2];
}

- (double)contentAlpha
{
  v1 = [a1 view];
  [v1 alpha];
  v3 = v2;

  return v3;
}

- (void)setAccessibilityIdentifier:()_MKUIViewControllerContent
{
  v5 = a3;
  if ([a1 isViewLoaded])
  {
    v4 = [a1 view];
    [v4 setAccessibilityIdentifier:v5];
  }
}

@end
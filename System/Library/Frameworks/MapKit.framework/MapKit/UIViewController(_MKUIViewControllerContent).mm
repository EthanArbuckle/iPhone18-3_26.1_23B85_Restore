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
  if ([self isViewLoaded])
  {
    view = [self view];
    accessibilityIdentifier = [view accessibilityIdentifier];
  }

  else
  {
    accessibilityIdentifier = 0;
  }

  return accessibilityIdentifier;
}

- (void)set_mapkit_contentVisibility:()_MKUIViewControllerContent
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  objc_setAssociatedObject(self, &_MKContentVisibilityKey, v2, 0x301);
}

- (uint64_t)_mapkit_contentVisibility
{
  v1 = objc_getAssociatedObject(self, &_MKContentVisibilityKey);
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setContentAlpha:()_MKUIViewControllerContent
{
  view = [self view];
  [view setAlpha:a2];
}

- (double)contentAlpha
{
  view = [self view];
  [view alpha];
  v3 = v2;

  return v3;
}

- (void)setAccessibilityIdentifier:()_MKUIViewControllerContent
{
  v5 = a3;
  if ([self isViewLoaded])
  {
    view = [self view];
    [view setAccessibilityIdentifier:v5];
  }
}

@end
@interface MSApplication
- (id)preferredContentSizeCategory;
@end

@implementation MSApplication

- (id)preferredContentSizeCategory
{
  v6.receiver = self;
  v6.super_class = MSApplication;
  preferredContentSizeCategory = [(MSApplication *)&v6 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v3 = UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else
  {
    v3 = preferredContentSizeCategory;
  }

  v4 = v3;

  return v3;
}

@end
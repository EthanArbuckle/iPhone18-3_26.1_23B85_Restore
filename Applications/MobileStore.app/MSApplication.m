@interface MSApplication
- (id)preferredContentSizeCategory;
@end

@implementation MSApplication

- (id)preferredContentSizeCategory
{
  v6.receiver = self;
  v6.super_class = MSApplication;
  v2 = [(MSApplication *)&v6 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v2))
  {
    v3 = UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

@end
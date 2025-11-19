@interface PreviewDetailsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setupViewsAndConstraints;
@end

@implementation PreviewDetailsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PreviewDetailsViewControllerAccessibility" hasInstanceMethod:@"setupViewsAndConstraints" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PreviewDetailsViewController" hasInstanceVariable:@"_filenameTextField" withType:"UITextField"];
}

- (void)setupViewsAndConstraints
{
  v2.receiver = self;
  v2.super_class = PreviewDetailsViewControllerAccessibility;
  [(PreviewDetailsViewControllerAccessibility *)&v2 setupViewsAndConstraints];
}

@end
@interface PreviewDetailsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setupViewsAndConstraints;
@end

@implementation PreviewDetailsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PreviewDetailsViewControllerAccessibility" hasInstanceMethod:@"setupViewsAndConstraints" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PreviewDetailsViewController" hasInstanceVariable:@"_filenameTextField" withType:"UITextField"];
}

- (void)setupViewsAndConstraints
{
  v2.receiver = self;
  v2.super_class = PreviewDetailsViewControllerAccessibility;
  [(PreviewDetailsViewControllerAccessibility *)&v2 setupViewsAndConstraints];
}

@end
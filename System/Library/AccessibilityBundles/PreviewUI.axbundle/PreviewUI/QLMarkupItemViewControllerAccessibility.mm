@interface QLMarkupItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPhotoDescriptionFromContext:(id)context;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation QLMarkupItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLMarkupItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"QLMarkupItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"QLMarkupItemViewController" isKindOfClass:@"QLItemViewController"];
  [validationsCopy validateClass:@"QLItemViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLItemViewController" hasInstanceMethod:@"context" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewContext" hasInstanceMethod:@"previewTitle" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = QLMarkupItemViewControllerAccessibility;
  [(QLMarkupItemViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(QLMarkupItemViewControllerAccessibility *)self safeValueForKey:@"context"];
  v4 = [(QLMarkupItemViewControllerAccessibility *)self _axPhotoDescriptionFromContext:v3];
  v5 = [(QLMarkupItemViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  v6 = [v5 _accessibilityFindSubviewDescendant:&__block_literal_global_0];

  [v6 setIsAccessibilityElement:1];
  [v6 setAccessibilityLabel:v4];
}

uint64_t __85__QLMarkupItemViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = QLMarkupItemViewControllerAccessibility;
  [(QLMarkupItemViewControllerAccessibility *)&v6 loadPreviewControllerWithContents:contents context:context completionHandler:handler];
  [(QLMarkupItemViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = QLMarkupItemViewControllerAccessibility;
  [(QLMarkupItemViewControllerAccessibility *)&v4 viewDidLoad];
  v3 = [(QLMarkupItemViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityViewIsModal:1];
}

- (id)_axPhotoDescriptionFromContext:(id)context
{
  contextCopy = context;
  accessibilityLabel = [contextCopy accessibilityLabel];
  if (!accessibilityLabel)
  {
    accessibilityLabel = [contextCopy safeValueForKey:@"previewTitle"];
  }

  return accessibilityLabel;
}

@end
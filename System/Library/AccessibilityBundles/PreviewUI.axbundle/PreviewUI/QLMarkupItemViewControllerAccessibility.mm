@interface QLMarkupItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axPhotoDescriptionFromContext:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)viewDidLoad;
@end

@implementation QLMarkupItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLMarkupItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"QLMarkupItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"QLMarkupItemViewController" isKindOfClass:@"QLItemViewController"];
  [v3 validateClass:@"QLItemViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLItemViewController" hasInstanceMethod:@"context" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLPreviewContext" hasInstanceMethod:@"previewTitle" withFullSignature:{"@", 0}];
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

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v6.receiver = self;
  v6.super_class = QLMarkupItemViewControllerAccessibility;
  [(QLMarkupItemViewControllerAccessibility *)&v6 loadPreviewControllerWithContents:a3 context:a4 completionHandler:a5];
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

- (id)_axPhotoDescriptionFromContext:(id)a3
{
  v3 = a3;
  v4 = [v3 accessibilityLabel];
  if (!v4)
  {
    v4 = [v3 safeValueForKey:@"previewTitle"];
  }

  return v4;
}

@end
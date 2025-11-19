@interface QLLivePhotoItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axPhotoDescriptionFromContext:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
@end

@implementation QLLivePhotoItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLLivePhotoItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"QLLivePhotoItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"QLLivePhotoItemViewController" hasInstanceVariable:@"_livePhotoView" withType:"PHLivePhotoView"];
  [v3 validateClass:@"QLLivePhotoItemViewController" isKindOfClass:@"QLItemViewController"];
  [v3 validateClass:@"QLItemViewController" hasInstanceMethod:@"context" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLPreviewContext" hasInstanceMethod:@"previewTitle" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = QLLivePhotoItemViewControllerAccessibility;
  [(QLLivePhotoItemViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(QLLivePhotoItemViewControllerAccessibility *)self safeValueForKey:@"context"];
  v4 = [(QLLivePhotoItemViewControllerAccessibility *)self _axPhotoDescriptionFromContext:v3];
  v5 = [(QLLivePhotoItemViewControllerAccessibility *)self safeValueForKey:@"_livePhotoView"];
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityLabel:v4];
}

- (void)loadPreviewControllerWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v6.receiver = self;
  v6.super_class = QLLivePhotoItemViewControllerAccessibility;
  [(QLLivePhotoItemViewControllerAccessibility *)&v6 loadPreviewControllerWithContents:a3 context:a4 completionHandler:a5];
  [(QLLivePhotoItemViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_axPhotoDescriptionFromContext:(id)a3
{
  v3 = a3;
  v4 = [v3 accessibilityLabel];
  if (!v4)
  {
    v4 = [v3 safeValueForKey:@"previewTitle"];
  }

  v7 = accessibilityLocalizedString(@"ql.live.photo");
  v5 = __UIAXStringForVariables();

  return v5;
}

@end
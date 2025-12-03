@interface QLLivePhotoItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axPhotoDescriptionFromContext:(id)context;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
@end

@implementation QLLivePhotoItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLLivePhotoItemViewController" hasInstanceMethod:@"loadPreviewControllerWithContents:context:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [validationsCopy validateClass:@"QLLivePhotoItemViewController" hasInstanceMethod:@"previewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"QLLivePhotoItemViewController" hasInstanceVariable:@"_livePhotoView" withType:"PHLivePhotoView"];
  [validationsCopy validateClass:@"QLLivePhotoItemViewController" isKindOfClass:@"QLItemViewController"];
  [validationsCopy validateClass:@"QLItemViewController" hasInstanceMethod:@"context" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLPreviewContext" hasInstanceMethod:@"previewTitle" withFullSignature:{"@", 0}];
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

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = QLLivePhotoItemViewControllerAccessibility;
  [(QLLivePhotoItemViewControllerAccessibility *)&v6 loadPreviewControllerWithContents:contents context:context completionHandler:handler];
  [(QLLivePhotoItemViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_axPhotoDescriptionFromContext:(id)context
{
  contextCopy = context;
  accessibilityLabel = [contextCopy accessibilityLabel];
  if (!accessibilityLabel)
  {
    accessibilityLabel = [contextCopy safeValueForKey:@"previewTitle"];
  }

  v7 = accessibilityLocalizedString(@"ql.live.photo");
  v5 = __UIAXStringForVariables();

  return v5;
}

@end
@interface UIDocumentInteractionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation UIDocumentInteractionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"presentPreviewAnimated:" withFullSignature:{"B", "B", 0}];
  [v3 validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewsPresentWithMarkup" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewController" withFullSignature:{"@", 0}];
}

@end
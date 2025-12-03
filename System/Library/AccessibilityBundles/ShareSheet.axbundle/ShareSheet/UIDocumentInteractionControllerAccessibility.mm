@interface UIDocumentInteractionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UIDocumentInteractionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"presentPreviewAnimated:" withFullSignature:{"B", "B", 0}];
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewsPresentWithMarkup" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIDocumentInteractionController" hasInstanceMethod:@"previewController" withFullSignature:{"@", 0}];
}

@end
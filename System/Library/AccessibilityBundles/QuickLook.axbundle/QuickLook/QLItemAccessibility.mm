@interface QLItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)createPreviewContext;
@end

@implementation QLItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLItem" hasInstanceMethod:@"previewItemURL" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"QLItem" hasInstanceMethod:@"createPreviewContext" withFullSignature:{"@", 0}];
}

- (id)createPreviewContext
{
  v8.receiver = self;
  v8.super_class = QLItemAccessibility;
  createPreviewContext = [(QLItemAccessibility *)&v8 createPreviewContext];
  v4 = [(QLItemAccessibility *)self safeValueForKey:@"previewItemURL"];
  v5 = __UIAccessibilitySafeClass();

  v6 = UIAccessibilityMetadataDescriptionForImage();
  [createPreviewContext setAccessibilityLabel:v6];

  return createPreviewContext;
}

@end
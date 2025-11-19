@interface QLItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)createPreviewContext;
@end

@implementation QLItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"QLItem" hasInstanceMethod:@"previewItemURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"QLItem" hasInstanceMethod:@"createPreviewContext" withFullSignature:{"@", 0}];
}

- (id)createPreviewContext
{
  v8.receiver = self;
  v8.super_class = QLItemAccessibility;
  v3 = [(QLItemAccessibility *)&v8 createPreviewContext];
  v4 = [(QLItemAccessibility *)self safeValueForKey:@"previewItemURL"];
  v5 = __UIAccessibilitySafeClass();

  v6 = UIAccessibilityMetadataDescriptionForImage();
  [v3 setAccessibilityLabel:v6];

  return v3;
}

@end
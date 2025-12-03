@interface ENUILoggingStatusCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation ENUILoggingStatusCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ENUILoggingStatusCellAccessibility *)self safeUIViewForKey:@"sectionLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end
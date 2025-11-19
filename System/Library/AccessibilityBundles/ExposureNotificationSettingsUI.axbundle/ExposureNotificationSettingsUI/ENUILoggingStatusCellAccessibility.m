@interface ENUILoggingStatusCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation ENUILoggingStatusCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUILoggingStatusCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ENUILoggingStatusCellAccessibility *)self safeUIViewForKey:@"sectionLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end
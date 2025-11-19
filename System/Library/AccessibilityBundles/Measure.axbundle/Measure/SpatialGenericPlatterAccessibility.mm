@interface SpatialGenericPlatterAccessibility
- (BOOL)accessibilityPerformEscape;
@end

@implementation SpatialGenericPlatterAccessibility

- (BOOL)accessibilityPerformEscape
{
  AXPerformSafeBlock();
  v2 = accessibilityLocalizedString(@"MEASUREMENT_DISMISSED");
  AXMeasureSpeakMeasurementAnnouncement(v2);

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

@end
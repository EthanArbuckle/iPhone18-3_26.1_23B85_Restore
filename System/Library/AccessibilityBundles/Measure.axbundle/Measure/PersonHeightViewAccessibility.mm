@interface PersonHeightViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)toggleViewVisibilityWithIsVisible:(BOOL)a3;
@end

@implementation PersonHeightViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.PersonHeightView" hasInstanceMethod:@"toggleViewVisibilityWithIsVisible:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"Measure.PersonHeightView" hasInstanceMethod:@"_accessibilitySpeakableHeight" withFullSignature:{"@", 0}];
}

- (void)toggleViewVisibilityWithIsVisible:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = PersonHeightViewAccessibility;
  [(PersonHeightViewAccessibility *)&v9 toggleViewVisibilityWithIsVisible:?];
  if (v3)
  {
    v5 = [(PersonHeightViewAccessibility *)self safeStringForKey:@"_accessibilitySpeakableHeight"];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"HEIGHT_ANNOUNCEMENT");
    v8 = [v6 localizedStringWithFormat:v7, v5];

    AXMeasureSpeakMeasurementAnnouncement(v8);
  }
}

@end
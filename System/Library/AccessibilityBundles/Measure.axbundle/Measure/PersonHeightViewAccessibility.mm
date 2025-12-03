@interface PersonHeightViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)toggleViewVisibilityWithIsVisible:(BOOL)visible;
@end

@implementation PersonHeightViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.PersonHeightView" hasInstanceMethod:@"toggleViewVisibilityWithIsVisible:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"Measure.PersonHeightView" hasInstanceMethod:@"_accessibilitySpeakableHeight" withFullSignature:{"@", 0}];
}

- (void)toggleViewVisibilityWithIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  v9.receiver = self;
  v9.super_class = PersonHeightViewAccessibility;
  [(PersonHeightViewAccessibility *)&v9 toggleViewVisibilityWithIsVisible:?];
  if (visibleCopy)
  {
    v5 = [(PersonHeightViewAccessibility *)self safeStringForKey:@"_accessibilitySpeakableHeight"];
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"HEIGHT_ANNOUNCEMENT");
    v8 = [v6 localizedStringWithFormat:v7, v5];

    AXMeasureSpeakMeasurementAnnouncement(v8);
  }
}

@end
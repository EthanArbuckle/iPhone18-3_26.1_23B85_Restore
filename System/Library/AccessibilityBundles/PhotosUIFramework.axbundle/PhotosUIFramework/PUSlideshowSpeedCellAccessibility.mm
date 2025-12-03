@interface PUSlideshowSpeedCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PUSlideshowSpeedCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PUSlideshowSpeedCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUSlideshowSpeedCell" hasInstanceVariable:@"_slider" withType:"UISlider"];
  [validationsCopy validateClass:@"PUSlideshowSpeedCell" hasInstanceMethod:@"initWithStyle: reuseIdentifier:" withFullSignature:{"q", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PUSlideshowSpeedCellAccessibility;
  [(PUSlideshowSpeedCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PUSlideshowSpeedCellAccessibility *)self safeValueForKey:@"_slider"];
  v4 = accessibilityPULocalizedString(@"slideshow.speed.label");
  [v3 setAccessibilityLabel:v4];
}

- (PUSlideshowSpeedCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = PUSlideshowSpeedCellAccessibility;
  v4 = [(PUSlideshowSpeedCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(PUSlideshowSpeedCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end
@interface PLHighFidelityVideoOverlayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PLHighFidelityVideoOverlayButtonAccessibility)initWithStyle:(int64_t)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_playButtonTapped:(id)a3;
@end

@implementation PLHighFidelityVideoOverlayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLHighFidelityVideoOverlayButton" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"PLHighFidelityVideoOverlayButton" hasInstanceMethod:@"initWithStyle:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"PLHighFidelityVideoOverlayButton" hasInstanceMethod:@"_playButtonTapped:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PLHighFidelityVideoOverlayButtonAccessibility;
  [(PLHighFidelityVideoOverlayButtonAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLHighFidelityVideoOverlayButtonAccessibility *)self safeValueForKey:@"_button"];
  [v3 setIsAccessibilityElement:0];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PLHighFidelityVideoOverlayButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PLHighFidelityVideoOverlayButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FC8];
}

- (PLHighFidelityVideoOverlayButtonAccessibility)initWithStyle:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PLHighFidelityVideoOverlayButtonAccessibility;
  v3 = [(PLHighFidelityVideoOverlayButtonAccessibility *)&v5 initWithStyle:a3];
  [(PLHighFidelityVideoOverlayButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_playButtonTapped:(id)a3
{
  v3.receiver = self;
  v3.super_class = PLHighFidelityVideoOverlayButtonAccessibility;
  [(PLHighFidelityVideoOverlayButtonAccessibility *)&v3 _playButtonTapped:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
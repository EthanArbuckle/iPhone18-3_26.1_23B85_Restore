@interface PosterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScrollParentForComparingByXAxis;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PosterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"accessibilityDescriptionText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"accessibilityAltText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"overlayTitleText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PosterCell" hasInstanceMethod:@"materialImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicCoreUI.SymbolButton"];
  [v3 validateClass:@"MusicApplication.PosterCell" hasSwiftField:@"isTitleChevronEnabled" withSwiftType:"Optional<Bool>"];
}

- (id)accessibilityLabel
{
  v3 = [(PosterCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29C2E2DD0](@"MusicCoreUI.SymbolButton", a2)];
  if ([(PosterCellAccessibility *)self safeSwiftBoolForKey:@"isTitleChevronEnabled"])
  {
    v4 = accessibilityMusicLocalizedString(@"right.arrow.circle");
  }

  else
  {
    v4 = &stru_2A2250960;
  }

  v5 = [v3 accessibilityLabel];
  v6 = [(PosterCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"overlayTitleText, accessibilityAltText, accessibilityTitle"];
  v9 = [(PosterCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilitySubtitle, accessibilityDescriptionText"];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PosterCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PosterCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityScrollParentForComparingByXAxis
{
  v3 = objc_opt_class();

  return [(PosterCellAccessibility *)self _accessibilityAncestorIsKindOf:v3];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6 = 0;
  objc_opt_class();
  v3 = [(PosterCellAccessibility *)self safeValueForKey:@"materialImage"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:0];
  v5.receiver = self;
  v5.super_class = PosterCellAccessibility;
  [(PosterCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
}

@end
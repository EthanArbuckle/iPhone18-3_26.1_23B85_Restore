@interface MTPodcastCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MTPodcastCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTGenericCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTGenericCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTPodcastCell" hasInstanceMethod:@"countView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MTCountChevronView" hasInstanceMethod:@"count" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MTPodcastCellAccessibility *)self safeValueForKey:@"title"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(MTPodcastCellAccessibility *)self safeValueForKey:@"subtitle"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(MTPodcastCellAccessibility *)self safeValueForKey:@"countView"];
  v8 = [v7 safeValueForKey:@"count"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [v9 integerValue];
  if (v10 < 0)
  {
    v13 = accessibilityLocalizedString(@"needs.attention");
  }

  else
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"unplayed.episode.count");
    v13 = [v11 localizedStringWithFormat:v12, v10];
  }

  v14 = __UIAXStringForVariables();

  return v14;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MTPodcastCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MTPodcastCellAccessibility *)&v3 accessibilityTraits];
}

@end
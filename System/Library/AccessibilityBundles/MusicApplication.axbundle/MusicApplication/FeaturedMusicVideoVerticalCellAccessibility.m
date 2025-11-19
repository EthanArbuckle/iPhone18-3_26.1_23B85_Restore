@interface FeaturedMusicVideoVerticalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation FeaturedMusicVideoVerticalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.FeaturedMusicVideoVerticalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.FeaturedMusicVideoVerticalCell" hasInstanceMethod:@"artistName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.FeaturedMusicVideoVerticalCell" hasInstanceMethod:@"accessibilityDateReleasedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(FeaturedMusicVideoVerticalCellAccessibility *)self safeValueForKey:@"title"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(FeaturedMusicVideoVerticalCellAccessibility *)self safeValueForKey:@"artistName"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [(FeaturedMusicVideoVerticalCellAccessibility *)self safeValueForKey:@"accessibilityDateReleasedText"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = __UIAXStringForVariables();

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FeaturedMusicVideoVerticalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FeaturedMusicVideoVerticalCellAccessibility *)&v3 accessibilityTraits];
}

@end
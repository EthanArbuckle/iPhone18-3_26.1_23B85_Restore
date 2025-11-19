@interface FeaturedRadioShowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation FeaturedRadioShowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.FeaturedRadioShowCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.FeaturedRadioShowCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.FeaturedRadioShowCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.FeaturedRadioShowCell" hasInstanceMethod:@"accessibilityIsExplicit" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(FeaturedRadioShowCellAccessibility *)self safeBoolForKey:@"accessibilityIsExplicit"])
  {
    v3 = accessibilityMusicLocalizedString(@"explicit");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(FeaturedRadioShowCellAccessibility *)self safeValueForKey:@"headline"];
  v5 = [(FeaturedRadioShowCellAccessibility *)self safeValueForKey:@"title"];
  v8 = [(FeaturedRadioShowCellAccessibility *)self safeValueForKey:@"subtitle"];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FeaturedRadioShowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FeaturedRadioShowCellAccessibility *)&v3 accessibilityTraits];
}

@end
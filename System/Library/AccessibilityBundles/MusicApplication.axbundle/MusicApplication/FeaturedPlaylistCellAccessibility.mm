@interface FeaturedPlaylistCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation FeaturedPlaylistCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.FeaturedPlaylistCell" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedPlaylistCell" hasInstanceMethod:@"descriptionText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(FeaturedPlaylistCellAccessibility *)self safeValueForKey:@"name"];
  v6 = [(FeaturedPlaylistCellAccessibility *)self safeValueForKey:@"descriptionText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FeaturedPlaylistCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FeaturedPlaylistCellAccessibility *)&v3 accessibilityTraits];
}

@end
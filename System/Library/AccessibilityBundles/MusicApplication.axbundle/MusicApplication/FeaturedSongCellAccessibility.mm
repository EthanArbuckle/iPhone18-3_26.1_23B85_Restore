@interface FeaturedSongCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation FeaturedSongCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.FeaturedSongCell" hasInstanceMethod:@"headline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedSongCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedSongCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FeaturedSongCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FeaturedSongCellAccessibility *)&v3 accessibilityTraits];
}

@end
@interface FeaturedShowcaseCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation FeaturedShowcaseCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.FeaturedShowcaseCell" hasInstanceMethod:@"accessibilityDescription" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedShowcaseCell" hasInstanceMethod:@"accessibilityHeadline" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedShowcaseCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.FeaturedShowcaseCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FeaturedShowcaseCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FeaturedShowcaseCellAccessibility *)&v3 accessibilityTraits];
}

@end
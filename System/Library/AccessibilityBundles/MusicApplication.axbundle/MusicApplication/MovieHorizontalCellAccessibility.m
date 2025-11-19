@interface MovieHorizontalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MovieHorizontalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.MovieHorizontalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.MovieHorizontalCell" hasInstanceMethod:@"releaseDate" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(MovieHorizontalCellAccessibility *)self safeValueForKey:@"releaseDate"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = AXDateStringForFormat();
  v6 = [(MovieHorizontalCellAccessibility *)self safeValueForKey:@"title"];
  v7 = __UIAXStringForVariables();

  return v7;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MovieHorizontalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MovieHorizontalCellAccessibility *)&v3 accessibilityTraits];
}

@end
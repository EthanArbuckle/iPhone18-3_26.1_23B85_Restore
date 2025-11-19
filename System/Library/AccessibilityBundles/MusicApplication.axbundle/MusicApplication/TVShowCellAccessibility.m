@interface TVShowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation TVShowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.TVShowCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.TVShowCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = TVShowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(TVShowCellAccessibility *)&v3 accessibilityTraits];
}

@end
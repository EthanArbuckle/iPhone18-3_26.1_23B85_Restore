@interface PersonVerticalCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PersonVerticalCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.PersonVerticalCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PersonVerticalCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PersonVerticalCellAccessibility *)self safeValueForKey:@"title"];
  v6 = [(PersonVerticalCellAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PersonVerticalCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PersonVerticalCellAccessibility *)&v3 accessibilityTraits];
}

@end
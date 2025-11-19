@interface RadioShowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation RadioShowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.RadioShowCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RadioShowCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RadioShowCell" hasInstanceMethod:@"overlayTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.RadioShowCell" hasInstanceMethod:@"overlaySubtitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = RadioShowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(RadioShowCellAccessibility *)&v3 accessibilityTraits];
}

@end
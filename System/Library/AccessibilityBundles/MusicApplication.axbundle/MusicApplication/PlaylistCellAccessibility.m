@interface PlaylistCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PlaylistCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.PlaylistCell" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.PlaylistCell" hasInstanceMethod:@"subtitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PlaylistCellAccessibility *)self safeValueForKey:@"title"];
  v6 = [(PlaylistCellAccessibility *)self safeValueForKey:@"subtitle"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PlaylistCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PlaylistCellAccessibility *)&v3 accessibilityTraits];
}

@end
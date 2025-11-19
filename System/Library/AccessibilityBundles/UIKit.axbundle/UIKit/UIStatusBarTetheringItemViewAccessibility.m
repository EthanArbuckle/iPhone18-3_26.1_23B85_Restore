@interface UIStatusBarTetheringItemViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarTetheringItemViewAccessibility

- (id)accessibilityLabel
{
  v6 = [(UIStatusBarTetheringItemViewAccessibility *)self safeIntForKey:@"_tetheringConnectionCount"];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"status.hotspot.connections");
  v5 = [v3 localizedStringWithFormat:v6];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarTetheringItemViewAccessibility;
  return [(UIStatusBarTetheringItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end
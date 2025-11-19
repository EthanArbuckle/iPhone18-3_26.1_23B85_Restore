@interface CKActionMenuItemImageViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CKActionMenuItemImageViewAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CKActionMenuItemImageViewAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(CKActionMenuItemImageViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CKActionMenuItemImageViewAccessibility *)self safeBoolForKey:@"_enabled"];
  v5 = *MEMORY[0x29EDC7FA8];
  if (v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

@end
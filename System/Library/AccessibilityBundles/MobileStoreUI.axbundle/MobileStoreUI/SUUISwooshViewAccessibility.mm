@interface SUUISwooshViewAccessibility
- (void)setTitle:(id)a3;
@end

@implementation SUUISwooshViewAccessibility

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = SUUISwooshViewAccessibility;
  [(SUUISwooshViewAccessibility *)&v5 setTitle:a3];
  v4 = [(SUUISwooshViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80]];
}

@end
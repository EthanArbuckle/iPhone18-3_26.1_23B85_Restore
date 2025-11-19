@interface CKActionMenuItemAccessibility
- (void)setView:(id)a3;
@end

@implementation CKActionMenuItemAccessibility

- (void)setView:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKActionMenuItemAccessibility;
  v4 = a3;
  [(CKActionMenuItemAccessibility *)&v6 setView:v4];
  v5 = [(CKActionMenuItemAccessibility *)self accessibilityLabel:v6.receiver];
  [v4 setAccessibilityLabel:v5];
}

@end
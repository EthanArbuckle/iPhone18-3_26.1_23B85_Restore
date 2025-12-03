@interface CKActionMenuItemAccessibility
- (void)setView:(id)view;
@end

@implementation CKActionMenuItemAccessibility

- (void)setView:(id)view
{
  v6.receiver = self;
  v6.super_class = CKActionMenuItemAccessibility;
  viewCopy = view;
  [(CKActionMenuItemAccessibility *)&v6 setView:viewCopy];
  v5 = [(CKActionMenuItemAccessibility *)self accessibilityLabel:v6.receiver];
  [viewCopy setAccessibilityLabel:v5];
}

@end
@interface SBSearchBackdropViewInvertColorsAccessibility
- (void)layoutSubviews;
@end

@implementation SBSearchBackdropViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBSearchBackdropViewInvertColorsAccessibility;
  [(SBSearchBackdropViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SBSearchBackdropViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end
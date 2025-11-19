@interface PSKeyboardNavigationSearchBarAccessibility
- (id)keyCommands;
@end

@implementation PSKeyboardNavigationSearchBarAccessibility

- (id)keyCommands
{
  if ([(PSKeyboardNavigationSearchBarAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(PSKeyboardNavigationSearchBarAccessibility *)self _accessibilityKeyCommands];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PSKeyboardNavigationSearchBarAccessibility;
    v3 = [(PSKeyboardNavigationSearchBarAccessibility *)&v5 keyCommands];
  }

  return v3;
}

@end
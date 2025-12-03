@interface PSKeyboardNavigationSearchBarAccessibility
- (id)keyCommands;
@end

@implementation PSKeyboardNavigationSearchBarAccessibility

- (id)keyCommands
{
  if ([(PSKeyboardNavigationSearchBarAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    _accessibilityKeyCommands = [(PSKeyboardNavigationSearchBarAccessibility *)self _accessibilityKeyCommands];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PSKeyboardNavigationSearchBarAccessibility;
    _accessibilityKeyCommands = [(PSKeyboardNavigationSearchBarAccessibility *)&v5 keyCommands];
  }

  return _accessibilityKeyCommands;
}

@end
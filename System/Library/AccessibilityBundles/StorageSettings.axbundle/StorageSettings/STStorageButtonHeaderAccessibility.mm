@interface STStorageButtonHeaderAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageButtonHeaderAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = STStorageButtonHeaderAccessibility;
  accessibilityLabel = [(STStorageButtonHeaderAccessibility *)&v6 accessibilityLabel];
  if (AXRequestingClient() == 3)
  {
    lowercaseString = [accessibilityLabel lowercaseString];
  }

  else
  {
    lowercaseString = accessibilityLabel;
  }

  v4 = lowercaseString;

  return v4;
}

@end
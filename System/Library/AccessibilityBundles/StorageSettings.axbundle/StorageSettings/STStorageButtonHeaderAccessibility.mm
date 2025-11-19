@interface STStorageButtonHeaderAccessibility
- (id)accessibilityLabel;
@end

@implementation STStorageButtonHeaderAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = STStorageButtonHeaderAccessibility;
  v2 = [(STStorageButtonHeaderAccessibility *)&v6 accessibilityLabel];
  if (AXRequestingClient() == 3)
  {
    v3 = [v2 lowercaseString];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

@end
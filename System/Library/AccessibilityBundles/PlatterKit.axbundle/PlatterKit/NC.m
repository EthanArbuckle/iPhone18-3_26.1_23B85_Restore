@interface NC
@end

@implementation NC

id __88__NC_PLPlatterHeaderContentViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleLabel];
  v3 = [v2 text];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = accessibilityLocalizedString(@"notification.manage.button.title");
  }

  v5 = v4;

  return v5;
}

@end
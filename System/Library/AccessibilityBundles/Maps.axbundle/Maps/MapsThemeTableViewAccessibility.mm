@interface MapsThemeTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_axSearchResultsViewController;
@end

@implementation MapsThemeTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CardView"];
  [v3 validateClass:@"SearchViewController"];
}

- (id)_axSearchResultsViewController
{
  v2 = [(MapsThemeTableViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Cardview.isa)];
  v3 = [v2 _accessibilityViewController];

  NSClassFromString(&cfstr_Searchviewcont_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v16.receiver = self;
  v16.super_class = MapsThemeTableViewAccessibility;
  [(MapsThemeTableViewAccessibility *)&v16 _accessibilityVisibleContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MapsThemeTableViewAccessibility *)self _axSearchResultsViewController];

  v12 = 0.0;
  if (!v11)
  {
    v12 = v4;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

@end
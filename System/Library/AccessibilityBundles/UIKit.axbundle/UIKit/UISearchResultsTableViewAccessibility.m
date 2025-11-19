@interface UISearchResultsTableViewAccessibility
- (id)accessibilityLabel;
@end

@implementation UISearchResultsTableViewAccessibility

- (id)accessibilityLabel
{
  v7 = self;
  location[1] = a2;
  if ([(UISearchResultsTableViewAccessibility *)self accessibilityElementCount])
  {
    v8 = accessibilityLocalizedString(@"search.results");
  }

  else
  {
    v5 = [(UISearchResultsTableViewAccessibility *)v7 safeValueForKey:@"controller"];
    v4 = [v5 safeValueForKey:@"_noResultsLabel"];
    location[0] = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
    if ([location[0] length])
    {
      v8 = MEMORY[0x29EDC9748](location[0]);
    }

    else
    {
      v8 = accessibilityLocalizedString(@"no.search.results");
    }

    objc_storeStrong(location, 0);
  }

  v2 = v8;

  return v2;
}

@end
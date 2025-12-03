@interface UISearchControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_searchBarSearchButtonClicked:(id)clicked;
- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)bar;
- (void)setActive:(BOOL)active;
- (void)viewDidLoad;
@end

@implementation UISearchControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = @"UISearchController";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  v7 = "@";
  [location[0] validateClass:@"UISearchController" hasInstanceMethod:@"searchBar" withFullSignature:0];
  v3 = @"UISearchBar";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"searchTextField" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"UISearchTextField" hasInstanceMethod:@"tokens" withFullSignature:{v7, 0}];
  v4 = "B";
  [location[0] validateClass:v5 hasInstanceMethod:@"showsSearchResultsController" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"_showResultsForEmptySearch" withFullSignature:{v4, 0}];
  v6 = "v";
  [location[0] validateClass:v5 hasInstanceMethod:@"_searchBarSearchButtonClicked:" withFullSignature:{v7, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"_updateVisibilityOfSearchResultsForSearchBar:" withFullSignature:{v6, v7, 0}];
  [location[0] validateClass:@"UIViewController" hasInstanceMethod:@"_contentOrObservableScrollViewForEdge:" withFullSignature:{v7, "Q", 0}];
  objc_storeStrong(v9, v8);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v17 = a2;
  v16.receiver = self;
  v16.super_class = UISearchControllerAccessibility;
  [(UISearchControllerAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v15 = [(UISearchControllerAccessibility *)selfCopy safeValueForKey:@"_resultsControllerViewContainer"];
  objc_initWeak(&location, selfCopy);
  v6 = v15;
  v8 = MEMORY[0x29EDCA5F8];
  v9 = -1073741824;
  v10 = 0;
  v11 = __77__UISearchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12 = &unk_29F30C7F0;
  objc_copyWeak(&v13, &location);
  [v6 _setIsAccessibilityElementBlock:&v8];
  v5 = v15;
  v4 = accessibilityLocalizedString(@"double.tap.dismiss");
  [v5 setAccessibilityLabel:?];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  [v15 accessibilitySetIdentification:{@"AXUISearchControllerDimmingView", v2}];
  v7 = [(UISearchControllerAccessibility *)selfCopy _contentOrObservableScrollViewForEdge:1];
  v3 = accessibilityLocalizedString(@"search.results");
  [v7 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v7, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  objc_storeStrong(&v15, 0);
}

uint64_t __77__UISearchControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained(a1 + 4);
  v7 = [v21[0] searchBar];
  location = [v7 searchTextField];
  v8 = [location text];
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if (![v8 length])
  {
    v19 = [location safeArrayForKey:@"tokens"];
    v18 = 1;
    v9 = 0;
    if (![v19 count])
    {
      v9 = 0;
      if (([v21[0] safeBoolForKey:@"_showResultsForEmptySearch"] & 1) == 0)
      {
        v17 = [v21[0] searchResultsController];
        v16 = 1;
        v15 = [v17 view];
        v14 = 1;
        LOBYTE(v5) = 0;
        if (v15)
        {
          v13 = [v21[0] searchResultsController];
          v12 = 1;
          v11 = [v13 view];
          v10 = 1;
          v5 = [v11 isHidden] ^ 1;
        }

        v9 = v5;
      }
    }
  }

  if (v10)
  {
    MEMORY[0x29EDC9740](v11);
  }

  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](v15);
  }

  if (v16)
  {
    MEMORY[0x29EDC9740](v17);
  }

  if (v18)
  {
    MEMORY[0x29EDC9740](v19);
  }

  MEMORY[0x29EDC9740](v8);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v3 = [WeakRetained safeBoolForKey:@"showsSearchResultsController"];
  MEMORY[0x29EDC9740](WeakRetained);
  v4 = 0;
  if (v9)
  {
    v4 = v3 ^ 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v21, 0);
  return v4 & 1;
}

- (void)_updateVisibilityOfSearchResultsForSearchBar:(id)bar
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, bar);
  v3.receiver = selfCopy;
  v3.super_class = UISearchControllerAccessibility;
  [(UISearchControllerAccessibility *)&v3 _updateVisibilityOfSearchResultsForSearchBar:location[0]];
  [(UISearchControllerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISearchControllerAccessibility;
  [(UISearchControllerAccessibility *)&v2 viewDidLoad];
  [(UISearchControllerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
}

- (void)setActive:(BOOL)active
{
  selfCopy = self;
  v5 = a2;
  activeCopy = active;
  v3.receiver = self;
  v3.super_class = UISearchControllerAccessibility;
  [(UISearchControllerAccessibility *)&v3 setActive:active];
  [(UISearchControllerAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
}

- (void)_searchBarSearchButtonClicked:(id)clicked
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, clicked);
  v3.receiver = selfCopy;
  v3.super_class = UISearchControllerAccessibility;
  [(UISearchControllerAccessibility *)&v3 _searchBarSearchButtonClicked:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(location, 0);
}

@end
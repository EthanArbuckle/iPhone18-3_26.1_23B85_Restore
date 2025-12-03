@interface UISearchDisplayControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)searchResultsTableView;
- (void)_setTableViewVisible:(BOOL)visible inView:(id)view;
- (void)setActive:(BOOL)active animated:(BOOL)animated;
@end

@implementation UISearchDisplayControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UITableView";
  v4 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"_setAccessibilitySearchTableViewHidden" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (void)_setTableViewVisible:(BOOL)visible inView:(id)view
{
  selfCopy = self;
  v14 = a2;
  visibleCopy = visible;
  location = 0;
  objc_storeStrong(&location, view);
  v9 = [(UISearchDisplayControllerAccessibility *)selfCopy safeValueForKey:@"_dimmingView"];
  v11 = _containerForDimmingView(v9);
  *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  v10.receiver = selfCopy;
  v10.super_class = UISearchDisplayControllerAccessibility;
  [(UISearchDisplayControllerAccessibility *)&v10 _setTableViewVisible:visibleCopy inView:location, v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (visibleCopy)
    {
      v5 = [location safeValueForKey:@"_setAccessibilitySearchTableViewVisible"];
    }

    else
    {
      v7 = [location safeValueForKey:@"_setAccessibilitySearchTableViewHidden"];
    }

    v6 = [location safeValueForKey:@"_setAccessibilitySearchControllerDimmingViewHidden"];
  }

  v8 = [(UISearchDisplayControllerAccessibility *)selfCopy safeValueForKey:@"_dimmingView"];
  _toggleDimmingView(v8, v11);
  MEMORY[0x29EDC9740](v8);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (id)searchResultsTableView
{
  v5[2] = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UISearchDisplayControllerAccessibility;
  v5[0] = [(UISearchDisplayControllerAccessibility *)&v4 searchResultsTableView];
  [v5[0] accessibilitySetIdentification:@"SearchResultsTableView"];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)setActive:(BOOL)active animated:(BOOL)animated
{
  selfCopy = self;
  v16 = a2;
  activeCopy = active;
  animatedCopy = animated;
  v7 = [(UISearchDisplayControllerAccessibility *)self safeValueForKey:?];
  v13 = _containerForDimmingView(v7);
  *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  v12.receiver = selfCopy;
  v12.super_class = UISearchDisplayControllerAccessibility;
  [(UISearchDisplayControllerAccessibility *)&v12 setActive:activeCopy animated:animatedCopy, v4];
  v8 = [(UISearchDisplayControllerAccessibility *)selfCopy safeValueForKey:@"_dimmingView"];
  [v8 accessibilitySetIdentification:@"UISearchControlDimmingView"];
  *&v5 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  v10 = [(UISearchDisplayControllerAccessibility *)selfCopy safeValueForKey:@"_dimmingView", v5];
  v9 = accessibilityLocalizedString(@"double.tap.dismiss");
  [v10 setAccessibilityLabel:?];
  MEMORY[0x29EDC9740](v9);
  *&v6 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = [(UISearchDisplayControllerAccessibility *)selfCopy safeValueForKey:@"_dimmingView", v6];
  _toggleDimmingView(v11, v13);
  MEMORY[0x29EDC9740](v11);
  objc_storeStrong(&v13, 0);
}

@end
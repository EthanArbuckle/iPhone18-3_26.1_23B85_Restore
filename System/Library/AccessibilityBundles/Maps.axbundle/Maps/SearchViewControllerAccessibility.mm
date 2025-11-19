@interface SearchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateSubviews;
- (void)dealloc;
- (void)setCurrentDataSource:(id)a3;
- (void)viewDidLoad;
@end

@implementation SearchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchViewController" hasInstanceVariable:@"_contentTableView" withType:"UITableView"];
  [v3 validateClass:@"SearchViewController" hasInstanceVariable:@"_collectionView" withType:"UICollectionView"];
  [v3 validateClass:@"SearchViewController" hasInstanceMethod:@"setCurrentDataSource:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SearchViewController" hasInstanceMethod:@"showDropDownIfNeeded:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SearchViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SearchViewController" hasInstanceVariable:@"_userProfileButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SearchViewControllerAccessibility;
  [(SearchViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SearchViewControllerAccessibility *)self safeUIViewForKey:@"_userProfileButton"];
  v4 = AXMapsLocString(@"PROFILE");
  [v3 setAccessibilityLabel:v4];
}

- (void)_axAnnotateSubviews
{
  v6 = [(SearchViewControllerAccessibility *)self safeValueForKey:@"_contentTableView"];
  v3 = AXMapsLocString(@"table.search.label");
  [v6 setAccessibilityLabel:v3];

  v4 = [(SearchViewControllerAccessibility *)self safeUIViewForKey:@"_collectionView"];
  v5 = AXMapsLocString(@"collection.search.label");
  [v4 setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SearchViewControllerAccessibility;
  [(SearchViewControllerAccessibility *)&v3 viewDidLoad];
  [(SearchViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:@"AXCollapseMapsChromeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SearchViewControllerAccessibility;
  [(SearchViewControllerAccessibility *)&v4 dealloc];
}

- (void)setCurrentDataSource:(id)a3
{
  v4.receiver = self;
  v4.super_class = SearchViewControllerAccessibility;
  [(SearchViewControllerAccessibility *)&v4 setCurrentDataSource:a3];
  [(SearchViewControllerAccessibility *)self _axAnnotateSubviews];
}

@end
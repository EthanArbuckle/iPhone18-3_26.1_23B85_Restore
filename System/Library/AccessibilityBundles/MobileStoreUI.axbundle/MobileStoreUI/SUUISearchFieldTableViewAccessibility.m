@interface SUUISearchFieldTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
@end

@implementation SUUISearchFieldTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUISearchFieldTableView" hasInstanceMethod:@"trendingSearchesVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SUUISearchFieldTableView" hasInstanceVariable:@"_pageView" withType:"SUUITrendingSearchPageView"];
}

- (BOOL)isAccessibilityElement
{
  if (([(SUUISearchFieldTableViewAccessibility *)self safeBoolForKey:@"trendingSearchesVisible"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SUUISearchFieldTableViewAccessibility;
  return [(SUUISearchFieldTableViewAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityElements
{
  if ([(SUUISearchFieldTableViewAccessibility *)self safeBoolForKey:@"trendingSearchesVisible"])
  {
    v3 = MEMORY[0x29EDB8D80];
    v4 = [(SUUISearchFieldTableViewAccessibility *)self safeValueForKey:@"_pageView"];
    v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SUUISearchFieldTableViewAccessibility;
    v5 = [(SUUISearchFieldTableViewAccessibility *)&v7 accessibilityElements];
  }

  return v5;
}

@end
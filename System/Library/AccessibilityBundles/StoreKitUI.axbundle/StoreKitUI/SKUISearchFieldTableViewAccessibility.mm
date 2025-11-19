@interface SKUISearchFieldTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
@end

@implementation SKUISearchFieldTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUISearchFieldTableView" hasInstanceMethod:@"trendingSearchesVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SKUISearchFieldTableView" hasInstanceVariable:@"_pageView" withType:"SKUITrendingSearchPageView"];
}

- (BOOL)isAccessibilityElement
{
  if (([(SKUISearchFieldTableViewAccessibility *)self safeBoolForKey:@"trendingSearchesVisible"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SKUISearchFieldTableViewAccessibility;
  return [(SKUISearchFieldTableViewAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityElements
{
  if ([(SKUISearchFieldTableViewAccessibility *)self safeBoolForKey:@"trendingSearchesVisible"])
  {
    v3 = MEMORY[0x29EDB8D80];
    v4 = [(SKUISearchFieldTableViewAccessibility *)self safeValueForKey:@"_pageView"];
    v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUISearchFieldTableViewAccessibility;
    v5 = [(SKUISearchFieldTableViewAccessibility *)&v7 accessibilityElements];
  }

  return v5;
}

@end
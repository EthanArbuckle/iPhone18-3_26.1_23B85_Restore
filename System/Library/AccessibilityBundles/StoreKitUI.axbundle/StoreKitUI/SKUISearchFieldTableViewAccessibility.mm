@interface SKUISearchFieldTableViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
@end

@implementation SKUISearchFieldTableViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUISearchFieldTableView" hasInstanceMethod:@"trendingSearchesVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SKUISearchFieldTableView" hasInstanceVariable:@"_pageView" withType:"SKUITrendingSearchPageView"];
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
    accessibilityElements = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SKUISearchFieldTableViewAccessibility;
    accessibilityElements = [(SKUISearchFieldTableViewAccessibility *)&v7 accessibilityElements];
  }

  return accessibilityElements;
}

@end
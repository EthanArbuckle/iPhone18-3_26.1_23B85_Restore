@interface InfiniteScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateViews;
- (void)loadView;
@end

@implementation InfiniteScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"InfiniteScrollViewController"];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
}

- (void)_axAnnotateViews
{
  v2 = [(InfiniteScrollViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  [v2 setIsAccessibilityOpaqueElementProvider:1];
  [v2 setAccessibilityContainerType:4];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = InfiniteScrollViewControllerAccessibility;
  [(InfiniteScrollViewControllerAccessibility *)&v3 loadView];
  [(InfiniteScrollViewControllerAccessibility *)self _axAnnotateViews];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = InfiniteScrollViewControllerAccessibility;
  [(InfiniteScrollViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(InfiniteScrollViewControllerAccessibility *)self _axAnnotateViews];
}

@end
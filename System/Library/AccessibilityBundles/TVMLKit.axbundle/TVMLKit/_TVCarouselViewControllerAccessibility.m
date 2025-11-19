@interface _TVCarouselViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation _TVCarouselViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVCarouselViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIPageControl" hasInstanceMethod:@"currentPage" withFullSignature:{"q", 0}];
  [v3 validateClass:@"_TVCarouselViewController" hasInstanceVariable:@"_carouselView" withType:"_TVCarouselView"];
  [v3 validateClass:@"_TVCarouselViewController" hasInstanceVariable:@"_collectionElement" withType:"IKCollectionElement"];
  [v3 validateClass:@"_TVCarouselView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_TVCarouselView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKCollectionElement" hasInstanceMethod:@"sections" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IKDataSourceElement" hasInstanceMethod:@"elementForItemAtIndex:" withFullSignature:{"@", "q", 0}];
  [v3 validateClass:@"IKViewElement" hasInstanceVariable:@"_dataDictionary" withType:"NSDictionary"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v17.receiver = self;
  v17.super_class = _TVCarouselViewControllerAccessibility;
  [(_TVCarouselViewControllerAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVCarouselViewControllerAccessibility *)self safeUIViewForKey:@"_carouselView"];
  v4 = [v3 safeValueForKey:@"pageControl"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F60] | *MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7FF0]];
  objc_initWeak(&location, self);
  objc_initWeak(&v15, v4);
  objc_initWeak(&from, v3);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12[3] = &unk_29F308128;
  objc_copyWeak(&v13, &from);
  [v3 _setAccessibilityLabelBlock:v12];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v9[3] = &unk_29F308178;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &v15);
  [v3 _setAccessibilityValueBlock:v9];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2_343;
  v7[3] = &unk_29F3081A0;
  objc_copyWeak(&v8, &v15);
  [v3 _setAccessibilityIncrementBlock:v7];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __84___TVCarouselViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v5[3] = &unk_29F3081A0;
  objc_copyWeak(&v6, &v15);
  [v3 _setAccessibilityDecrementBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = _TVCarouselViewControllerAccessibility;
  [(_TVCarouselViewControllerAccessibility *)&v3 viewDidLoad];
  [(_TVCarouselViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
@interface PXCuratedLibraryUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)ax_pxg_scrollView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PXCuratedLibraryUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXGView" hasInstanceMethod:@"scrollViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXUIScrollViewController"];
  [v3 validateClass:@"PXUIScrollViewController" hasInstanceVariable:@"_scrollView" withType:"_PXUIScrollView"];
  [v3 validateClass:@"PXCuratedLibraryUIViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
}

- (id)ax_pxg_scrollView
{
  v2 = [(PXCuratedLibraryUIViewControllerAccessibility *)self safeValueForKey:@"gridView"];
  v3 = [v2 safeValueForKey:@"scrollViewController"];

  MEMORY[0x29C2E6930](@"PXUIScrollViewController");
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 safeValueForKey:@"_scrollView"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryUIViewControllerAccessibility;
  [(PXCuratedLibraryUIViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PXCuratedLibraryUIViewControllerAccessibility *)self ax_pxg_scrollView];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilitySetIdentification:@"AXCuratedLibraryScrollView"];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryUIViewControllerAccessibility;
  [(PXCuratedLibraryUIViewControllerAccessibility *)&v3 viewDidLoad];
  [(PXCuratedLibraryUIViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
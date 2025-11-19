@interface PXCuratedLibraryViewProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5;
@end

@implementation PXCuratedLibraryViewProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"axGroup:didChange:userInfo:" withFullSignature:{"v", "@", "Q", "@", 0}];
}

- (void)axGroup:(id)a3 didChange:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 != 2 || (-[PXCuratedLibraryViewProviderAccessibility safeValueForKey:](self, "safeValueForKey:", @"gridView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 _accessibilityIsFKARunningForFocusItem], v10, (v11 & 1) == 0))
  {
    v12.receiver = self;
    v12.super_class = PXCuratedLibraryViewProviderAccessibility;
    [(PXCuratedLibraryViewProviderAccessibility *)&v12 axGroup:v8 didChange:a4 userInfo:v9];
  }
}

@end
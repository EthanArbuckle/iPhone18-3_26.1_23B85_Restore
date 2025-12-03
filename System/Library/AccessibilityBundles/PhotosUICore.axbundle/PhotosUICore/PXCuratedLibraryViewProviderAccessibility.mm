@interface PXCuratedLibraryViewProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info;
@end

@implementation PXCuratedLibraryViewProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"gridView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PXCuratedLibraryViewProvider" hasInstanceMethod:@"axGroup:didChange:userInfo:" withFullSignature:{"v", "@", "Q", "@", 0}];
}

- (void)axGroup:(id)group didChange:(unint64_t)change userInfo:(id)info
{
  groupCopy = group;
  infoCopy = info;
  if (change != 2 || (-[PXCuratedLibraryViewProviderAccessibility safeValueForKey:](self, "safeValueForKey:", @"gridView"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 _accessibilityIsFKARunningForFocusItem], v10, (v11 & 1) == 0))
  {
    v12.receiver = self;
    v12.super_class = PXCuratedLibraryViewProviderAccessibility;
    [(PXCuratedLibraryViewProviderAccessibility *)&v12 axGroup:groupCopy didChange:change userInfo:infoCopy];
  }
}

@end
@interface CKDetailsSearchResultsTitleHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation CKDetailsSearchResultsTitleHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKDetailsSearchResultsTitleHeaderCell" isKindOfClass:@"CKSearchResultsTitleHeaderCell"];
  [v3 validateClass:@"CKSearchResultsTitleHeaderCell" hasInstanceMethod:@"sectionTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSearchResultsTitleHeaderCell" hasInstanceMethod:@"showAllButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = [(CKDetailsSearchResultsTitleHeaderCellAccessibility *)self safeValueForKey:@"showAllButton"];
  objc_opt_class();
  v4 = [(CKDetailsSearchResultsTitleHeaderCellAccessibility *)self safeValueForKey:@"sectionTitle"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 setAccessibilityTraits:{*MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDC7F80] | objc_msgSend(v5, "accessibilityTraits")}];
  v6 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v5, v3}];

  return v6;
}

@end
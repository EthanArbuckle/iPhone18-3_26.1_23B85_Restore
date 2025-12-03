@interface DOCSidebarHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCSidebarHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UICollectionViewListAccessoryDisclosure"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarHeaderCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = DOCSidebarHeaderCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(DOCSidebarHeaderCellAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F80];
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(DOCSidebarHeaderCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DOCSidebarHeaderCellAccessibility;
    [(DOCSidebarHeaderCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

uint64_t __65__DOCSidebarHeaderCellAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uicollectionvi_4.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
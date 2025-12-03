@interface DOCItemCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityValue;
@end

@implementation DOCItemCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DOCFullDocumentManagerViewController"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"displayMode" withFullSignature:{"q", 0}];
}

- (id)accessibilityValue
{
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v3 = [(DOCItemCollectionViewAccessibility *)self safeValueForKey:@"delegate"];
    v4 = [v3 safeIntegerForKey:@"displayMode"];
    if (v4 > 3)
    {
      accessibilityValue = 0;
    }

    else
    {
      accessibilityValue = off_29F2BB9E0[v4];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = DOCItemCollectionViewAccessibility;
    accessibilityValue = [(DOCItemCollectionViewAccessibility *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v5.receiver = self;
  v5.super_class = DOCItemCollectionViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(DOCItemCollectionViewAccessibility *)&v5 _accessibilitySupplementaryFooterViews];
  v3 = [_accessibilitySupplementaryFooterViews axFilterObjectsUsingBlock:&__block_literal_global_0];

  return v3;
}

BOOL __76__DOCItemCollectionViewAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end
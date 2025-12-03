@interface AnnotationCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AnnotationCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityDetailItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityCellIsExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityLinkLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityLinkLabelTapped" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityIsSummaryExpandable" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    v3 = [(AnnotationCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel"];
    v4 = [(AnnotationCollectionViewCellAccessibility *)self safeArrayForKey:@"accessibilityDetailItems"];
    v7 = AXLabelForElements();
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = [(AnnotationCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilitySummaryLabel"];
  }

  return v5;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x29EDB8DE8];
  v10.receiver = self;
  v10.super_class = AnnotationCollectionViewCellAccessibility;
  accessibilityCustomActions = [(AnnotationCollectionViewCellAccessibility *)&v10 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    _axLinkLabel = [(AnnotationCollectionViewCellAccessibility *)self _axLinkLabel];
    accessibilityLabel = [_axLinkLabel accessibilityLabel];

    if ([accessibilityLabel length])
    {
      v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:accessibilityLabel target:self selector:sel__accessibilityPerformLinkAction_];
      [v5 axSafelyAddObject:v8];
    }
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = AnnotationCollectionViewCellAccessibility;
  accessibilityTraits = [(AnnotationCollectionViewCellAccessibility *)&v5 accessibilityTraits];
  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsSummaryExpandable]&& ![(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
  }

  return accessibilityTraits;
}

- (id)accessibilityHint
{
  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsSummaryExpandable]&& ![(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    accessibilityHint = accessibilityAppStoreLocalizedString(@"expand.annotation.cell");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AnnotationCollectionViewCellAccessibility;
    accessibilityHint = [(AnnotationCollectionViewCellAccessibility *)&v5 accessibilityHint];
  }

  return accessibilityHint;
}

@end
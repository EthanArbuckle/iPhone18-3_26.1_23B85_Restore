@interface AnnotationCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AnnotationCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilitySummaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityDetailItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityCellIsExpanded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityLinkLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityLinkLabelTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"AppStore.AnnotationCollectionViewCell" hasInstanceMethod:@"accessibilityIsSummaryExpandable" withFullSignature:{"B", 0}];
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
  v4 = [(AnnotationCollectionViewCellAccessibility *)&v10 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    v6 = [(AnnotationCollectionViewCellAccessibility *)self _axLinkLabel];
    v7 = [v6 accessibilityLabel];

    if ([v7 length])
    {
      v8 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v7 target:self selector:sel__accessibilityPerformLinkAction_];
      [v5 axSafelyAddObject:v8];
    }
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = AnnotationCollectionViewCellAccessibility;
  v3 = [(AnnotationCollectionViewCellAccessibility *)&v5 accessibilityTraits];
  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsSummaryExpandable]&& ![(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    v3 |= *MEMORY[0x29EDC7F70];
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(AnnotationCollectionViewCellAccessibility *)self _axIsSummaryExpandable]&& ![(AnnotationCollectionViewCellAccessibility *)self _axIsAnnotationCellExpanded])
  {
    v3 = accessibilityAppStoreLocalizedString(@"expand.annotation.cell");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AnnotationCollectionViewCellAccessibility;
    v3 = [(AnnotationCollectionViewCellAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

@end
@interface _TVCollectionViewLockupCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)_accessibilityFocusableFrameForZoom;
- (id)_accessibilityFrameDelegate;
- (id)accessibilityLabel;
@end

@implementation _TVCollectionViewLockupCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVListTemplateView"];
  [validationsCopy validateClass:@"_TVStackingPosterView"];
  [validationsCopy validateClass:@"_TVListTemplateView" hasInstanceMethod:@"listView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_TVStackingPosterView" hasInstanceMethod:@"animatedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
}

- (id)_accessibilityFrameDelegate
{
  v11 = 0;
  objc_opt_class();
  v3 = [(_TVCollectionViewLockupCellAccessibility *)self safeValueForKey:@"contentView"];
  v4 = __UIAccessibilityCastAsClass();

  subviews = [v4 subviews];
  v6 = [subviews count];

  if (v6 == 1)
  {
    subviews2 = [v4 subviews];
    firstObject = [subviews2 firstObject];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVCollectionViewLockupCellAccessibility;
    firstObject = [(_TVCollectionViewLockupCellAccessibility *)&v10 _accessibilityFrameDelegate];
  }

  return firstObject;
}

- (CGRect)_accessibilityFocusableFrameForZoom
{
  v3 = [(_TVCollectionViewLockupCellAccessibility *)self safeValueForKey:@"contentView"];
  v28 = 0;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"subviews"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 axFilterObjectsUsingBlock:&__block_literal_global_2];
  firstObject = [v6 firstObject];

  v8 = [firstObject safeValueForKey:@"animatedLabel"];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_3;
  }

  v10 = [v8 safeValueForKey:@"layer"];
  [v10 accessibilityFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  if (CGRectIsEmpty(v29))
  {
LABEL_3:
    v27.receiver = self;
    v27.super_class = _TVCollectionViewLockupCellAccessibility;
    [(_TVCollectionViewLockupCellAccessibility *)&v27 _accessibilityFocusableFrameForZoom];
    v12 = v19;
    v14 = v20;
    v16 = v21;
    v18 = v22;
  }

  v23 = v12;
  v24 = v14;
  v25 = v16;
  v26 = v18;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)accessibilityLabel
{
  _atvaccessibilityITMLAccessibilityContent = [(_TVCollectionViewLockupCellAccessibility *)self _atvaccessibilityITMLAccessibilityContent];
  objc_opt_class();
  v4 = [(_TVCollectionViewLockupCellAccessibility *)self safeValueForKey:@"contentView"];
  v5 = __UIAccessibilityCastAsClass();

  v15 = 0;
  objc_opt_class();
  subviews = [v5 subviews];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 axFilterObjectsUsingBlock:&__block_literal_global_318];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v10 = [firstObject _accessibilityLabelIncludingFallbackPlaceholder:0 usesSubviewsForComponents:1];
  }

  else
  {
    v10 = 0;
  }

  if (![v10 length])
  {
    v14.receiver = self;
    v14.super_class = _TVCollectionViewLockupCellAccessibility;
    accessibilityLabel = [(_TVCollectionViewLockupCellAccessibility *)&v14 accessibilityLabel];

    v10 = accessibilityLabel;
  }

  v12 = [MEMORY[0x29EDBDE00] textByReconcilingClientText:v10 withServerText:_atvaccessibilityITMLAccessibilityContent];

  return v12;
}

@end
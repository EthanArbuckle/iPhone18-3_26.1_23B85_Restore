@interface AKAnnotationLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityExpandAnnotation;
- (BOOL)_accessibilityShrinkAnnotation;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityMakeAnnotation:(id)annotation larger:(BOOL)larger;
- (void)_accessibilityZoomIn:(BOOL)in;
@end

@implementation AKAnnotationLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"updateContents" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AKAnnotationLayerAccessibility;
  accessibilityTraits = [(AKAnnotationLayerAccessibility *)&v7 accessibilityTraits];
  v4 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityTraits |= *MEMORY[0x29EDC7598];
    if ([v4 isEditingText])
    {
      accessibilityTraits |= *MEMORY[0x29EDC7528];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *MEMORY[0x29EDBDBF8];
  }

  else
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v2 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 style] - 1;
    if (v4 <= 2)
    {
      displayName = accessibilityLocalizedString(off_29F29D3E8[v4]);
      goto LABEL_6;
    }
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  displayName = [v3 displayName];
LABEL_6:
  v6 = displayName;

  return v6;
}

- (id)accessibilityValue
{
  v46.receiver = self;
  v46.super_class = AKAnnotationLayerAccessibility;
  accessibilityValue = [(AKAnnotationLayerAccessibility *)&v46 accessibilityValue];
  v4 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v5 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
    v6 = __UIAccessibilityCastAsClass();

    [v6 magnification];
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"percent.zoom");
    v9 = AXFormatFloatWithPercentage();
    v10 = [v7 stringWithFormat:v8, v9];

    v39 = v10;
    v40 = @"__AXStringForVariablesSentinel";
    v11 = __UIAXStringForVariables();

    accessibilityValue = v11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = __UIAccessibilityCastAsClass();
    strokeColor = [v12 strokeColor];
    accessibilityLabel = [strokeColor accessibilityLabel];

    if ([v12 isDashed])
    {
      v15 = accessibilityLocalizedString(@"stroke.description.dashed");
    }

    else
    {
      v15 = 0;
    }

    [v12 strokeWidth];
    if (v16 >= 10.0)
    {
      [v12 strokeWidth];
      if (v18 <= 20.0)
      {
        v19 = 0;
        goto LABEL_13;
      }

      v17 = @"stroke.description.thickness.thick";
    }

    else
    {
      v17 = @"stroke.description.thickness.thin";
    }

    v19 = accessibilityLocalizedString(v17);
LABEL_13:
    v42 = v15;
    v43 = @"__AXStringForVariablesSentinel";
    v39 = accessibilityLabel;
    v40 = v19;
    v20 = __UIAXStringForVariables();

    accessibilityValue = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v21 = __UIAccessibilityCastAsClass();
    annotationText = [v21 annotationText];
    typingAttributes = [v21 typingAttributes];
    objc_opt_class();
    v24 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x29EDC7638]];
    v25 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v26 = [typingAttributes objectForKeyedSubscript:*MEMORY[0x29EDC7640]];
    v27 = __UIAccessibilityCastAsClass();

    if (v25)
    {
      [v25 fontName];
      v28 = v45 = v21;
      v29 = MEMORY[0x29EDBA0F8];
      accessibilityLocalizedString(@"stroke.fontsize.value");
      v30 = v44 = annotationText;
      v31 = MEMORY[0x29EDBA070];
      [v25 pointSize];
      v32 = [v31 numberWithDouble:?];
      v39 = [v29 stringWithFormat:v30, v32];
      v40 = @"__AXStringForVariablesSentinel";
      v33 = __UIAXStringForVariables();

      annotationText = v44;
      v21 = v45;
    }

    else
    {
      v33 = 0;
    }

    accessibilityLabel2 = [v27 accessibilityLabel];
    v34 = __UIAXStringForVariables();

    accessibilityValue = v34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v35 = __UIAccessibilityCastAsClass();
    color = [v35 color];
    v37 = AXColorStringForColor();

    accessibilityValue = v37;
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v3 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = AKAnnotationLayerAccessibility;
    accessibilityHint = [(AKAnnotationLayerAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityLocalizedString(@"reposition.hint");
  }

  v5 = accessibilityHint;

  return v5;
}

- (void)_accessibilityZoomIn:(BOOL)in
{
  inCopy = in;
  objc_opt_class();
  v5 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 magnification];
  v8 = -1.0;
  if (inCopy)
  {
    v8 = 1.0;
  }

  [v6 setMagnification:{fmax(fmin(v8 + v7, 10.0), 0.0)}];
  v9 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"updateContents"];
  v10 = MEMORY[0x29EDBA0F8];
  v11 = accessibilityLocalizedString(@"percent.zoom");
  v12 = AXFormatFloatWithPercentage();
  v13 = [v10 stringWithFormat:v11, v12];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v13);
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"annotation.action.expand");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityExpandAnnotation];

    [array addObject:v7];
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityLocalizedString(@"annotation.action.shrink");
    v10 = [v8 initWithName:v9 target:self selector:sel__accessibilityShrinkAnnotation];

    [array addObject:v10];
  }

  return array;
}

- (BOOL)_accessibilityExpandAnnotation
{
  v3 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(AKAnnotationLayerAccessibility *)self _accessibilityMakeAnnotation:v3 larger:1];
  }

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityShrinkAnnotation
{
  v3 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [(AKAnnotationLayerAccessibility *)self _accessibilityMakeAnnotation:v3 larger:0];
  }

  return isKindOfClass & 1;
}

- (void)_accessibilityMakeAnnotation:(id)annotation larger:(BOOL)larger
{
  largerCopy = larger;
  annotationCopy = annotation;
  [annotationCopy rectangle];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v11 = CGRectGetWidth(v16) / 10.0;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetHeight(v17) / 10.0;
  if (largerCopy)
  {
    v13 = -v11;
  }

  else
  {
    v13 = v11;
  }

  if (largerCopy)
  {
    v14 = -v12;
  }

  else
  {
    v14 = v12;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectInset(v18, v13, v14);
  [annotationCopy setRectangle:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];

  v15 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"updateContents"];
}

@end
@interface AKAnnotationLayerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityExpandAnnotation;
- (BOOL)_accessibilityShrinkAnnotation;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityMakeAnnotation:(id)a3 larger:(BOOL)a4;
- (void)_accessibilityZoomIn:(BOOL)a3;
@end

@implementation AKAnnotationLayerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"annotation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKAnnotationLayer" hasInstanceMethod:@"updateContents" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AKAnnotationLayerAccessibility;
  v3 = [(AKAnnotationLayerAccessibility *)&v7 accessibilityTraits];
  v4 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 |= *MEMORY[0x29EDC7598];
    if ([v4 isEditingText])
    {
      v3 |= *MEMORY[0x29EDC7528];
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

  return v5 | v3;
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
      v5 = accessibilityLocalizedString(off_29F29D3E8[v4]);
      goto LABEL_6;
    }
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v5 = [v3 displayName];
LABEL_6:
  v6 = v5;

  return v6;
}

- (id)accessibilityValue
{
  v46.receiver = self;
  v46.super_class = AKAnnotationLayerAccessibility;
  v3 = [(AKAnnotationLayerAccessibility *)&v46 accessibilityValue];
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

    v3 = v11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v12 = __UIAccessibilityCastAsClass();
    v13 = [v12 strokeColor];
    v14 = [v13 accessibilityLabel];

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
    v39 = v14;
    v40 = v19;
    v20 = __UIAXStringForVariables();

    v3 = v20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v21 = __UIAccessibilityCastAsClass();
    v22 = [v21 annotationText];
    v23 = [v21 typingAttributes];
    objc_opt_class();
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x29EDC7638]];
    v25 = __UIAccessibilityCastAsClass();

    objc_opt_class();
    v26 = [v23 objectForKeyedSubscript:*MEMORY[0x29EDC7640]];
    v27 = __UIAccessibilityCastAsClass();

    if (v25)
    {
      [v25 fontName];
      v28 = v45 = v21;
      v29 = MEMORY[0x29EDBA0F8];
      accessibilityLocalizedString(@"stroke.fontsize.value");
      v30 = v44 = v22;
      v31 = MEMORY[0x29EDBA070];
      [v25 pointSize];
      v32 = [v31 numberWithDouble:?];
      v39 = [v29 stringWithFormat:v30, v32];
      v40 = @"__AXStringForVariablesSentinel";
      v33 = __UIAXStringForVariables();

      v22 = v44;
      v21 = v45;
    }

    else
    {
      v33 = 0;
    }

    v41 = [v27 accessibilityLabel];
    v34 = __UIAXStringForVariables();

    v3 = v34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v35 = __UIAccessibilityCastAsClass();
    v36 = [v35 color];
    v37 = AXColorStringForColor();

    v3 = v37;
  }

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7.receiver = self;
    v7.super_class = AKAnnotationLayerAccessibility;
    v4 = [(AKAnnotationLayerAccessibility *)&v7 accessibilityHint];
  }

  else
  {
    v4 = accessibilityLocalizedString(@"reposition.hint");
  }

  v5 = v4;

  return v5;
}

- (void)_accessibilityZoomIn:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  v6 = __UIAccessibilityCastAsClass();

  [v6 magnification];
  v8 = -1.0;
  if (v3)
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"annotation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"annotation.action.expand");
    v7 = [v5 initWithName:v6 target:self selector:sel__accessibilityExpandAnnotation];

    [v3 addObject:v7];
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityLocalizedString(@"annotation.action.shrink");
    v10 = [v8 initWithName:v9 target:self selector:sel__accessibilityShrinkAnnotation];

    [v3 addObject:v10];
  }

  return v3;
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

- (void)_accessibilityMakeAnnotation:(id)a3 larger:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [v6 rectangle];
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
  if (v4)
  {
    v13 = -v11;
  }

  else
  {
    v13 = v11;
  }

  if (v4)
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
  [v6 setRectangle:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];

  v15 = [(AKAnnotationLayerAccessibility *)self safeValueForKey:@"updateContents"];
}

@end
@interface AEHighlightedTextLabelAccessibility
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)thaxAnnotation;
@end

@implementation AEHighlightedTextLabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(AEHighlightedTextLabelAccessibility *)self thaxAnnotation];
  v4 = [v3 imaxAnnotationStyleDescription];

  v5 = [(AEHighlightedTextLabelAccessibility *)self thaxAnnotation];
  v6 = [v5 imaxAnnotationSelectedText];

  v14 = __IMAccessibilityStringForVariables(v4, v7, v8, v9, v10, v11, v12, v13, v6);

  return v14;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(AEHighlightedTextLabelAccessibility *)self imaxAncestorIsKindOf:objc_opt_class()];

  if (v3)
  {
    return 0;
  }

  v5 = [(AEHighlightedTextLabelAccessibility *)self accessibilityLabel];
  v4 = [v5 length] != 0;

  return v4;
}

- (BOOL)accessibilityRespondsToUserInteraction
{
  v8 = 0;
  v3 = objc_opt_class();
  v4 = __IMAccessibilityCastAsClass(v3, self, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v5 = v4;
  v6 = [v4 isUserInteractionEnabled];

  return v6;
}

- (id)thaxAnnotation
{
  v7 = 0;
  v3 = objc_opt_class();
  v4 = [(AEHighlightedTextLabelAccessibility *)self imaxValueForKey:@"annotation"];
  v5 = __IMAccessibilityCastAsSafeCategory(v3, v4, 1, &v7);

  if (v7 == 1)
  {
    abort();
  }

  return v5;
}

@end
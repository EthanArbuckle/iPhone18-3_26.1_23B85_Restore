@interface AEHighlightedTextLabelAccessibility
- (BOOL)accessibilityRespondsToUserInteraction;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)thaxAnnotation;
@end

@implementation AEHighlightedTextLabelAccessibility

- (id)accessibilityLabel
{
  thaxAnnotation = [(AEHighlightedTextLabelAccessibility *)self thaxAnnotation];
  imaxAnnotationStyleDescription = [thaxAnnotation imaxAnnotationStyleDescription];

  thaxAnnotation2 = [(AEHighlightedTextLabelAccessibility *)self thaxAnnotation];
  imaxAnnotationSelectedText = [thaxAnnotation2 imaxAnnotationSelectedText];

  v14 = __IMAccessibilityStringForVariables(imaxAnnotationStyleDescription, v7, v8, v9, v10, v11, v12, v13, imaxAnnotationSelectedText);

  return v14;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(AEHighlightedTextLabelAccessibility *)self imaxAncestorIsKindOf:objc_opt_class()];

  if (v3)
  {
    return 0;
  }

  accessibilityLabel = [(AEHighlightedTextLabelAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length] != 0;

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
  isUserInteractionEnabled = [v4 isUserInteractionEnabled];

  return isUserInteractionEnabled;
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
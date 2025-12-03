@interface CRLiOSInspectorTableViewCellAccessibility
+ (id)crlaxCastFrom:(id)from;
- (id)_crlaxImageButton;
- (id)accessibilityLabel;
- (void)setChecked:(BOOL)checked;
@end

@implementation CRLiOSInspectorTableViewCellAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  v7.receiver = self;
  v7.super_class = CRLiOSInspectorTableViewCellAccessibility;
  [(CRLiOSInspectorTableViewCellAccessibility *)&v7 setChecked:?];
  accessibilityTraits = [(CRLiOSInspectorTableViewCellAccessibility *)self accessibilityTraits];
  if (checkedCopy)
  {
    v6 = UIAccessibilityTraitSelected | accessibilityTraits;
  }

  else
  {
    v6 = accessibilityTraits & ~UIAccessibilityTraitSelected;
  }

  [(CRLiOSInspectorTableViewCellAccessibility *)self setAccessibilityTraits:v6];
}

- (id)accessibilityLabel
{
  v13 = 0;
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, selfCopy, 1, &v13);
  if (v13 == 1)
  {
    abort();
  }

  v5 = v4;

  textLabel = [v5 textLabel];
  text = [textLabel text];
  v8 = [text length];

  if (v8)
  {
    textLabel2 = [v5 textLabel];
    text2 = [textLabel2 text];
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = CRLiOSInspectorTableViewCellAccessibility;
    text2 = [(CRLiOSInspectorTableViewCellAccessibility *)&v12 accessibilityLabel];
  }

  return text2;
}

- (id)_crlaxImageButton
{
  crlaxTarget = [(CRLiOSInspectorTableViewCellAccessibility *)self crlaxTarget];
  imageButton = [crlaxTarget imageButton];

  return imageButton;
}

@end
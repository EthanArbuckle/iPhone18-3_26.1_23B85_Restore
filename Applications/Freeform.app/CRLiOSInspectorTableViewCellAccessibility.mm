@interface CRLiOSInspectorTableViewCellAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)_crlaxImageButton;
- (id)accessibilityLabel;
- (void)setChecked:(BOOL)a3;
@end

@implementation CRLiOSInspectorTableViewCellAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = CRLiOSInspectorTableViewCellAccessibility;
  [(CRLiOSInspectorTableViewCellAccessibility *)&v7 setChecked:?];
  v5 = [(CRLiOSInspectorTableViewCellAccessibility *)self accessibilityTraits];
  if (v3)
  {
    v6 = UIAccessibilityTraitSelected | v5;
  }

  else
  {
    v6 = v5 & ~UIAccessibilityTraitSelected;
  }

  [(CRLiOSInspectorTableViewCellAccessibility *)self setAccessibilityTraits:v6];
}

- (id)accessibilityLabel
{
  v13 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v13);
  if (v13 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [v5 textLabel];
  v7 = [v6 text];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v5 textLabel];
    v10 = [v9 text];
  }

  else
  {
    v12.receiver = v2;
    v12.super_class = CRLiOSInspectorTableViewCellAccessibility;
    v10 = [(CRLiOSInspectorTableViewCellAccessibility *)&v12 accessibilityLabel];
  }

  return v10;
}

- (id)_crlaxImageButton
{
  v2 = [(CRLiOSInspectorTableViewCellAccessibility *)self crlaxTarget];
  v3 = [v2 imageButton];

  return v3;
}

@end
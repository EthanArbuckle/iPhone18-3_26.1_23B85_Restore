@interface CRLUICollectionViewCellAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityTextOperationAction:(id)a3;
- (CGRect)accessibilityFrame;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_crlaxAlternateTextOperationProvider;
- (id)_crlaxBaseCollectionViewCellTextOperations;
@end

@implementation CRLUICollectionViewCellAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (CGRect)accessibilityFrame
{
  v3 = [(CRLUICollectionViewCellAccessibility *)self accessibilityContainer];
  v21.receiver = self;
  v21.super_class = CRLUICollectionViewCellAccessibility;
  [(CRLUICollectionViewCellAccessibility *)&v21 accessibilityFrame];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  NSClassFromString(@"UICollectionViewCellAccessibilityElement");
  if (objc_opt_isKindOfClass())
  {
    v12 = [v3 accessibilityContainer];

    v3 = v12;
  }

  if (v3)
  {
    [v3 accessibilityFrame];
    v25.origin.x = v13;
    v25.origin.y = v14;
    v25.size.width = v15;
    v25.size.height = v16;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectIntersection(v22, v25);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)_accessibilityHasTextOperations
{
  v7.receiver = self;
  v7.super_class = CRLUICollectionViewCellAccessibility;
  v3 = [(CRLUICollectionViewCellAccessibility *)&v7 _accessibilityTextOperations];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)_accessibilityTextOperations
{
  v7.receiver = self;
  v7.super_class = CRLUICollectionViewCellAccessibility;
  v3 = [(CRLUICollectionViewCellAccessibility *)&v7 _accessibilityTextOperations];
  if (![v3 count])
  {
    v4 = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    v5 = [v4 _accessibilityTextOperations];

    v3 = v5;
  }

  return v3;
}

- (BOOL)_accessibilityTextOperationAction:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRLUICollectionViewCellAccessibility;
  if ([(CRLUICollectionViewCellAccessibility *)&v9 _accessibilityTextOperationAction:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    v7 = [v6 _accessibilityTextViewTextOperationResponder];
    v5 = [v7 _accessibilityTextOperationAction:v4];
  }

  return v5;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v2 = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
  v3 = [v2 _accessibilityTextViewTextOperationResponder];

  return v3;
}

- (id)_crlaxAlternateTextOperationProvider
{
  v2 = [(CRLUICollectionViewCellAccessibility *)self nextResponder];
  if (v2)
  {
    while (1)
    {
      v3 = [v2 _accessibilityTextOperations];
      v4 = [v3 count];

      if (v4)
      {
        break;
      }

      v5 = [v2 nextResponder];

      v2 = v5;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v2 = v2;
  }

LABEL_6:

  return v2;
}

- (id)_crlaxBaseCollectionViewCellTextOperations
{
  v4.receiver = self;
  v4.super_class = CRLUICollectionViewCellAccessibility;
  v2 = [(CRLUICollectionViewCellAccessibility *)&v4 _accessibilityTextOperations];

  return v2;
}

@end
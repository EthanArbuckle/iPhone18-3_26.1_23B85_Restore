@interface CRLUICollectionViewCellAccessibility
+ (id)crlaxCastFrom:(id)from;
- (BOOL)_accessibilityHasTextOperations;
- (BOOL)_accessibilityTextOperationAction:(id)action;
- (CGRect)accessibilityFrame;
- (id)_accessibilityTextOperations;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_crlaxAlternateTextOperationProvider;
- (id)_crlaxBaseCollectionViewCellTextOperations;
@end

@implementation CRLUICollectionViewCellAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (CGRect)accessibilityFrame
{
  accessibilityContainer = [(CRLUICollectionViewCellAccessibility *)self accessibilityContainer];
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
    v3AccessibilityContainer = [accessibilityContainer accessibilityContainer];

    accessibilityContainer = v3AccessibilityContainer;
  }

  if (accessibilityContainer)
  {
    [accessibilityContainer accessibilityFrame];
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
  _accessibilityTextOperations = [(CRLUICollectionViewCellAccessibility *)&v7 _accessibilityTextOperations];
  if (_accessibilityTextOperations)
  {
    v4 = 1;
  }

  else
  {
    _crlaxAlternateTextOperationProvider = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    v4 = _crlaxAlternateTextOperationProvider != 0;
  }

  return v4;
}

- (id)_accessibilityTextOperations
{
  v7.receiver = self;
  v7.super_class = CRLUICollectionViewCellAccessibility;
  _accessibilityTextOperations = [(CRLUICollectionViewCellAccessibility *)&v7 _accessibilityTextOperations];
  if (![_accessibilityTextOperations count])
  {
    _crlaxAlternateTextOperationProvider = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    _accessibilityTextOperations2 = [_crlaxAlternateTextOperationProvider _accessibilityTextOperations];

    _accessibilityTextOperations = _accessibilityTextOperations2;
  }

  return _accessibilityTextOperations;
}

- (BOOL)_accessibilityTextOperationAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = CRLUICollectionViewCellAccessibility;
  if ([(CRLUICollectionViewCellAccessibility *)&v9 _accessibilityTextOperationAction:actionCopy])
  {
    v5 = 1;
  }

  else
  {
    _crlaxAlternateTextOperationProvider = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
    _accessibilityTextViewTextOperationResponder = [_crlaxAlternateTextOperationProvider _accessibilityTextViewTextOperationResponder];
    v5 = [_accessibilityTextViewTextOperationResponder _accessibilityTextOperationAction:actionCopy];
  }

  return v5;
}

- (id)_accessibilityTextViewTextOperationResponder
{
  _crlaxAlternateTextOperationProvider = [(CRLUICollectionViewCellAccessibility *)self _crlaxAlternateTextOperationProvider];
  _accessibilityTextViewTextOperationResponder = [_crlaxAlternateTextOperationProvider _accessibilityTextViewTextOperationResponder];

  return _accessibilityTextViewTextOperationResponder;
}

- (id)_crlaxAlternateTextOperationProvider
{
  nextResponder = [(CRLUICollectionViewCellAccessibility *)self nextResponder];
  if (nextResponder)
  {
    while (1)
    {
      _accessibilityTextOperations = [nextResponder _accessibilityTextOperations];
      v4 = [_accessibilityTextOperations count];

      if (v4)
      {
        break;
      }

      v2NextResponder = [nextResponder nextResponder];

      nextResponder = v2NextResponder;
      if (!v2NextResponder)
      {
        goto LABEL_6;
      }
    }

    nextResponder = nextResponder;
  }

LABEL_6:

  return nextResponder;
}

- (id)_crlaxBaseCollectionViewCellTextOperations
{
  v4.receiver = self;
  v4.super_class = CRLUICollectionViewCellAccessibility;
  _accessibilityTextOperations = [(CRLUICollectionViewCellAccessibility *)&v4 _accessibilityTextOperations];

  return _accessibilityTextOperations;
}

@end
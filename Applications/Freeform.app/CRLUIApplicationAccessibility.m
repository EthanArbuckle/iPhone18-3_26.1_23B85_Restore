@interface CRLUIApplicationAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 traversalOptions:(id)a7;
- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 parameters:(id)a6;
- (id)_crlaxAccessibilityElementFirstForFocus:(BOOL)a3;
- (id)_unswizzledTargetInChainForAction:(SEL)a3 sender:(id)a4;
- (id)accessibilityLabel;
@end

@implementation CRLUIApplicationAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (id)accessibilityLabel
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CRLUIApplicationAccessibility *)self crlaxTarget];
    v4 = [v3 _localizedApplicationName];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CRLUIApplicationAccessibility;
    v4 = [(CRLUIApplicationAccessibility *)&v6 accessibilityLabel];
  }

  return v4;
}

- (id)_crlaxAccessibilityElementFirstForFocus:(BOOL)a3
{
  v5 = +[CRLAccessibility sharedInstance];
  v6 = v5;
  if (!a3)
  {
    v7 = [v5 _firstElementForUpcomingPageTurn];

    if (v7)
    {
      goto LABEL_5;
    }

    v6 = +[CRLAccessibility sharedInstance];
  }

  v7 = [v6 _firstElementForUpcomingScreenChange];

  if (!v7)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_5:
  v8 = [v7 crlaxAncestorView];
  if (v8 && ([v8 crlaxViewAncestorOfType:objc_opt_class()], v9 = objc_claimAutoreleasedReturnValue(), -[CRLUIApplicationAccessibility crlaxTarget](self, "crlaxTarget"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "_accessibilityMainWindow"), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v9 == v11))
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 parameters:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  if (!v8 || ([(CRLUIApplicationAccessibility *)self _crlaxAccessibilityElementFirstForFocus:v6], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13.receiver = self;
    v13.super_class = CRLUIApplicationAccessibility;
    v11 = [(CRLUIApplicationAccessibility *)&v13 _accessibilityElementFirst:v8 last:v7 forFocus:v6 parameters:v10];
  }

  return v11;
}

- (id)_accessibilityElementFirst:(BOOL)a3 last:(BOOL)a4 forFocus:(BOOL)a5 allowScrolling:(BOOL)a6 traversalOptions:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = a7;
  if (!v10 || ([(CRLUIApplicationAccessibility *)self _crlaxAccessibilityElementFirstForFocus:v8], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15.receiver = self;
    v15.super_class = CRLUIApplicationAccessibility;
    v13 = [(CRLUIApplicationAccessibility *)&v15 _accessibilityElementFirst:v10 last:v9 forFocus:v8 allowScrolling:v7 traversalOptions:v12];
  }

  return v13;
}

- (id)_unswizzledTargetInChainForAction:(SEL)a3 sender:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = CRLUIApplicationAccessibility;
  v7 = [(CRLUIApplicationAccessibility *)&v17 _unswizzledTargetInChainForAction:a3 sender:v6];
  v16 = 0;
  v8 = v6;
  v9 = objc_opt_class();
  v10 = __CRLAccessibilityCastAsClass(v9, v8, 1, &v16);
  if (v16 == 1)
  {
    abort();
  }

  v11 = v10;

  if (v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    v13 = [v11 window];
    v7 = [v13 firstResponder];

    if (v7)
    {
      do
      {
        if ([v7 canPerformAction:a3 withSender:v8])
        {
          break;
        }

        v14 = [v7 nextResponder];

        v7 = v14;
      }

      while (v14);
    }
  }

  return v7;
}

@end
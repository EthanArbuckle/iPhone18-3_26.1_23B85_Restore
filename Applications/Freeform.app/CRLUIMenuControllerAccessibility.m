@interface CRLUIMenuControllerAccessibility
+ (id)crlaxCastFrom:(id)a3;
- (BOOL)_crlaxShouldActuallyPreventMakingVisible;
- (void)setMenuItems:(id)a3;
- (void)setMenuVisible:(BOOL)a3;
- (void)setMenuVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CRLUIMenuControllerAccessibility

+ (id)crlaxCastFrom:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 0, 0);

  return v5;
}

- (BOOL)_crlaxShouldActuallyPreventMakingVisible
{
  v3 = +[CRLAccessibility sharedInstance];
  v4 = [v3 needsAccessibilityElements];

  if (v4)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000D505C;
    v7[3] = &unk_101839FF8;
    v7[4] = self;
    v7[5] = &v8;
    if (__CRLAccessibilityPerformSafeBlock(v7))
    {
      abort();
    }

    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)setMenuItems:(id)a3
{
  v4 = self;
  v5 = a3;
  if ([(CRLUIMenuControllerAccessibility *)v4 _crlaxShouldPreventMutatingItems])
  {
    [(CRLUIMenuControllerAccessibility *)v4 _crlaxSetLastUpdatedMenuItemsWhilePreventingActualItemsMutation:v5];
  }

  else
  {
    v6.receiver = v4;
    v6.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v6 setMenuItems:v5];
  }
}

- (void)setMenuVisible:(BOOL)a3
{
  v3 = a3;
  if (!a3 || ![(CRLUIMenuControllerAccessibility *)self _crlaxShouldActuallyPreventMakingVisible])
  {
    v5.receiver = self;
    v5.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v5 setMenuVisible:v3];
  }
}

- (void)setMenuVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3 || ![(CRLUIMenuControllerAccessibility *)self _crlaxShouldActuallyPreventMakingVisible])
  {
    v7.receiver = self;
    v7.super_class = CRLUIMenuControllerAccessibility;
    [(CRLUIMenuControllerAccessibility *)&v7 setMenuVisible:v5 animated:v4];
  }
}

@end